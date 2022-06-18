package § +§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §=V§ extends EventDispatcher implements §8!-§
   {
       
      
      private var §#§:Number = 0;
      
      private var §[g§:Number;
      
      private var §0!T§:Function;
      
      private var §&G§:Array;
      
      private var §!]§:int = 1;
      
      public function §=V§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§0!T§ = param1;
         this.§[g§ = Math.max(param2,0.0001);
         this.§&G§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§#§;
         this.§#§ = Math.min(this.§[g§,this.§#§ + param1);
         if(_loc2_ < this.§[g§ && this.§#§ >= this.§[g§)
         {
            this.§0!T§.apply(null,this.§&G§);
            if(this.§!]§ > 1)
            {
               this.§!]§ = this.§!]§ - 1;
               this.§#§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§[g§);
            }
            else
            {
               dispatchEvent(new Event(Event.§"!B§));
            }
         }
      }
      
      public function get § q§() : Boolean
      {
         return this.§!]§ == 1 && this.§#§ >= this.§[g§;
      }
      
      public function get §^E§() : Number
      {
         return this.§[g§;
      }
      
      public function get §-!^§() : Number
      {
         return this.§#§;
      }
      
      public function get §;N§() : int
      {
         return this.§!]§;
      }
      
      public function set §;N§(param1:int) : void
      {
         this.§!]§ = param1;
      }
   }
}
