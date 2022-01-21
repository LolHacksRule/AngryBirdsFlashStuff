package §]d§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@=§ extends EventDispatcher implements §;=§
   {
       
      
      private var §[m§:Number = 0;
      
      private var §0o§:Number;
      
      private var §3!§:Function;
      
      private var §^!J§:Array;
      
      private var §[!E§:int = 1;
      
      public function §@=§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§3!§ = param1;
         this.§0o§ = Math.max(param2,0.0001);
         this.§^!J§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§[m§;
         this.§[m§ = Math.min(this.§0o§,this.§[m§ + param1);
         if(_loc2_ < this.§0o§ && this.§[m§ >= this.§0o§)
         {
            this.§3!§.apply(null,this.§^!J§);
            if(this.§[!E§ > 1)
            {
               this.§[!E§ = this.§[!E§ - 1;
               this.§[m§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§0o§);
            }
            else
            {
               dispatchEvent(new Event(Event.§<x§));
            }
         }
      }
      
      public function get §!O§() : Boolean
      {
         return this.§[!E§ == 1 && this.§[m§ >= this.§0o§;
      }
      
      public function get §4t§() : Number
      {
         return this.§0o§;
      }
      
      public function get §&P§() : Number
      {
         return this.§[m§;
      }
      
      public function get §import§() : int
      {
         return this.§[!E§;
      }
      
      public function set §import§(param1:int) : void
      {
         this.§[!E§ = param1;
      }
   }
}
