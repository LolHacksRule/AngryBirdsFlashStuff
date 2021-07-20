package §,M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § #§ extends EventDispatcher implements §6!G§
   {
       
      
      private var §?!'§:Number = 0;
      
      private var §1!S§:Number;
      
      private var §>!N§:Function;
      
      private var §'!X§:Array;
      
      private var §,<§:int = 1;
      
      public function § #§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§>!N§ = param1;
         this.§1!S§ = Math.max(param2,0.0001);
         this.§'!X§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§?!'§;
         this.§?!'§ = Math.min(this.§1!S§,this.§?!'§ + param1);
         if(_loc2_ < this.§1!S§ && this.§?!'§ >= this.§1!S§)
         {
            this.§>!N§.apply(null,this.§'!X§);
            if(this.§,<§ > 1)
            {
               this.§,<§ = this.§,<§ - 1;
               this.§?!'§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§1!S§);
            }
            else
            {
               dispatchEvent(new Event(Event.§9Y§));
            }
         }
      }
      
      public function get §5@§() : Boolean
      {
         return this.§,<§ == 1 && this.§?!'§ >= this.§1!S§;
      }
      
      public function get §2c§() : Number
      {
         return this.§1!S§;
      }
      
      public function get §7-§() : Number
      {
         return this.§?!'§;
      }
      
      public function get §!7§() : int
      {
         return this.§,<§;
      }
      
      public function set §!7§(param1:int) : void
      {
         this.§,<§ = param1;
      }
   }
}
