package §<!o§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!!Z§ extends EventDispatcher implements §8!h§
   {
       
      
      private var §0t§:Number = 0;
      
      private var §[!F§:Number;
      
      private var §1L§:Function;
      
      private var § C§:Array;
      
      private var §?2§:int = 1;
      
      public function §!!Z§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§1L§ = param1;
         this.§[!F§ = Math.max(param2,0.0001);
         this.§ C§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§0t§;
         this.§0t§ = Math.min(this.§[!F§,this.§0t§ + param1);
         if(_loc2_ < this.§[!F§ && this.§0t§ >= this.§[!F§)
         {
            this.§1L§.apply(null,this.§ C§);
            if(this.§?2§ > 1)
            {
               this.§?2§ = this.§?2§ - 1;
               this.§0t§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§[!F§);
            }
            else
            {
               dispatchEvent(new Event(Event.§]!%§));
            }
         }
      }
      
      public function get §1!Y§() : Boolean
      {
         return this.§?2§ == 1 && this.§0t§ >= this.§[!F§;
      }
      
      public function get §with§() : Number
      {
         return this.§[!F§;
      }
      
      public function get §%p§() : Number
      {
         return this.§0t§;
      }
      
      public function get §]!p§() : int
      {
         return this.§?2§;
      }
      
      public function set §]!p§(param1:int) : void
      {
         this.§?2§ = param1;
      }
   }
}
