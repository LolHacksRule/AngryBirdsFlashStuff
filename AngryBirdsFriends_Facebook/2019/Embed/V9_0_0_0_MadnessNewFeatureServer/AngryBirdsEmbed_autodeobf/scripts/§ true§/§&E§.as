package § true§
{
   import §'d§.§"s§;
   import §3y§.§"C§;
   import §?j§.§9?§;
   import §?j§.§`R§;
   
   public class §&E§ extends §case §
   {
       
      
      public function §&E§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §3d§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§`R§.§7S§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§9?§) : void
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
         var _loc1_:String = "level-" + §`R§.§7S§;
         §"C§.§[M§(_loc1_);
         §"s§.§9,§();
      }
   }
}
