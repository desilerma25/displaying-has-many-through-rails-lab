class DoctorsController < ApplicationController
    def show
        find_doc
    end

    private

    def find_doc
        @doctor = Doctor.find(params[:id])
    end

    def doctor_params
        params.require(:doctor).require(:name, :department)
    end
end