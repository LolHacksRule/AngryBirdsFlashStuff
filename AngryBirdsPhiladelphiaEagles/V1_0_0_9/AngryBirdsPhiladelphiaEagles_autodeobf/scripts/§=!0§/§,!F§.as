package §=!0§
{
   import §6!L§.§#!M§;
   import §6!L§.§&u§;
   import §9!#§.§0!9§;
   import §`!8§.§?'§;
   
   public class §,!F§ extends §1!F§
   {
       
      
      public function §,!F§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §@s§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§&u§.§ !+§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§#!M§) : void
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
         var _loc1_:String = "level-" + §&u§.§ !+§;
         §?'§.§2v§(_loc1_);
         §0!9§.§var§();
      }
   }
}
