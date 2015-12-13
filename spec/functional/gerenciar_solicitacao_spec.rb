require 'spec_helper'
require 'rails_helper'

feature 'gerenciar solicitacao' do

  before(:each) do
    @comida = create(:comida, nome: "hamburguer")
  end


  let(:dados) do {

	numero: "20151",
	valor: "7.0",
    comida: "hamburguer"
   }
  end

  scenario 'incluir solicitacao' do #, :js => true  do
    visit new_solicitacao_path
    preencher(dados)
    click_button 'Salvar'
    #save_and_open_page
    verificar(dados)
	

  end

  scenario 'alterar solicitacao' do #, :js => true  do

    solicitacao = FactoryGirl.create(:solicitacao, comida: @nome )

    visit edit_solicitacao_path(solicitacao)
    preencher(dados)
    #save_and_open_page
    click_button 'Salvar'
    #save_and_open_page
    verificar(dados)


  end


  scenario 'excluir solicitacao' do #, :js => true  do

    solicitacao = FactoryGirl.create(:solicitacao, comida: @nome)
    visit solicitacaos_path
    #save_and_open_page
    click_link 'Excluir'

  end

  def preencher(dados)

    fill_in 'Numero',  with: dados[:numero]
    fill_in 'Valor',  with: dados[:valor]
    select dados[:nome], from: "Comida"

  end
 
  def verificar(dados)

    page.should have_content "Numero: #{dados[:numero]}"
    page.should have_content "Valor: #{dados[:valor]}"
    page.should have_content "Comida: #{dados[:nome]}"

  end

end
