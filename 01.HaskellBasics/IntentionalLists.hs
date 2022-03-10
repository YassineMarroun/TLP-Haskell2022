
--
digitCount list = [ if x < 10 then "one digit" else "two digits" | x <- list, odd x]

--
lengthOfList list2 = sum[1 | x <- list2]

--
showVowels sentence = [ letter | letter <- sentence, letter `elem` ['a', 'e', 'i', 'o', 'u']]

--
showC sentence = [ letter | letter <- sentence, letter == 'c']
addC cString = sum[1 | x <- (showC cString)]