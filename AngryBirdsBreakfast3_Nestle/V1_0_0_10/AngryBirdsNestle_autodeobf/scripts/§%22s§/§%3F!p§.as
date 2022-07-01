package §"s§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §?!p§ extends EventDispatcher implements §<!A§
   {
       
      
      private var §`,§:Number = 0;
      
      private var §8!T§:Number;
      
      private var §'!I§:Function;
      
      private var §]!U§:Array;
      
      private var § !;§:int = 1;
      
      public function §?!p§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§'!I§ = param1;
         this.§8!T§ = Math.max(param2,0.0001);
         this.§]!U§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§`,§;
         this.§`,§ = Math.min(this.§8!T§,this.§`,§ + param1);
         if(_loc2_ < this.§8!T§ && this.§`,§ >= this.§8!T§)
         {
            this.§'!I§.apply(null,this.§]!U§);
            if(this.§ !;§ > 1)
            {
               this.§ !;§ = this.§ !;§ - 1;
               this.§`,§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§8!T§);
            }
            else
            {
               dispatchEvent(new Event(Event.§2"+§));
            }
         }
      }
      
      public function get §6!3§() : Boolean
      {
         return this.§ !;§ == 1 && this.§`,§ >= this.§8!T§;
      }
      
      public function get §8a§() : Number
      {
         return this.§8!T§;
      }
      
      public function get §#4§() : Number
      {
         return this.§`,§;
      }
      
      public function get repeatCount() : int
      {
         return this.§ !;§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§ !;§ = param1;
      }
   }
}
