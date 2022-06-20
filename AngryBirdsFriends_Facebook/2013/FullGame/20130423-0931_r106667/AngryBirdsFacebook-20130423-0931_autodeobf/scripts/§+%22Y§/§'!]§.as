package §+"Y§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §'!]§ extends EventDispatcher implements §]g§
   {
       
      
      private var §4!;§:Number = 0;
      
      private var §6!<§:Number;
      
      private var §"!C§:Function;
      
      private var §#B§:Array;
      
      private var §7f§:int = 1;
      
      public function §'!]§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§"!C§ = param1;
         this.§6!<§ = Math.max(param2,0.0001);
         this.§#B§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§4!;§;
         this.§4!;§ = Math.min(this.§6!<§,this.§4!;§ + param1);
         if(_loc2_ < this.§6!<§ && this.§4!;§ >= this.§6!<§)
         {
            this.§"!C§.apply(null,this.§#B§);
            if(this.§7f§ > 1)
            {
               this.§7f§ = this.§7f§ - 1;
               this.§4!;§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§6!<§);
            }
            else
            {
               dispatchEvent(new Event(Event.§'J§));
            }
         }
      }
      
      public function get §[9§() : Boolean
      {
         return this.§7f§ == 1 && this.§4!;§ >= this.§6!<§;
      }
      
      public function get §4!3§() : Number
      {
         return this.§6!<§;
      }
      
      public function get §42§() : Number
      {
         return this.§4!;§;
      }
      
      public function get §6![§() : int
      {
         return this.§7f§;
      }
      
      public function set §6![§(param1:int) : void
      {
         this.§7f§ = param1;
      }
   }
}
