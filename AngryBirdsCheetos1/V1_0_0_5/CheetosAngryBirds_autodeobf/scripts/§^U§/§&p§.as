package §^U§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §&p§ extends EventDispatcher implements §0j§
   {
       
      
      private var §,c§:Number = 0;
      
      private var §;!$§:Number;
      
      private var §"3§:Function;
      
      private var §4P§:Array;
      
      private var §^!6§:int = 1;
      
      public function §&p§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§"3§ = param1;
         this.§;!$§ = Math.max(param2,0.0001);
         this.§4P§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§,c§;
         this.§,c§ = Math.min(this.§;!$§,this.§,c§ + param1);
         if(_loc2_ < this.§;!$§ && this.§,c§ >= this.§;!$§)
         {
            this.§"3§.apply(null,this.§4P§);
            if(this.§^!6§ > 1)
            {
               this.§^!6§ = this.§^!6§ - 1;
               this.§,c§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§;!$§);
            }
            else
            {
               dispatchEvent(new Event(Event.§>&§));
            }
         }
      }
      
      public function get §>R§() : Boolean
      {
         return this.§^!6§ == 1 && this.§,c§ >= this.§;!$§;
      }
      
      public function get §;!§() : Number
      {
         return this.§;!$§;
      }
      
      public function get §'"§() : Number
      {
         return this.§,c§;
      }
      
      public function get §>!Y§() : int
      {
         return this.§^!6§;
      }
      
      public function set §>!Y§(param1:int) : void
      {
         this.§^!6§ = param1;
      }
   }
}
