class NoteCollectionController < ApplicationController
include CountriesHelper
include NoteCollectionHelper
  def index
  	# @continent_countris = Country.includes(:currencies => :notes).where({ :currencies => { :notes => { status: "FOR SELL"}}, :continent => 'Azja'}).order(country_en: :asc)
	# @continent_countris.each do |con|
	# 	puts con.country_en
	# end
	@continents = Continent.all
	@continents.each do |c|
		puts c
	end
  end

  def show
  	puts params[:id]
  	@continent = Continent.find(params[:id])
  	puts @continent.file_name
  	# @continent_countris = Country.includes(:currencies => :notes).where({ :currencies => { :notes => { status: "KOLEKCJA"}}, :continent => params[:id]}).order(country_en: :asc)
  	@countries = get_countries_with_continent(@continent.name_pl, "KOLEKCJA")
	# get_countries_with_continent(params[:id], "KOLEKCJA").each do |con|
	# 	puts con.country_en
	# end
	# get_continent_list.each do |c|
	# 	puts c
	# end
  end

  def show_currency
  	puts params[:id]
  	@currencies = Currency.where(country_id: params[:id], pattern: 'NOTE')
  end

  def show_note
  	puts params[:id]
  	@notes = notes_collections(params[:id], "KOLEKCJA")
  end
end
