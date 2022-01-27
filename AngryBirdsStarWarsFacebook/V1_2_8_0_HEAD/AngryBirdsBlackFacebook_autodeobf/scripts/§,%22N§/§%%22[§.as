package §,"N§
{
   import §#!'§.§&G§;
   import §#!'§.§6"]§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.utils.Dictionary;
   
   public class §%"[§ extends EventDispatcher
   {
       
      
      protected var §^!m§:String;
      
      protected var §+"V§:String;
      
      protected var §9v§:§&G§;
      
      protected var §7!Q§:String;
      
      protected var §`W§:String;
      
      protected var §8#>§:Number;
      
      protected var §0"q§:Number;
      
      protected var §@-§:Number;
      
      protected var §^!g§:Dictionary;
      
      protected var §'Q§:Boolean;
      
      public function §%"[§(param1:String, param2:String)
      {
         super();
         this.§^!m§ = param1;
         this.§+"V§ = param2;
         this.§'Q§ = false;
         this.§8!$§();
         this.§!Q§();
         this.§7!^§();
      }
      
      public function set §?,§(param1:String) : void
      {
         this.§7!Q§ = param1;
      }
      
      public function get §'#=§() : String
      {
         return this.§`W§;
      }
      
      public function get isLoaded() : Boolean
      {
         return this.§'Q§;
      }
      
      public function §7!^§() : void
      {
         this.§9v§ = new §&G§(this.§+"V§,{"fields":"currency"});
         this.§9v§.addEventListener(Event.COMPLETE,this.§1#+§);
         this.§9v§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§9v§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§9v§.load();
      }
      
      public function §%#;§(param1:Number) : Number
      {
         if(this.§-#A§())
         {
            return param1 * this.§0"q§;
         }
         return param1 * 0.1;
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         §6"]§.§ #7§(null);
         this.§!Q§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §]!z§(param1:String) : String
      {
         var _loc2_:String = this.§^!g§[param1] || param1;
         return _loc2_ == null ? "" : _loc2_;
      }
      
      public function §<H§(param1:Number, param2:Boolean = true, param3:String = "") : String
      {
         var _loc4_:String = this.§%#;§(param1).toFixed(this.§>!k§());
         var _loc5_:String = this.§]!z§(this.§`W§);
         return !!param2 ? _loc5_ + param3 + _loc4_.toString() : _loc4_.toString() + param3 + _loc5_;
      }
      
      protected function §!Q§() : void
      {
         this.§`W§ = "USD";
         this.§8#>§ = 10;
         this.§0"q§ = 0.1;
         this.§@-§ = 100;
      }
      
      protected function §1#+§(param1:Event) : void
      {
         var data:Object = null;
         var event:Event = param1;
         var isShopUpdateRequired:Boolean = false;
         try
         {
            data = this.§9v§.§3!U§;
            if(this.§`W§ != data.currency.user_currency)
            {
               isShopUpdateRequired = true;
            }
            this.§`W§ = data.currency.user_currency;
            this.§8#>§ = data.currency.currency_exchange;
            this.§0"q§ = data.currency.currency_exchange_inverse;
            this.§@-§ = data.currency.currency_offset;
         }
         catch(e:Error)
         {
            §6"]§.§ #7§(JSON.stringify(§9v§.§3!U§));
            §!Q§();
         }
         this.§9v§.removeEventListener(Event.COMPLETE,this.§1#+§);
         this.§9v§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§9v§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§9v§ = null;
         this.§'Q§ = true;
         if(isShopUpdateRequired)
         {
            this.§,!H§();
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §>!k§() : int
      {
         var _loc1_:int = 0;
         if(this.§-#A§())
         {
            _loc1_ = this.§@-§.toString().length - 1;
            return _loc1_ < 0 ? 0 : int(_loc1_);
         }
         return 2;
      }
      
      protected function §8!$§() : void
      {
         this.§^!g§ = new Dictionary();
         this.§^!g§["EUR"] = "€";
         this.§^!g§["USD"] = "$";
         this.§^!g§["GBP"] = "£";
         this.§^!g§["JPY"] = "¥";
      }
      
      private function §-#A§() : Boolean
      {
         return this.§`W§ == this.§7!Q§ ? false : true;
      }
      
      private function §,!H§() : void
      {
         var _loc1_:§""t§ = §@#B§(§4#;§.singleton.dataModel).§1!f§;
         if(_loc1_)
         {
            _loc1_.§9"'§(true);
         }
      }
   }
}
