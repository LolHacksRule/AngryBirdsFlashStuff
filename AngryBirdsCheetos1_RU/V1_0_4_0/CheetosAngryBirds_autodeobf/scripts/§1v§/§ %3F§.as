package §1v§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § ?§ extends EventDispatcher implements §,!Y§
   {
       
      
      private var §4o§:Number = 0;
      
      private var §9p§:Number;
      
      private var §[t§:Function;
      
      private var §&!Y§:Array;
      
      private var §4!=§:int = 1;
      
      public function § ?§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§[t§ = param1;
         this.§9p§ = Math.max(param2,0.0001);
         this.§&!Y§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§4o§;
         this.§4o§ = Math.min(this.§9p§,this.§4o§ + param1);
         if(_loc2_ < this.§9p§ && this.§4o§ >= this.§9p§)
         {
            this.§[t§.apply(null,this.§&!Y§);
            if(this.§4!=§ > 1)
            {
               this.§4!=§ = this.§4!=§ - 1;
               this.§4o§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§9p§);
            }
            else
            {
               dispatchEvent(new Event(Event.§]T§));
            }
         }
      }
      
      public function get §8c§() : Boolean
      {
         return this.§4!=§ == 1 && this.§4o§ >= this.§9p§;
      }
      
      public function get §[O§() : Number
      {
         return this.§9p§;
      }
      
      public function get §@a§() : Number
      {
         return this.§4o§;
      }
      
      public function get §+=§() : int
      {
         return this.§4!=§;
      }
      
      public function set §+=§(param1:int) : void
      {
         this.§4!=§ = param1;
      }
   }
}
