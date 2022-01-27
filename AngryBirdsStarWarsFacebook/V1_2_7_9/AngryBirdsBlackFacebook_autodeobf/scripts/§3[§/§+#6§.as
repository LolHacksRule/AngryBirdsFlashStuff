package §3[§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §+#6§ extends EventDispatcher implements §+",§
   {
       
      
      private var §,§:Number = 0;
      
      private var §0w§:Number;
      
      private var § "d§:Function;
      
      private var §5"'§:Array;
      
      private var §'"e§:int = 1;
      
      public function §+#6§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§ "d§ = param1;
         this.§0w§ = Math.max(param2,0.0001);
         this.§5"'§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§,§;
         this.§,§ = Math.min(this.§0w§,this.§,§ + param1);
         if(_loc2_ < this.§0w§ && this.§,§ >= this.§0w§)
         {
            this.§ "d§.apply(null,this.§5"'§);
            if(this.§'"e§ > 1)
            {
               this.§'"e§ = this.§'"e§ - 1;
               this.§,§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§0w§);
            }
            else
            {
               dispatchEvent(new Event(Event.§>!V§));
            }
         }
      }
      
      public function get isComplete() : Boolean
      {
         return this.§'"e§ == 1 && this.§,§ >= this.§0w§;
      }
      
      public function get §%m§() : Number
      {
         return this.§0w§;
      }
      
      public function get currentTime() : Number
      {
         return this.§,§;
      }
      
      public function get §7"J§() : int
      {
         return this.§'"e§;
      }
      
      public function set §7"J§(param1:int) : void
      {
         this.§'"e§ = param1;
      }
   }
}
