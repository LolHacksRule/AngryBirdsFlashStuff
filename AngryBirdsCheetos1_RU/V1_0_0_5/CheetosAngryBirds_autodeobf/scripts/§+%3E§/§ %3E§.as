package §+>§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § >§ extends EventDispatcher implements §=!E§
   {
       
      
      private var §?!M§:Number = 0;
      
      private var §]!T§:Number;
      
      private var §^!B§:Function;
      
      private var §7w§:Array;
      
      private var §4!I§:int = 1;
      
      public function § >§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§^!B§ = param1;
         this.§]!T§ = Math.max(param2,0.0001);
         this.§7w§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§?!M§;
         this.§?!M§ = Math.min(this.§]!T§,this.§?!M§ + param1);
         if(_loc2_ < this.§]!T§ && this.§?!M§ >= this.§]!T§)
         {
            this.§^!B§.apply(null,this.§7w§);
            if(this.§4!I§ > 1)
            {
               this.§4!I§ = this.§4!I§ - 1;
               this.§?!M§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§]!T§);
            }
            else
            {
               dispatchEvent(new Event(Event.§7W§));
            }
         }
      }
      
      public function get §<!?§() : Boolean
      {
         return this.§4!I§ == 1 && this.§?!M§ >= this.§]!T§;
      }
      
      public function get §^!$§() : Number
      {
         return this.§]!T§;
      }
      
      public function get §]8§() : Number
      {
         return this.§?!M§;
      }
      
      public function get §9b§() : int
      {
         return this.§4!I§;
      }
      
      public function set §9b§(param1:int) : void
      {
         this.§4!I§ = param1;
      }
   }
}
