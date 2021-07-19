package § F§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]!#§ extends EventDispatcher implements §9U§
   {
       
      
      private var §?4§:Number = 0;
      
      private var §58§:Number;
      
      private var §>h§:Function;
      
      private var §=!#§:Array;
      
      private var §7W§:int = 1;
      
      public function §]!#§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§>h§ = param1;
         this.§58§ = Math.max(param2,0.0001);
         this.§=!#§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§?4§;
         this.§?4§ = Math.min(this.§58§,this.§?4§ + param1);
         if(_loc2_ < this.§58§ && this.§?4§ >= this.§58§)
         {
            this.§>h§.apply(null,this.§=!#§);
            if(this.§7W§ > 1)
            {
               this.§7W§ = this.§7W§ - 1;
               this.§?4§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§58§);
            }
            else
            {
               dispatchEvent(new Event(Event.§<!D§));
            }
         }
      }
      
      public function get §7L§() : Boolean
      {
         return this.§7W§ == 1 && this.§?4§ >= this.§58§;
      }
      
      public function get §6<§() : Number
      {
         return this.§58§;
      }
      
      public function get currentTime() : Number
      {
         return this.§?4§;
      }
      
      public function get §+J§() : int
      {
         return this.§7W§;
      }
      
      public function set §+J§(param1:int) : void
      {
         this.§7W§ = param1;
      }
   }
}
