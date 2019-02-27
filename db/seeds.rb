roles = ['pyshician', 'nurse', 'patient']
10.times do 
    doctor = Doctor.create(
        name: Faker::DrWho.the_doctor
    )

    10.times do
        user = User.create(
        first_name: Faker::TvShows::FamilyGuy.charater,
        last_name: Faker::Games::SuperSmashBros.stage
        )

        Appointment.create(
            role: roles.sample,
            doctor_id: doctor.id,
            user_id: user.id
        )
        end
    end

    puts "Data Seeded"