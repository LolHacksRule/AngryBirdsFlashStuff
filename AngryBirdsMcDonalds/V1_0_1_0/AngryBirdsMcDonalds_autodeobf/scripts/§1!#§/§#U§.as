package §1!#§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §#U§ extends EventDispatcher implements §&A§
   {
       
      
      private var §-`§:Number = 0;
      
      private var §;!1§:Number;
      
      private var §=_§:Function;
      
      private var §;W§:Array;
      
      private var §+!`§:int = 1;
      
      public function §#U§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§=_§ = param1;
         this.§;!1§ = Math.max(param2,0.0001);
         this.§;W§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§-`§;
         this.§-`§ = Math.min(this.§;!1§,this.§-`§ + param1);
         if(_loc2_ < this.§;!1§ && this.§-`§ >= this.§;!1§)
         {
            this.§=_§.apply(null,this.§;W§);
            if(this.§+!`§ > 1)
            {
               this.§+!`§ = this.§+!`§ - 1;
               this.§-`§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§;!1§);
            }
            else
            {
               dispatchEvent(new Event(Event.§9Q§));
            }
         }
      }
      
      public function get §3!W§() : Boolean
      {
         return this.§+!`§ == 1 && this.§-`§ >= this.§;!1§;
      }
      
      public function get §3v§() : Number
      {
         return this.§;!1§;
      }
      
      public function get §-a§() : Number
      {
         return this.§-`§;
      }
      
      public function get §2u§() : int
      {
         return this.§+!`§;
      }
      
      public function set §2u§(param1:int) : void
      {
         this.§+!`§ = param1;
      }
   }
}
