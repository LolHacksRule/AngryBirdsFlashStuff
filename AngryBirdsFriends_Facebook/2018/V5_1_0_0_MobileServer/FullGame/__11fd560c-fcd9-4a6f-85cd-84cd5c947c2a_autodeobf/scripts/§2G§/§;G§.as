package §2G§
{
   import §`7§.§2#Q§;
   import §`7§.§]!E§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §;G§ extends EventDispatcher
   {
      
      private static const §7#I§:int = 5;
       
      
      private var §;"$§:int;
      
      protected var § "F§:String;
      
      protected var §,!1§:Number;
      
      protected var §`#;§:Number;
      
      protected var §7"_§:Number;
      
      protected var §>v§:§2#Q§;
      
      protected var §4"x§:Boolean;
      
      public function §;G§(param1:Object = null)
      {
         super();
         this.§;"$§ = 0;
         if(param1)
         {
            this.§ "F§ = param1.user_currency;
            this.§,!1§ = param1.currency_exchange;
            this.§`#;§ = param1.currency_exchange_inverse;
            this.§7"_§ = param1.currency_offset;
         }
         else
         {
            this.§7"8§();
         }
      }
      
      public function get currencyID() : String
      {
         return this.§ "F§;
      }
      
      public function get §3"-§() : Number
      {
         return this.§,!1§;
      }
      
      public function get §]!%§() : Boolean
      {
         return this.§4"x§;
      }
      
      private function §7"8§() : void
      {
         if(this.§>v§)
         {
            this.§>v§.removeEventListener(Event.COMPLETE,this.§]"a§);
            this.§>v§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§>v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§>v§ = null;
         }
         this.§>v§ = new §2#Q§("me",{"fields":"currency"});
         this.§>v§.addEventListener(Event.COMPLETE,this.§]"a§);
         this.§>v§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§>v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§>v§.load();
      }
      
      protected function §[!S§() : void
      {
         this.§ "F§ = "USD";
         this.§,!1§ = 10;
         this.§`#;§ = 0.1;
         this.§7"_§ = 100;
         if(this.§>v§)
         {
            this.§>v§.removeEventListener(Event.COMPLETE,this.§]"a§);
            this.§>v§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§>v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§>v§ = null;
         }
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         if(this.§;"$§ < §7#I§)
         {
            ++this.§;"$§;
            this.§7"8§();
         }
         else
         {
            this.§[!S§();
            this.§4"x§ = true;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §]"a§(param1:Event) : void
      {
         var data:Object = null;
         var event:Event = param1;
         try
         {
            data = this.§>v§.§'U§;
            this.§ "F§ = data.currency.user_currency;
            this.§,!1§ = data.currency.currency_exchange;
            this.§`#;§ = data.currency.currency_exchange_inverse;
            this.§7"_§ = data.currency.currency_offset;
         }
         catch(e:Error)
         {
            if(§;"$§ < §7#I§)
            {
               ++§;"$§;
               §7"8§();
               return;
            }
            §[!S§();
         }
         if(this.§>v§)
         {
            this.§>v§.removeEventListener(Event.COMPLETE,this.§]"a§);
            this.§>v§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§>v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§>v§ = null;
         }
         this.§4"x§ = true;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §8!C§(param1:Number) : Number
      {
         return Number(param1 * this.§`#;§);
      }
      
      public function getPriceTag(param1:Number, param2:Boolean = true, param3:String = "", param4:String = "") : String
      {
         var _loc5_:String = param1.toFixed(2);
         var _loc6_:String = §]!E§.§9"d§(param4);
         return !!param2 ? _loc6_ + param3 + _loc5_.toString() : _loc5_.toString() + param3 + _loc6_;
      }
      
      protected function §2"§() : int
      {
         var _loc1_:int = this.§7"_§.toString().length - 1;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
   }
}
