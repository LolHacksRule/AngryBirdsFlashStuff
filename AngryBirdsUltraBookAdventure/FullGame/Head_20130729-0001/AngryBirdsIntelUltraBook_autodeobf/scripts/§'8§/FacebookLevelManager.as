package §'8§
{
   import §>!_§.ChapterModel;
   import §>!_§.LevelManager;
   
   public class FacebookLevelManager extends LevelManager
   {
       
      
      public function FacebookLevelManager()
      {
         super();
      }
      
      public static function §5j§(levelId:String) : String
      {
         var chapter:ChapterModel = null;
         var split:Array = null;
         var levelNumber:int = 0;
         var pageId:String = null;
         var pageNumber:int = 0;
         try
         {
            chapter = §6X§(levelId);
            split = levelId.split("-");
            levelNumber = parseInt(split[1]);
            pageId = split[0];
            pageNumber = chapter.pageIndexes.indexOf(pageId);
            levelNumber += pageNumber * chapter.levelsPerPage;
            return levelNumber.toString();
         }
         catch(e:Error)
         {
            return levelId;
         }
      }
   }
}
