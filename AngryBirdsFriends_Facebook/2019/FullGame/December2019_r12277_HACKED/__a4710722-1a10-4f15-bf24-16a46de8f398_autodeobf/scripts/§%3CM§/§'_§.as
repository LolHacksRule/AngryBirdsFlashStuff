package §<M§
{
   import flash.events.Event;
   
   public class §'_§ extends Event
   {
      
      public static const §9"2§:String = "piggyCurrencyAmountChanged";
       
      
      private var §]i§:int;
      
      private var §4#J§:int;
      
      public function §'_§(param1:String, param2:Boolean = false, param3:Boolean = false, param4:int = 0, param5:int = 0)
      {
         super(param1,param2,param3);
         this.§]i§ = param4;
         this.§4#J§ = param5;
      }
      
      public function get §'&§() : int
      {
         return this.§]i§;
      }
      
      public function get §7!H§() : int
      {
         return this.§4#J§;
      }
   }
}
