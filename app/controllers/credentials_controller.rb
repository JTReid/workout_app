class CredentialsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  
  def new
    build_trainer
    @credential = Credential.new    
  end

  def show
    @credential = Trainer.find(params[:trainer_id]).credentials.where(trainer_id: params[:id])
  end

  def create
    build_trainer
    @credential = @trainer.credentials.build(credential_params)

    if @credential.save
      puts "Yey we saved!"
    else
      render :new
    end
  end

  private

  def build_trainer
    @trainer = Trainer.find(params[:trainer_id])
  end

  def credential_params
    params.require(:credential).permit(:institution, :number)
  end
end
