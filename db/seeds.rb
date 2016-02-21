# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Video.delete_all

Video.create(
  title: "Some Video",
  tags: "video1",
  video_link: "sdfsfsd",
  filmed_when: Date.parse("15-02-2014"),
  filmed_where: "New York"
  )
