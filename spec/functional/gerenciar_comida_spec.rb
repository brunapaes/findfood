# coding: utf-8

require 'rails_helper'

feature 'Registrar Comida' do

  scenario 'incluir Comida' do 

    visit new_comida_path
    preencher_e_verificar_comida
  end

  scenario 'alterar Comida' do 

    comida = FactoryGirl.create(:comida)
    visit edit_comida_path(comida)
    preencher_e_verificar_comida

  end

  scenario 'excluir Comida' do 

    cadastro = FactoryGirl.create(:comida)
    visit comidas_path
    
    click_link('Excluir')

  end

   def preencher_e_verificar_comida

      fill_in 'Nome',  :with => "hamburguer"
      fill_in 'Tipo',  :with => "fast food"
      fill_in 'Valor', :with => "7"

      click_button 'Salvar'
	  
	  expect(page).to have_content 'Nome: hamburguer'
      expect(page).to have_content 'Tipo: fast food'
      expect(page).to have_content 'Valor: 7'

   end
end
