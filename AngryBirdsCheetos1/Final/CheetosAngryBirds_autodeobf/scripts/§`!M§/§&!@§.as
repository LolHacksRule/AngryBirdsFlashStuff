package §`!M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §&!@§ extends EventDispatcher implements § !7§
   {
       
      
      private var §[_§:Number = 0;
      
      private var §=!%§:Number;
      
      private var §;H§:Function;
      
      private var §3!K§:Array;
      
      private var §^x§:int = 1;
      
      public function §&!@§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§;H§ = param1;
         this.§=!%§ = Math.max(param2,0.0001);
         this.§3!K§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§[_§;
         this.§[_§ = Math.min(this.§=!%§,this.§[_§ + param1);
         if(_loc2_ < this.§=!%§ && this.§[_§ >= this.§=!%§)
         {
            this.§;H§.apply(null,this.§3!K§);
            if(this.§^x§ > 1)
            {
               this.§^x§ = this.§^x§ - 1;
               this.§[_§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§=!%§);
            }
            else
            {
               dispatchEvent(new Event(Event.§0<§));
            }
         }
      }
      
      public function get §@@§() : Boolean
      {
         return this.§^x§ == 1 && this.§[_§ >= this.§=!%§;
      }
      
      public function get §,l§() : Number
      {
         return this.§=!%§;
      }
      
      public function get §[m§() : Number
      {
         return this.§[_§;
      }
      
      public function get §6!I§() : int
      {
         return this.§^x§;
      }
      
      public function set §6!I§(param1:int) : void
      {
         this.§^x§ = param1;
      }
   }
}
