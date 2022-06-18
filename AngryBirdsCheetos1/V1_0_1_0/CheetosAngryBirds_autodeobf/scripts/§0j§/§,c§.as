package §0j§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §,c§ extends EventDispatcher implements §,!Z§
   {
       
      
      private var §;!$§:Number = 0;
      
      private var §"3§:Number;
      
      private var §4P§:Function;
      
      private var §^!6§:Array;
      
      private var §>R§:int = 1;
      
      public function §,c§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§4P§ = param1;
         this.§"3§ = Math.max(param2,0.0001);
         this.§^!6§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§;!$§;
         this.§;!$§ = Math.min(this.§"3§,this.§;!$§ + param1);
         if(_loc2_ < this.§"3§ && this.§;!$§ >= this.§"3§)
         {
            this.§4P§.apply(null,this.§^!6§);
            if(this.§>R§ > 1)
            {
               this.§>R§ = this.§>R§ - 1;
               this.§;!$§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§"3§);
            }
            else
            {
               dispatchEvent(new Event(Event.§<@§));
            }
         }
      }
      
      public function get §;!§() : Boolean
      {
         return this.§>R§ == 1 && this.§;!$§ >= this.§"3§;
      }
      
      public function get §'"§() : Number
      {
         return this.§"3§;
      }
      
      public function get §>!Y§() : Number
      {
         return this.§;!$§;
      }
      
      public function get §!f§() : int
      {
         return this.§>R§;
      }
      
      public function set §!f§(param1:int) : void
      {
         this.§>R§ = param1;
      }
   }
}
