package §7"T§
{
   import §&?§.§!M§;
   import §&?§.§<$9§;
   import §,#,§.§7Y§;
   import §7#$§.§]#q§;
   
   public class §6!G§ extends §<$9§
   {
       
      
      protected var mLevelManager:§]#q§;
      
      public function §6!G§(param1:String, param2:String, param3:§]#q§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.mLevelManager = param3;
      }
      
      protected function initPackageManager() : §7Y§
      {
         return new §7Y§(this.mLevelManager);
      }
      
      override protected function initPackageLoader() : §!M§
      {
         return this.initPackageManager();
      }
   }
}
