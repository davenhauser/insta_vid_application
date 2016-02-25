# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Video.delete_all

Video.create(
  title: "Cuteness",
  tags: "video1",
  video_link: "i65ZVBU2Tt6",
  filmed_when: Date.parse("15-02-2014"),
  filmed_where: "New York"
  )

Video.create(
  title: "Helicopter",
  tags: "video2",
  video_link: "Ml16lZVTTxe",
  filmed_when: Date.parse("15-02-2014"),
  filmed_where: "New York"
  )

Video.create(
  title: "Guy",
  tags: "video3",
  video_link: "irtP23ZdFFv",
  filmed_when: Date.parse("15-02-2014"),
  filmed_where: "New York"
  )

Video.create(
  title: "Oprah",
  tags: "video4",
  video_link: "irETtX5bJrI",
  filmed_when: Date.parse("15-02-2014"),
  filmed_where: "New York"
  )

Video.create(
  title: "Parrot",
  tags: "video5",
  video_link: "irW1O6tze2F",
  filmed_when: Date.parse("15-02-2014"),
  filmed_where: "New York"
  )

Video.create(
  title: "Kirby",
  tags: "video6",
  video_link: "i110vWJKIKZ",
  filmed_when: Date.parse("15-02-2014"),
  filmed_where: "New York"
  )

Video.create(
  title: "Dance",
  tags: "video6",
  video_link: "ir3Y5YjhXj3",
  filmed_when: Date.parse("15-02-2014"),
  filmed_where: "New York"
  )

Video.create(
  title: "Guitar",
  tags: "video7",
  video_link: "irVFgLjJUXx",
  filmed_when: Date.parse("15-02-2014"),
  filmed_where: "New York"
  )

Video.create(
  title: "Dance 4 Life",
  tags: "video8",
  video_link: "ir3rZVe5qMY",
  filmed_when: Date.parse("15-02-2014"),
  filmed_where: "New York"
  )

