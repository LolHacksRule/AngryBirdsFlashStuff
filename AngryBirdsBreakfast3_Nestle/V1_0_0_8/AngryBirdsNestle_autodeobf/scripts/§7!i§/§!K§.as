package §7!i§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!K§ extends EventDispatcher implements §]"2§
   {
       
      
      private var §@!d§:Number = 0;
      
      private var §`Y§:Number;
      
      private var §6M§:Function;
      
      private var §[!B§:Array;
      
      private var §!N§:int = 1;
      
      public function §!K§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§6M§ = param1;
         this.§`Y§ = Math.max(param2,0.0001);
         this.§[!B§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§@!d§;
         this.§@!d§ = Math.min(this.§`Y§,this.§@!d§ + param1);
         if(_loc2_ < this.§`Y§ && this.§@!d§ >= this.§`Y§)
         {
            this.§6M§.apply(null,this.§[!B§);
            if(this.§!N§ > 1)
            {
               this.§!N§ = this.§!N§ - 1;
               this.§@!d§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§`Y§);
            }
            else
            {
               dispatchEvent(new Event(Event.§#X§));
            }
         }
      }
      
      public function get § !f§() : Boolean
      {
         return this.§!N§ == 1 && this.§@!d§ >= this.§`Y§;
      }
      
      public function get §-Q§() : Number
      {
         return this.§`Y§;
      }
      
      public function get §7"&§() : Number
      {
         return this.§@!d§;
      }
      
      public function get repeatCount() : int
      {
         return this.§!N§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§!N§ = param1;
      }
   }
}
