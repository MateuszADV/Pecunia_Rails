ReportsKit.configure do |config|
  config.autocomplete_results_method = lambda do |params:, context_record:, relation:|
    query = params[:q]
    results = relation.where('name ILIKE ?', "%#{query}%").order('name').limit(30)
    results.map do |result|
      {
          id: result.id,
          text: "#{result.last_name}, #{result.first_name}"
      }
    end
  end
end