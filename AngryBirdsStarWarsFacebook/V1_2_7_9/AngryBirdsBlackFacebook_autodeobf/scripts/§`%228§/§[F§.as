package §`"8§
{
   import §0R§.§!!M§;
   import §0R§.§0!8§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.utils.Dictionary;
   
   public class §[F§ extends EventDispatcher
   {
       
      
      protected var §="F§:String;
      
      protected var §,i§:String;
      
      protected var §`!E§:§!!M§;
      
      protected var §,!s§:String;
      
      protected var §9"Z§:String;
      
      protected var §^0§:Number;
      
      protected var §%+§:Number;
      
      protected var §>!O§:Number;
      
      protected var §="C§:Dictionary;
      
      protected var §'"o§:Boolean;
      
      public function §[F§(param1:String, param2:String)
      {
         super();
         this.§="F§ = param1;
         this.§,i§ = param2;
         this.§'"o§ = false;
         this.§^"n§();
         this.§3">§();
         this.§9"p§();
      }
      
      public function set §]!t§(param1:String) : void
      {
         this.§,!s§ = param1;
      }
      
      public function get §'!!§() : String
      {
         return this.§9"Z§;
      }
      
      public function get isLoaded() : Boolean
      {
         return this.§'"o§;
      }
      
      public function §9"p§() : void
      {
         this.§`!E§ = new §!!M§(this.§,i§,{"fields":"currency"});
         this.§`!E§.addEventListener(Event.COMPLETE,this.§%"2§);
         this.§`!E§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§`!E§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§`!E§.load();
      }
      
      public function §@!d§(param1:Number) : Number
      {
         if(this.§-",§())
         {
            return param1 * this.§%+§;
         }
         return param1 * 0.1;
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         §0!8§.§;!W§(null);
         this.§3">§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §`##§(param1:String) : String
      {
         var _loc2_:String = this.§="C§[param1] || param1;
         return _loc2_ == null ? "" : _loc2_;
      }
      
      public function §7e§(param1:Number, param2:Boolean = true, param3:String = "") : String
      {
         var _loc4_:String = this.§@!d§(param1).toFixed(this.§-n§());
         var _loc5_:String = this.§`##§(this.§9"Z§);
         return !!param2 ? _loc5_ + param3 + _loc4_.toString() : _loc4_.toString() + param3 + _loc5_;
      }
      
      protected function §3">§() : void
      {
         this.§9"Z§ = "USD";
         this.§^0§ = 10;
         this.§%+§ = 0.1;
         this.§>!O§ = 100;
      }
      
      protected function §%"2§(param1:Event) : void
      {
         var data:Object = null;
         var event:Event = param1;
         var isShopUpdateRequired:Boolean = false;
         try
         {
            data = this.§`!E§.§?"u§;
            if(this.§9"Z§ != data.currency.user_currency)
            {
               isShopUpdateRequired = true;
            }
            this.§9"Z§ = data.currency.user_currency;
            this.§^0§ = data.currency.currency_exchange;
            this.§%+§ = data.currency.currency_exchange_inverse;
            this.§>!O§ = data.currency.currency_offset;
         }
         catch(e:Error)
         {
            §0!8§.§;!W§(JSON.stringify(§`!E§.§?"u§));
            §3">§();
         }
         this.§`!E§.removeEventListener(Event.COMPLETE,this.§%"2§);
         this.§`!E§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§`!E§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§`!E§ = null;
         this.§'"o§ = true;
         if(isShopUpdateRequired)
         {
            this.§^"]§();
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §-n§() : int
      {
         var _loc1_:int = 0;
         if(this.§-",§())
         {
            _loc1_ = this.§>!O§.toString().length - 1;
            return _loc1_ < 0 ? 0 : int(_loc1_);
         }
         return 2;
      }
      
      protected function §^"n§() : void
      {
         this.§="C§ = new Dictionary();
         this.§="C§["EUR"] = "€";
         this.§="C§["USD"] = "$";
         this.§="C§["GBP"] = "£";
         this.§="C§["JPY"] = "¥";
      }
      
      private function §-",§() : Boolean
      {
         return this.§9"Z§ == this.§,!s§ ? false : true;
      }
      
      private function §^"]§() : void
      {
         var _loc1_:§6v§ = §-!w§(§;"@§.singleton.dataModel).§9"1§;
         if(_loc1_)
         {
            _loc1_.§]!d§(true);
         }
      }
   }
}
