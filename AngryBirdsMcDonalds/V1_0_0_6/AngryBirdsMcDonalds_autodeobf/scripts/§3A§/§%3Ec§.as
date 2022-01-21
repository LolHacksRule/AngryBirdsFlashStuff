package §3A§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>c§ extends EventDispatcher implements §,!L§
   {
       
      
      private var §@!+§:Number = 0;
      
      private var §if §:Number;
      
      private var §,!=§:Function;
      
      private var §+O§:Array;
      
      private var §9!b§:int = 1;
      
      public function §>c§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§,!=§ = param1;
         this.§if § = Math.max(param2,0.0001);
         this.§+O§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§@!+§;
         this.§@!+§ = Math.min(this.§if §,this.§@!+§ + param1);
         if(_loc2_ < this.§if § && this.§@!+§ >= this.§if §)
         {
            this.§,!=§.apply(null,this.§+O§);
            if(this.§9!b§ > 1)
            {
               this.§9!b§ = this.§9!b§ - 1;
               this.§@!+§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§if §);
            }
            else
            {
               dispatchEvent(new Event(Event.§#G§));
            }
         }
      }
      
      public function get §[;§() : Boolean
      {
         return this.§9!b§ == 1 && this.§@!+§ >= this.§if §;
      }
      
      public function get §,!1§() : Number
      {
         return this.§if §;
      }
      
      public function get §+!h§() : Number
      {
         return this.§@!+§;
      }
      
      public function get §-!;§() : int
      {
         return this.§9!b§;
      }
      
      public function set §-!;§(param1:int) : void
      {
         this.§9!b§ = param1;
      }
   }
}
