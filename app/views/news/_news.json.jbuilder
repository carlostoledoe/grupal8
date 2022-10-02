json.extract! news, :id, :encabezado, :cuerpo, :link, :tipo, :created_at, :updated_at
json.url news_url(news, format: :json)
