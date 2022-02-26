class MyDataMethodsView

  def self.note_date_buy(properties)
   VItemInfo.where.not(note_id: nil).group_by_year('v_item_infos.date_buy')
       .group('v_item_infos.status_note').order('v_item_infos.status_note')
       .count.map do |(date, status), count|[[date.strftime('%Y'), status], count]
   end

  end

  def self.Note_data_add_to_database(properties)
    # The `group_by_year` method is provided by the `groupdate` gem.
    Note.group_by_month('notes.created_at').group('notes.status').count.map do |(date, status), count|
      [[date.strftime('%b %Y'), status], count]
    end
  end

  def self.Coin_data_add_to_database(properties)
    # The `group_by_year` method is provided by the `groupdate` gem.
    Coin.group_by_month('coins.created_at').group('coins.status').count.map do |(date, status), count|
      [[date.strftime('%b %Y'), status], count]
    end
  end

end