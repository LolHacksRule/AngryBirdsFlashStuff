package §7!F§
{
   import §%R§.§>H§;
   import §%R§.§@"F§;
   import §,"N§.§'#E§;
   import §?m§.§+"2§;
   
   public class §1x§ extends §>H§
   {
       
      
      protected var §+!b§:§+"2§;
      
      public function §1x§(param1:String, param2:String, param3:§+"2§, param4:Boolean = true, param5:int = 1)
      {
         super(param1,param2,param4,param5);
         this.§+!b§ = param3;
      }
      
      protected function initPackageManager() : §'#E§
      {
         return new §'#E§(this.§+!b§);
      }
      
      override protected function initPackageLoader() : §@"F§
      {
         return this.initPackageManager();
      }
   }
}
