package §^n§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §`!!§ extends EventDispatcher implements §"!>§
   {
       
      
      private var §!!2§:Number = 0;
      
      private var §!v§:Number;
      
      private var §2z§:Function;
      
      private var §@%§:Array;
      
      private var §>!^§:int = 1;
      
      public function §`!!§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§2z§ = param1;
         this.§!v§ = Math.max(param2,0.0001);
         this.§@%§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§!!2§;
         this.§!!2§ = Math.min(this.§!v§,this.§!!2§ + param1);
         if(_loc2_ < this.§!v§ && this.§!!2§ >= this.§!v§)
         {
            this.§2z§.apply(null,this.§@%§);
            if(this.§>!^§ > 1)
            {
               this.§>!^§ -= 1;
               this.§!!2§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§!v§);
            }
            else
            {
               dispatchEvent(new Event(Event.§ Z§));
            }
         }
      }
      
      public function get §8!V§() : Boolean
      {
         return this.§>!^§ == 1 && this.§!!2§ >= this.§!v§;
      }
      
      public function get §%!2§() : Number
      {
         return this.§!v§;
      }
      
      public function get §,b§() : Number
      {
         return this.§!!2§;
      }
      
      public function get §4!j§() : int
      {
         return this.§>!^§;
      }
      
      public function set §4!j§(param1:int) : void
      {
         this.§>!^§ = param1;
      }
   }
}
