package §4'§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §+d§ extends EventDispatcher implements §9N§
   {
       
      
      private var §!H§:Number = 0;
      
      private var §1!E§:Number;
      
      private var §1I§:Function;
      
      private var §2X§:Array;
      
      private var §@F§:int = 1;
      
      public function §+d§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§1I§ = param1;
         this.§1!E§ = Math.max(param2,0.0001);
         this.§2X§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§!H§;
         this.§!H§ = Math.min(this.§1!E§,this.§!H§ + param1);
         if(_loc2_ < this.§1!E§ && this.§!H§ >= this.§1!E§)
         {
            this.§1I§.apply(null,this.§2X§);
            if(this.§@F§ > 1)
            {
               this.§@F§ = this.§@F§ - 1;
               this.§!H§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§1!E§);
            }
            else
            {
               dispatchEvent(new Event(Event.§#!7§));
            }
         }
      }
      
      public function get §=<§() : Boolean
      {
         return this.§@F§ == 1 && this.§!H§ >= this.§1!E§;
      }
      
      public function get §!D§() : Number
      {
         return this.§1!E§;
      }
      
      public function get currentTime() : Number
      {
         return this.§!H§;
      }
      
      public function get §2r§() : int
      {
         return this.§@F§;
      }
      
      public function set §2r§(param1:int) : void
      {
         this.§@F§ = param1;
      }
   }
}
