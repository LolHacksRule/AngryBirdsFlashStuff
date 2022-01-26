package §+!§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §^d§ extends EventDispatcher implements §[!P§
   {
       
      
      private var §%B§:Number = 0;
      
      private var §3l§:Number;
      
      private var §;0§:Function;
      
      private var §;y§:Array;
      
      private var §]Y§:int = 1;
      
      public function §^d§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§;0§ = param1;
         this.§3l§ = Math.max(param2,0.0001);
         this.§;y§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§%B§;
         this.§%B§ = Math.min(this.§3l§,this.§%B§ + param1);
         if(_loc2_ < this.§3l§ && this.§%B§ >= this.§3l§)
         {
            this.§;0§.apply(null,this.§;y§);
            if(this.§]Y§ > 1)
            {
               this.§]Y§ = this.§]Y§ - 1;
               this.§%B§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§3l§);
            }
            else
            {
               dispatchEvent(new Event(Event.§<P§));
            }
         }
      }
      
      public function get §6!9§() : Boolean
      {
         return this.§]Y§ == 1 && this.§%B§ >= this.§3l§;
      }
      
      public function get §<!4§() : Number
      {
         return this.§3l§;
      }
      
      public function get §@!S§() : Number
      {
         return this.§%B§;
      }
      
      public function get §?F§() : int
      {
         return this.§]Y§;
      }
      
      public function set §?F§(param1:int) : void
      {
         this.§]Y§ = param1;
      }
   }
}
