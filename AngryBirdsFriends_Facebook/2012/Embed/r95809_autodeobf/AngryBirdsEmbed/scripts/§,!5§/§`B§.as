package §,!5§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §`B§ extends EventDispatcher implements §"e§
   {
       
      
      private var §+Q§:Number = 0;
      
      private var § O§:Number;
      
      private var §6n§:Function;
      
      private var §@%§:Array;
      
      private var §-c§:int = 1;
      
      public function §`B§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§6n§ = param1;
         this.§ O§ = Math.max(param2,0.0001);
         this.§@%§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§+Q§;
         this.§+Q§ = Math.min(this.§ O§,this.§+Q§ + param1);
         if(_loc2_ < this.§ O§ && this.§+Q§ >= this.§ O§)
         {
            this.§6n§.apply(null,this.§@%§);
            if(this.§-c§ > 1)
            {
               this.§-c§ = this.§-c§ - 1;
               this.§+Q§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§ O§);
            }
            else
            {
               dispatchEvent(new Event(Event.§%O§));
            }
         }
      }
      
      public function get §2Z§() : Boolean
      {
         return this.§-c§ == 1 && this.§+Q§ >= this.§ O§;
      }
      
      public function get §?r§() : Number
      {
         return this.§ O§;
      }
      
      public function get currentTime() : Number
      {
         return this.§+Q§;
      }
      
      public function get §!2§() : int
      {
         return this.§-c§;
      }
      
      public function set §!2§(param1:int) : void
      {
         this.§-c§ = param1;
      }
   }
}
