package §&T§
{
   import flash.events.Event;
   
   public class §'"B§ extends Event
   {
      
      public static const §,!d§:String = "piggyCurrencyAmountChanged";
       
      
      private var §<#L§:int;
      
      private var §1$"§:int;
      
      public function §'"B§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:int = 0, param5:int = 0)
      {
         super(param1,param2,param3);
         this.§<#L§ = param4;
         this.§1$"§ = param5;
      }
      
      public function get §%"z§() : int
      {
         return this.§<#L§;
      }
      
      public function get §4"@§() : int
      {
         return this.§1$"§;
      }
   }
}
