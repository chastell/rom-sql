require 'spec_helper'

describe 'Logger' do
  include_context 'users and tasks'

  it 'sets up a logger for sequel' do
    repository = rom.postgres

    expect(repository.logger).to be(LOGGER)
    expect(repository.connection.loggers).to include(LOGGER)
  end
end
