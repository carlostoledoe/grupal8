class News < ApplicationRecord
  def self.buscar(text)
      if text and !text.empty? 
        found_notic = News.where( 
          "encabezado LIKE ? or encabezado LIKE ? or encabezado LIKE ?", "#{text.capitalize}%", "%#{text.downcase}%", "%#{text.first.upcase}%"
        )
        if found_notic
          found_notic
        else
          News.all
        end
      else 
        News.all
      end
  end
end
