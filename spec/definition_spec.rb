require('rspec')
require('word')
require('definition')

describe(Definition) do
  describe('#definition') do
    it('returns the definition for the word') do
    test_definition = Definition.new('a domestricated feline mammal')
    expect(test_definition.definition()).to(eq('a domestricated feline mammal'))
  end
 end
end
