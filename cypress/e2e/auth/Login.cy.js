/// <reference types="cypress"/>

const userName = 'standard_user';
const password = 'secret_sauce';
const blockedUser = 'locked_out_user';
const problemUser = 'problem_user'


describe('Funcionalidade - Login', () => {
    
    beforeEach(() => {
        cy.visit('/')
        cy.reload();
    });

    it('CT-001 - Realizar login Válido', () => {
        
            cy.get('#user-name')
                .should('to.be.exist')
                    .type(userName);

            cy.get('#password')
                .should('to.be.exist')
                    .type(password);

            cy.get('#login-button')
                .should('to.be.exist')
                    .click();
            

    });

    it('CT-002 - Realizar login com senha incorreta', () => {
        cy.get('#user-name')
                .should('to.be.exist')
                    .type(userName);

            cy.get('#password')
                .should('to.be.exist')
                    .type('teste');

            cy.get('#login-button')
                .should('to.be.exist')
                    .click();

            cy.get('[data-test="error"]')
               .contains('Epic sadface: Username and password do not match any user in this service')
                    .should('to.be.exist');
            

            //validar exibições dos ícones de erro
    });

    it('CT-003 - Realizar login Invalido', () => {
        cy.get('#user-name')
                .should('to.be.exist')
                    .type('teste@test.com.br');

            cy.get('#password')
                .should('to.be.exist')
                    .type(password);

            cy.get('#login-button')
                .should('to.be.exist')
                    .click();

            cy.get('[data-test="error"]')
               .contains('Epic sadface: Username and password do not match any user in this service')
                    .should('to.be.exist');
            

            //validar exibições dos ícones de erro
    });

    it('CT-004 - Realizar login Sem preencher os campos', () => {
        
        cy.get('#login-button')
            .should('to.be.exist')
                 .click();

        cy.get('[data-test="error"]')
            .should('to.be.exist');
        
    });

    it('CT-005 - Realizar login com campo Username vazio', () => {
  
            cy.get('#password')
                .should('to.be.exist')
                    .type(password);

            cy.get('#login-button')
                .should('to.be.exist')
                    .click();

            cy.get('[data-test="error"]')
               .contains('Epic sadface: Username is required')
                    .should('to.be.exist');
            
            //validar exibições dos ícones de erro
    });

    it('CT-006 - Realizar login com campo de Senha vazio', () => {
        cy.get('#user-name')
                .should('to.be.exist')
                    .type(userName);

            cy.get('#login-button')
                .should('to.be.exist')
                    .click();

            cy.get('[data-test="error"]')
               .contains('Epic sadface: Password is required')
                    .should('to.be.exist');
            
            //validar exibições dos ícones de erro
            
    });

    it('CT-007 - Realizar login com user Bloqueado', () => {
        

        cy.get('#user-name')
          .should('to.be.exist')
              .type(blockedUser);

        cy.get('#password')
            .should('to.be.exist')
                  .type(password);

         cy.get('#login-button')
              .should('to.be.exist')
                 .click();

        cy.get('[data-test="error"]')
                .contains('Epic sadface: Sorry, this user has been locked out.')
                      .should('to.be.exist');
    });

    it('CT-008 - Realizar login com user Problemático', () => {
        

        cy.get('#user-name')
          .should('to.be.exist')
              .type(problemUser);

        cy.get('#password')
            .should('to.be.exist')
                  .type(password);

         cy.get('#login-button')
              .should('to.be.exist')
                 .click();

        cy.get('.app_logo')
            .should('to.be.exist');

    });



    it('CT-006 - Realizar validação de exibição de Logo', () =>{

        cy.get('.login_logo')
            .contains('Swag Labs')
                .should('to.be.exist')
    });

    it('CT-007 - Realizar validação de exibição das Credenciais de Login', () =>{

        cy.get('[data-test="login-credentials-container"]')
                .should('to.be.exist')
    });

    it('CT-008 - Realizar validação de exibição dos elementos da página de login', () => {
        
        cy.get('.login_logo')
            .contains('Swag Labs')
                .should('to.be.exist')

        cy.get('[data-test="login-credentials-container"]')
            .should('to.be.exist')

        cy.get('.login-box')
            .should('to.be.exist');
    });





});