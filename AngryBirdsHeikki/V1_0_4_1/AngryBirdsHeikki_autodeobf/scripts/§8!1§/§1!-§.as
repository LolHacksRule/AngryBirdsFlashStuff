package §8!1§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §1!-§ extends EventDispatcher implements § _§
   {
       
      
      private var §+!"§:Number = 0;
      
      private var §<o§:Number;
      
      private var §]q§:Function;
      
      private var §<k§:Array;
      
      private var §-P§:int = 1;
      
      public function §1!-§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§]q§ = param1;
         this.§<o§ = Math.max(param2,0.0001);
         this.§<k§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§+!"§;
         this.§+!"§ = Math.min(this.§<o§,this.§+!"§ + param1);
         if(_loc2_ < this.§<o§ && this.§+!"§ >= this.§<o§)
         {
            this.§]q§.apply(null,this.§<k§);
            if(this.§-P§ > 1)
            {
               this.§-P§ = this.§-P§ - 1;
               this.§+!"§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§<o§);
            }
            else
            {
               dispatchEvent(new Event(Event.§?!E§));
            }
         }
      }
      
      public function get §>N§() : Boolean
      {
         return this.§-P§ == 1 && this.§+!"§ >= this.§<o§;
      }
      
      public function get §7!?§() : Number
      {
         return this.§<o§;
      }
      
      public function get §@!-§() : Number
      {
         return this.§+!"§;
      }
      
      public function get §3!F§() : int
      {
         return this.§-P§;
      }
      
      public function set §3!F§(param1:int) : void
      {
         this.§-P§ = param1;
      }
   }
}
