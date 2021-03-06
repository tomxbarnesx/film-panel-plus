# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.create(name: "Animation 101", total_hours: "220", description: "It's time to raise the curtain on the Muppet Show tonight. If you have a problem if no one else can help and if you can find them maybe you can hire The A-Team. Doin' it our way. Nothin's gonna turn us back now.");
Course.create(name: "Empathic Directing", total_hours: "300", description: "It's time to raise the curtain on the Muppet Show tonight. If you have a problem if no one else can help and if you can find them maybe you can hire The A-Team. Doin' it our way. Nothin's gonna turn us back now.");
Course.create(name: "DIY Special Effects", total_hours: "300", description: "It's time to raise the curtain on the Muppet Show tonight. If you have a problem if no one else can help and if you can find them maybe you can hire The A-Team. Doin' it our way. Nothin's gonna turn us back now.")

Cohort.create(name: "Animation - Summer 2018", start_date: "20180601", end_date: "20180831", course_id: 1);
Cohort.create(name: "Directing - Summer 2018", start_date: "20180601", end_date: "20180830", course_id: 2);
Cohort.create(name: "DIYE - Summer 2018", start_date: "20180601", end_date: "20180830", course_id: 3);
Cohort.create(name: "Animation - Winter 2018", start_date: "20181101", end_date: "20181231", course_id: 1);
Cohort.create(name: "Directing - Winter 2018", start_date: "20181101", end_date: "20181231", course_id: 2);
Cohort.create(name: "DIYE - Winter 2018", start_date: "20181101", end_date: "20181231", course_id: 3);


Admin.create(salary: 100000, edu: "PhD")
User.create(first_name: "Tom", last_name: "Barnes", email: "admin@test.com", birthdate: "19900313", photo_url: "https://www.shareicon.net/data/256x256/2016/09/01/822747_user_512x512.png", userable_id: 1, userable_type: "Admin", password: "password");

i = 1
j = 2
while i < 31 do
    randoco = rand(1..6)
    Student.create(background: Faker::Job.field, payment: "Complete")
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, birthdate: Faker::Date.birthday(18, 65), photo_url: "https://www.shareicon.net/data/256x256/2016/09/01/822751_user_512x512.png", userable_type: "Student", userable_id: i, password: "password")
    Enrollment.create(user_id: j, cohort_id: randoco, grade: 100)
    i += 1
    j += 1
end

i += 1
k = 1
while k < 5 do
    rando = rand(50000..65000)
    randoco2 = rand(1..6)
    Instructor.create(salary: rando, edu: "Masters")
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, birthdate: Faker::Date.birthday(22, 65), photo_url: "https://www.shareicon.net/data/256x256/2016/09/01/822761_user_512x512.png", userable_type: "Instructor", userable_id: k, password: "password");
    Enrollment.create(user_id: i, cohort_id: randoco2)
    k += 1
    i += 1
end