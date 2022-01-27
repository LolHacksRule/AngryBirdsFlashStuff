package §[a§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §@"a§ extends EventDispatcher implements §8"h§
   {
       
      
      private var §;G§:Number = 0;
      
      private var §0g§:Number;
      
      private var §3"-§:Function;
      
      private var §!"f§:Array;
      
      private var §@"u§:int = 1;
      
      public function §@"a§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§3"-§ = param1;
         this.§0g§ = Math.max(param2,0.0001);
         this.§!"f§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§;G§;
         this.§;G§ = Math.min(this.§0g§,this.§;G§ + param1);
         if(_loc2_ < this.§0g§ && this.§;G§ >= this.§0g§)
         {
            this.§3"-§.apply(null,this.§!"f§);
            if(this.§@"u§ > 1)
            {
               this.§@"u§ = this.§@"u§ - 1;
               this.§;G§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§0g§);
            }
            else
            {
               dispatchEvent(new Event(Event.§8"e§));
            }
         }
      }
      
      public function get isComplete() : Boolean
      {
         return this.§@"u§ == 1 && this.§;G§ >= this.§0g§;
      }
      
      public function get §^!g§() : Number
      {
         return this.§0g§;
      }
      
      public function get currentTime() : Number
      {
         return this.§;G§;
      }
      
      public function get §?!H§() : int
      {
         return this.§@"u§;
      }
      
      public function set §?!H§(param1:int) : void
      {
         this.§@"u§ = param1;
      }
   }
}
