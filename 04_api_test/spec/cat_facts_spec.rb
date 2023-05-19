require 'cat_facts'

RSpec.describe CatFacts do
  it "returns a fact about a cat" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"While many parts of Europe and North America consider the black cat a sign of bad luck, in Britain and Australia, black cats are considered lucky.","length":146}')
    cat_fact = CatFacts.new(fake_requester)
    expect(cat_fact.provide).to eq "Cat fact: While many parts of Europe and North America consider the black cat a sign of bad luck, in Britain and Australia, black cats are considered lucky."
  end

  it "returns another fact about a cat" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"Cats control the outer ear using 32 muscles; humans use 6","length":57}')
    cat_fact_2 = CatFacts.new(fake_requester)
    expect(cat_fact_2.provide).to eq "Cat fact: Cats control the outer ear using 32 muscles; humans use 6"
  end
end