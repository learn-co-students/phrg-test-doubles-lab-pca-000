require "spec_helper"

RSpec.describe "Doubles" do
  # Instead of using instances in these tests,
  # replace each of these with a 'leaf' test double
  it "leaf returns expected color" do

    leaf = double("leaf is green", color:"green")
    expect(leaf.color).to eq("green")

    expect(leaf).to_not be_instance_of(Leaf)
  end

  it "leaf's branch returns expected length" do

    branch = double("leaf branch length is 4 feet", length: "4 feet")
    leaf = double("leaf belongs to a branch", branch: branch)
    expect(leaf.branch.length).to eq("4 feet")

    expect(leaf).to_not be_instance_of(Leaf)
    expect(leaf.branch).to_not be_instance_of(Branch)
  end

  it "leaf's branch's tree returns expected bark" do

    tree = double("tree bark is thick and brown", bark: "thick and brown")
    branch = double("branch belongs to tree", tree: tree)
    leaf = double("does this matter besides telling fellow coders", branch: branch)

    expect(leaf.branch.tree.bark).to eq("thick and brown")

    expect(leaf).to_not be_instance_of(Leaf)
    expect(leaf.branch).to_not be_instance_of(Branch)
    expect(leaf.branch.tree).to_not be_instance_of(Tree)
  end
end
