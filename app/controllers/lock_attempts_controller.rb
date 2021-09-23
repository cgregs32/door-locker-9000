class LockAttemptsController < ApplicationController

  # GET /lock_attempts/new
  def new
    @lock_attempt = LockAttempt.new
  end

  # POST /lock_attempts or /lock_attempts.json
  def create
    login
    lock
  end

  private

  def login
    url = 'https://www.mysubaru.com/login.html'
    response = Login.login(url)
  rescue StandardError => e
    flash.now[:alert] = "Error: #{e}"
  end

  def lock
    url = "https://www.mysubaru.com/"
    response = LockAttempt.lock(url)
  end
end
