package §8!R§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §#%§ extends EventDispatcher implements §8$§
   {
       
      
      private var §?!=§:Number = 0;
      
      private var §3!Q§:Number;
      
      private var §;T§:Function;
      
      private var §&!§:Array;
      
      private var §[g§:int = 1;
      
      public function §#%§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§;T§ = param1;
         this.§3!Q§ = Math.max(param2,0.0001);
         this.§&!§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§?!=§;
         this.§?!=§ = Math.min(this.§3!Q§,this.§?!=§ + param1);
         if(_loc2_ < this.§3!Q§ && this.§?!=§ >= this.§3!Q§)
         {
            this.§;T§.apply(null,this.§&!§);
            if(this.§[g§ > 1)
            {
               this.§[g§ = this.§[g§ - 1;
               this.§?!=§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§3!Q§);
            }
            else
            {
               dispatchEvent(new Event(Event.§?!V§));
            }
         }
      }
      
      public function get §!!+§() : Boolean
      {
         return this.§[g§ == 1 && this.§?!=§ >= this.§3!Q§;
      }
      
      public function get §3E§() : Number
      {
         return this.§3!Q§;
      }
      
      public function get §3H§() : Number
      {
         return this.§?!=§;
      }
      
      public function get §74§() : int
      {
         return this.§[g§;
      }
      
      public function set §74§(param1:int) : void
      {
         this.§[g§ = param1;
      }
   }
}
