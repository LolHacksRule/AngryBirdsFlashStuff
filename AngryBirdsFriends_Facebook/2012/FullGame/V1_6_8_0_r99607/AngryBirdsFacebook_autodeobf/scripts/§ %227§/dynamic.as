package § "7§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class dynamic extends EventDispatcher implements §1t§
   {
       
      
      private var §9M§:Number = 0;
      
      private var §%9§:Number;
      
      private var §?!V§:Function;
      
      private var §,!^§:Array;
      
      private var §11§:int = 1;
      
      public function dynamic(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§?!V§ = param1;
         this.§%9§ = Math.max(param2,0.0001);
         this.§,!^§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§9M§;
         this.§9M§ = Math.min(this.§%9§,this.§9M§ + param1);
         if(_loc2_ < this.§%9§ && this.§9M§ >= this.§%9§)
         {
            this.§?!V§.apply(null,this.§,!^§);
            if(this.§11§ > 1)
            {
               this.§11§ = this.§11§ - 1;
               this.§9M§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§%9§);
            }
            else
            {
               dispatchEvent(new Event(Event.§4v§));
            }
         }
      }
      
      public function get §<T§() : Boolean
      {
         return this.§11§ == 1 && this.§9M§ >= this.§%9§;
      }
      
      public function get §,[§() : Number
      {
         return this.§%9§;
      }
      
      public function get §>"6§() : Number
      {
         return this.§9M§;
      }
      
      public function get §36§() : int
      {
         return this.§11§;
      }
      
      public function set §36§(param1:int) : void
      {
         this.§11§ = param1;
      }
   }
}
