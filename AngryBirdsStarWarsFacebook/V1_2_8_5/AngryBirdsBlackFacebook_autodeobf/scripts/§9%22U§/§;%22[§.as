package §9"U§
{
   import §!b§.§]!s§;
   import §'"A§.§#§;
   import §'"A§.§#F§;
   import §98§.§'"M§;
   import §?!u§.§9"D§;
   import §[! §.§2>§;
   import §[! §.§40§;
   import §[! §.§<",§;
   import §]3§.§1H§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   
   public class §;"[§ extends EventDispatcher
   {
      
      public static const §&7§:int = 60 * 60 * 30;
       
      
      private var §`"F§:Number;
      
      private var §4!w§:§1H§;
      
      private var §"§:§<",§;
      
      private var §try§:int;
      
      private var §>!_§:Boolean = false;
      
      protected var §5!G§:§0!2§;
      
      protected var §!!U§:§!!K§;
      
      protected var §4§:§,!c§;
      
      protected var §%">§:§[!b§;
      
      protected var §="3§:§##4§;
      
      protected var §0!C§:String;
      
      protected var § !@§:int;
      
      protected var §@!t§:int;
      
      public function §;"[§(param1:§1H§)
      {
         super();
         this.§4!w§ = param1;
         this.§5!G§ = §7"1§(§4"#§.singleton.dataModel).§&!w§;
         this.§!!U§ = §7"1§(§4"#§.singleton.dataModel).§4"-§;
         this.§4§ = §7"1§(§4"#§.singleton.dataModel).§9"$§;
         this.§%">§ = §7"1§(§4"#§.singleton.dataModel).§@!K§;
         this.§="3§ = §7"1§(§4"#§.singleton.dataModel).birdLevels;
         this.§-#-§(true);
      }
      
      public function get §8#,§() : §1H§
      {
         return this.§4!w§;
      }
      
      public function get §"y§() : §<",§
      {
         return this.§"§;
      }
      
      public function get § "j§() : int
      {
         return this.§try§;
      }
      
      public function get §3"c§() : Boolean
      {
         return this.§>!_§;
      }
      
      private function §0"v§(param1:§<",§) : void
      {
         if(param1)
         {
            this.§"§ = param1;
            this.§try§ = param1.§ "j§;
         }
         dispatchEvent(new §9"D§(§9"D§.§,!v§,this.§"§));
      }
      
      private function §!"z§(param1:§40§) : void
      {
         if(this.§5!G§.starCoins != param1.starCoins || this.§!!U§.§8!d§().length != param1.subscriptions.length || this.§!!U§.§8!d§().length == 1 && param1.subscriptions.length == 1 && this.§!!U§.§8!d§()[0].daysLeft != param1.subscriptions[0].daysLeft)
         {
            this.§>!_§ = true;
         }
         else
         {
            this.§>!_§ = false;
         }
         if(param1)
         {
            this.§5!G§.§?c§(param1.starCoins);
            this.§4§.§9!s§(param1.energy.quantity);
            this.§="3§.update(param1.birdLevels);
            this.§%">§.update(param1.items);
            this.§!!U§.update(param1.subscriptions);
         }
         dispatchEvent(new §9"D§(§9"D§.§#"7§));
      }
      
      private function §0"X§(param1:§2>§) : void
      {
         if(param1)
         {
            if(param1.subscriptions)
            {
               this.§!!U§.update(param1.subscriptions);
            }
            if(param1.energy)
            {
               this.§4§.update(param1.energy.quantity,param1.energy.§1!y§,param1.energy.§6!#§,param1.energy.limit);
            }
            if(param1.items)
            {
               this.§%">§.update(param1.items);
            }
            if(param1.birdLevels)
            {
               this.§="3§.update(param1.birdLevels);
            }
            this.§5!G§.§?c§(param1.starCoins);
         }
         var _loc2_:Boolean = this.§0"1§(this.§0!C§);
         §]!s§.§1C§(this.§0!C§,this.§ !@§,this.§@!t§,_loc2_);
         dispatchEvent(new §9"D§(§9"D§.§3s§,null,param1));
      }
      
      private function §0"1§(param1:String) : Boolean
      {
         var _loc2_:Vector.<§#F§> = this.§!!U§.§8!d§();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            if(this.§!!U§.§-"w§(_loc2_[_loc3_].id) >= 0)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      private function §%G§(param1:ErrorEvent) : void
      {
         dispatchEvent(new §9"D§(§9"D§.§3s§,null,null));
         this.§-#-§(true);
      }
      
      protected function §`"q§() : void
      {
         this.§`"F§ = getTimer();
         this.§4!w§.§+$§(this.§0"v§);
      }
      
      public function §&!Q§(param1:§'"M§) : void
      {
         var _loc2_:Boolean = this.§0"1§(param1.itemID);
         §]!s§.§5[§(param1.itemID,param1.quantity,param1.price,_loc2_);
         this.§0!C§ = param1.itemID;
         this.§ !@§ = param1.quantity;
         this.§@!t§ = param1.price;
         this.§4!w§.§&!Q§(this.§0"X§,param1,this.§%G§);
      }
      
      public function §-#-§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Number = NaN;
         if(param1)
         {
            this.§`"q§();
            return true;
         }
         _loc2_ = getTimer() - this.§`"F§;
         if(_loc2_ > §&7§)
         {
            this.§`"q§();
            return true;
         }
         return false;
      }
      
      public function §extends§() : void
      {
         this.§4!w§.§2!4§(this.§!"z§);
      }
      
      public function §!!g§(param1:§'"M§) : uint
      {
         return Math.round((1 - param1.price / param1.normalPrice) * 100);
      }
      
      public function §=U§(param1:int, param2:§'"M§) : int
      {
         return param2.quantity - this.§#!I§(param1,param2);
      }
      
      public function §#!I§(param1:int, param2:§'"M§) : int
      {
         if(param1 == -1)
         {
            return 0;
         }
         var _loc3_:int = !!param2.§4<§ ? int(param2.normalPrice) : int(param2.price);
         return Math.floor(param2.quantity - _loc3_ / param1);
      }
      
      public function dispose() : void
      {
         this.§4!w§.dispose();
         this.§4!w§ = null;
      }
   }
}
