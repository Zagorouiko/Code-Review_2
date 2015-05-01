require('rspec')
require('word')

  describe(Word) do
    describe('#words') do
      it('returns the word') do
        test_words = Word.new('cat')
        expect(test_words.words()).to(eq('cat'))
      end
    end

    describe('#id') do
      it("returns the id of the word") do
        test_words = Word.new('cat')
        expect(test_words.id()).to(eq(1))
      end
    end
  end
