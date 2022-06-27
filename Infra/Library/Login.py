import random
class Login():
    def sortear_nome(self):
        firstnames = ['Abby','Barbara','Maicon','Milene','Rodson','Jorge','Carlos','Gustavo']
        return random.choice(firstnames)
    
    def sortear_sobrenome(self):
        lastnames = ['Pereira','Bueno','Silvia','Goncalves','Santana','Castro','Cachias','Tundra']
        return random.choice(lastnames)
    
    def sortear_phone(self):
        phone = f'{random.randrange(1, 10**3):06}'
        return phone

    def sortear_email(self):
        emails = ['gmail','outlock','hotmail','yahoo','bing','bol','uol','example']
        nome,sobrenome = self.sortear_nome(),self.sortear_sobrenome()
        email = random.choice(emails)
        email_return = nome+sobrenome+'@'+email+'.com'
        return email_return
        
    def sortear_senha(self):
        senha = f'{random.randrange(1, 10**3):06}'
        return senha

       

#print(Login.sortear_nome(Login))
#print(Login.sortear_sobrenome(Login))
#print(Login.sortear_email(Login))
#print(Login.sortear_phone(Login)," ",Login.sortear_senha(Login))