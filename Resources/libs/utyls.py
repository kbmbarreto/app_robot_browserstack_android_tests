from robot.api.deco import keyword
from faker import Faker

ROBOT_LIBRARY_DOC_FORMAT = 'reST'
fake = Faker(locale='pt_BR')


@keyword(name='Generate Name')
def generate_name():

    name = fake.name()
    print(name)
    return name


@keyword(name='Generate CNPJ')
def generate_cnpj():

    cnpj = fake.cnpj()
    print(cnpj)
    return cnpj


@keyword(name='Generate CPF')
def generate_cpf(formatted: bool = True):

    cpf = fake.cpf()
    if not formatted:
        cpf = cpf.replace('.', '').replace('-', '')
    print(cpf)
    return cpf


@keyword(name='Generate Email')
def generate_email():

    email = fake.email()
    print(email)
    return email


@keyword(name='Generate Phone Number')
def generate_phone_number():

    phone_number = fake.phone_number()
    print(phone_number)
    return phone_number
