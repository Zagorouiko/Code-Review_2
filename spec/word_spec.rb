require('rspec')
require('word')

  describe(Word) do
    before() do
      Word.clear()
    end
    
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

    describe('#word_definition') do
      it('Initially return an empty array of a definition for the word') do
        test_words = Word.new('domesticated feline mammal')
        expect(test_words.word_definition()).to(eq([]))
      end
    end

    describe('#save') do
      it('adds a word to the array of saved words') do
        test_words = Word.new('cat')
        test_words.save()
        expect(Word.all()).to(eq([test_words]))
      end
    end

    describe('.all') do
      it('is empty at first') do
        expect(Word.all()).to(eq([]))
      end
    end

    describe('.clear') do
      it('empties out all of the saved words') do
        Word.new('cat').save()
        Word.clear()
        expect(Word.all()).to(eq([]))
      end
    end
  end
