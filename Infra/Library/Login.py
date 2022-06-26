import random
class Login():
    def sortear_nome(self):
        firstnames = ['Abby','Barbara','Maicon','Milene','Rodson','Jorge','Carlos','Gustavo']
        return random.choice(firstnames)
    
    def sortear_sobrenome(self):
        lastnames = ['Pereira','Bueno','Silvia','Goncalves','Santana','Castro','Cachias','Tundra']
        return random.choice(lastnames)

    def sortear_email(self):
        emails = ['gmail','outlock','hotmail','yahoo','bing','bol','uol','example']
        nome,sobrenome = self.sortear_nome(self),self.sortear_sobrenome(self)
        email = random.choice(emails)

        email_return = nome+sobrenome+'@'+email+'.com'
        return email_return

'''print(Login.sortear_nome(Login))
print(Login.sortear_sobrenome(Login))
print(Login.sortear_email(Login))'''