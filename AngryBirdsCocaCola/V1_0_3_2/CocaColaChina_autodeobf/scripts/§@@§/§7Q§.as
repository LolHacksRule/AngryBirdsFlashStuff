package §@@§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §7Q§ extends EventDispatcher implements §6!%§
   {
       
      
      private var §+!B§:Number = 0;
      
      private var §]!,§:Number;
      
      private var §"!?§:Function;
      
      private var §0!Z§:Array;
      
      private var §>!H§:int = 1;
      
      public function §7Q§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§"!?§ = param1;
         this.§]!,§ = Math.max(param2,0.0001);
         this.§0!Z§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§+!B§;
         this.§+!B§ = Math.min(this.§]!,§,this.§+!B§ + param1);
         if(_loc2_ < this.§]!,§ && this.§+!B§ >= this.§]!,§)
         {
            this.§"!?§.apply(null,this.§0!Z§);
            if(this.§>!H§ > 1)
            {
               this.§>!H§ = this.§>!H§ - 1;
               this.§+!B§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§]!,§);
            }
            else
            {
               dispatchEvent(new Event(Event.§?s§));
            }
         }
      }
      
      public function get §@!G§() : Boolean
      {
         return this.§>!H§ == 1 && this.§+!B§ >= this.§]!,§;
      }
      
      public function get §^!+§() : Number
      {
         return this.§]!,§;
      }
      
      public function get §3!#§() : Number
      {
         return this.§+!B§;
      }
      
      public function get §>y§() : int
      {
         return this.§>!H§;
      }
      
      public function set §>y§(param1:int) : void
      {
         this.§>!H§ = param1;
      }
   }
}
