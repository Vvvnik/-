# GOST 7.32 Asciidoc template

## Getting started

1. Clone the repository
2. Install asciidoctor & asciidoctor-pdf according with instructions for your OS
3. Include file `template.adoc` to your document as `include::/full/path/to/template.adoc[]`
4. Fill required attributes (see [attributesDescription](attributesDescription))
5. Change attributes in the template, if needed
6. Generate PDF with command like this:

```sh
asciidoctor-pdf --theme=report -a pdf-themesdir=/full/path/to/report/resources/themes -a pdf-fontsdir=/full/path/to/report/resources/fonts -r /full/path/to/report/custom/10titlePage.rb -r /full/path/to/report/custom/20appendixCustomCaption.rb -r /full/path/to/report/custom/30customFigureCaption.rb
```

## Updating

1. Do `git stash` in the repo, if you did some changes to template
2. Do `git pull` to download new changes
3. DO `git stash pop` to restore your changes