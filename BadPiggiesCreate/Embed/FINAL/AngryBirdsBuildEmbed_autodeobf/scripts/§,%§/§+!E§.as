package §,%§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §+!E§ extends EventDispatcher implements §&!Z§
   {
       
      
      private var §<!J§:Number = 0;
      
      private var § @§:Number;
      
      private var §%!P§:Function;
      
      private var §5§:Array;
      
      private var §[!a§:int = 1;
      
      public function §+!E§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§%!P§ = param1;
         this.§ @§ = Math.max(param2,0.0001);
         this.§5§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§<!J§;
         this.§<!J§ = Math.min(this.§ @§,this.§<!J§ + param1);
         if(_loc2_ < this.§ @§ && this.§<!J§ >= this.§ @§)
         {
            this.§%!P§.apply(null,this.§5§);
            if(this.§[!a§ > 1)
            {
               this.§[!a§ = this.§[!a§ - 1;
               this.§<!J§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§ @§);
            }
            else
            {
               dispatchEvent(new Event(Event.§%%§));
            }
         }
      }
      
      public function get §`Q§() : Boolean
      {
         return this.§[!a§ == 1 && this.§<!J§ >= this.§ @§;
      }
      
      public function get §=W§() : Number
      {
         return this.§ @§;
      }
      
      public function get currentTime() : Number
      {
         return this.§<!J§;
      }
      
      public function get §-!n§() : int
      {
         return this.§[!a§;
      }
      
      public function set §-!n§(param1:int) : void
      {
         this.§[!a§ = param1;
      }
   }
}
