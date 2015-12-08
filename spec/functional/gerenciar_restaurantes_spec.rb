# coding: utf-8

require 'rails_helper'

feature 'Registrar Restaurante' do

  scenario 'incluir Restaurante' do 

    visit new_restaurante_path
    preencher_e_verificar_restaurante
  end

  scenario 'alterar Restaurante' do 

    restaurante = FactoryGirl.create(:restaurante)
    visit edit_restaurante_path(restaurante)
    preencher_e_verificar_restaurante

  end

  scenario 'excluir restaurante' do 

    restaurante = FactoryGirl.create(:restaurante)
    visit restaurantes_path
    
    click_link('Excluir')

  end

   def preencher_e_verificar_restaurante

      fill_in 'Nome',     :with => "Giraffas"
      fill_in 'Tipo',  :with => "Fast Food"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Giraffas'
      expect(page).to have_content 'Tipo: Fast Food'

   end
end
