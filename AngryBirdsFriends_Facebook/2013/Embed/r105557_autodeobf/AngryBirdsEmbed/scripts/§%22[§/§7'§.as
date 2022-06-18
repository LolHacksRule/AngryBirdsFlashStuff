package §"[§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §7'§ extends EventDispatcher implements §1%§
   {
       
      
      private var §4;§:Number = 0;
      
      private var §`!F§:Number;
      
      private var §2G§:Function;
      
      private var § V§:Array;
      
      private var §9!8§:int = 1;
      
      public function §7'§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§2G§ = param1;
         this.§`!F§ = Math.max(param2,0.0001);
         this.§ V§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§4;§;
         this.§4;§ = Math.min(this.§`!F§,this.§4;§ + param1);
         if(_loc2_ < this.§`!F§ && this.§4;§ >= this.§`!F§)
         {
            this.§2G§.apply(null,this.§ V§);
            if(this.§9!8§ > 1)
            {
               this.§9!8§ = this.§9!8§ - 1;
               this.§4;§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§`!F§);
            }
            else
            {
               dispatchEvent(new Event(Event.§!q§));
            }
         }
      }
      
      public function get §,w§() : Boolean
      {
         return this.§9!8§ == 1 && this.§4;§ >= this.§`!F§;
      }
      
      public function get §,F§() : Number
      {
         return this.§`!F§;
      }
      
      public function get currentTime() : Number
      {
         return this.§4;§;
      }
      
      public function get §"!%§() : int
      {
         return this.§9!8§;
      }
      
      public function set §"!%§(param1:int) : void
      {
         this.§9!8§ = param1;
      }
   }
}
