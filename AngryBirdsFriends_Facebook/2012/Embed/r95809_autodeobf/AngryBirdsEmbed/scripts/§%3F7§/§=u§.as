package §?7§
{
   import §%J§.§,3§;
   import §<!@§.§!P§;
   import §<!@§.§+!-§;
   import §while§.§-3§;
   
   public class §=u§ extends §'!6§
   {
       
      
      public function §=u§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §7!1§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§!P§.§4R§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§+!-§) : void
      {
         super.initLevelMain(param1);
      }
      
      override protected function initLevelLoad() : void
      {
         super.initLevelLoad();
      }
      
      override public function isReady() : Boolean
      {
         return super.isReady();
      }
      
      override public function onLevelLoadError() : void
      {
         super.onLevelLoadError();
         var _loc1_:String = "level-" + §!P§.§4R§;
         §-3§.§ F§(_loc1_);
         §,3§.§do §();
      }
   }
}
