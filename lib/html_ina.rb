class GetHtml
  def self.get(content, bypass_html: false, file_name: 'index.html')
    paste = content.gsub(/[<>]/, '') unless bypass_html

    File.open(file_name, 'w+') do |f|
      html = <<~HTML
        <!doctype html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <title>#{file_name}</title>
        </head>
        <body>
            <div class="info">
                #{content}
            </div>
        </body>
        </html>
      HTML
      f.write(html)
    end
  end
end
