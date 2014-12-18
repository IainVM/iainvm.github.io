read -p "Project title to post in: " TITLE
cd "_projects/$TITLE"
DATE=`date +%Y-%m-%d-%H:%M:%S`
FILEN="$DATE.markdown"
touch $FILEN
echo "---" >> $FILEN
echo "layout: project-post" >> $FILEN
read -p "Title for the post: " PTITLE
echo "title: $PTITLE" >> $FILEN
PDATE=`date +%Y-%m-%d\ %H:%M:%S`
echo "date: $PDATE" >> $FILEN
echo "---" >> $FILEN
nano $FILEN

