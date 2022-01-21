package §![§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §7!o§ extends EventDispatcher implements §5R§
   {
       
      
      private var §2!S§:Number = 0;
      
      private var §8r§:Number;
      
      private var §>]§:Function;
      
      private var §?$§:Array;
      
      private var §>+§:int = 1;
      
      public function §7!o§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§>]§ = param1;
         this.§8r§ = Math.max(param2,0.0001);
         this.§?$§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§2!S§;
         this.§2!S§ = Math.min(this.§8r§,this.§2!S§ + param1);
         if(_loc2_ < this.§8r§ && this.§2!S§ >= this.§8r§)
         {
            this.§>]§.apply(null,this.§?$§);
            if(this.§>+§ > 1)
            {
               this.§>+§ = this.§>+§ - 1;
               this.§2!S§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§8r§);
            }
            else
            {
               dispatchEvent(new Event(Event.§>>§));
            }
         }
      }
      
      public function get §+A§() : Boolean
      {
         return this.§>+§ == 1 && this.§2!S§ >= this.§8r§;
      }
      
      public function get §&a§() : Number
      {
         return this.§8r§;
      }
      
      public function get §;]§() : Number
      {
         return this.§2!S§;
      }
      
      public function get §8!0§() : int
      {
         return this.§>+§;
      }
      
      public function set §8!0§(param1:int) : void
      {
         this.§>+§ = param1;
      }
   }
}
