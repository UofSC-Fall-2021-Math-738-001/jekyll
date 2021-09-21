module Jekyll
    class RenderProof < Liquid::Block
  
      def render(context)
        text = super

        output = <<~EOS
          <details markdown="block">
          <summary>
          <b>Proof</b>. (Expand to view)
          </summary> 
          <p>#{text} <span style="float:right;"> &#9632; </span></p>
          </details>
        EOS

        return output
      end
    end
end

Liquid::Template.register_tag('proof', Jekyll::RenderProof)