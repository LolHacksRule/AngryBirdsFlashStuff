package §@"§
{
   import §#v§.§#!?§;
   import §%$!§.§2#§;
   import §-#z§.§'"&§;
   import §-#z§.§0#p§;
   
   public class §,"A§ extends §'"&§
   {
       
      
      protected var mLevelManager:§#!?§;
      
      public function §,"A§(param1:String, param2:String, param3:§#!?§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.mLevelManager = param3;
      }
      
      protected function initPackageManager() : §2#§
      {
         return new §2#§(this.mLevelManager);
      }
      
      override protected function initPackageLoader() : §0#p§
      {
         return this.initPackageManager();
      }
   }
}
