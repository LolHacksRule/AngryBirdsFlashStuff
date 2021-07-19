package §1!F§
{
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §8!Q§.§,8§;
   import §false§.§'k§;
   
   public class §?Y§ extends §26§
   {
       
      
      public function §?Y§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §?P§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§1^§.§ ]§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§2! §) : void
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
         var _loc1_:String = "level-" + §1^§.§ ]§;
         §,8§.§4C§(_loc1_);
         §'k§.§14§();
      }
   }
}
