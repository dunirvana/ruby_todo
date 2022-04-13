require 'csv'

module Exportable
  extend ActiveSupport::Concern

  def export_csv
    headers = ['Id', 'Descrição', 'Finalizada?', 'Id tarefa pai', 'Criada em', 'Atualiza em']

    csv = CSV.generate(write_headers: true, headers: headers) do |row|
      Task.order(due_date: :asc, description: :asc).each do |task|
        row << [
          task.id,
          task.description,
          task.done? ? 'Sim' : 'Não',
          task.parent_id,
          task.created_at,
          task.updated_at
        ]
      end
    end

    send_data csv, type: 'text/csv; charset=utf-8; header=present',
      disposition: 'attachment; filename=tarefas.csv'
  end
end