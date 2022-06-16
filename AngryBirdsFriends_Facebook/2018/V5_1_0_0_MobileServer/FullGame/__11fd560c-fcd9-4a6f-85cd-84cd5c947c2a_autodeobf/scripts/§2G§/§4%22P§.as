package §2G§
{
   import §;$3§.§-!'§;
   import §;$3§.§8=§;
   import §>#G§.§=a§;
   
   public class §4"P§ extends §=a§
   {
       
      
      private var mLevelManager:§8=§;
      
      public function §4"P§(param1:§8=§)
      {
         super();
         this.mLevelManager = param1;
      }
      
      override protected function onLevelLoaded(param1:String) : void
      {
         var _loc2_:§-!'§ = null;
         super.onLevelLoaded(param1);
         if(!this.mLevelManager.getLevelForId(param1))
         {
            _loc2_ = §-!'§.§%!I§(§;"U§(param1));
            _loc2_.name = param1;
            this.mLevelManager.addLevel(param1,_loc2_);
         }
      }
   }
}
