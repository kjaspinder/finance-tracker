class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        respond_to do |format|
          format.js { render partial: 'users/result' }
        end
      else
        respond_to do |_format|
          show_error_msg('Please enter a valid symbol to search')
        end
      end
    else
      respond_to do |_format|
        show_error_msg('Please enter a symbol to search')
      end
    end
  end

  def show_error_msg(message)
    flash.now[:alert] = message
    format.js { render partial: 'users/result' }
  end
end
