package §[!-§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §7p§ extends EventDispatcher implements §>'§
   {
       
      
      private var §3T§:Number = 0;
      
      private var §!!^§:Number;
      
      private var §6=§:Function;
      
      private var §#G§:Array;
      
      private var §!M§:int = 1;
      
      public function §7p§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§6=§ = param1;
         this.§!!^§ = Math.max(param2,0.0001);
         this.§#G§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§3T§;
         this.§3T§ = Math.min(this.§!!^§,this.§3T§ + param1);
         if(_loc2_ < this.§!!^§ && this.§3T§ >= this.§!!^§)
         {
            this.§6=§.apply(null,this.§#G§);
            if(this.§!M§ > 1)
            {
               this.§!M§ = this.§!M§ - 1;
               this.§3T§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§!!^§);
            }
            else
            {
               dispatchEvent(new Event(Event.§8v§));
            }
         }
      }
      
      public function get §9p§() : Boolean
      {
         return this.§!M§ == 1 && this.§3T§ >= this.§!!^§;
      }
      
      public function get §4A§() : Number
      {
         return this.§!!^§;
      }
      
      public function get §]!h§() : Number
      {
         return this.§3T§;
      }
      
      public function get §"!h§() : int
      {
         return this.§!M§;
      }
      
      public function set §"!h§(param1:int) : void
      {
         this.§!M§ = param1;
      }
   }
}
