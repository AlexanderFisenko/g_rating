require 'spec_helper'

describe Girl do
  describe ':calculate_rating' do
    it 'calculates an average value' do
      @girl = create(:girl)
      @vote1 = create(:vote, girl_id: @girl.id, value: 1)
      @vote2 = create(:vote, girl_id: @girl.id, value: 10)

      expect(@girl.calculate_rating).to eq(5.5)

    end
  end
end
