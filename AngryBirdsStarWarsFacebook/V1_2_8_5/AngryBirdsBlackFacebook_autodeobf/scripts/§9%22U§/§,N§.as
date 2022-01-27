package §9"U§
{
   import §!b§.§ ?§;
   import §!b§.§]!s§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.utils.Dictionary;
   
   public class §,N§ extends EventDispatcher
   {
       
      
      protected var §""$§:String;
      
      protected var §4![§:String;
      
      protected var §&K§:§ ?§;
      
      protected var §>"8§:String;
      
      protected var §;">§:String;
      
      protected var §9!>§:Number;
      
      protected var §;c§:Number;
      
      protected var §4"&§:Number;
      
      protected var §,"m§:Dictionary;
      
      protected var §!!$§:Boolean;
      
      public function §,N§(param1:String, param2:String)
      {
         super();
         this.§""$§ = param1;
         this.§4![§ = param2;
         this.§!!$§ = false;
         this.§%"u§();
         this.§@!X§();
         this.§&N§();
      }
      
      public function set §^"o§(param1:String) : void
      {
         this.§>"8§ = param1;
      }
      
      public function get §+!V§() : String
      {
         return this.§;">§;
      }
      
      public function get isLoaded() : Boolean
      {
         return this.§!!$§;
      }
      
      public function §&N§() : void
      {
         this.§&K§ = new § ?§(this.§4![§,{"fields":"currency"});
         this.§&K§.addEventListener(Event.COMPLETE,this.§%"S§);
         this.§&K§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&K§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&K§.load();
      }
      
      public function §;!C§(param1:Number) : Number
      {
         if(this.§^"v§())
         {
            return param1 * this.§;c§;
         }
         return param1 * 0.1;
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         §]!s§.§9!$§(null);
         this.§@!X§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §3"q§(param1:String) : String
      {
         var _loc2_:String = this.§,"m§[param1] || param1;
         return _loc2_ == null ? "" : _loc2_;
      }
      
      public function §1!i§(param1:Number, param2:Boolean = true, param3:String = "") : String
      {
         var _loc4_:String = this.§;!C§(param1).toFixed(this.§<"w§());
         var _loc5_:String = this.§3"q§(this.§;">§);
         return !!param2 ? _loc5_ + param3 + _loc4_.toString() : _loc4_.toString() + param3 + _loc5_;
      }
      
      protected function §@!X§() : void
      {
         this.§;">§ = "USD";
         this.§9!>§ = 10;
         this.§;c§ = 0.1;
         this.§4"&§ = 100;
      }
      
      protected function §%"S§(param1:Event) : void
      {
         var data:Object = null;
         var event:Event = param1;
         var isShopUpdateRequired:Boolean = false;
         try
         {
            data = this.§&K§.§"# §;
            if(this.§;">§ != data.currency.user_currency)
            {
               isShopUpdateRequired = true;
            }
            this.§;">§ = data.currency.user_currency;
            this.§9!>§ = data.currency.currency_exchange;
            this.§;c§ = data.currency.currency_exchange_inverse;
            this.§4"&§ = data.currency.currency_offset;
         }
         catch(e:Error)
         {
            §]!s§.§9!$§(JSON.stringify(§&K§.§"# §));
            §@!X§();
         }
         this.§&K§.removeEventListener(Event.COMPLETE,this.§%"S§);
         this.§&K§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§&K§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§&K§ = null;
         this.§!!$§ = true;
         if(isShopUpdateRequired)
         {
            this.§ "P§();
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §<"w§() : int
      {
         var _loc1_:int = 0;
         if(this.§^"v§())
         {
            _loc1_ = this.§4"&§.toString().length - 1;
            return _loc1_ < 0 ? 0 : int(_loc1_);
         }
         return 2;
      }
      
      protected function §%"u§() : void
      {
         this.§,"m§ = new Dictionary();
         this.§,"m§["EUR"] = "€";
         this.§,"m§["USD"] = "$";
         this.§,"m§["GBP"] = "£";
         this.§,"m§["JPY"] = "¥";
      }
      
      private function §^"v§() : Boolean
      {
         return this.§;">§ == this.§>"8§ ? false : true;
      }
      
      private function § "P§() : void
      {
         var _loc1_:§;"[§ = §7"1§(§4"#§.singleton.dataModel).§,!6§;
         if(_loc1_)
         {
            _loc1_.§-#-§(true);
         }
      }
   }
}
