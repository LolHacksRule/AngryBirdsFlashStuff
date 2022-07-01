package §>!]§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §9Z§ extends EventDispatcher implements §6!B§
   {
       
      
      private var §5a§:Number = 0;
      
      private var §-U§:Number;
      
      private var §8!=§:Function;
      
      private var §'!g§:Array;
      
      private var §9!m§:int = 1;
      
      public function §9Z§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§8!=§ = param1;
         this.§-U§ = Math.max(param2,0.0001);
         this.§'!g§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§5a§;
         this.§5a§ = Math.min(this.§-U§,this.§5a§ + param1);
         if(_loc2_ < this.§-U§ && this.§5a§ >= this.§-U§)
         {
            this.§8!=§.apply(null,this.§'!g§);
            if(this.§9!m§ > 1)
            {
               this.§9!m§ = this.§9!m§ - 1;
               this.§5a§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§-U§);
            }
            else
            {
               dispatchEvent(new Event(Event.§=P§));
            }
         }
      }
      
      public function get §4!d§() : Boolean
      {
         return this.§9!m§ == 1 && this.§5a§ >= this.§-U§;
      }
      
      public function get §9e§() : Number
      {
         return this.§-U§;
      }
      
      public function get §%t§() : Number
      {
         return this.§5a§;
      }
      
      public function get repeatCount() : int
      {
         return this.§9!m§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§9!m§ = param1;
      }
   }
}
