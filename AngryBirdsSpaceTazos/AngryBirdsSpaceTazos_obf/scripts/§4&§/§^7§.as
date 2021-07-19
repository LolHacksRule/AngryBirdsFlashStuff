package §4&§
{
   import §!?§.§'!y§;
   import §!?§.§@"C§;
   import §"!&§.§8"F§;
   import §`!j§.§9"!§;
   
   public class §^7§ extends § "E§
   {
       
      
      protected var §3"4§:§8"F§;
      
      public function §^7§(param1:String, param2:String, param3:§9"!§, param4:§8"F§, param5:Boolean = true, param6:int = 1)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            this.§3"4§ = param4;
         }
         do
         {
            super(param1,param2,param3,param5,param6);
         }
         while(_loc8_);
         
      }
      
      override protected function initPackageManager() : §@"C§
      {
         return new §'!y§(§6u§,this.§3"4§);
      }
   }
}
