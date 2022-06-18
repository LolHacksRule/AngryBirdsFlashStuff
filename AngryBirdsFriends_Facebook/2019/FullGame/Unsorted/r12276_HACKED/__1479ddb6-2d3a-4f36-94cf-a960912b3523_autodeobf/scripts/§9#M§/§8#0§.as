package §9#M§
{
   import §%#^§.§""P§;
   import §%#^§.§>#p§;
   import §>#Y§.§"1§;
   import §?o§.§4#?§;
   
   public class §8#0§ extends §>#p§
   {
       
      
      protected var mLevelManager:§4#?§;
      
      public function §8#0§(param1:String, param2:String, param3:§4#?§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.mLevelManager = param3;
      }
      
      protected function initPackageManager() : §"1§
      {
         return new §"1§(this.mLevelManager);
      }
      
      override protected function initPackageLoader() : §""P§
      {
         return this.initPackageManager();
      }
   }
}
