package §[!z§
{
   public class §"5§ extends LevelManager
   {
       
      
      public function §"5§()
      {
         super();
      }
      
      public static function §3t§(param1:String) : String
      {
         var chapter:§]f§ = null;
         var split:Array = null;
         var levelNumber:int = 0;
         var pageId:String = null;
         var pageNumber:int = 0;
         var levelId:String = param1;
         try
         {
            chapter = §"!r§(levelId);
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
