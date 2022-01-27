package §7!8§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §^w§ extends EventDispatcher implements §2s§
   {
       
      
      private var §^0§:Number = 0;
      
      private var §=!G§:Number;
      
      private var §@!F§:Function;
      
      private var §["B§:Array;
      
      private var §;!'§:int = 1;
      
      public function §^w§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§@!F§ = param1;
         this.§=!G§ = Math.max(param2,0.0001);
         this.§["B§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§^0§;
         this.§^0§ = Math.min(this.§=!G§,this.§^0§ + param1);
         if(_loc2_ < this.§=!G§ && this.§^0§ >= this.§=!G§)
         {
            this.§@!F§.apply(null,this.§["B§);
            if(this.§;!'§ > 1)
            {
               this.§;!'§ = this.§;!'§ - 1;
               this.§^0§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§=!G§);
            }
            else
            {
               dispatchEvent(new Event(Event.§#!B§));
            }
         }
      }
      
      public function get §5"6§() : Boolean
      {
         return this.§;!'§ == 1 && this.§^0§ >= this.§=!G§;
      }
      
      public function get §3!T§() : Number
      {
         return this.§=!G§;
      }
      
      public function get § !C§() : Number
      {
         return this.§^0§;
      }
      
      public function get repeatCount() : int
      {
         return this.§;!'§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§;!'§ = param1;
      }
   }
}
