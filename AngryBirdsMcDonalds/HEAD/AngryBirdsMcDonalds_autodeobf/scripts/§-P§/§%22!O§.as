package §-P§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §"!O§ extends EventDispatcher implements §&s§
   {
       
      
      private var §1D§:Number = 0;
      
      private var §3!U§:Number;
      
      private var §&!;§:Function;
      
      private var §+!h§:Array;
      
      private var §25§:int = 1;
      
      public function §"!O§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§&!;§ = param1;
         this.§3!U§ = Math.max(param2,0.0001);
         this.§+!h§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§1D§;
         this.§1D§ = Math.min(this.§3!U§,this.§1D§ + param1);
         if(_loc2_ < this.§3!U§ && this.§1D§ >= this.§3!U§)
         {
            this.§&!;§.apply(null,this.§+!h§);
            if(this.§25§ > 1)
            {
               this.§25§ = this.§25§ - 1;
               this.§1D§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§3!U§);
            }
            else
            {
               dispatchEvent(new Event(Event.§?i§));
            }
         }
      }
      
      public function get §!!4§() : Boolean
      {
         return this.§25§ == 1 && this.§1D§ >= this.§3!U§;
      }
      
      public function get §!L§() : Number
      {
         return this.§3!U§;
      }
      
      public function get §4!c§() : Number
      {
         return this.§1D§;
      }
      
      public function get § C§() : int
      {
         return this.§25§;
      }
      
      public function set § C§(param1:int) : void
      {
         this.§25§ = param1;
      }
   }
}
