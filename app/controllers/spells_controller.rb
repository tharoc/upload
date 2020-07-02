class SpellsController < ApplicationController
  def index
    if params["search"]
      @filter = params["search"]["schools"].concat(params["search"]["subschools"]).concat(params["search"]["descriptors"]).flatten.reject(&:blank?)
      @spells = Spell.all.global_search("#{@filter}").order(name: :asc)
    else
      @spells = Spell.all.order(name: :asc)
    end
    respond_to do |format|
      format.html
      format.js
    end
 end
end