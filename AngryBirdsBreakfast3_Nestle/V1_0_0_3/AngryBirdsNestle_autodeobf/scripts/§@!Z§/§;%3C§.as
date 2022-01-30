package §@!Z§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §;<§ extends EventDispatcher implements § '§
   {
       
      
      private var §@c§:Number = 0;
      
      private var §%,§:Number;
      
      private var §3!2§:Function;
      
      private var §3!E§:Array;
      
      private var §'n§:int = 1;
      
      public function §;<§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§3!2§ = param1;
         this.§%,§ = Math.max(param2,0.0001);
         this.§3!E§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§@c§;
         this.§@c§ = Math.min(this.§%,§,this.§@c§ + param1);
         if(_loc2_ < this.§%,§ && this.§@c§ >= this.§%,§)
         {
            this.§3!2§.apply(null,this.§3!E§);
            if(this.§'n§ > 1)
            {
               this.§'n§ = this.§'n§ - 1;
               this.§@c§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§%,§);
            }
            else
            {
               dispatchEvent(new Event(Event.§&`§));
            }
         }
      }
      
      public function get §8!S§() : Boolean
      {
         return this.§'n§ == 1 && this.§@c§ >= this.§%,§;
      }
      
      public function get §+!v§() : Number
      {
         return this.§%,§;
      }
      
      public function get §^!&§() : Number
      {
         return this.§@c§;
      }
      
      public function get repeatCount() : int
      {
         return this.§'n§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§'n§ = param1;
      }
   }
}
