# -*- encoding : utf-8 -*-
require 'spec_helper'

describe SmartSlug do
  let(:smart_slug) { SmartSlug.new(' Coração Valente ')}
  describe :to_s do
    it { expect(smart_slug.to_s).to eq("coracao-valente") }
  end
  describe :== do
    it { expect(smart_slug == 'coracao-valente').to be_true }
  end
  it "does not change variabled passed" do
    var = "Coração"
    expect(SmartSlug.new(var).to_s).to eq("coracao")
    expect(var).to eq("Coração")
  end
end
