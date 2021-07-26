package §%$!§
{
   import §#v§.§#!?§;
   import §#v§.§@#?§;
   import §-#z§.§^"j§;
   
   public class §%#I§ extends §^"j§
   {
       
      
      private var mLevelManager:§#!?§;
      
      public function §%#I§(param1:§#!?§)
      {
         super();
         this.mLevelManager = param1;
      }
      
      override protected function onLevelLoaded(param1:String) : void
      {
         var _loc2_:§@#?§ = null;
         super.onLevelLoaded(param1);
         if(!this.mLevelManager.getLevelForId(param1))
         {
            _loc2_ = §@#?§.§=#?§(§-!o§(param1));
            _loc2_.name = param1;
            this.mLevelManager.addLevel(param1,_loc2_);
         }
      }
   }
}
