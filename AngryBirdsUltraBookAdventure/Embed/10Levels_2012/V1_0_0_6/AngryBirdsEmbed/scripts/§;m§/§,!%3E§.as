package §;m§
{
   import §%!6§.§+9§;
   import §2?§.§3!#§;
   import §=!B§.§59§;
   import §=!B§.§^!9§;
   
   public class §,!>§ extends §3'§
   {
       
      
      public function §,!>§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §?z§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§59§.§%j§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§^!9§) : void
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
         var _loc1_:String = "level-" + §59§.§%j§;
         §+9§.§#9§(_loc1_);
         §3!#§.§+§();
      }
   }
}
