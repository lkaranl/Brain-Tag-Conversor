#!/usr/bin/env bash

audio="file"
a=$(cat file.txt)
aa=$(wc -l file.txt |sed 's/file.txt//g')

for i in $a; do
  if [ $i == 'Física' -o $i == 'física' -o $i == 'newton' -o $i == 'relatividade' ] ; then
    TEMA='Fisica'
    Fis=$(($Fis+1))

  elif [ $i == 'Química' -o $i == 'química' -o $i == 'reações' -o $i == 'químicos' ]; then
    TEMA='Química'
    Qui=$(($Qui+1))

  elif [ $i == 'Geografia' -o $i == 'geografia' -o $i == 'hidrosfera' -o $i == 'geográfico' ]; then
    TEMA='Geografia'
    Geo=$(($Geo+1))

  elif [ $i == 'Inglês' -o $i == 'inglês' -o $i == 'you' -o $i == 'not' ]; then
    TEMA='Inglês'
    Ing=$(($Ing+1))

  elif [ $i == 'História' -o $i == 'história' -o $i == 'pré-história' -o $i == 'historiador' ]; then
    TEMA='História'
    His=$(($His+1))

  elif [ $i == 'Matemática' -o $i == 'matemática' -o $i == 'álgebra ' -o $i == 'aritméticas' -o $i == 'somando' -o $i == 'algarismo' -o $i == 'algarismos' -o $i == 'multiplicações' ]; then
    TEMA='Matemática'
    Mat=$(($Mat+1))

  elif [ $i == 'Português' -o $i == 'português' -o $i == 'portuguesa' -o $i == 'língua' ]; then
    TEMA='Português'
    Por=$((Por+1))

  elif [ $i == 'Biologia' -o $i == 'biologia' -o $i == 'anatomia' -o $i == 'genes' ]; then
    TEMA='Biologia'
    Bio=$((Bio+1))
  fi
done

echo -e "$TEMA" > tema.txt