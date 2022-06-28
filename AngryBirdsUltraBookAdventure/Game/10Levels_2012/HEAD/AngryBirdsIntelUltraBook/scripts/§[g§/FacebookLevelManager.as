package §[g§
{
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   
   public class FacebookLevelManager extends LevelManager
   {
       
      
      public function FacebookLevelManager()
      {
         super();
      }
      
      public static function §else§(levelId:String) : String
      {
         var chapter:ChapterModel = null;
         var split:Array = null;
         var levelNumber:int = 0;
         var pageId:String = null;
         var pageNumber:int = 0;
         try
         {
            chapter = §'!7§(levelId);
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
