package §,"N§
{
   import §!"W§.§="g§;
   import §#!'§.§6"]§;
   import §6!H§.§&"f§;
   import §6!H§.§9!!§;
   import §7K§.§,T§;
   import §>"$§.§!"C§;
   import §>"$§.§7r§;
   import §>"$§.§?g§;
   import §?"9§.§5!G§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   
   public class §""t§ extends EventDispatcher
   {
      
      public static const §5!,§:int = 60 * 60 * 30;
       
      
      private var §1"?§:Number;
      
      private var §;!y§:§5!G§;
      
      private var §""R§:§?g§;
      
      private var §+!q§:int;
      
      private var §@"C§:Boolean = false;
      
      protected var §@!E§:§=o§;
      
      protected var §9!§:§<!9§;
      
      protected var §4"N§:§?v§;
      
      protected var §1!x§:§6"w§;
      
      protected var §9=§:§&"f§;
      
      protected var §+"A§:String;
      
      protected var §+"<§:int;
      
      protected var §%"I§:int;
      
      public function §""t§(param1:§5!G§)
      {
         super();
         this.§;!y§ = param1;
         this.§@!E§ = §@#B§(§4#;§.singleton.dataModel).§`!W§;
         this.§9!§ = §@#B§(§4#;§.singleton.dataModel).§4"Z§;
         this.§4"N§ = §@#B§(§4#;§.singleton.dataModel).§^"J§;
         this.§1!x§ = §@#B§(§4#;§.singleton.dataModel).§]"<§;
         this.§9=§ = §@#B§(§4#;§.singleton.dataModel).birdLevels;
         this.§9"'§(true);
      }
      
      public function get §8#]§() : §5!G§
      {
         return this.§;!y§;
      }
      
      public function get §^5§() : §?g§
      {
         return this.§""R§;
      }
      
      public function get §]"g§() : int
      {
         return this.§+!q§;
      }
      
      public function get §#[§() : Boolean
      {
         return this.§@"C§;
      }
      
      private function §&!f§(param1:§?g§) : void
      {
         if(param1)
         {
            this.§""R§ = param1;
            this.§+!q§ = param1.§]"g§;
         }
         dispatchEvent(new §="g§(§="g§.§?6§,this.§""R§));
      }
      
      private function §;"_§(param1:§7r§) : void
      {
         if(this.§@!E§.starCoins != param1.starCoins || this.§9!§.§&!U§().length != param1.subscriptions.length || this.§9!§.§&!U§().length == 1 && param1.subscriptions.length == 1 && this.§9!§.§&!U§()[0].daysLeft != param1.subscriptions[0].daysLeft)
         {
            this.§@"C§ = true;
         }
         else
         {
            this.§@"C§ = false;
         }
         if(param1)
         {
            this.§@!E§.§@w§(param1.starCoins);
            this.§4"N§.§@#K§(param1.energy.quantity);
            this.§9=§.update(param1.birdLevels);
            this.§1!x§.update(param1.items);
            this.§9!§.update(param1.subscriptions);
         }
         dispatchEvent(new §="g§(§="g§.§>#9§));
      }
      
      private function §,!_§(param1:§!"C§) : void
      {
         if(param1)
         {
            if(param1.subscriptions)
            {
               this.§9!§.update(param1.subscriptions);
            }
            if(param1.energy)
            {
               this.§4"N§.update(param1.energy.quantity,param1.energy.§-"r§,param1.energy.§-! §,param1.energy.limit);
            }
            if(param1.items)
            {
               this.§1!x§.update(param1.items);
            }
            if(param1.birdLevels)
            {
               this.§9=§.update(param1.birdLevels);
            }
            this.§@!E§.§@w§(param1.starCoins);
         }
         var _loc2_:Boolean = this.§<#^§(this.§+"A§);
         §6"]§.§>Q§(this.§+"A§,this.§+"<§,this.§%"I§,_loc2_);
         dispatchEvent(new §="g§(§="g§.§=#2§,null,param1));
      }
      
      private function §<#^§(param1:String) : Boolean
      {
         var _loc2_:Vector.<§9!!§> = this.§9!§.§&!U§();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            if(this.§9!§.§@#3§(_loc2_[_loc3_].id) >= 0)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      private function §0#'§(param1:ErrorEvent) : void
      {
         dispatchEvent(new §="g§(§="g§.§=#2§,null,null));
         this.§9"'§(true);
      }
      
      protected function §]#0§() : void
      {
         this.§1"?§ = getTimer();
         this.§;!y§.§';§(this.§&!f§);
      }
      
      public function §9?§(param1:§,T§) : void
      {
         var _loc2_:Boolean = this.§<#^§(param1.itemID);
         §6"]§.§9!d§(param1.itemID,param1.quantity,param1.price,_loc2_);
         this.§+"A§ = param1.itemID;
         this.§+"<§ = param1.quantity;
         this.§%"I§ = param1.price;
         this.§;!y§.§9?§(this.§,!_§,param1,this.§0#'§);
      }
      
      public function §9"'§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Number = NaN;
         if(param1)
         {
            this.§]#0§();
            return true;
         }
         _loc2_ = getTimer() - this.§1"?§;
         if(_loc2_ > §5!,§)
         {
            this.§]#0§();
            return true;
         }
         return false;
      }
      
      public function §""i§() : void
      {
         this.§;!y§.§-n§(this.§;"_§);
      }
      
      public function §<# §(param1:§,T§) : uint
      {
         return Math.round((1 - param1.price / param1.normalPrice) * 100);
      }
      
      public function §;C§(param1:int, param2:§,T§) : int
      {
         return param2.quantity - this.§`§(param1,param2);
      }
      
      public function §`§(param1:int, param2:§,T§) : int
      {
         if(param1 == -1)
         {
            return 0;
         }
         var _loc3_:int = !!param2.§%D§ ? int(param2.normalPrice) : int(param2.price);
         return Math.floor(param2.quantity - _loc3_ / param1);
      }
      
      public function dispose() : void
      {
         this.§;!y§.dispose();
         this.§;!y§ = null;
      }
   }
}
