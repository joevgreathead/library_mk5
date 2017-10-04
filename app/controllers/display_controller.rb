class DisplayController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :global_val

  def index
  end

  def display_status
    open_checkouts = Checkout.where(closed: false).size
    longest_checkout = Checkout.longest_checkout_game_today(@offset)
    total_games = Game.where(culled: false).size

    render json: {
        open_checkouts: open_checkouts,
        longest_checkout: longest_checkout,
        total_games: total_games,
        current_offset: @offset
      }
  end

  def global_val
    @current_event = Event.current unless @current_event
    @offset = request.headers[:clientOffset].to_i
  end

end
