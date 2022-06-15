package §,#,§
{
   import §&?§.§[=§;
   import §7#$§.§["5§;
   import §7#$§.§]#q§;
   
   public class §8U§ extends §[=§
   {
       
      
      private var mLevelManager:§]#q§;
      
      public function §8U§(param1:§]#q§)
      {
         super();
         this.mLevelManager = param1;
      }
      
      override protected function onLevelLoaded(param1:String) : void
      {
         var _loc2_:§["5§ = null;
         super.onLevelLoaded(param1);
         if(!this.mLevelManager.getLevelForId(param1))
         {
            _loc2_ = §["5§.§94§(§^!W§(param1));
            _loc2_.name = param1;
            this.mLevelManager.addLevel(param1,_loc2_);
         }
      }
   }
}
