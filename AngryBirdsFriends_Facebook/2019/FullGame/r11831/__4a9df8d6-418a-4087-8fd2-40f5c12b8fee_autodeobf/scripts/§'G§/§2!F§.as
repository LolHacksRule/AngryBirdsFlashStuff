package §'G§
{
   import §!#C§.§4j§;
   import §!#C§.§^!z§;
   import §,"v§.§;"n§;
   import §-u§.§"I§;
   import §?$<§.§]#A§;
   
   public class §2!F§ extends §%"z§
   {
       
      
      public function §2!F§(param1:String, param2:String, param3:§;"n§, param4:§]#A§, param5:Boolean = true, param6:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function getFullFilename(param1:String) : String
      {
         var _loc2_:String = super.getFullFilename(param1);
         return §"I§.§`"H§.§2$3§(_loc2_);
      }
      
      override protected function initPackageManager() : §^!z§
      {
         return new §4j§(mLevelManager,§!#J§);
      }
   }
}
