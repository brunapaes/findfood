# coding: utf-8

require 'rails_helper'

feature 'Registrar Pedido' do

  scenario 'incluir Pedido' do 

    visit new_pedido_path
    preencher_e_verificar_pedido
  end

  scenario 'alterar Pedido' do 

    pedido = FactoryGirl.create(:pedido)
    visit edit_pedido_path(pedido)
    preencher_e_verificar_pedido

  end

  scenario 'excluir pedido' do 

    pedido = FactoryGirl.create(:pedido)
    visit pedidos_path
    
    click_link('Excluir')

  end

   def preencher_e_verificar_pedido

      fill_in 'Numero',     :with => "20151"
      fill_in 'Valor',     :with => "20.00"

      click_button 'Salvar'

      expect(page).to have_content 'Numero: 20151'
      expect(page).to have_content 'Valor: 20.00'

   end
end
