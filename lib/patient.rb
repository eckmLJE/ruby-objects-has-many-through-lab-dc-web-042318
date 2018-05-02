class Patient

    attr_accessor :name, :appointments, :doctors

    def initialize(name)
        @name = name
        @appointments = []
        @doctors = []
    end
    
    def add_appointment(appointment)
        self.appointments << appointment
        appointment.patient = self
        appointment.doctor.patients << appointment.patient
        self.doctors << appointment.doctor
        
    end

end