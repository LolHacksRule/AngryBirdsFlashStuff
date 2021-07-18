package §%$!§
{
   import §>!#§.§ "o§;
   import §>!#§.§3!7§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §<,§ extends EventDispatcher
   {
      
      private static const §<#k§:int = 5;
       
      
      private var §=!H§:int;
      
      protected var §##'§:String;
      
      protected var §9!t§:Number;
      
      protected var §]N§:Number;
      
      protected var §`!5§:Number;
      
      protected var § each§:§3!7§;
      
      protected var §'"S§:Boolean;
      
      public function §<,§(param1:Object = null)
      {
         super();
         this.§=!H§ = 0;
         if(param1)
         {
            this.§##'§ = param1.user_currency;
            this.§9!t§ = param1.currency_exchange;
            this.§]N§ = param1.currency_exchange_inverse;
            this.§`!5§ = param1.currency_offset;
         }
         else
         {
            this.§catch§();
         }
      }
      
      public function get currencyID() : String
      {
         return this.§##'§;
      }
      
      public function get §3x§() : Number
      {
         return this.§9!t§;
      }
      
      public function get §=a§() : Boolean
      {
         return this.§'"S§;
      }
      
      private function §catch§() : void
      {
         if(this.§ each§)
         {
            this.§ each§.removeEventListener(Event.COMPLETE,this.§4#G§);
            this.§ each§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§ each§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§ each§ = null;
         }
         this.§ each§ = new §3!7§("me",{"fields":"currency"});
         this.§ each§.addEventListener(Event.COMPLETE,this.§4#G§);
         this.§ each§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§ each§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§ each§.load();
      }
      
      protected function §0#7§() : void
      {
         this.§##'§ = "USD";
         this.§9!t§ = 10;
         this.§]N§ = 0.1;
         this.§`!5§ = 100;
         if(this.§ each§)
         {
            this.§ each§.removeEventListener(Event.COMPLETE,this.§4#G§);
            this.§ each§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§ each§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§ each§ = null;
         }
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         if(this.§=!H§ < §<#k§)
         {
            ++this.§=!H§;
            this.§catch§();
         }
         else
         {
            this.§0#7§();
            this.§'"S§ = true;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      protected function §4#G§(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var data:Object = null;
         var event:Event = param1;
         try
         {
            data = this.§ each§.§%"H§;
            this.§##'§ = data.currency.user_currency;
            this.§9!t§ = data.currency.currency_exchange;
            this.§]N§ = data.currency.currency_exchange_inverse;
            this.§`!5§ = data.currency.currency_offset;
         }
         catch(e:Error)
         {
            var _loc3_:* = e;
            if(_loc7_)
            {
               if(§=!H§ < §<#k§)
               {
                  if(!_loc6_)
                  {
                     var _loc4_:*;
                     §§push((_loc4_ = §§findproperty(§=!H§)).§=!H§);
                     if(_loc7_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc5_:* = §§pop();
                     if(_loc7_ || _loc2_)
                     {
                        _loc4_.§=!H§ = _loc5_;
                     }
                     if(_loc7_ || _loc3_)
                     {
                        §catch§();
                     }
                     else
                     {
                        do
                        {
                           §0#7§();
                        }
                        while(!(_loc7_ || param1));
                        
                        if(_loc7_ || _loc3_)
                        {
                        }
                        addr135:
                     }
                     return;
                  }
               }
            }
            §§goto(addr135);
         }
         if(this.§ each§)
         {
            this.§ each§.removeEventListener(Event.COMPLETE,this.§4#G§);
            this.§ each§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§ each§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
            this.§ each§ = null;
         }
         this.§'"S§ = true;
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function §[$§(param1:Number) : Number
      {
         return Number(param1 * this.§]N§);
      }
      
      public function getPriceTag(param1:Number, param2:Boolean = true, param3:String = "", param4:String = "") : String
      {
         var _loc5_:String = param1.toFixed(2);
         var _loc6_:String = § "o§.§'!v§(param4);
         return !!param2 ? _loc6_ + param3 + _loc5_.toString() : _loc5_.toString() + param3 + _loc6_;
      }
      
      protected function §?B§() : int
      {
         var _loc1_:int = this.§`!5§.toString().length - 1;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
   }
}
