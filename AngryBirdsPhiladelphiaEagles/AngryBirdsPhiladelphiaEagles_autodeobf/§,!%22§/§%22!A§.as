package §,!"§
{
   import §0!E§.§-<§;
   import §<M§.§?!6§;
   import §^]§.§[z§;
   import §^]§.§`!K§;
   
   public class §"!A§ extends §-O§
   {
       
      
      public function §"!A§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §&K§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§`!K§.§5g§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§[z§) : void
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
         var _loc1_:String = "level-" + §`!K§.§5g§;
         §-<§.§7I§(_loc1_);
         §?!6§.§<!>§();
      }
   }
}
