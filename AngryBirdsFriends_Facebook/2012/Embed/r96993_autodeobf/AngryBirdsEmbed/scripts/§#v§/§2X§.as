package §#v§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §2X§ extends EventDispatcher implements §-l§
   {
       
      
      private var §'!;§:Number = 0;
      
      private var §for§:Number;
      
      private var §<!G§:Function;
      
      private var §+d§:Array;
      
      private var §+]§:int = 1;
      
      public function §2X§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§<!G§ = param1;
         this.§for§ = Math.max(param2,0.0001);
         this.§+d§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§'!;§;
         this.§'!;§ = Math.min(this.§for§,this.§'!;§ + param1);
         if(_loc2_ < this.§for§ && this.§'!;§ >= this.§for§)
         {
            this.§<!G§.apply(null,this.§+d§);
            if(this.§+]§ > 1)
            {
               this.§+]§ = this.§+]§ - 1;
               this.§'!;§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§for§);
            }
            else
            {
               dispatchEvent(new Event(Event.§]I§));
            }
         }
      }
      
      public function get §"B§() : Boolean
      {
         return this.§+]§ == 1 && this.§'!;§ >= this.§for§;
      }
      
      public function get §1t§() : Number
      {
         return this.§for§;
      }
      
      public function get currentTime() : Number
      {
         return this.§'!;§;
      }
      
      public function get § ?§() : int
      {
         return this.§+]§;
      }
      
      public function set § ?§(param1:int) : void
      {
         this.§+]§ = param1;
      }
   }
}
