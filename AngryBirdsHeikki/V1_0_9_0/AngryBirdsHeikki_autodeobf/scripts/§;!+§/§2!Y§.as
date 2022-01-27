package §;!+§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2!Y§ extends EventDispatcher implements §?d§
   {
       
      
      private var §[T§:Number = 0;
      
      private var §@!E§:Number;
      
      private var §`!e§:Function;
      
      private var §]!M§:Array;
      
      private var §^!d§:int = 1;
      
      public function §2!Y§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§`!e§ = param1;
         this.§@!E§ = Math.max(param2,0.0001);
         this.§]!M§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§[T§;
         this.§[T§ = Math.min(this.§@!E§,this.§[T§ + param1);
         if(_loc2_ < this.§@!E§ && this.§[T§ >= this.§@!E§)
         {
            this.§`!e§.apply(null,this.§]!M§);
            if(this.§^!d§ > 1)
            {
               this.§^!d§ = this.§^!d§ - 1;
               this.§[T§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§@!E§);
            }
            else
            {
               dispatchEvent(new Event(Event.§4f§));
            }
         }
      }
      
      public function get §1!B§() : Boolean
      {
         return this.§^!d§ == 1 && this.§[T§ >= this.§@!E§;
      }
      
      public function get §?!I§() : Number
      {
         return this.§@!E§;
      }
      
      public function get §3S§() : Number
      {
         return this.§[T§;
      }
      
      public function get §const§() : int
      {
         return this.§^!d§;
      }
      
      public function set §const§(param1:int) : void
      {
         this.§^!d§ = param1;
      }
   }
}
