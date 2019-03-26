bash -c "p=$(echo "%GDWORD%" |sed 's/ /+/g'); wget -q -U Mozilla -O - \
https://translate.google.com/translate_tts?ie=UTF-8&tl=pt-BR&q=$sentence&total=1&idx=0&client=tw-ob&tk=$amptk
#https://translate.google.com.vn/translate_tts?ie=UTF-8\&q=$p\&tl=en\&client=tw-ob | mpg123 -"
