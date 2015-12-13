require 'rails_helper'

feature 'gerencia local' do 

	scenario 'incluir local ' do # , :js => true do
		visit new_local_path
		preencher_e_verficar_local
	end

	scenario 'alterar local' do # , :js => true do
		local = FactoryGirl.create(:local)
		visit edit_local_path(local)
		preencher_e_verficar_local
	end

	scenario 'excluir local' do #, :javascript => true do
		local = FactoryGirl.create(:local)
		visit  locals_path
		click_link 'Excluir'
	end

	def preencher_e_verficar_local
		fill_in 'Latitude',    	:with => "-21.80899426"
		fill_in 'Longitude',	:with => "-41.38983786"
		fill_in 'Elevacao',		:with => "8"
		
		click_button 'Salvar'

		expect(page).to have_content 'Latitude: -21.80899426'
		expect(page).to have_content 'Longitude: -41.38983786'
		expect(page).to have_content 'Elevacao:  8'
	end
end
