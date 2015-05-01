class Definition

  @@definitions = []

  define_method(:initialize) do |definitions|
    @definitions = definitions
  end

  define_method(:definition) do
    @definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end
end
