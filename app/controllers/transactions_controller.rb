class TransactionsController < ApplicationController
  def home; end

  def transaction_types; end

  def show
    @transaction = Transaction.all
    
  end

  def balance
    @test = Store.all
  end

  def create
    Transaction.delete_all
    Store.delete_all
    Payment.create(description: 'Débito', operation: 'Entrada', signal: 1)
    Payment.create(description: 'Boleto', operation: 'Saída', signal: -1)
    Payment.create(description: 'Financiamento', operation: 'Saída', signal: -1)
    Payment.create(description: 'Crédito', operation: 'Entrada', signal: 1)
    Payment.create(description: 'Recebimento Empréstimo', operation: 'Entrada', signal: 1)
    Payment.create(description: 'Vendas', operation: 'Entrada', signal: 1)
    Payment.create(description: 'Recebimento TED', operation: 'Entrada', signal: 1)
    Payment.create(description: 'Recebimento DOC', operation: 'Entrada', signal: 1)
    Payment.create(description: 'Aluguel', operation: 'Saída', signal: -1)

    data = File.read(params[:archive])
    data.each_line do |line|
      dt = Date.parse("#{line[1..4]}-#{line[5..6]}-#{line[7..8]}")
      t = "#{line[42..43].to_i - 4}:#{line[44..45]}:#{line[46..47]}"
      Store.create(
        name: line[62...81].strip,
        owner: line[48...62].strip,
        balance: 0
      )

      id = Store.where(name: line[62...81].strip, owner: line[48...62].strip).ids
      p id

      Transaction.create(
        payment_type: line[0].to_i,
        date: line[1...9],
        value: line[9...19].to_d / 100,
        cpf: line[19...30],
        card: line[30...42],
        time: Time.parse(t, dt),
        owner: line[48...62].strip,
        store: line[62...81].strip,
        store_id: id[0]
      )

      store = Store.find_by(id: id)
      store.balance -= line[9...19].to_d / 100
      # store.pluck(:balance).reduce(:+)
      store.save
    end
    redirect_to transactions_show_path
  end
end
