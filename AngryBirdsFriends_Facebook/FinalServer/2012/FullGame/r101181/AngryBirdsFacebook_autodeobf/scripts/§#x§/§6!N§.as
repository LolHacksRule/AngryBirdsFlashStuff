package §#x§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §6!N§ extends EventDispatcher implements §2n§
   {
       
      
      private var §8"1§:Number = 0;
      
      private var §#!O§:Number;
      
      private var §[!u§:Function;
      
      private var §[q§:Array;
      
      private var §'!w§:int = 1;
      
      public function §6!N§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§[!u§ = param1;
         this.§#!O§ = Math.max(param2,0.0001);
         this.§[q§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§8"1§;
         this.§8"1§ = Math.min(this.§#!O§,this.§8"1§ + param1);
         if(_loc2_ < this.§#!O§ && this.§8"1§ >= this.§#!O§)
         {
            this.§[!u§.apply(null,this.§[q§);
            if(this.§'!w§ > 1)
            {
               this.§'!w§ = this.§'!w§ - 1;
               this.§8"1§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§#!O§);
            }
            else
            {
               dispatchEvent(new Event(Event.§@!e§));
            }
         }
      }
      
      public function get §!U§() : Boolean
      {
         return this.§'!w§ == 1 && this.§8"1§ >= this.§#!O§;
      }
      
      public function get § B§() : Number
      {
         return this.§#!O§;
      }
      
      public function get §^#§() : Number
      {
         return this.§8"1§;
      }
      
      public function get §&!a§() : int
      {
         return this.§'!w§;
      }
      
      public function set §&!a§(param1:int) : void
      {
         this.§'!w§ = param1;
      }
   }
}
