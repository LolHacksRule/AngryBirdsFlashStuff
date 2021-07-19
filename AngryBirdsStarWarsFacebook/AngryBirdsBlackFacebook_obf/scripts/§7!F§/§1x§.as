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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            super(param1,param2,param4,param5);
         }
         do
         {
            this.§+!b§ = param3;
         }
         while(!(_loc7_ || param2));
         
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
