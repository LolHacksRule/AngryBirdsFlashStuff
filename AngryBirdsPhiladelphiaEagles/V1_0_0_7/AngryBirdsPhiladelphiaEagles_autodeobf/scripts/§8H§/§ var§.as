package §8H§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § var§ extends EventDispatcher implements §=b§
   {
       
      
      private var §3!2§:Number = 0;
      
      private var §0!=§:Number;
      
      private var §&!4§:Function;
      
      private var §96§:Array;
      
      private var §5d§:int = 1;
      
      public function § var§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§&!4§ = param1;
         this.§0!=§ = Math.max(param2,0.0001);
         this.§96§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§3!2§;
         this.§3!2§ = Math.min(this.§0!=§,this.§3!2§ + param1);
         if(_loc2_ < this.§0!=§ && this.§3!2§ >= this.§0!=§)
         {
            this.§&!4§.apply(null,this.§96§);
            if(this.§5d§ > 1)
            {
               this.§5d§ = this.§5d§ - 1;
               this.§3!2§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§0!=§);
            }
            else
            {
               dispatchEvent(new Event(Event.§&^§));
            }
         }
      }
      
      public function get §1@§() : Boolean
      {
         return this.§5d§ == 1 && this.§3!2§ >= this.§0!=§;
      }
      
      public function get §7z§() : Number
      {
         return this.§0!=§;
      }
      
      public function get §=@§() : Number
      {
         return this.§3!2§;
      }
      
      public function get §]!D§() : int
      {
         return this.§5d§;
      }
      
      public function set §]!D§(param1:int) : void
      {
         this.§5d§ = param1;
      }
   }
}
