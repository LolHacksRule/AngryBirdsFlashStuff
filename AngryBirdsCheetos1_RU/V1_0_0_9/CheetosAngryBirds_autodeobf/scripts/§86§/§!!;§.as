package §86§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!!;§ extends EventDispatcher implements §>!J§
   {
       
      
      private var §><§:Number = 0;
      
      private var §%!M§:Number;
      
      private var §,l§:Function;
      
      private var §;h§:Array;
      
      private var §%Y§:int = 1;
      
      public function §!!;§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§,l§ = param1;
         this.§%!M§ = Math.max(param2,0.0001);
         this.§;h§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§><§;
         this.§><§ = Math.min(this.§%!M§,this.§><§ + param1);
         if(_loc2_ < this.§%!M§ && this.§><§ >= this.§%!M§)
         {
            this.§,l§.apply(null,this.§;h§);
            if(this.§%Y§ > 1)
            {
               this.§%Y§ = this.§%Y§ - 1;
               this.§><§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§%!M§);
            }
            else
            {
               dispatchEvent(new Event(Event.§,V§));
            }
         }
      }
      
      public function get §else§() : Boolean
      {
         return this.§%Y§ == 1 && this.§><§ >= this.§%!M§;
      }
      
      public function get §94§() : Number
      {
         return this.§%!M§;
      }
      
      public function get §;!?§() : Number
      {
         return this.§><§;
      }
      
      public function get §2![§() : int
      {
         return this.§%Y§;
      }
      
      public function set §2![§(param1:int) : void
      {
         this.§%Y§ = param1;
      }
   }
}
