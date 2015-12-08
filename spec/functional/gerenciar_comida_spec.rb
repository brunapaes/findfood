# coding: utf-8

require 'rails_helper'

feature 'Registrar Comida' do

  scenario 'incluir Comida' do 

    visit new_comida_path
    preencher_e_verificar_comida
  end

  scenario 'alterar comida' do 

    comida = FactoryGirl.create(:comida)
    visit edit_comida_path(comida)
    preencher_e_verificar_comida

  end

  scenario 'excluir comida' do 

    cadastro = FactoryGirl.create(:comida)
    visit comidas_path
    
    click_link('Excluir')

  end

   def preencher_e_verificar_comida

      fill_in 'Codigo',     :with => "20141"
      fill_in 'Nome',  :with => "hamburguer"
      fill_in 'Tipo',     :with => "fast food"
      fill_in 'Preco',     :with => "7.00"

      click_button 'Salvar'

      expect(page).to have_content 'Codigo: 20141'
      expect(page).to have_content 'Nome: hamburguer'
      expect(page).to have_content 'Tipo: fast food'
      expect(page).to have_content 'Preco: 7.00'

   end
end
