json.message @message

json.data @articles.each do |article|
  json.partial! 'article', article:
end
