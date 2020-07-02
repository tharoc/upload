class Spell < ApplicationRecord
    acts_as_taggable_on :schools
    acts_as_taggable_on :subschools
    acts_as_taggable_on :descriptors
    $schools = ['conjuration', 'enchantment', 'transmutation', 'divination', 'abjuration','necromancy','universal','evocation','illusion']
    $subschools = ['calling','creation','healing','summoning','teleportation','scrying','charm','compulsion','figment','glamer','pattern','phantasm','shadow','polymorph']
    $descriptors = ['acid','air','chaotic','cold','curse','darkness','death','disease','draconic','earth','electricity','emotion','evil','fear','fire','force','good','language-dependent','lawful','light','meditative','mind-affecting','pain','poison','ruse','shadow','sonic','water']

    include PgSearch::Model


    pg_search_scope :global_search,
        against: [:name, :description ],
    associated_against: {
        schools: [:name],
        subschools: [:name],
        descriptors: [:name]
    },
    using: {
        tsearch: {prefix: true}
    }
end
