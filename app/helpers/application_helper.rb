module ApplicationHelper

  class CodeRayify < Redcarpet::Render::HTML
    def block_code(code,language)
      CodeRay.scan(code,language).div
    end
  end

  def markdown(text)

    coderayified = CodeRayify.new(:filter_html => false,
    :hard_wrap => true)

    extensions = {
      autolink:           true,
      superscript:        true,
      disable_indented_code_blocks: true,
      filter_html:     false,
      hard_wrap:       true,
      link_attributes: { rel: 'nofollow', target: "_blank" },
      space_after_headers: true,
      fenced_code_blocks: true,
      prettify: true
    }

    renderer = Redcarpet::Render::HTML.new(extensions)
    markdown = Redcarpet::Markdown.new(coderayified, extensions)

    markdown.render(text).html_safe
  end

end
