###
Возвращает единицу измерения с правильным окончанием

@param {Number} num      Число
@param {Object} cases    Варианты слова {nom: 'час', gen: 'часа', plu: 'часов'}
@return {String}
###
units = (num, cases) ->
  num = Math.abs(num)
  word = ""
  if num.toString().indexOf(".") > -1
    word = cases.gen
  else
    word = ((if num % 10 is 1 and num % 100 isnt 11 then cases.nom else (if num % 10 >= 2 and num % 10 <= 4 and (num % 100 < 10 or num % 100 >= 20) then cases.gen else cases.plu)))
  word
