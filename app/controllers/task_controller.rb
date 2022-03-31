class TaskController < ApplicationController
  def index
  end

  def create
    complexity = create_params
    puts "Processando task de complexidade #{create_params}"
    case complexity
    when '0'
      sleep 8
      redirect_to '/'
    when '1'
      sleep 4
      redirect_to '/'
    when '2'
      sleep 2
      redirect_to '/'
    end
  end

  private
  def create_params
    params.require(:complexity)
  end
end
