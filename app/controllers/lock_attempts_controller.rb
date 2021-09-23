class LockAttemptsController < ApplicationController
  before_action :set_lock_attempt, only: %i[ show edit update destroy ]


  # GET /lock_attempts/new
  def new
    @lock_attempt = LockAttempt.new
  end

  # POST /lock_attempts or /lock_attempts.json
  def create
    @lock_attempt = LockAttempt.new(lock_attempt_params)

    respond_to do |format|
      if @lock_attempt.save
        format.html { redirect_to @lock_attempt, notice: "Lock attempt was successfully created." }
        format.json { render :show, status: :created, location: @lock_attempt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lock_attempt.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lock_attempt
      @lock_attempt = LockAttempt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lock_attempt_params
      params.require(:lock_attempt).permit(:attempted, :errors)
    end
end
