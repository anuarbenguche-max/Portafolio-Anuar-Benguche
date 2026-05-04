# Entrar a la carpeta del portafolio
cd "C:\Users\anuar\Documents\GitHub\Portafolio-Anuar-Benguche"

while($true) {
    Clear-Host
    Write-Host "Sincronizando Portafolio en GitHub..." -ForegroundColor Cyan
    git add .
    # El commit solo se hace si hay cambios reales
    git commit -m "Auto-sync: $(Get-Date -Format 'dd-MM-yyyy HH:mm:ss')"
    git push origin main
    Write-Host "Todo al día. Próxima revisión en 5 minutos." -ForegroundColor Green
    Start-Sleep -Seconds 300
}