package §5!2§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §+k§ extends EventDispatcher implements §5>§
   {
       
      
      private var §5]§:Number = 0;
      
      private var §4!C§:Number;
      
      private var §'T§:Function;
      
      private var §+!!§:Array;
      
      private var §8R§:int = 1;
      
      public function §+k§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§'T§ = param1;
         this.§4!C§ = Math.max(param2,0.0001);
         this.§+!!§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§5]§;
         this.§5]§ = Math.min(this.§4!C§,this.§5]§ + param1);
         if(_loc2_ < this.§4!C§ && this.§5]§ >= this.§4!C§)
         {
            this.§'T§.apply(null,this.§+!!§);
            if(this.§8R§ > 1)
            {
               this.§8R§ = this.§8R§ - 1;
               this.§5]§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§4!C§);
            }
            else
            {
               dispatchEvent(new Event(Event.§>r§));
            }
         }
      }
      
      public function get §=>§() : Boolean
      {
         return this.§8R§ == 1 && this.§5]§ >= this.§4!C§;
      }
      
      public function get §1!H§() : Number
      {
         return this.§4!C§;
      }
      
      public function get §5V§() : Number
      {
         return this.§5]§;
      }
      
      public function get §4r§() : int
      {
         return this.§8R§;
      }
      
      public function set §4r§(param1:int) : void
      {
         this.§8R§ = param1;
      }
   }
}
