require 'asciidoctor'

Asciidoctor::Extensions.register do
  tree_processor do
    process do |doc|
      (doc.find_by context: :section).each do |section|
        next unless section.sectname == 'appendix'
        section.caption = section.caption.sub ':', ''
      end
      nil
    end
  end
end
