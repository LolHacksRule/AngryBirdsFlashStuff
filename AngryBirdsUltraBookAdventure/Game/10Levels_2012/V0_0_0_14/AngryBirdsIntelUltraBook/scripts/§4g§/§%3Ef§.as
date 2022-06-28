package §4g§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>f§ extends EventDispatcher implements §@7§
   {
       
      
      private var §#!n§:Number = 0;
      
      private var §]Z§:Number;
      
      private var §=1§:Function;
      
      private var §[8§:Array;
      
      private var §-!e§:int = 1;
      
      public function §>f§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§=1§ = param1;
         this.§]Z§ = Math.max(param2,0.0001);
         this.§[8§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§#!n§;
         this.§#!n§ = Math.min(this.§]Z§,this.§#!n§ + param1);
         if(_loc2_ < this.§]Z§ && this.§#!n§ >= this.§]Z§)
         {
            this.§=1§.apply(null,this.§[8§);
            if(this.§-!e§ > 1)
            {
               this.§-!e§ = this.§-!e§ - 1;
               this.§#!n§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§]Z§);
            }
            else
            {
               dispatchEvent(new Event(Event.§"!_§));
            }
         }
      }
      
      public function get §^!_§() : Boolean
      {
         return this.§-!e§ == 1 && this.§#!n§ >= this.§]Z§;
      }
      
      public function get §9!t§() : Number
      {
         return this.§]Z§;
      }
      
      public function get §&a§() : Number
      {
         return this.§#!n§;
      }
      
      public function get §#!t§() : int
      {
         return this.§-!e§;
      }
      
      public function set §#!t§(param1:int) : void
      {
         this.§-!e§ = param1;
      }
   }
}
