package §#!e§
{
   public class § <§ extends LevelManager
   {
       
      
      public function § <§()
      {
         super();
      }
      
      public static function §2!V§(param1:String) : String
      {
         var chapter:§>x§ = null;
         var split:Array = null;
         var levelNumber:int = 0;
         var pageId:String = null;
         var pageNumber:int = 0;
         var levelId:String = param1;
         try
         {
            chapter = §^_§(levelId);
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
