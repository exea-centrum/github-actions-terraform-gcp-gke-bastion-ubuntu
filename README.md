# github-actions-terraform-gcp-gke-bastion-ubuntu



Szybka instrukcja:
Wgraj powyższe pliki do katalogu projektu.
Podmień YOUR_SERVICE_ACCOUNT_KEY.json w provider.tf na nazwę pliku z kluczem serwisowym z GCP.
Ustaw zmienną project_id (np. przez plik terraform.tfvars lub podczas uruchamiania).
W terminalu uruchom:
sh
terraform init
terraform plan
terraform apply
Po wdrożeniu, wyjściowe adresy znajdziesz w outputach.
Daj znać, jeśli chcesz, żebym wrzucił te pliki do Twojego repozytorium lub przygotował wersję z dodatkowymi opcjami!

Oczywiście! Poniżej znajdziesz gotowy plik workflow GitHub Actions (.github/workflows/terraform-gcp.yml) do automatycznego wdrażania infrastruktury na GCP za pomocą Terraform. Workflow ten:

Uruchamia się na push do głównej gałęzi (main) oraz na żądanie manualne.
Automatycznie instaluje Google Cloud SDK i Terraform.
Używa sekretu repozytorium GOOGLE_CREDENTIALS (zawartość pliku JSON z kluczem serwisowym GCP).
Wykonuje terraform init, terraform plan i (po zatwierdzeniu pull requesta lub pushu do maina) terraform apply.
Wklej poniższy plik do repozytorium w katalogu .github/workflows/:
Instrukcja:
Dodaj sekret GOOGLE_CREDENTIALS do repozytorium (zawartość pliku JSON klucza serwisowego GCP z uprawnieniami do zarządzania infrastrukturą).
(Opcjonalnie) Dodaj też GCP_PROJECT_ID jako sekret, jeśli chcesz mieć automatyczne przekazywanie project_id do konfiguracji.
Upewnij się, że plik provider.tf korzysta z tych zmiennych (np. przez var.project_id).
Teraz po każdym pushu do main lub manualnym uruchomieniu workflow, Twoja infrastruktura w GCP będzie automatycznie wdrażana przez GitHub Actions!

Chcesz dodać zmienne środowiskowe lub inną konfigurację?