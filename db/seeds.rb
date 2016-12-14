# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



MembershipPlan.create name: 'basic', price: 0
MembershipPlan.create name: 'pro', price: 9.95

# create the first users....

# u1 = User.create
# Profile.create user_id: u1,    first_name: 'Bob',   last_name:  'Crow',    job_title:  'Investor',
    # avatar_file_name
    # membership_plan_id: 1,
    # stripe_customer_token: 
    

# u2 = User.create
# Profile.create user_id: u2,    first_name: 'Nancy', last_name:  'Crow',    job_title:  'Developer'

# u3 = User.create
# Profile.create user_id: u3,    first_name: 'Hank',  last_name:  'Gilbert', job_title:  'Entrepreneur'

#     stripe_customer_token: 'cus_9jwe0WcuLmXEt1'




