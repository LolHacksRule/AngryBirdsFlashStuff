package §4!h§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §-"?§ extends EventDispatcher implements §'!;§
   {
       
      
      private var §1S§:Number = 0;
      
      private var §;!a§:Number;
      
      private var §5"C§:Function;
      
      private var §-!m§:Array;
      
      private var §;#§:int = 1;
      
      public function §-"?§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§5"C§ = param1;
         this.§;!a§ = Math.max(param2,0.0001);
         this.§-!m§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§1S§;
         this.§1S§ = Math.min(this.§;!a§,this.§1S§ + param1);
         if(_loc2_ < this.§;!a§ && this.§1S§ >= this.§;!a§)
         {
            this.§5"C§.apply(null,this.§-!m§);
            if(this.§;#§ > 1)
            {
               this.§;#§ = this.§;#§ - 1;
               this.§1S§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§;!a§);
            }
            else
            {
               dispatchEvent(new Event(Event.§@" §));
            }
         }
      }
      
      public function get §&!W§() : Boolean
      {
         return this.§;#§ == 1 && this.§1S§ >= this.§;!a§;
      }
      
      public function get §4B§() : Number
      {
         return this.§;!a§;
      }
      
      public function get §!p§() : Number
      {
         return this.§1S§;
      }
      
      public function get repeatCount() : int
      {
         return this.§;#§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         this.§;#§ = param1;
      }
   }
}
