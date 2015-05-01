class Definition

  @@definitions = []

  define_method(:initialize) do |definitions|
    @id = @@definitions.length().+(1)
    @definitions = definitions
  end

  define_method(:definition) do
    @definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_method(:id) do
    @id
  end
  define_singleton_method(:find) do |id|
    found_word = nil
    @@definitions.each() do |definition|
      if definition.id().eql?(id)
        found_definition = definition
      end
    end
    found_definition
  end
end
