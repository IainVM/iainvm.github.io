read -p "Project title: " TITLE
cd _projects
mkdir $TITLE
cd $TITLE
mkdir "_about"
mkdir "_docs"
mkdir "_posts"
touch index.md
echo "---" >> index.md
echo "layout: project-page" >> index.md
echo "title: $TITLE" >> index.md
DATE=`date +%Y-%m-%d\ %H:%M:%S`
echo "date: $DATE" >> index.md
echo "---" >> index.md
cd "_about"
TDATE=`date +%Y-%m-%d`
FILEN="$TDATE-about.markdown"
touch "$FILEN"
echo "---" >> "$FILEN"
echo "layout: project-post" >> "$FILEN"
echo "title: Description" >> "$FILEN"
PDATE=`date +%Y-%m-%d\ %H:%M:%S`
echo "date: $PDATE" >> "$FILEN"
echo "---" >> "$FILEN"

