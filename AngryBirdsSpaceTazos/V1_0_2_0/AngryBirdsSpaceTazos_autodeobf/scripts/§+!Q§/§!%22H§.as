package §+!Q§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!"H§ extends EventDispatcher implements §;!S§
   {
       
      
      private var §4T§:Number = 0;
      
      private var §7F§:Number;
      
      private var §70§:Function;
      
      private var §,!-§:Array;
      
      private var §@!Q§:int = 1;
      
      public function §!"H§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§70§ = param1;
         this.§7F§ = Math.max(param2,0.0001);
         this.§,!-§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§4T§;
         this.§4T§ = Math.min(this.§7F§,this.§4T§ + param1);
         if(_loc2_ < this.§7F§ && this.§4T§ >= this.§7F§)
         {
            this.§70§.apply(null,this.§,!-§);
            if(this.§@!Q§ > 1)
            {
               this.§@!Q§ = this.§@!Q§ - 1;
               this.§4T§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§7F§);
            }
            else
            {
               dispatchEvent(new Event(Event.§[!y§));
            }
         }
      }
      
      public function get §9s§() : Boolean
      {
         return this.§@!Q§ == 1 && this.§4T§ >= this.§7F§;
      }
      
      public function get §<!1§() : Number
      {
         return this.§7F§;
      }
      
      public function get §0"8§() : Number
      {
         return this.§4T§;
      }
      
      public function get repeatCount() : int
      {
         return this.§@!Q§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§@!Q§ = param1;
      }
   }
}
