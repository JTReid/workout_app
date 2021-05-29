class TrainersController < ApplicationController
  def went_to_harvard
    @expensive_trainers = Trainer.went_to_harvard
  end
end
