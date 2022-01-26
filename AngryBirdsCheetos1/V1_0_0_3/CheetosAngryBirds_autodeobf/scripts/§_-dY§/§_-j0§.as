package §_-dY§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §_-j0§ extends EventDispatcher implements §default§
   {
       
      
      private var §_-0-1§:Number = 0;
      
      private var §_-0-W§:Number;
      
      private var §_-T§:Function;
      
      private var §_-7W§:Array;
      
      private var §_-5g§:int = 1;
      
      public function §_-j0§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§_-T§ = param1;
         this.§_-0-W§ = Math.max(param2,0.0001);
         this.§_-7W§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§_-0-1§;
         this.§_-0-1§ = Math.min(this.§_-0-W§,this.§_-0-1§ + param1);
         if(_loc2_ < this.§_-0-W§ && this.§_-0-1§ >= this.§_-0-W§)
         {
            this.§_-T§.apply(null,this.§_-7W§);
            if(this.§_-5g§ > 1)
            {
               this.§_-5g§ = this.§_-5g§ - 1;
               this.§_-0-1§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§_-0-W§);
            }
            else
            {
               dispatchEvent(new Event(Event.§_-VS§));
            }
         }
      }
      
      public function get §_-7i§() : Boolean
      {
         return this.§_-5g§ == 1 && this.§_-0-1§ >= this.§_-0-W§;
      }
      
      public function get §_-Ig§() : Number
      {
         return this.§_-0-W§;
      }
      
      public function get §_-cT§() : Number
      {
         return this.§_-0-1§;
      }
      
      public function get §_-xn§() : int
      {
         return this.§_-5g§;
      }
      
      public function set §_-xn§(param1:int) : void
      {
         this.§_-5g§ = param1;
      }
   }
}
