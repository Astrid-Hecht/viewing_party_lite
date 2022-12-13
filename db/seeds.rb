require 'factory_bot_rails'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Site Seeding
#--------------

movie_ids = MovieFacade.top_rated(rand(1..50)).map(&:id).sample(6)

@user1 = FactoryBot.create(:user, password: 'password')

@party1 = FactoryBot.create(:party, movie_id: movie_ids[0])
@party2 = FactoryBot.create(:party, movie_id: movie_ids[1])
@party3 = FactoryBot.create(:party, movie_id: movie_ids[2])
@party4 = FactoryBot.create(:party, movie_id: movie_ids[3])

@user2 = FactoryBot.create(:user, password: 'password')

@party5 = FactoryBot.create(:party, movie_id: movie_ids[4])
@party6 = FactoryBot.create(:party, movie_id: movie_ids[5])

@user3 = FactoryBot.create(:user, password: 'password')

@user_party1 = FactoryBot.create(:user_party, user: @user1, party: @party1)
@user_party2 = FactoryBot.create(:user_party, user: @user1, party: @party2)
@user_party3 = FactoryBot.create(:user_party, user: @user1, party: @party3)
@user_party4 = FactoryBot.create(:user_party, user: @user1, party: @party4)
@user_party5 = FactoryBot.create(:user_party, user: @user2, party: @party5)
@user_party5 = FactoryBot.create(:user_party, user: @user2, party: @party6)

# Overflow tests (comment out above and uncomment below to generate lots of movies 
# for user 1)
#--------------

# movie_ids = MovieFacade.top_rated(rand(1..50)).map(&:id).sample(6)

# @user1 = User.first

# @party1 = FactoryBot.create(:party, movie_id: movie_ids[0])
# @party2 = FactoryBot.create(:party, movie_id: movie_ids[1])
# @party3 = FactoryBot.create(:party, movie_id: movie_ids[2])
# @party4 = FactoryBot.create(:party, movie_id: movie_ids[3])
# @party5 = FactoryBot.create(:party, movie_id: movie_ids[4])
# @party6 = FactoryBot.create(:party, movie_id: movie_ids[5])

# @user_party1 = FactoryBot.create(:user_party, user: @user1, party: @party1)
# @user_party2 = FactoryBot.create(:user_party, user: @user1, party: @party2)
# @user_party3 = FactoryBot.create(:user_party, user: @user1, party: @party3)
# @user_party4 = FactoryBot.create(:user_party, user: @user1, party: @party4)
# @user_party5 = FactoryBot.create(:user_party, user: @user1, party: @party5)
# @user_party5 = FactoryBot.create(:user_party, user: @user1, party: @party6)
