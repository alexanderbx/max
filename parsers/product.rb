html = Nokogiri.HTML (content)
products = html.css('#yt_main .yt_main_inner #catalog-listing .yt-products-container .products-grid .row .item')

products.each do |product|
    name = product.css('.item-inner .product-info .product-name > a').text.strip
    price = product.css('.item-inner .product-info .product-price .price-box .max-prices .col-xs-12 .row .col-xs-12 .regular-price .price').text.strip
    link = product.css(".product-info .product-name > a")[0]["href"]
    pages << {
        url: link,
        page_type: 'product',
        vars: {
            name: name,
            price: price
        }
    }
end
