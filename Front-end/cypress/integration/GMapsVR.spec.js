///  <reference types ="cypress" />

require('cypress-xpath')


describe ('Acessar a Pagina da VR e navegar até aparecer o google maps', () => {

        before(()=>{
            cy.visit('https://vr.com.br/')
             //fecha mensagem de cookie 
            cy.get('#lum_4028808471FC1D5D0171FE80340D6AC8_closePrivacyTerm').click()
        })

    it ('navegar até aparecer o google maps', () => {
         
        // seleciona o link na home  Para você 
        cy.get(':nth-child(3) > .vr-quick-navigation__link').click()
        //fecha mensagem de cookie 
        cy.get('#lum_4028808471FC1D5D0171FE80340D6AC8_closePrivacyTerm').click()
       //Seleciona o botão  ONDE USAR MEU VR? 
       cy.get('.vr-button--negative').click()
       //verifica se contém o texto na página
       cy.get('.vr-hero__title').should('contain', 'Mais liberdade de escolha para você.')
      //valida que o iframe(mapa do google.) está aberto
       cy.xpath("//*[@id='map']/div/div/iframe").should('have.attr', 'aria-hidden', 'true')
       

    })
    
    
    
})