echo Cleaning_up
rm *.txt
rm *.tmp
rm *.csv

echo Download_data
curl https://github.com/zonca/swcarpentry-workshop-pandas/blob/master/rawdata/rawdata.zip?raw=true -o rawdata.zip -L

echo unpack data
unzip rawdata.zip
rm rawdata.zip

rm *.tmp

echo Rename_file_extentions
for jim in *.txt
do 
    mv $jim ${jim/txt/csv}
done

echo Available_files
ls *.csv
