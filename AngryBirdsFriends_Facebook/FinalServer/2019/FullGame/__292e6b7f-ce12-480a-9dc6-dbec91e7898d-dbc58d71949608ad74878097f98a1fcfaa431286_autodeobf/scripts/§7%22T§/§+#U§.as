package §7"T§
{
   import §&?§.§4#M§;
   import §,#,§.§#t§;
   import §,#,§.§7Y§;
   import §7#$§.§]#q§;
   import §8#K§.§'#_§;
   
   public class §+#U§ extends §>!l§
   {
       
      
      public function §+#U§(param1:String, param2:String, param3:§]#q§, param4:§'#_§, param5:Boolean = true, param6:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function getFullFilename(param1:String) : String
      {
         var _loc2_:String = super.getFullFilename(param1);
         return §4#M§.§+!,§.§]!8§(_loc2_);
      }
      
      override protected function initPackageManager() : §7Y§
      {
         return new §#t§(mLevelManager,§7"Z§);
      }
   }
}
