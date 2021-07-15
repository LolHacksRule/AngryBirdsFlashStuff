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
         super(param1,param2,param4,param5);
         this.§&" § = param3;
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
