package §"H§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §,!2§ extends EventDispatcher implements §!7§
   {
       
      
      private var §9!r§:Number = 0;
      
      private var §3!A§:Number;
      
      private var §2E§:Function;
      
      private var §1!§:Array;
      
      private var §2<§:int = 1;
      
      public function §,!2§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§2E§ = param1;
         this.§3!A§ = Math.max(param2,0.0001);
         this.§1!§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§9!r§;
         this.§9!r§ = Math.min(this.§3!A§,this.§9!r§ + param1);
         if(_loc2_ < this.§3!A§ && this.§9!r§ >= this.§3!A§)
         {
            this.§2E§.apply(null,this.§1!§);
            if(this.§2<§ > 1)
            {
               this.§2<§ = this.§2<§ - 1;
               this.§9!r§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§3!A§);
            }
            else
            {
               dispatchEvent(new Event(Event.§^U§));
            }
         }
      }
      
      public function get §+d§() : Boolean
      {
         return this.§2<§ == 1 && this.§9!r§ >= this.§3!A§;
      }
      
      public function get §3!&§() : Number
      {
         return this.§3!A§;
      }
      
      public function get §45§() : Number
      {
         return this.§9!r§;
      }
      
      public function get § Q§() : int
      {
         return this.§2<§;
      }
      
      public function set § Q§(param1:int) : void
      {
         this.§2<§ = param1;
      }
   }
}
