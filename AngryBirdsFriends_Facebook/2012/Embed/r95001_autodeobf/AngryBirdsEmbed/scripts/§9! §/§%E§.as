package §9! §
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §%E§ extends EventDispatcher implements §,!3§
   {
       
      
      private var §+`§:Number = 0;
      
      private var §5k§:Number;
      
      private var §]]§:Function;
      
      private var §4A§:Array;
      
      private var §9U§:int = 1;
      
      public function §%E§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§]]§ = param1;
         this.§5k§ = Math.max(param2,0.0001);
         this.§4A§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§+`§;
         this.§+`§ = Math.min(this.§5k§,this.§+`§ + param1);
         if(_loc2_ < this.§5k§ && this.§+`§ >= this.§5k§)
         {
            this.§]]§.apply(null,this.§4A§);
            if(this.§9U§ > 1)
            {
               this.§9U§ = this.§9U§ - 1;
               this.§+`§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§5k§);
            }
            else
            {
               dispatchEvent(new Event(Event.§!!8§));
            }
         }
      }
      
      public function get §38§() : Boolean
      {
         return this.§9U§ == 1 && this.§+`§ >= this.§5k§;
      }
      
      public function get §4U§() : Number
      {
         return this.§5k§;
      }
      
      public function get currentTime() : Number
      {
         return this.§+`§;
      }
      
      public function get §>w§() : int
      {
         return this.§9U§;
      }
      
      public function set §>w§(param1:int) : void
      {
         this.§9U§ = param1;
      }
   }
}
