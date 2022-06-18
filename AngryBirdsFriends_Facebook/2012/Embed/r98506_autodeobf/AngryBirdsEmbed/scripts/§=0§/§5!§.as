package §=0§
{
   import §'!7§.§6!§;
   import §8!G§.§-Z§;
   import §8!G§.§1w§;
   import §>K§.§[!2§;
   
   public class §5!§ extends § !2§
   {
       
      
      public function §5!§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §=t§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§-Z§.§%s§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§1w§) : void
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
         var _loc1_:String = "level-" + §-Z§.§%s§;
         §[!2§.§90§(_loc1_);
         §6!§.§'!B§();
      }
   }
}
