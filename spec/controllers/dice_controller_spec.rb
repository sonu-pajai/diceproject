require 'rails_helper'

RSpec.describe DiceController do

  it 'should compute dice total ' do
    params = { sides: {"0": 6, "1": 20} }

    post :compute, params: { sides: {"0": 6, "1": 20} }

    expect(response).to have_http_status(200)
  end
end