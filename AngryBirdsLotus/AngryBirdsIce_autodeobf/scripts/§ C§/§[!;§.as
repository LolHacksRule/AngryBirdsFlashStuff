package § C§
{
   import §0!!§.§46§;
   import §3"§.§0$§;
   import §3"§.§8+§;
   import §9!!§.§&a§;
   
   public class §[!;§ extends §7!6§
   {
       
      
      public function §[!;§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §@!9§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§0$§.§[C§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§8+§) : void
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
         var _loc1_:String = "level-" + §0$§.§[C§;
         §46§.§+A§(_loc1_);
         §&a§.§1b§();
      }
   }
}
