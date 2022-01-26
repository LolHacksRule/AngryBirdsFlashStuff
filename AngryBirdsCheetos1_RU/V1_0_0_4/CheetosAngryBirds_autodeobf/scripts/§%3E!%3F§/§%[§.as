package §>!?§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §%[§ extends EventDispatcher implements §>!R§
   {
       
      
      private var §@k§:Number = 0;
      
      private var §3j§:Number;
      
      private var §1!L§:Function;
      
      private var §5Z§:Array;
      
      private var §3!0§:int = 1;
      
      public function §%[§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§1!L§ = param1;
         this.§3j§ = Math.max(param2,0.0001);
         this.§5Z§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§@k§;
         this.§@k§ = Math.min(this.§3j§,this.§@k§ + param1);
         if(_loc2_ < this.§3j§ && this.§@k§ >= this.§3j§)
         {
            this.§1!L§.apply(null,this.§5Z§);
            if(this.§3!0§ > 1)
            {
               this.§3!0§ = this.§3!0§ - 1;
               this.§@k§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§3j§);
            }
            else
            {
               dispatchEvent(new Event(Event.§9!?§));
            }
         }
      }
      
      public function get §1[§() : Boolean
      {
         return this.§3!0§ == 1 && this.§@k§ >= this.§3j§;
      }
      
      public function get §[_§() : Number
      {
         return this.§3j§;
      }
      
      public function get §!;§() : Number
      {
         return this.§@k§;
      }
      
      public function get §4W§() : int
      {
         return this.§3!0§;
      }
      
      public function set §4W§(param1:int) : void
      {
         this.§3!0§ = param1;
      }
   }
}
