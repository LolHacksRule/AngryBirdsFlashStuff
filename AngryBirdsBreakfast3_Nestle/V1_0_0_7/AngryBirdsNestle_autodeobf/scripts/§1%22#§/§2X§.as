package §1"#§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2X§ extends EventDispatcher implements §>"3§
   {
       
      
      private var §>!F§:Number = 0;
      
      private var §6"&§:Number;
      
      private var §3!d§:Function;
      
      private var §4!C§:Array;
      
      private var §?"$§:int = 1;
      
      public function §2X§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§3!d§ = param1;
         this.§6"&§ = Math.max(param2,0.0001);
         this.§4!C§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§>!F§;
         this.§>!F§ = Math.min(this.§6"&§,this.§>!F§ + param1);
         if(_loc2_ < this.§6"&§ && this.§>!F§ >= this.§6"&§)
         {
            this.§3!d§.apply(null,this.§4!C§);
            if(this.§?"$§ > 1)
            {
               this.§?"$§ = this.§?"$§ - 1;
               this.§>!F§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§6"&§);
            }
            else
            {
               dispatchEvent(new Event(Event.§3!Y§));
            }
         }
      }
      
      public function get § !i§() : Boolean
      {
         return this.§?"$§ == 1 && this.§>!F§ >= this.§6"&§;
      }
      
      public function get §=0§() : Number
      {
         return this.§6"&§;
      }
      
      public function get §'S§() : Number
      {
         return this.§>!F§;
      }
      
      public function get repeatCount() : int
      {
         return this.§?"$§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§?"$§ = param1;
      }
   }
}
