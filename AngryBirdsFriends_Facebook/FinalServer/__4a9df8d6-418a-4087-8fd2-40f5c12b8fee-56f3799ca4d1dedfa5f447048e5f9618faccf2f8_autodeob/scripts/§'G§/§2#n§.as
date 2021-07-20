package §'G§
{
   import §!#C§.§^!z§;
   import §,"v§.§;"n§;
   import §-u§.§0"E§;
   import §-u§.§`!T§;
   
   public class §2#n§ extends §`!T§
   {
       
      
      protected var mLevelManager:§;"n§;
      
      public function §2#n§(param1:String, param2:String, param3:§;"n§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.mLevelManager = param3;
      }
      
      protected function initPackageManager() : §^!z§
      {
         return new §^!z§(this.mLevelManager);
      }
      
      override protected function initPackageLoader() : §0"E§
      {
         return this.initPackageManager();
      }
   }
}
