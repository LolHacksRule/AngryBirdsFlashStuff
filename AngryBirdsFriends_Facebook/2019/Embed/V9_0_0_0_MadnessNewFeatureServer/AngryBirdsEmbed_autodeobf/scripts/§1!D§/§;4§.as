package §1!D§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;4§ extends EventDispatcher implements §=!B§
   {
       
      
      private var §-!K§:Number = 0;
      
      private var §9!4§:Number;
      
      private var §,q§:Function;
      
      private var §]>§:Array;
      
      private var §%e§:int = 1;
      
      public function §;4§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§,q§ = param1;
         this.§9!4§ = Math.max(param2,0.0001);
         this.§]>§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§-!K§;
         this.§-!K§ = Math.min(this.§9!4§,this.§-!K§ + param1);
         if(_loc2_ < this.§9!4§ && this.§-!K§ >= this.§9!4§)
         {
            this.§,q§.apply(null,this.§]>§);
            if(this.§%e§ > 1)
            {
               this.§%e§ = this.§%e§ - 1;
               this.§-!K§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§9!4§);
            }
            else
            {
               dispatchEvent(new Event(Event.§ `§));
            }
         }
      }
      
      public function get §"7§() : Boolean
      {
         return this.§%e§ == 1 && this.§-!K§ >= this.§9!4§;
      }
      
      public function get §#!&§() : Number
      {
         return this.§9!4§;
      }
      
      public function get currentTime() : Number
      {
         return this.§-!K§;
      }
      
      public function get §@k§() : int
      {
         return this.§%e§;
      }
      
      public function set §@k§(param1:int) : void
      {
         this.§%e§ = param1;
      }
   }
}
