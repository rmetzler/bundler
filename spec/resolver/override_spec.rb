require "spec_helper"

describe "override conflicting versions" do

  before :each do
    @index = a_conflicting_index
  end

  it "should throw version conflict error in case of conflicting versions" do
    dep "version_conflict_app"

    expect {
      resolve
    }.to raise_error(Bundler::VersionConflict, /could not find compatible versions/im)
  end

end
