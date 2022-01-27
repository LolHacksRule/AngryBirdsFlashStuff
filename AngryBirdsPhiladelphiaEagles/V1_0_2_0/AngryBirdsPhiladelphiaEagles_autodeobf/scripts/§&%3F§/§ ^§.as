package §&?§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § ^§ extends EventDispatcher implements §3l§
   {
       
      
      private var §&!!§:Number = 0;
      
      private var §&!9§:Number;
      
      private var §?!7§:Function;
      
      private var §-M§:Array;
      
      private var §&V§:int = 1;
      
      public function § ^§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§?!7§ = param1;
         this.§&!9§ = Math.max(param2,0.0001);
         this.§-M§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§&!!§;
         this.§&!!§ = Math.min(this.§&!9§,this.§&!!§ + param1);
         if(_loc2_ < this.§&!9§ && this.§&!!§ >= this.§&!9§)
         {
            this.§?!7§.apply(null,this.§-M§);
            if(this.§&V§ > 1)
            {
               this.§&V§ = this.§&V§ - 1;
               this.§&!!§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§&!9§);
            }
            else
            {
               dispatchEvent(new Event(Event.§8! §));
            }
         }
      }
      
      public function get §3j§() : Boolean
      {
         return this.§&V§ == 1 && this.§&!!§ >= this.§&!9§;
      }
      
      public function get §>1§() : Number
      {
         return this.§&!9§;
      }
      
      public function get §9;§() : Number
      {
         return this.§&!!§;
      }
      
      public function get §!4§() : int
      {
         return this.§&V§;
      }
      
      public function set §!4§(param1:int) : void
      {
         this.§&V§ = param1;
      }
   }
}
