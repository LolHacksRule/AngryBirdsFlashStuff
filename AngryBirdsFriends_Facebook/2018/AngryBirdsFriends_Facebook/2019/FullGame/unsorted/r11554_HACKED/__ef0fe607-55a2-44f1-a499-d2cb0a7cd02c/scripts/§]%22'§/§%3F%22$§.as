package §]"'§
{
   import §"$=§.§'![§;
   import §"$=§.§>"?§;
   import §9#o§.§"$@§;
   
   public class §?"$§ extends §"$@§
   {
       
      
      private var mLevelManager:§'![§;
      
      public function §?"$§(param1:§'![§)
      {
         super();
         this.mLevelManager = param1;
      }
      
      override protected function onLevelLoaded(param1:String) : void
      {
         var _loc2_:§>"?§ = null;
         super.onLevelLoaded(param1);
         if(!this.mLevelManager.getLevelForId(param1))
         {
            _loc2_ = §>"?§.§,#2§(§4#q§(param1));
            _loc2_.name = param1;
            this.mLevelManager.addLevel(param1,_loc2_);
         }
      }
   }
}
