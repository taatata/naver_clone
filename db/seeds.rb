# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(
  name:                  "testname",
  email:                 "test@example.com",
  password:              "foobar",
  password_confirmation: "foobar"
)

50.times do |i|
  Matome.create(
    title: "まとめ記事タイトル#{i}",
    content: "まとめ記事コンテンツ#{i}ですよ。",
    user_id: 2
  )
end
