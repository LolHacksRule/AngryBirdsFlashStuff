package §,l§
{
   import §9@§.§!!R§;
   import §9@§.§+"[§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §]! § extends EventDispatcher
   {
       
      
      protected var §1"-§:String;
      
      protected var §`"?§:Number;
      
      protected var §6J§:Number;
      
      protected var §>V§:Number;
      
      protected var §2!H§:§+"[§;
      
      protected var §5"M§:Boolean;
      
      public function §]! §(param1:Object = null)
      {
         super();
         if(param1)
         {
            this.§1"-§ = param1.user_currency;
            this.§`"?§ = param1.currency_exchange;
            this.§6J§ = param1.currency_exchange_inverse;
            this.§>V§ = param1.currency_offset;
         }
         else
         {
            this.§1!^§();
            this.§[^§();
         }
      }
      
      public function get § !a§() : Boolean
      {
         return this.§5"M§;
      }
      
      private function §[^§() : void
      {
         this.§2!H§ = new §+"[§("me",{"fields":"currency"});
         this.§2!H§.addEventListener(Event.COMPLETE,this.§;V§);
         this.§2!H§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§2!H§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§2!H§.load();
      }
      
      protected function §1!^§() : void
      {
         this.§1"-§ = "USD";
         this.§`"?§ = 10;
         this.§6J§ = 0.1;
         this.§>V§ = 100;
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         this.§1!^§();
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      protected function §;V§(param1:Event) : void
      {
         var data:Object = null;
         var event:Event = param1;
         try
         {
            data = this.§2!H§.§8§;
            this.§1"-§ = data.currency.user_currency;
            this.§`"?§ = data.currency.currency_exchange;
            this.§6J§ = data.currency.currency_exchange_inverse;
            this.§>V§ = data.currency.currency_offset;
         }
         catch(e:Error)
         {
            §1!^§();
         }
         this.§2!H§.removeEventListener(Event.COMPLETE,this.§;V§);
         this.§2!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§2!H§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§2!H§ = null;
         this.§5"M§ = true;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §3?§(param1:Number) : Number
      {
         return Number(param1 * this.§6J§);
      }
      
      public function §=";§(param1:Number, param2:Boolean = true, param3:String = "") : String
      {
         var _loc4_:String = this.§3?§(param1).toFixed(this.§ 6§());
         var _loc5_:String = §!!R§.§>"%§(this.§1"-§);
         return !!param2 ? _loc5_ + param3 + _loc4_.toString() : _loc4_.toString() + param3 + _loc5_;
      }
      
      protected function § 6§() : int
      {
         var _loc1_:int = this.§>V§.toString().length - 1;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
   }
}
