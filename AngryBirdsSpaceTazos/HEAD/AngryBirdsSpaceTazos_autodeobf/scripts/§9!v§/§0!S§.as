package §9!v§
{
   import §%!P§.§-!y§;
   import §%!P§.§;"H§;
   import §1z§.§^!@§;
   import §3>§.§[8§;
   
   public class §0!S§ extends §-!^§
   {
       
      
      protected var §!d§:§[8§;
      
      public function §0!S§(param1:String, param2:String, param3:§^!@§, param4:§[8§, param5:Boolean = true, param6:int = 1)
      {
         this.§!d§ = param4;
         super(param1,param2,param3,param5,param6);
      }
      
      override protected function initPackageManager() : §;"H§
      {
         return new §-!y§(§#"=§,this.§!d§);
      }
   }
}
