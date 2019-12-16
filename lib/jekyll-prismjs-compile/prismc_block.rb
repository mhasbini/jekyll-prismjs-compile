require "execjs"
require "pry"
require "json"

module Jekyll
  class PrismCompileBlock < Liquid::Block
    # include Liquid::StandardFilters

    def initialize(tag_name, language, tokens)
      super
      @language = language.strip
    end

    def render(context)
      # add option to escape html (use h(super))
      code = JSON.generate(super.strip)

      path = __dir__ + "/prism.js"
      # TODO load only once
      prismSource = File.read(path)

      context = ExecJS.compile(prismSource)

      output = context.eval(%Q[Prism.highlight(#{code}, Prism.languages.#{@language}, '#{@language}')])

      <<-HTML
  <pre class="language-#{@language}"><code class='language-#{@language}'>#{output}</code></pre>
      HTML
    end
  end
end

Liquid::Template.register_tag('prismc', Jekyll::PrismCompileBlock)