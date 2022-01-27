package §8!A§
{
   import §1E§.§2h§;
   import §1E§.§5T§;
   import §;!B§.§14§;
   import §@<§.§`N§;
   
   public class §8!"§ extends §#u§
   {
       
      
      public function §8!"§(param1:Boolean = true, param2:String = "LevelLoadStateClassic")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         §34§ = true;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§2h§.§,!P§ != null)
         {
         }
      }
      
      override protected function initLoadingView() : void
      {
      }
      
      override protected function setLoadingText() : void
      {
      }
      
      override protected function initLevelMain(param1:§5T§) : void
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
         var _loc1_:String = "level-" + §2h§.§,!P§;
         §14§.§ -§(_loc1_);
         §`N§.§+J§();
      }
   }
}
