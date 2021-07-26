package §#!s§
{
   import flash.events.Event;
   
   public class §[J§ extends Event
   {
      
      public static const § !&§:String = "piggyCurrencyAmountChanged";
       
      
      private var §@"`§:int;
      
      private var § T§:int;
      
      public function §[J§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:int = 0, param5:int = 0)
      {
         super(param1,param2,param3);
         this.§@"`§ = param4;
         this.§ T§ = param5;
      }
      
      public function get §6#>§() : int
      {
         return this.§@"`§;
      }
      
      public function get §`!"§() : int
      {
         return this.§ T§;
      }
   }
}
