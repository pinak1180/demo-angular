App.factory 'Bunglows', ['$resource', ($resource) ->
  $resource '/api/properties/:id', id: '@id'
]