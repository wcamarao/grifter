class Trade < ActiveRecord::Base
  PENDING = 'PENDING'
  ACCEPTED = 'ACCEPTED'
  REJECTED = 'REJECTED'
  COMPLETED = 'COMPLETED'

  # 1 - Trade is proposed by source user, with initial status as PENDING
  #     Next: 2

  def initialize(attributes = {})
    super
    self.status = PENDING
    attributes.each { |k, v| self.send("#{k}=", v) }
  end

  # 2.1 - Target user accepts initial proposal, saying which item
  #       from the source user he/she is interested on.
  #       Next: 3

  def accept_initial_proposal(source_item_id)
    self.status = ACCEPTED
    self.source_item_id = source_item_id
  end

  # 2.2 - Target user rejects initial proposal.
  #       Next: none

  def reject_initial_proposal
    self.status = REJECTED
  end

  # 3.1 - Source user accepts counter proposal, finishing the trade
  #       agreement. Items remain available. Each user will be
  #       asked separately if they actually finished the trade
  #       to make sure before archiving the item.
  #       Next: none

  def accept_counter_proposal
    self.status = COMPLETED
  end

  # 3.2 - Source user rejects counter proposal, returning to the
  #       target user to either pick another item or reject.
  #       Next: 2

  def return_counter_proposal()
    self.status = PENDING
    self.source_item_id = nil
  end

  # 3.3 - Source user rejects counter proposal.
  #       Next: none

  def reject_counter_proposal()
    self.status = REJECTED
  end
end
