package §`"8§
{
   import §%W§.§,^§;
   import §%W§.§<!U§;
   import §%W§.§[!h§;
   import §0R§.§0!8§;
   import §1!o§.§<"]§;
   import §;q§.§ true§;
   import §@!7§.§0!3§;
   import §@b§.§-";§;
   import §@b§.§`"5§;
   import flash.events.ErrorEvent;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   
   public class §6v§ extends EventDispatcher
   {
      
      public static const §&n§:int = 60 * 60 * 30;
       
      
      private var §;##§:Number;
      
      private var §9"9§:§0!3§;
      
      private var §5""§:§[!h§;
      
      private var § "w§:int;
      
      private var §try §:Boolean = false;
      
      protected var §+#'§:§6`§;
      
      protected var §;",§:§^x§;
      
      protected var §!#+§:§@T§;
      
      protected var §+"q§:§#f§;
      
      protected var §,"9§:§-";§;
      
      protected var §!§:String;
      
      protected var §0"j§:int;
      
      protected var §&p§:int;
      
      public function §6v§(param1:§0!3§)
      {
         super();
         this.§9"9§ = param1;
         this.§+#'§ = §-!w§(§;"@§.singleton.dataModel).§;L§;
         this.§;",§ = §-!w§(§;"@§.singleton.dataModel).§?v§;
         this.§!#+§ = §-!w§(§;"@§.singleton.dataModel).§`!§;
         this.§+"q§ = §-!w§(§;"@§.singleton.dataModel).§=>§;
         this.§,"9§ = §-!w§(§;"@§.singleton.dataModel).birdLevels;
         this.§]!d§(true);
      }
      
      public function get §7"S§() : §0!3§
      {
         return this.§9"9§;
      }
      
      public function get §@!&§() : §[!h§
      {
         return this.§5""§;
      }
      
      public function get §-"G§() : int
      {
         return this.§ "w§;
      }
      
      public function get § "f§() : Boolean
      {
         return this.§try §;
      }
      
      private function §<j§(param1:§[!h§) : void
      {
         if(param1)
         {
            this.§5""§ = param1;
            this.§ "w§ = param1.§-"G§;
         }
         dispatchEvent(new §<"]§(§<"]§.§=n§,this.§5""§));
      }
      
      private function § "Q§(param1:§,^§) : void
      {
         if(this.§+#'§.starCoins != param1.starCoins || this.§;",§.§["I§().length != param1.subscriptions.length || this.§;",§.§["I§().length == 1 && param1.subscriptions.length == 1 && this.§;",§.§["I§()[0].daysLeft != param1.subscriptions[0].daysLeft)
         {
            this.§try § = true;
         }
         else
         {
            this.§try § = false;
         }
         if(param1)
         {
            this.§+#'§.§8"2§(param1.starCoins);
            this.§!#+§.§&"?§(param1.energy.quantity);
            this.§,"9§.update(param1.birdLevels);
            this.§+"q§.update(param1.items);
            this.§;",§.update(param1.subscriptions);
         }
         dispatchEvent(new §<"]§(§<"]§.§"A§));
      }
      
      private function §<"O§(param1:§<!U§) : void
      {
         if(param1)
         {
            if(param1.subscriptions)
            {
               this.§;",§.update(param1.subscriptions);
            }
            if(param1.energy)
            {
               this.§!#+§.update(param1.energy.quantity,param1.energy.§"O§,param1.energy.§'8§,param1.energy.limit);
            }
            if(param1.items)
            {
               this.§+"q§.update(param1.items);
            }
            if(param1.birdLevels)
            {
               this.§,"9§.update(param1.birdLevels);
            }
            this.§+#'§.§8"2§(param1.starCoins);
         }
         var _loc2_:Boolean = this.§6!k§(this.§!§);
         §0!8§.§]"D§(this.§!§,this.§0"j§,this.§&p§,_loc2_);
         dispatchEvent(new §<"]§(§<"]§.§2"S§,null,param1));
      }
      
      private function §6!k§(param1:String) : Boolean
      {
         var _loc2_:Vector.<§`"5§> = this.§;",§.§["I§();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            if(this.§;",§.§-o§(_loc2_[_loc3_].id) >= 0)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      private function §;3§(param1:ErrorEvent) : void
      {
         dispatchEvent(new §<"]§(§<"]§.§2"S§,null,null));
         this.§]!d§(true);
      }
      
      protected function §;y§() : void
      {
         this.§;##§ = getTimer();
         this.§9"9§.§+>§(this.§<j§);
      }
      
      public function §!l§(param1:§ true§) : void
      {
         var _loc2_:Boolean = this.§6!k§(param1.itemID);
         §0!8§.§9"v§(param1.itemID,param1.quantity,param1.price,_loc2_);
         this.§!§ = param1.itemID;
         this.§0"j§ = param1.quantity;
         this.§&p§ = param1.price;
         this.§9"9§.§!l§(this.§<"O§,param1,this.§;3§);
      }
      
      public function §]!d§(param1:Boolean = false) : Boolean
      {
         var _loc2_:Number = NaN;
         if(param1)
         {
            this.§;y§();
            return true;
         }
         _loc2_ = getTimer() - this.§;##§;
         if(_loc2_ > §&n§)
         {
            this.§;y§();
            return true;
         }
         return false;
      }
      
      public function §'"4§() : void
      {
         this.§9"9§.§`O§(this.§ "Q§);
      }
      
      public function §="K§(param1:§ true§) : uint
      {
         return Math.round((1 - param1.price / param1.normalPrice) * 100);
      }
      
      public function §";§(param1:int, param2:§ true§) : int
      {
         return param2.quantity - this.§ var§(param1,param2);
      }
      
      public function § var§(param1:int, param2:§ true§) : int
      {
         if(param1 == -1)
         {
            return 0;
         }
         var _loc3_:int = !!param2.§`"p§ ? int(param2.normalPrice) : int(param2.price);
         return Math.floor(param2.quantity - _loc3_ / param1);
      }
      
      public function dispose() : void
      {
         this.§9"9§.dispose();
         this.§9"9§ = null;
      }
   }
}
