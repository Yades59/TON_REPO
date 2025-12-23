$ErrorActionPreference = "Stop"

Write-Host "Validation AJV..."
ajv.cmd validate -s schema\metahuman.schema.json -d data\pipeline_metahuman.json --strict=true

if ($LASTEXITCODE -ne 0) {
  Write-Host "ERREUR: JSON invalide"
  exit 1
}

Write-Host "OK: JSON valide"
exit 0
