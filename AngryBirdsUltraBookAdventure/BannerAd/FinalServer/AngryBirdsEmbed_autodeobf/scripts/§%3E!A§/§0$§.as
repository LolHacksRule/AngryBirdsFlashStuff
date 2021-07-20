package §>!A§
{
   import §4!H§.§["§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §;!B§.§5U§;
   
   public class §0$§ extends §,w§
   {
       
      
      public function §0$§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §;!$§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§5j§.§%V§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§&!;§) : void
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
         var _loc1_:String = "level-" + §5j§.§%V§;
         §["§.§'!D§(_loc1_);
         §5U§.§?7§();
      }
   }
}
