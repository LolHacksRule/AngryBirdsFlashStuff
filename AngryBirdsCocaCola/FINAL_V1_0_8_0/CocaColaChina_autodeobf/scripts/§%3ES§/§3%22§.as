package §>S§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3"§ extends EventDispatcher implements §",§
   {
       
      
      private var §;!e§:Number = 0;
      
      private var §4!^§:Number;
      
      private var §'U§:Function;
      
      private var §=w§:Array;
      
      private var §5;§:int = 1;
      
      public function §3"§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§'U§ = param1;
         this.§4!^§ = Math.max(param2,0.0001);
         this.§=w§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§;!e§;
         this.§;!e§ = Math.min(this.§4!^§,this.§;!e§ + param1);
         if(_loc2_ < this.§4!^§ && this.§;!e§ >= this.§4!^§)
         {
            this.§'U§.apply(null,this.§=w§);
            if(this.§5;§ > 1)
            {
               this.§5;§ = this.§5;§ - 1;
               this.§;!e§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§4!^§);
            }
            else
            {
               dispatchEvent(new Event(Event.§`c§));
            }
         }
      }
      
      public function get §;F§() : Boolean
      {
         return this.§5;§ == 1 && this.§;!e§ >= this.§4!^§;
      }
      
      public function get §##§() : Number
      {
         return this.§4!^§;
      }
      
      public function get §[0§() : Number
      {
         return this.§;!e§;
      }
      
      public function get §6d§() : int
      {
         return this.§5;§;
      }
      
      public function set §6d§(param1:int) : void
      {
         this.§5;§ = param1;
      }
   }
}
