package §>Y§
{
   import §3!%§.§#!K§;
   import §3!%§.§-k§;
   import §4!6§.§>r§;
   import §4q§.§;Q§;
   
   public class §>!=§ extends §;O§
   {
       
      
      public function §>!=§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §0!2§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§-k§.§%D§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§#!K§) : void
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
         var _loc1_:String = "level-" + §-k§.§%D§;
         §>r§.§#N§(_loc1_);
         §;Q§.§=z§();
      }
   }
}
