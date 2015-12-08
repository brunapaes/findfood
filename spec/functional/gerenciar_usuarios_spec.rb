# coding: utf-8

require 'rails_helper'

feature 'Registrar Cadastro' do

  scenario 'incluir Cadastros' do 

    visit new_cadastro_path
    preencher_e_verificar_cadastro
  end

  scenario 'alterar Cadastros' do 

    cadastro = FactoryGirl.create(:cadastro)
    visit edit_cadastro_path(cadastro)
    preencher_e_verificar_cadastro

  end

  scenario 'excluir cadastros' do 

    cadastro = FactoryGirl.create(:cadastro)
    visit cadastros_path
    
    click_link('Excluir')

  end

   def preencher_e_verificar_cadastro

      fill_in 'Nome',     :with => "Juliana"
      fill_in 'Email',  :with => "jualba@hotmail.com"
      fill_in 'Senha',     :with => "123456"

      click_button 'Salvar'

      expect(page).to have_content 'Nome: Juliana'
      expect(page).to have_content 'Email: jualba@hotmail.com'
      expect(page).to have_content 'Senha: 123456'

   end
end
