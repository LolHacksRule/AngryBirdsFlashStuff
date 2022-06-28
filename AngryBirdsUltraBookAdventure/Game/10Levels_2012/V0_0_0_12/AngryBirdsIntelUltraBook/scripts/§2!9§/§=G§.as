package §2!9§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §=G§ extends EventDispatcher implements §"m§
   {
       
      
      private var §?u§:Number = 0;
      
      private var §^?§:Number;
      
      private var §7!B§:Function;
      
      private var §]!P§:Array;
      
      private var §]!c§:int = 1;
      
      public function §=G§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§7!B§ = param1;
         this.§^?§ = Math.max(param2,0.0001);
         this.§]!P§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§?u§;
         this.§?u§ = Math.min(this.§^?§,this.§?u§ + param1);
         if(_loc2_ < this.§^?§ && this.§?u§ >= this.§^?§)
         {
            this.§7!B§.apply(null,this.§]!P§);
            if(this.§]!c§ > 1)
            {
               this.§]!c§ -= 1;
               this.§?u§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§^?§);
            }
            else
            {
               dispatchEvent(new Event(Event.§-!&§));
            }
         }
      }
      
      public function get §6!5§() : Boolean
      {
         return this.§]!c§ == 1 && this.§?u§ >= this.§^?§;
      }
      
      public function get §?!D§() : Number
      {
         return this.§^?§;
      }
      
      public function get §6§() : Number
      {
         return this.§?u§;
      }
      
      public function get §8! §() : int
      {
         return this.§]!c§;
      }
      
      public function set §8! §(param1:int) : void
      {
         this.§]!c§ = param1;
      }
   }
}
