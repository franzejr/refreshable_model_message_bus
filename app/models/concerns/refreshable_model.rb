module RefreshableModel
  extend ActiveSupport::Concern

  included do
    before_update :publish_on_channel
  end

  def publish_on_channel
    MessageBus.publish "/#{channel}", 'update'
  end

  private

  def channel
    self.class.to_s.downcase
  end
end
