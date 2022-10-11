class CustomFigurePdfConverter < (Asciidoctor::Converter.for 'pdf')
    register_for 'pdf'

    def convert_image node
        node.caption = node.caption.sub '. ', ' — ' if node.title?
        super
    end
end