package §?r§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §finally§ extends EventDispatcher implements §`C§
   {
       
      
      private var §]!H§:Number = 0;
      
      private var §,d§:Number;
      
      private var §=K§:Function;
      
      private var §3Y§:Array;
      
      private var §@!5§:int = 1;
      
      public function §finally§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§=K§ = param1;
         this.§,d§ = Math.max(param2,0.0001);
         this.§3Y§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§]!H§;
         this.§]!H§ = Math.min(this.§,d§,this.§]!H§ + param1);
         if(_loc2_ < this.§,d§ && this.§]!H§ >= this.§,d§)
         {
            this.§=K§.apply(null,this.§3Y§);
            if(this.§@!5§ > 1)
            {
               this.§@!5§ = this.§@!5§ - 1;
               this.§]!H§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§,d§);
            }
            else
            {
               dispatchEvent(new Event(Event.§6=§));
            }
         }
      }
      
      public function get §&>§() : Boolean
      {
         return this.§@!5§ == 1 && this.§]!H§ >= this.§,d§;
      }
      
      public function get §;!T§() : Number
      {
         return this.§,d§;
      }
      
      public function get §1O§() : Number
      {
         return this.§]!H§;
      }
      
      public function get §%N§() : int
      {
         return this.§@!5§;
      }
      
      public function set §%N§(param1:int) : void
      {
         this.§@!5§ = param1;
      }
   }
}
