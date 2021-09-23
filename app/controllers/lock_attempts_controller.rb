class LockAttemptsController < ApplicationController

  # GET /lock_attempts/new
  def new
    @lock_attempt = LockAttempt.new
  end

  # POST /lock_attempts or /lock_attempts.json
  def create
    login
  end

  private

  def login
    url = 'https://www.mysubaru.com/login.html'
    response = LockAttempt.login(url)
    response[:status] == :completed && response[:error].nil?
  rescue StandardError => e
    flash.now[:alert] = "Error: #{e}"
  end
end
