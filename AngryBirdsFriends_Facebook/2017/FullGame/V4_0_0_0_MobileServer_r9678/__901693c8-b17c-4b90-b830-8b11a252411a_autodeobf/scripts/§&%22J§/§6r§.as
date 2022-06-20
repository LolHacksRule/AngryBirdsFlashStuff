package §&"J§
{
   import §6V§.§0!y§;
   import §6V§.§3"p§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §6r§ extends EventDispatcher
   {
      
      private static const §""i§:int = 5;
       
      
      private var §;J§:int;
      
      protected var §,!g§:String;
      
      protected var §[#?§:Number;
      
      protected var §2"A§:Number;
      
      protected var §'![§:Number;
      
      protected var §+"§:§3"p§;
      
      protected var §[7§:Boolean;
      
      public function §6r§(param1:Object = null)
      {
         super();
         this.§;J§ = 0;
         if(param1)
         {
            this.§,!g§ = param1.user_currency;
            this.§[#?§ = param1.currency_exchange;
            this.§2"A§ = param1.currency_exchange_inverse;
            this.§'![§ = param1.currency_offset;
         }
         else
         {
            this.§]"M§();
         }
      }
      
      public function get currencyID() : String
      {
         return this.§,!g§;
      }
      
      public function get §!'§() : Number
      {
         return this.§[#?§;
      }
      
      public function get §?!9§() : Boolean
      {
         return this.§[7§;
      }
      
      private function §]"M§() : void
      {
         if(this.§+"§)
         {
            this.§+"§.removeEventListener(Event.COMPLETE,this.§"!%§);
            this.§+"§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§+"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§+"§ = null;
         }
         this.§+"§ = new §3"p§("me",{"fields":"currency"});
         this.§+"§.addEventListener(Event.COMPLETE,this.§"!%§);
         this.§+"§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§+"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§+"§.load();
      }
      
      protected function §9I§() : void
      {
         this.§,!g§ = "USD";
         this.§[#?§ = 10;
         this.§2"A§ = 0.1;
         this.§'![§ = 100;
         if(this.§+"§)
         {
            this.§+"§.removeEventListener(Event.COMPLETE,this.§"!%§);
            this.§+"§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§+"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§+"§ = null;
         }
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         if(this.§;J§ < §""i§)
         {
            ++this.§;J§;
            this.§]"M§();
         }
         else
         {
            this.§9I§();
            this.§[7§ = true;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §"!%§(param1:Event) : void
      {
         var data:Object = null;
         var event:Event = param1;
         try
         {
            data = this.§+"§.§'#m§;
            this.§,!g§ = data.currency.user_currency;
            this.§[#?§ = data.currency.currency_exchange;
            this.§2"A§ = data.currency.currency_exchange_inverse;
            this.§'![§ = data.currency.currency_offset;
         }
         catch(e:Error)
         {
            if(§;J§ < §""i§)
            {
               ++§;J§;
               §]"M§();
               return;
            }
            §9I§();
         }
         if(this.§+"§)
         {
            this.§+"§.removeEventListener(Event.COMPLETE,this.§"!%§);
            this.§+"§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§+"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§+"§ = null;
         }
         this.§[7§ = true;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §4I§(param1:Number) : Number
      {
         return Number(param1 * this.§2"A§);
      }
      
      public function getPriceTag(param1:Number, param2:Boolean = true, param3:String = "", param4:String = "") : String
      {
         var _loc5_:String = param1.toFixed(2);
         var _loc6_:String = §0!y§.§%$%§(param4);
         return !!param2 ? _loc6_ + param3 + _loc5_.toString() : _loc5_.toString() + param3 + _loc6_;
      }
      
      protected function §5$&§() : int
      {
         var _loc1_:int = this.§'![§.toString().length - 1;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
   }
}
