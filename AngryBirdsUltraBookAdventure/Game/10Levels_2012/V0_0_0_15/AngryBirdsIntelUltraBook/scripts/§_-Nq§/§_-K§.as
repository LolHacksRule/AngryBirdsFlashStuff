package §_-Nq§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §_-K§ extends EventDispatcher implements §_-eI§
   {
       
      
      private var §_-Pe§:Number = 0;
      
      private var §_-hV§:Number;
      
      private var §_-08y§:Function;
      
      private var §_-Yv§:Array;
      
      private var §_-dW§:int = 1;
      
      public function §_-K§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§_-08y§ = param1;
         this.§_-hV§ = Math.max(param2,0.0001);
         this.§_-Yv§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§_-Pe§;
         this.§_-Pe§ = Math.min(this.§_-hV§,this.§_-Pe§ + param1);
         if(_loc2_ < this.§_-hV§ && this.§_-Pe§ >= this.§_-hV§)
         {
            this.§_-08y§.apply(null,this.§_-Yv§);
            if(this.§_-dW§ > 1)
            {
               this.§_-dW§ = this.§_-dW§ - 1;
               this.§_-Pe§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§_-hV§);
            }
            else
            {
               dispatchEvent(new Event(Event.§_-rC§));
            }
         }
      }
      
      public function get §_-yF§() : Boolean
      {
         return this.§_-dW§ == 1 && this.§_-Pe§ >= this.§_-hV§;
      }
      
      public function get §_-8f§() : Number
      {
         return this.§_-hV§;
      }
      
      public function get §_-Ms§() : Number
      {
         return this.§_-Pe§;
      }
      
      public function get §_-Pt§() : int
      {
         return this.§_-dW§;
      }
      
      public function set §_-Pt§(param1:int) : void
      {
         this.§_-dW§ = param1;
      }
   }
}
