require 'rest-client'

module Takeoff
  MIN_TAKEOFF_TIME = 10
  MAX_TAKEOFF_TIME = 30

  def takeoff(id)
    sleep rand(MIN_TAKEOFF_TIME..MAX_TAKEOFF_TIME)

    RestClient::Request.execute(
      method: :post,
      url: "localhost:3000/api/planes/#{id}/hangar",
      headers: {
        params: {
          plane: {
            number: id,
            state: :hangar
          }
        }
      }
    )

    p 'done!'
  end
end
