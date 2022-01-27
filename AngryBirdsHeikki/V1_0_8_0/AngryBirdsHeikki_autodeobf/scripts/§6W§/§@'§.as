package §6W§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@'§ extends EventDispatcher implements §-B§
   {
       
      
      private var §&h§:Number = 0;
      
      private var §,!B§:Number;
      
      private var §"!D§:Function;
      
      private var §1d§:Array;
      
      private var §<n§:int = 1;
      
      public function §@'§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§"!D§ = param1;
         this.§,!B§ = Math.max(param2,0.0001);
         this.§1d§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§&h§;
         this.§&h§ = Math.min(this.§,!B§,this.§&h§ + param1);
         if(_loc2_ < this.§,!B§ && this.§&h§ >= this.§,!B§)
         {
            this.§"!D§.apply(null,this.§1d§);
            if(this.§<n§ > 1)
            {
               this.§<n§ = this.§<n§ - 1;
               this.§&h§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§,!B§);
            }
            else
            {
               dispatchEvent(new Event(Event.§@j§));
            }
         }
      }
      
      public function get §;&§() : Boolean
      {
         return this.§<n§ == 1 && this.§&h§ >= this.§,!B§;
      }
      
      public function get §7#§() : Number
      {
         return this.§,!B§;
      }
      
      public function get §5F§() : Number
      {
         return this.§&h§;
      }
      
      public function get § !G§() : int
      {
         return this.§<n§;
      }
      
      public function set § !G§(param1:int) : void
      {
         this.§<n§ = param1;
      }
   }
}
