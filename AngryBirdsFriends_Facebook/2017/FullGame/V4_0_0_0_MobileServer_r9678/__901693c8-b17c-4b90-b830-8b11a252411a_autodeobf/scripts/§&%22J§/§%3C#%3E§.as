package §&"J§
{
   import §>!I§.§!$;§;
   import §@#§.§7!O§;
   import §@#§.§^#Q§;
   
   public class §<#>§ extends §!$;§
   {
       
      
      private var mLevelManager:§^#Q§;
      
      public function §<#>§(param1:§^#Q§)
      {
         super();
         this.mLevelManager = param1;
      }
      
      override protected function onLevelLoaded(param1:String) : void
      {
         var _loc2_:§7!O§ = null;
         super.onLevelLoaded(param1);
         if(!this.mLevelManager.getLevelForId(param1))
         {
            _loc2_ = §7!O§.§5"H§(§^!e§(param1));
            _loc2_.name = param1;
            this.mLevelManager.addLevel(param1,_loc2_);
         }
      }
   }
}
