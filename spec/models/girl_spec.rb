require 'spec_helper'

describe Girl do
  describe ':rank' do
    it 'calculates an average value' do
      @girl = create(:girl)
      @vote1 = create(:vote, girl_id: @girl.id, value: 1)
      @vote2 = create(:vote, girl_id: @girl.id, value: 10)

      expect(@girl.rank).to eq(5.5)

    end
  end
end
