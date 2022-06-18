package §^"[§
{
   import §"$=§.§'![§;
   import §9#o§.§5@§;
   import §9#o§.§=!=§;
   import §]"'§.§5$$§;
   
   public class §&"-§ extends §=!=§
   {
       
      
      protected var mLevelManager:§'![§;
      
      public function §&"-§(param1:String, param2:String, param3:§'![§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.mLevelManager = param3;
      }
      
      protected function initPackageManager() : §5$$§
      {
         return new §5$$§(this.mLevelManager);
      }
      
      override protected function initPackageLoader() : §5@§
      {
         return this.initPackageManager();
      }
   }
}
