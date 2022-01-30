package §%x§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §&J§ extends EventDispatcher implements §^!5§
   {
       
      
      private var §!e§:Number = 0;
      
      private var §5"2§:Number;
      
      private var §1"!§:Function;
      
      private var §;!b§:Array;
      
      private var §9!9§:int = 1;
      
      public function §&J§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§1"!§ = param1;
         this.§5"2§ = Math.max(param2,0.0001);
         this.§;!b§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§!e§;
         this.§!e§ = Math.min(this.§5"2§,this.§!e§ + param1);
         if(_loc2_ < this.§5"2§ && this.§!e§ >= this.§5"2§)
         {
            this.§1"!§.apply(null,this.§;!b§);
            if(this.§9!9§ > 1)
            {
               this.§9!9§ = this.§9!9§ - 1;
               this.§!e§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§5"2§);
            }
            else
            {
               dispatchEvent(new Event(Event.§@!i§));
            }
         }
      }
      
      public function get §?" §() : Boolean
      {
         return this.§9!9§ == 1 && this.§!e§ >= this.§5"2§;
      }
      
      public function get §@P§() : Number
      {
         return this.§5"2§;
      }
      
      public function get §'7§() : Number
      {
         return this.§!e§;
      }
      
      public function get §#V§() : int
      {
         return this.§9!9§;
      }
      
      public function set §#V§(param1:int) : void
      {
         this.§9!9§ = param1;
      }
   }
}
