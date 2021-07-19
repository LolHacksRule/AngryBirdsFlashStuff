package §+!Y§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §6!o§ extends EventDispatcher implements §7!@§
   {
       
      
      private var §%"-§:Number = 0;
      
      private var §@!f§:Number;
      
      private var §2!Z§:Function;
      
      private var §4b§:Array;
      
      private var §+X§:int = 1;
      
      public function §6!o§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§2!Z§ = param1;
         this.§@!f§ = Math.max(param2,0.0001);
         this.§4b§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§%"-§;
         this.§%"-§ = Math.min(this.§@!f§,this.§%"-§ + param1);
         if(_loc2_ < this.§@!f§ && this.§%"-§ >= this.§@!f§)
         {
            this.§2!Z§.apply(null,this.§4b§);
            if(this.§+X§ > 1)
            {
               this.§+X§ = this.§+X§ - 1;
               this.§%"-§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§@!f§);
            }
            else
            {
               dispatchEvent(new Event(Event.§^8§));
            }
         }
      }
      
      public function get §8-§() : Boolean
      {
         return this.§+X§ == 1 && this.§%"-§ >= this.§@!f§;
      }
      
      public function get §!P§() : Number
      {
         return this.§@!f§;
      }
      
      public function get §@!=§() : Number
      {
         return this.§%"-§;
      }
      
      public function get §5"<§() : int
      {
         return this.§+X§;
      }
      
      public function set §5"<§(param1:int) : void
      {
         this.§+X§ = param1;
      }
   }
}
