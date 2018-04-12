#gems required to make the code work
require 'rubygems'
require 'nokogiri'
require 'open-uri'

def trader_de_lombre
i = 0
	 until i == 1800
	 puts "Voici le cours de toutes les cyptomonnaie de la belle block chienne ;), refresh toutes les heures !"


	 hash_array = {}
	 arrayprice = []
	 arrayname = []
	 pages = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	 currencyname = pages.css (".currency-name-container")

	 price = pages.css("a.price")

	 price.each  do |price|
			 priceusd =  price['data-usd']
			 arrayprice << priceusd


end


			 currencyname.each do |namec|
					 namecur = namec.text
					 arrayname << namecur


				end


puts Hash[arrayname.zip(arrayprice)]
sleep(3600)
puts "///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////"
puts " tour #{i}"
i += 1
end
end


trader_de_lombre
