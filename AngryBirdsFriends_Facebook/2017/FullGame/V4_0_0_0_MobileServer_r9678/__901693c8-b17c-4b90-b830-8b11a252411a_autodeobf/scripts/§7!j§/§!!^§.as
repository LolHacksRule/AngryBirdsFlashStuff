package §7!j§
{
   import §&"J§.§4b§;
   import §&"J§.§`"v§;
   import §7"&§.§2>§;
   import §>!I§.§<!&§;
   import §@#§.§^#Q§;
   
   public class §!!^§ extends §2"c§
   {
       
      
      public function §!!^§(param1:String, param2:String, param3:§^#Q§, param4:§2>§, param5:Boolean = true, param6:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function getFullFilename(param1:String) : String
      {
         var _loc2_:String = super.getFullFilename(param1);
         return §<!&§.§ "D§.§^q§(_loc2_);
      }
      
      override protected function initPackageManager() : §4b§
      {
         return new §`"v§(mLevelManager,§ "G§);
      }
   }
}
