class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def date
        self.appointment_datetime.strftime("%B %e, %Y at %H:%M")
    end

    def doctor_name=(name) #setter method
        self.doctor = Doctor.find_or_create_by(name: name)
        # this method is going to check if the dr we want to instate has been
        # created already (find) otherwise it will create it
    end

    def doctor_name #getter method
        self.doctor ? self.doctor.name : nil
        # ternary statement to get dr name or else its nil
    end

    def patient_name=(name)
        self.patient = Patient.find_or_create_by(name: name)
    end

    def patient_name
        self.patient ? self.patient.name : nil
    end
end
