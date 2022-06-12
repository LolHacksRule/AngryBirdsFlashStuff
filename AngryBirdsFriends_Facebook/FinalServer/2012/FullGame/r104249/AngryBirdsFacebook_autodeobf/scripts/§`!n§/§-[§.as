package §`!n§
{
   public class §-[§ extends LevelManager
   {
       
      
      public function §-[§()
      {
         super();
      }
      
      public static function §8"4§(param1:String) : String
      {
         var chapter:§=!-§ = null;
         var split:Array = null;
         var levelNumber:int = 0;
         var pageId:String = null;
         var pageNumber:int = 0;
         var levelId:String = param1;
         try
         {
            chapter = §0"§(levelId);
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
