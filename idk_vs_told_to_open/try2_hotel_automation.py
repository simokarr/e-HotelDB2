import random

# Open the text files and read the names into separate lists
with open('first_names.txt', 'r') as f:
    first_names = f.read().splitlines()

#with open('hotel_chain_names.txt', 'r') as f:
#    hotel_chain_names = f.read().splitlines()

with open('last_names.txt', 'r') as f:
    last_names=f.read().splitlines()

with open ('addresses.txt','r') as f:
    addresses=f.read().splitlines()

with open ('email_addresses.txt','r')as f:
    email_addresses=f.read().splitlines()

with open ('phone_numbers.txt','r') as f:
    phone_numbers=f.read().splitlines()



with open('hotel_chain_names.txt', 'r') as f:
    hotel_chain_names = f.read().splitlines()

with open('hotel_names.txt','r') as f:
    hotel_names=f.read().splitlines()

with open('dates.txt','r') as f:
    dates=f.read().splitlines()

with open('sin_numbers.txt','r') as f:
    sin_numbers=f.read().splitlines()

with open('hotel_employee_roles.txt','r') as f:
    hotel_employee_roles=f.read().splitlines()

with open('amenities.txt','r') as f:
    amenities=f.read().splitlines()

with open('view_types.txt','r') as f:
    view_types=f.read().splitlines()

with open('extensions.txt', 'r') as f:
    extensions=f.read().splitlines()

with open('damages.txt','r') as f:
    damages=f.read().splitlines()

with open ('availabilities.txt','r') as f:
    availabilities=f.read().splitlines()

# Generate 10 random name combinations and print them out
for i in range(5):
    first_name = random.choice(first_names)
    hotel_chain_name=random.choice(hotel_chain_names)
    last_name=random.choice(last_names)
    address=random.choice(addresses)
    email_address=random.choice(email_addresses)
    phone_number=random.choice(phone_numbers)
    hotel_name=random.choice(hotel_names)
    sin_number=int(random.choice(sin_numbers))
    date=random.choice(dates)
    view_type=random.choice(view_types)
    extension=random.choice(extensions)
    damage=random.choice(damages)
    amenity=random.choice(amenities)
    availability=random.choice(availabilities)
    hotel_anount_in_chain=random.randint(3,20)
    star_category=random.randint(3,5)
    room_amount_hotel=random.randint(5,7)
    manager=random.choice(first_names)
    price=random.randint(1000,5000)
    room_cpsty=random.randint(1,5)
    hotel_employee_role=random.choice(hotel_employee_roles)
    ##### hotel#####
    #print("(\'Westin Hotels & Resorts.\',","\'"+hotel_name+"\',",star_category,",",room_amount_hotel,", \'"+address+"\',","\'"+email_address+"\',","\'"+phone_number+"\',","\'"+manager+"\'),")
    #print("(\'The Luxury Collection Hotels.\',","\'"+hotel_name+"\',",star_category,",",room_amount_hotel,", \'"+address+"\',","\'"+email_address+"\',","\'"+phone_number+"\',","\'"+manager+"\'),")
    #print("(\'Sheraton Hotels & Resorts.\',","\'"+hotel_name+"\',",star_category,",",room_amount_hotel,", \'"+address+"\',","\'"+email_address+"\',","\'"+phone_number+"\',","\'"+manager+"\'),")
    #print("(\'St. Regis Hotels & Resorts.\',","\'"+hotel_name+"\',",star_category,",",room_amount_hotel,", \'"+address+"\',","\'"+email_address+"\',","\'"+phone_number+"\',","\'"+manager+"\'),")
    #print("(\'Montage Hotels & Resorts.\',","\'"+hotel_name+"\',",star_category,",",room_amount_hotel,", \'"+address+"\',","\'"+email_address+"\',","\'"+phone_number+"\',","\'"+manager+"\'),")
    #### Room ####
    #rooms(hotel_ID, price, amenities, room_cpsty, view_type, ext_poss, damages, status)
    print ("(",38,',',price,",\'"+amenity+"\',",room_cpsty,",\'"+view_type+"\',","\'"+extension+"\',","\'"+damage+"\',","\'"+availability+"\'),")

# hotel(hotel_chain_name,name, star_category, room_amnt, hotel_adrs, email, phone_num, manager)

#    print("(\'"+first_name+"\',","\'"+last_name+"\',","\'"+address+"\',",sin_number,",\'"+hotel_employee_role+"\'),")


