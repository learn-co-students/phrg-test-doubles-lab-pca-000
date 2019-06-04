require "spec_helper"

RSpec.describe "Doubles" do
  # Instead of using instances in these tests,
  # replace each of these with a 'leaf' test double
  it "leaf returns expected color" do
    tree = Tree.new
    branch = Branch.new(tree)
    leaf = Leaf.new(branch)

    leaf = double("leaf is green", color: "green")
  end

  it "leaf's branch returns expected length" do
    tree = Tree.new
    branch = Branch.new(tree)
    leaf = Leaf.new(branch)

    branch = double("leaf branch length is 4 feet", length: "4 feet")
    leaf = double("leaf belongs to a branch", branch: branch)
  end

  it "leaf's branch's tree returns expected bark" do
    tree = Tree.new
    branch = Branch.new(tree)
    leaf = Leaf.new(branch)

    tree = double("tree bark is thick and brown", bark: "thick and brown")
    branch = double("branch belongs to a tree", tree: tree)
    leaf = double("leaf belongs to a branch", branch: branch)
  end
end
