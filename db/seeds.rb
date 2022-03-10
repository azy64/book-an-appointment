# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ad = Address.create(city: 'Ikeja', state: 'Legos', country: 'Nigeria', street: '4 Awolowo road')
ad1 = Address.create(city: 'Orleans', state: 'Center Loir', country: 'France', street: '136 rue des Martes 45000')

d1 = Doctor.create(name: 'Pablo', email: 'plablo@gmail.com', picture: 'https://media.istockphoto.com/photos/portrait-of-male-doctor-in-white-coat-and-stethoscope-standing-in-picture-id1327024466?b=1&k=20&m=1327024466&s=170667a&w=0&h=vcw4Exhv4pkR8fMVLNXhNESaKq1HbYwJ1iElLlQBxI0=')
d2 = Doctor.create(name: 'AZARIA SAIDI', email: 'saidi@gmail.com', picture: 'https://media.istockphoto.com/photos/portrait-of-a-male-doctor-picture-id1342708859?b=1&k=20&m=1342708859&s=170667a&w=0&h=Q_F0jKkxXNlRb5wkDbeEaIrr6pQp8aDDdzRjvN6XmQU=')
d3 = Doctor.create(name: 'WILLY', email: 'willy@gmail.com', picture: 'https://media.istockphoto.com/photos/doctor-clicking-on-a-laptop-before-her-picture-id1292777576?b=1&k=20&m=1292777576&s=170667a&w=0&h=Tg1ASn3aw19DgyqjGaaWqJmPeXiDRaU1LW8c83Y5tbw=')
d4 = Doctor.create(name: 'Ben Mukebo', email: 'mukebi@gmail.com', picture: 'https://media.istockphoto.com/photos/portrait-of-male-doctor-in-white-coat-and-stethoscope-standing-in-picture-id1327024466?k=20&m=1327024466&s=612x612&w=0&h=TDbIUqY-iPy1EQnOJvXgQKrTMrEAH0ekqNoWY8jei1g=')
d5 = Doctor.create(name: 'Tolu', email: 'toluwaze@gmail.com', picture: 'https://media.istockphoto.com/photos/friendly-smiling-young-female-doctor-hand-pointing-at-copy-space-on-picture-id1318511909?k=20&m=1318511909&s=612x612&w=0&h=bnYjMUscH1bZwIziuo_OIGObRwnrz7Wzvi5bbGXY4S4=')
d6 = Doctor.create(name: 'Chawanzi', email: 'Ngui@gmail.com', picture: 'https://media.istockphoto.com/photos/happy-african-american-pediatrician-holding-a-small-girl-in-the-at-picture-id1288964074?k=20&m=1288964074&s=612x612&w=0&h=o2p1AGEkdflTdGBiEb84nAwaPovqxmjZRrCsMqjipD8=')
d7 = Doctor.create(name: 'Henry Eze', email: 'Henry-eze@gmail.com', picture: 'https://media.istockphoto.com/photos/happy-nurse-with-face-mask-smiling-at-hospital-picture-id1307543531?k=20&m=1307543531&s=612x612&w=0&h=SWeQellBJ6DvJi-gYnI31-dQmIv6IUI_zSdWTTZhzPY=')
d8 = Doctor.create(name: 'Ali', email: 'ali@gmail.com', picture: 'https://media.istockphoto.com/photos/happy-and-smiling-african-american-male-doctor-wearing-white-coat-on-picture-id1315185798?k=20&m=1315185798&s=612x612&w=0&h=4tRxip0l5slLlo8NM2YIepLgEAghMOSGhaGEuQ0GFFA=')

DoctorAddress.create(doctor: d1, address: ad)
DoctorAddress.create(doctor: d2, address: ad)
DoctorAddress.create(doctor: d4, address: ad)
DoctorAddress.create(doctor: d3, address: ad1)
DoctorAddress.create(doctor: d5, address: ad1)
DoctorAddress.create(doctor: d6, address: ad1)
DoctorAddress.create(doctor: d7, address: ad1)
DoctorAddress.create(doctor: d8, address: ad)