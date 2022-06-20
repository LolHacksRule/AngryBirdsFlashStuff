package §7!j§
{
   import §&"J§.§4b§;
   import §>!I§.§%#'§;
   import §>!I§.§9" §;
   import §@#§.§^#Q§;
   
   public class §,"d§ extends §9" §
   {
       
      
      protected var mLevelManager:§^#Q§;
      
      public function §,"d§(param1:String, param2:String, param3:§^#Q§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.mLevelManager = param3;
      }
      
      protected function initPackageManager() : §4b§
      {
         return new §4b§(this.mLevelManager);
      }
      
      override protected function initPackageLoader() : §%#'§
      {
         return this.initPackageManager();
      }
   }
}
