class DiagnosisController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    render json: Diagnosis.all
  end

  def create
    diagnosis = Diagnosis.new(diagnosis_params)
    p diagnosis

    if diagnosis.save
      render json: {diagnosis: diagnosis}
    else
      render json: {error: "create failed!"}, status: :unprocessable_entity
    end
  end

  def diagnosis_params
    params.require(:diagnosis).permit(:name, :d_count, :i_count, :s_count, :c_count)
  end
end
