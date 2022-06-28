package §[!+§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §9F§ extends EventDispatcher implements §"N§
   {
       
      
      private var §?-§:Number = 0;
      
      private var §1!J§:Number;
      
      private var §?!J§:Function;
      
      private var §%!B§:Array;
      
      private var §%!A§:int = 1;
      
      public function §9F§(param1:Function, param2:Number, param3:Array = null)
      {
         super();
         this.§?!J§ = param1;
         this.§1!J§ = Math.max(param2,0.0001);
         this.§%!B§ = param3;
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Number = this.§?-§;
         this.§?-§ = Math.min(this.§1!J§,this.§?-§ + param1);
         if(_loc2_ < this.§1!J§ && this.§?-§ >= this.§1!J§)
         {
            this.§?!J§.apply(null,this.§%!B§);
            if(this.§%!A§ > 1)
            {
               this.§%!A§ = this.§%!A§ - 1;
               this.§?-§ = 0;
               this.advanceTime(_loc2_ + param1 - this.§1!J§);
            }
            else
            {
               dispatchEvent(new Event(Event.§'D§));
            }
         }
      }
      
      public function get §^l§() : Boolean
      {
         return this.§%!A§ == 1 && this.§?-§ >= this.§1!J§;
      }
      
      public function get §9t§() : Number
      {
         return this.§1!J§;
      }
      
      public function get currentTime() : Number
      {
         return this.§?-§;
      }
      
      public function get §"j§() : int
      {
         return this.§%!A§;
      }
      
      public function set §"j§(param1:int) : void
      {
         this.§%!A§ = param1;
      }
   }
}
