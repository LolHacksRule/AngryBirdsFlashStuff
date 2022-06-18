package §!$§
{
   import §-!C§.§#!G§;
   import §-!C§.§3!H§;
   import §4!'§.§50§;
   import §;U§.§]q§;
   
   public class §!!4§ extends § W§
   {
       
      
      public function §!!4§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §@!+§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§#!G§.§9C§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§3!H§) : void
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
         var _loc1_:String = "level-" + §#!G§.§9C§;
         §50§.§^=§(_loc1_);
         §]q§.§%"§();
      }
   }
}
