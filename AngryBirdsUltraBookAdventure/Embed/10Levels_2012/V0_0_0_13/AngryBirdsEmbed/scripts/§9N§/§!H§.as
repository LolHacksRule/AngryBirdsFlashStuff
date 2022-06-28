package §9N§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!H§ extends EventDispatcher implements §!o§
   {
       
      
      private var §1!E§:Number = 0;
      
      private var §1I§:Number;
      
      private var §2X§:Function;
      
      private var §@F§:Array;
      
      private var §=<§:int = 1;
      
      public function §!H§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§2X§ = param1;
         this.§1I§ = Math.max(param2,0.0001);
         this.§@F§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§1!E§;
         this.§1!E§ = Math.min(this.§1I§,this.§1!E§ + param1);
         if(_loc2_ < this.§1I§ && this.§1!E§ >= this.§1I§)
         {
            this.§2X§.apply(null,this.§@F§);
            if(this.§=<§ > 1)
            {
               this.§=<§ = this.§=<§ - 1;
               this.§1!E§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§1I§);
            }
            else
            {
               dispatchEvent(new Event(Event.§0=§));
            }
         }
      }
      
      public function get §!D§() : Boolean
      {
         return this.§=<§ == 1 && this.§1!E§ >= this.§1I§;
      }
      
      public function get §2r§() : Number
      {
         return this.§1I§;
      }
      
      public function get currentTime() : Number
      {
         return this.§1!E§;
      }
      
      public function get §-D§() : int
      {
         return this.§=<§;
      }
      
      public function set §-D§(param1:int) : void
      {
         this.§=<§ = param1;
      }
   }
}
