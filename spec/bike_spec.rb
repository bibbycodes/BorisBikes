require 'bike'

describe Bike do
  it { is_expected.to respond_to :working?}

  it {is_expected.to respond_to :broken?}

  it {is_expected.to respond_to :report}

  it "should be able to check if broken" do
    expect(subject.broken?).to eq(subject::broken)
  end

  it "should be able to report as broken" do
    subject.report
    expect(subject.broken).to eq(true)
  end
end