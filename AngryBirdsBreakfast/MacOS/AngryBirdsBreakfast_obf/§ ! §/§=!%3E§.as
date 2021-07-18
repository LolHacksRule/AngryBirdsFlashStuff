package § ! §
{
   import §#"&§.§6!F§;
   import §8!K§.§5!Y§;
   import §@g§.§"!3§;
   import §@g§.§#!r§;
   
   public class §=!>§ extends §"!3§
   {
       
      
      protected var §&" §:§5!Y§;
      
      public function §=!>§(param1:String, param2:String, param3:§5!Y§, param4:Boolean = true, param5:int = 1)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            super(param1,param2,param4,param5);
         }
         do
         {
            this.§&" § = param3;
         }
         while(_loc7_);
         
      }
      
      protected function §'X§() : §6!F§
      {
         return new §6!F§(this.§&" §);
      }
      
      override protected function initPackageLoader() : §#!r§
      {
         return this.§'X§();
      }
   }
}
