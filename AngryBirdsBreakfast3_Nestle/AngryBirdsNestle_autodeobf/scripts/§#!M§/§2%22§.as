package §#!M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2"§ extends EventDispatcher implements §,!Y§
   {
       
      
      private var §=",§:Number = 0;
      
      private var §2!X§:Number;
      
      private var §7"#§:Function;
      
      private var §9!S§:Array;
      
      private var §!I§:int = 1;
      
      public function §2"§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§7"#§ = param1;
         this.§2!X§ = Math.max(param2,0.0001);
         this.§9!S§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§=",§;
         this.§=",§ = Math.min(this.§2!X§,this.§=",§ + param1);
         if(_loc2_ < this.§2!X§ && this.§=",§ >= this.§2!X§)
         {
            this.§7"#§.apply(null,this.§9!S§);
            if(this.§!I§ > 1)
            {
               this.§!I§ = this.§!I§ - 1;
               this.§=",§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§2!X§);
            }
            else
            {
               dispatchEvent(new Event(Event.§2"$§));
            }
         }
      }
      
      public function get §^+§() : Boolean
      {
         return this.§!I§ == 1 && this.§=",§ >= this.§2!X§;
      }
      
      public function get § "-§() : Number
      {
         return this.§2!X§;
      }
      
      public function get §[Q§() : Number
      {
         return this.§=",§;
      }
      
      public function get repeatCount() : int
      {
         return this.§!I§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§!I§ = param1;
      }
   }
}
