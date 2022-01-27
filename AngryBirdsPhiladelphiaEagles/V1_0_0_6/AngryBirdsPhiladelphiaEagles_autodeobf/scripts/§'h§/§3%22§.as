package §'h§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §3"§ extends EventDispatcher implements §=!§
   {
       
      
      private var §3_§:Number = 0;
      
      private var §"S§:Number;
      
      private var §'L§:Function;
      
      private var §<[§:Array;
      
      private var §=c§:int = 1;
      
      public function §3"§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§'L§ = param1;
         this.§"S§ = Math.max(param2,0.0001);
         this.§<[§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§3_§;
         this.§3_§ = Math.min(this.§"S§,this.§3_§ + param1);
         if(_loc2_ < this.§"S§ && this.§3_§ >= this.§"S§)
         {
            this.§'L§.apply(null,this.§<[§);
            if(this.§=c§ > 1)
            {
               this.§=c§ = this.§=c§ - 1;
               this.§3_§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§"S§);
            }
            else
            {
               dispatchEvent(new Event(Event.§9Y§));
            }
         }
      }
      
      public function get §2! §() : Boolean
      {
         return this.§=c§ == 1 && this.§3_§ >= this.§"S§;
      }
      
      public function get §!B§() : Number
      {
         return this.§"S§;
      }
      
      public function get §&!L§() : Number
      {
         return this.§3_§;
      }
      
      public function get §&!$§() : int
      {
         return this.§=c§;
      }
      
      public function set §&!$§(param1:int) : void
      {
         this.§=c§ = param1;
      }
   }
}
