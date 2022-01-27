package §3"$§
{
   import §!"N§.§;l§;
   import §!"N§.§>"]§;
   import §,#+§.§7!m§;
   import §`"8§.§%"?§;
   
   public class §"7§ extends §;l§
   {
       
      
      protected var § !p§:§7!m§;
      
      public function §"7§(param1:String, param2:String, param3:§7!m§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.§ !p§ = param3;
      }
      
      protected function initPackageManager() : §%"?§
      {
         return new §%"?§(this.§ !p§);
      }
      
      override protected function initPackageLoader() : §>"]§
      {
         return this.initPackageManager();
      }
   }
}
