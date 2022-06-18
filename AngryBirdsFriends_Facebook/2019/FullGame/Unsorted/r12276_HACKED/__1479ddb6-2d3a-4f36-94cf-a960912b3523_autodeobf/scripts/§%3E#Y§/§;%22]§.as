package §>#Y§
{
   import §%#^§.§%§;
   import §?o§.§#!P§;
   import §?o§.§4#?§;
   
   public class §;"]§ extends §%#7§
   {
       
      
      private var mLevelManager:§4#?§;
      
      public function §;"]§(param1:§4#?§)
      {
         super();
         this.mLevelManager = param1;
      }
      
      override protected function onLevelLoaded(param1:String) : void
      {
         var _loc2_:§#!P§ = null;
         super.onLevelLoaded(param1);
         if(!this.mLevelManager.getLevelForId(param1))
         {
            _loc2_ = §#!P§.§@#@§(§<#3§(param1));
            _loc2_.name = param1;
            this.mLevelManager.addLevel(param1,_loc2_);
         }
      }
   }
}
