package §%!7§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §%""§ extends EventDispatcher implements §1"4§
   {
       
      
      private var §!"5§:Number = 0;
      
      private var § !t§:Number;
      
      private var §,!6§:Function;
      
      private var §0X§:Array;
      
      private var §0e§:int = 1;
      
      public function §%""§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§,!6§ = param1;
         this.§ !t§ = Math.max(param2,0.0001);
         this.§0X§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§!"5§;
         this.§!"5§ = Math.min(this.§ !t§,this.§!"5§ + param1);
         if(_loc2_ < this.§ !t§ && this.§!"5§ >= this.§ !t§)
         {
            this.§,!6§.apply(null,this.§0X§);
            if(this.§0e§ > 1)
            {
               this.§0e§ = this.§0e§ - 1;
               this.§!"5§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§ !t§);
            }
            else
            {
               dispatchEvent(new Event(Event.§;J§));
            }
         }
      }
      
      public function get §#!V§() : Boolean
      {
         return this.§0e§ == 1 && this.§!"5§ >= this.§ !t§;
      }
      
      public function get §'!M§() : Number
      {
         return this.§ !t§;
      }
      
      public function get §%!d§() : Number
      {
         return this.§!"5§;
      }
      
      public function get repeatCount() : int
      {
         return this.§0e§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§0e§ = param1;
      }
   }
}
