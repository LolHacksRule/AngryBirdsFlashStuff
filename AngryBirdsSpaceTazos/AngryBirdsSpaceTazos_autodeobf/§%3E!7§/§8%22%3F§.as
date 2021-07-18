package §>!7§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §8"?§ extends EventDispatcher implements §`B§
   {
       
      
      private var §7"8§:Number = 0;
      
      private var §,!c§:Number;
      
      private var §+!x§:Function;
      
      private var § g§:Array;
      
      private var §'!J§:int = 1;
      
      public function §8"?§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§+!x§ = param1;
         this.§,!c§ = Math.max(param2,0.0001);
         this.§ g§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§7"8§;
         this.§7"8§ = Math.min(this.§,!c§,this.§7"8§ + param1);
         if(_loc2_ < this.§,!c§ && this.§7"8§ >= this.§,!c§)
         {
            this.§+!x§.apply(null,this.§ g§);
            if(this.§'!J§ > 1)
            {
               this.§'!J§ = this.§'!J§ - 1;
               this.§7"8§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§,!c§);
            }
            else
            {
               dispatchEvent(new Event(Event.§^m§));
            }
         }
      }
      
      public function get §6!^§() : Boolean
      {
         return this.§'!J§ == 1 && this.§7"8§ >= this.§,!c§;
      }
      
      public function get §#F§() : Number
      {
         return this.§,!c§;
      }
      
      public function get §+V§() : Number
      {
         return this.§7"8§;
      }
      
      public function get repeatCount() : int
      {
         return this.§'!J§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§'!J§ = param1;
      }
   }
}
