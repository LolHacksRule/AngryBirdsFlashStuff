package §9!G§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-!A§ extends EventDispatcher implements §8W§
   {
       
      
      private var §@z§:Number = 0;
      
      private var §&!B§:Number;
      
      private var §`!s§:Function;
      
      private var §=!o§:Array;
      
      private var §[!e§:int = 1;
      
      public function §-!A§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§`!s§ = param1;
         this.§&!B§ = Math.max(param2,0.0001);
         this.§=!o§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§@z§;
         this.§@z§ = Math.min(this.§&!B§,this.§@z§ + param1);
         if(_loc2_ < this.§&!B§ && this.§@z§ >= this.§&!B§)
         {
            this.§`!s§.apply(null,this.§=!o§);
            if(this.§[!e§ > 1)
            {
               this.§[!e§ = this.§[!e§ - 1;
               this.§@z§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§&!B§);
            }
            else
            {
               dispatchEvent(new Event(Event.§,!c§));
            }
         }
      }
      
      public function get §-!d§() : Boolean
      {
         return this.§[!e§ == 1 && this.§@z§ >= this.§&!B§;
      }
      
      public function get §4^§() : Number
      {
         return this.§&!B§;
      }
      
      public function get §%<§() : Number
      {
         return this.§@z§;
      }
      
      public function get §;#§() : int
      {
         return this.§[!e§;
      }
      
      public function set §;#§(param1:int) : void
      {
         this.§[!e§ = param1;
      }
   }
}
