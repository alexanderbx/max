html = Nokogiri.HTML (content)
status = html.css('.availabilityi.n-stock').text.strip

outputs << {
    _collection: 'product',
    status: status,
    name: page['vars']['name'],
    price: page['vars']['price']
}