package §`"8§
{
   import §2G§.§2!2§;
   import §;$3§.§8=§;
   import §>#G§.§%6§;
   import §>#G§.§2#S§;
   
   public class §8$3§ extends §2#S§
   {
       
      
      protected var mLevelManager:§8=§;
      
      public function §8$3§(param1:String, param2:String, param3:§8=§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.mLevelManager = param3;
      }
      
      protected function initPackageManager() : §2!2§
      {
         return new §2!2§(this.mLevelManager);
      }
      
      override protected function initPackageLoader() : §%6§
      {
         return this.initPackageManager();
      }
   }
}
