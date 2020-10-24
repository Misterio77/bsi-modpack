version=$(cat version)
first=true
forge="forge-14.23.5.2854"
printf '{'
printf '"minecraft":'
printf '{'
printf '"version":"1.12.2",'
printf '"modLoaders":[{"id":"%s","primary":true}]' "$forge"
printf '},'
printf '"manifestType":"minecraftModpack",'
printf '"manifestVersion":1,'
printf '"name":"Modpack da Informação"',
printf '"version":"%s",' "$version"
printf '"author":"Misterio7x",'
printf '"overrides": "overrides",'
printf '"files":['
    
while read line; do
    if ! $first; then
         printf ","
     else
            first=false
    fi
    slug=$(echo $line | tr -s ' ' | cut -f1 -d ' ')
    project=$(echo $line | tr -s ' ' | cut -f2 -d ' ' | cut -d ':' -f1)
    file=$(echo $line | tr -s ' ' | cut -f2 -d ' ' | cut -d ':' -f2)
    printf '{"projectID":%s,"fileID":%s,"required":true}' "$project" "$file"
done < MODLIST
printf ']'
printf '}\n'
