package §,!"§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §6V§ extends EventDispatcher implements §+!3§
   {
       
      
      private var §6+§:Number = 0;
      
      private var §1"?§:Number;
      
      private var §2"&§:Function;
      
      private var §'6§:Array;
      
      private var §,!G§:int = 1;
      
      public function §6V§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§2"&§ = param1;
         this.§1"?§ = Math.max(param2,0.0001);
         this.§'6§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§6+§;
         this.§6+§ = Math.min(this.§1"?§,this.§6+§ + param1);
         if(_loc2_ < this.§1"?§ && this.§6+§ >= this.§1"?§)
         {
            this.§2"&§.apply(null,this.§'6§);
            if(this.§,!G§ > 1)
            {
               this.§,!G§ = this.§,!G§ - 1;
               this.§6+§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§1"?§);
            }
            else
            {
               dispatchEvent(new Event(Event.§5!o§));
            }
         }
      }
      
      public function get §!r§() : Boolean
      {
         return this.§,!G§ == 1 && this.§6+§ >= this.§1"?§;
      }
      
      public function get §=g§() : Number
      {
         return this.§1"?§;
      }
      
      public function get §+X§() : Number
      {
         return this.§6+§;
      }
      
      public function get §9!4§() : int
      {
         return this.§,!G§;
      }
      
      public function set §9!4§(param1:int) : void
      {
         this.§,!G§ = param1;
      }
   }
}
