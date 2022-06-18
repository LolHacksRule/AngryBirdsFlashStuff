package § !"§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §%<§ extends EventDispatcher implements §`!B§
   {
       
      
      private var §4N§:Number = 0;
      
      private var §2F§:Number;
      
      private var §3!<§:Function;
      
      private var §<G§:Array;
      
      private var §1>§:int = 1;
      
      public function §%<§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§3!<§ = param1;
         this.§2F§ = Math.max(param2,0.0001);
         this.§<G§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§4N§;
         this.§4N§ = Math.min(this.§2F§,this.§4N§ + param1);
         if(_loc2_ < this.§2F§ && this.§4N§ >= this.§2F§)
         {
            this.§3!<§.apply(null,this.§<G§);
            if(this.§1>§ > 1)
            {
               this.§1>§ = this.§1>§ - 1;
               this.§4N§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§2F§);
            }
            else
            {
               dispatchEvent(new Event(Event.§2D§));
            }
         }
      }
      
      public function get §'[§() : Boolean
      {
         return this.§1>§ == 1 && this.§4N§ >= this.§2F§;
      }
      
      public function get §]!§() : Number
      {
         return this.§2F§;
      }
      
      public function get currentTime() : Number
      {
         return this.§4N§;
      }
      
      public function get §3I§() : int
      {
         return this.§1>§;
      }
      
      public function set §3I§(param1:int) : void
      {
         this.§1>§ = param1;
      }
   }
}
