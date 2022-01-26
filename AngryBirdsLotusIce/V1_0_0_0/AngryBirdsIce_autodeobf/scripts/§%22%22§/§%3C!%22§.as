package §""§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §<!"§ extends EventDispatcher implements §"!A§
   {
       
      
      private var §8F§:Number = 0;
      
      private var §;!8§:Number;
      
      private var §1T§:Function;
      
      private var §6"§:Array;
      
      private var §;Z§:int = 1;
      
      public function §<!"§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§1T§ = param1;
         this.§;!8§ = Math.max(param2,0.0001);
         this.§6"§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§8F§;
         this.§8F§ = Math.min(this.§;!8§,this.§8F§ + param1);
         if(_loc2_ < this.§;!8§ && this.§8F§ >= this.§;!8§)
         {
            this.§1T§.apply(null,this.§6"§);
            if(this.§;Z§ > 1)
            {
               this.§;Z§ = this.§;Z§ - 1;
               this.§8F§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§;!8§);
            }
            else
            {
               dispatchEvent(new Event(Event.§=O§));
            }
         }
      }
      
      public function get §`R§() : Boolean
      {
         return this.§;Z§ == 1 && this.§8F§ >= this.§;!8§;
      }
      
      public function get §?l§() : Number
      {
         return this.§;!8§;
      }
      
      public function get currentTime() : Number
      {
         return this.§8F§;
      }
      
      public function get §>!E§() : int
      {
         return this.§;Z§;
      }
      
      public function set §>!E§(param1:int) : void
      {
         this.§;Z§ = param1;
      }
   }
}
