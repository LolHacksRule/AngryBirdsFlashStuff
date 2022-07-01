package §1!5§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §4!?§ extends EventDispatcher implements §>!Y§
   {
       
      
      private var §1r§:Number = 0;
      
      private var §,!C§:Number;
      
      private var §`h§:Function;
      
      private var §`!5§:Array;
      
      private var §?l§:int = 1;
      
      public function §4!?§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§`h§ = param1;
         this.§,!C§ = Math.max(param2,0.0001);
         this.§`!5§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§1r§;
         this.§1r§ = Math.min(this.§,!C§,this.§1r§ + param1);
         if(_loc2_ < this.§,!C§ && this.§1r§ >= this.§,!C§)
         {
            this.§`h§.apply(null,this.§`!5§);
            if(this.§?l§ > 1)
            {
               this.§?l§ = this.§?l§ - 1;
               this.§1r§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§,!C§);
            }
            else
            {
               dispatchEvent(new Event(Event.§7d§));
            }
         }
      }
      
      public function get §!!P§() : Boolean
      {
         return this.§?l§ == 1 && this.§1r§ >= this.§,!C§;
      }
      
      public function get §!w§() : Number
      {
         return this.§,!C§;
      }
      
      public function get §[[§() : Number
      {
         return this.§1r§;
      }
      
      public function get §"w§() : int
      {
         return this.§?l§;
      }
      
      public function set §"w§(param1:int) : void
      {
         this.§?l§ = param1;
      }
   }
}
