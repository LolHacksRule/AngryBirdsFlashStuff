package §=R§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §'!#§ extends EventDispatcher implements §3!N§
   {
       
      
      private var §@'§:Number = 0;
      
      private var §^R§:Number;
      
      private var §&b§:Function;
      
      private var §,l§:Array;
      
      private var §5;§:int = 1;
      
      public function §'!#§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§&b§ = param1;
         this.§^R§ = Math.max(param2,0.0001);
         this.§,l§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§@'§;
         this.§@'§ = Math.min(this.§^R§,this.§@'§ + param1);
         if(_loc2_ < this.§^R§ && this.§@'§ >= this.§^R§)
         {
            this.§&b§.apply(null,this.§,l§);
            if(this.§5;§ > 1)
            {
               this.§5;§ = this.§5;§ - 1;
               this.§@'§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§^R§);
            }
            else
            {
               dispatchEvent(new Event(Event.§2!&§));
            }
         }
      }
      
      public function get §3!R§() : Boolean
      {
         return this.§5;§ == 1 && this.§@'§ >= this.§^R§;
      }
      
      public function get §>! §() : Number
      {
         return this.§^R§;
      }
      
      public function get §"!3§() : Number
      {
         return this.§@'§;
      }
      
      public function get §8i§() : int
      {
         return this.§5;§;
      }
      
      public function set §8i§(param1:int) : void
      {
         this.§5;§ = param1;
      }
   }
}
