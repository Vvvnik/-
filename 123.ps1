$group = "номер-группы"
$subject = "название-предмета"
$workNumber = "номер-работы"
$author = "фамилия-автора"

$command = "asciidoctor-pdf"
$arguments = "-T ","-r custom/10titlePage.rb","-r custom/20appendixCustomCaption.rb","-r custom/30customFigureCaption.rb","-a pdf-fontsdir=resources/fonts", "-a pdf-themesdir=resources/themes", "report.adoc", "--theme=report", "-o '$group-$subject-$workNumber-$author.pdf'"

try {
    $process = Start-Process -FilePath $command -ArgumentList $arguments -NoNewWindow -Wait -PassThru
    if ($process.ExitCode -eq 0) {
        Write-Host "Report generated!"
    }
    else {
        throw "Error generating report. Exit code: $($process.ExitCode)"
    }
}
catch {
    Write-Error $_.Exception.Message
}