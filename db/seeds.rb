# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             details: "自己紹介欄です。自由に書き込んでください。自己紹介欄です。自由に書き込んでください。自己紹介欄です。自に書き込んでください。自己紹介欄です。自由に書き込んでください。自己紹介欄です。自由に書き込んでください。自己紹介欄です。自由に書き込んでください。自己紹介欄です。自由に書き込んでください。自己紹介欄です。自由に書き込んでください。",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

User.create!(name:  "Example User2",
             email: "example2@railstutorial.org",
             details: "自己紹介欄です。自由に書き込んでください。自己紹介欄です。自由に書き込んでください。自己紹介欄です。自に書き込んでください。自己紹介欄です。自由に書き込んでください。自己紹介欄です。自由に書き込んでください。自己紹介欄です。自由に書き込んでください。自己紹介欄です。自由に書き込んでください。自己紹介欄です。自由に書き込んでください。",
             password:              "foobar2",
             password_confirmation: "foobar2",
             admin: true)             
