package §>"$§
{
   import §,"N§.§%"[§;
   import §,"N§.§@#B§;
   import §7K§.§#!E§;
   import §7K§.§&"=§;
   import §7K§.§,T§;
   import §7K§.§-I§;
   import §7K§.§`!z§;
   import §7K§.§`#V§;
   import §;#Q§.§>#I§;
   import flash.utils.Dictionary;
   
   public class §?g§ implements §>#I§
   {
       
      
      public var §-h§:Dictionary;
      
      public var upgrades:Dictionary;
      
      public var energies:Dictionary;
      
      public var §7"z§:Dictionary;
      
      public var discounts:Dictionary;
      
      public var §2"^§:int = -1;
      
      public var §]"g§:int = -1;
      
      public function §?g§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc2_:§%"[§ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
         _loc2_.§?,§ = param1.currency;
         this.§-h§ = new Dictionary();
         this.upgrades = new Dictionary();
         this.energies = new Dictionary();
         this.§7"z§ = new Dictionary();
         this.discounts = new Dictionary();
         if(param1.items)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.items.length)
            {
               this.§-h§[param1.items[_loc3_].id] = new §#!E§(param1.items[_loc3_].id,this.§]#M§(param1.items[_loc3_].id,param1.items[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.upgrades)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.upgrades.length)
            {
               this.upgrades[param1.upgrades[_loc3_].id] = new §`#V§(param1.upgrades[_loc3_].id,this.§]#M§(param1.upgrades[_loc3_].id,param1.upgrades[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.energies)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.energies.length)
            {
               this.energies[param1.energies[_loc3_].id] = new §&"=§(param1.energies[_loc3_].id,this.§]#M§(param1.energies[_loc3_].id,param1.energies[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.subscriptions)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.subscriptions.length)
            {
               this.§7"z§[param1.subscriptions[_loc3_].id] = new §-I§(param1.subscriptions[_loc3_].id,this.§]#M§(param1.subscriptions[_loc3_].id,param1.subscriptions[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.discounts)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.discounts.length)
            {
               this.discounts[param1.discounts[_loc3_].id] = new §`!z§(param1.discounts[_loc3_].id,this.§]#M§(param1.discounts[_loc3_].id,param1.discounts[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.levels && param1.levels.length > 0 && param1.levels[0].prices && param1.levels[0].prices.length > 0)
         {
            this.§2"^§ = param1.levels[0].prices[0].p;
         }
         if(param1.other && param1.other.length > 0 && param1.other[0].prices && param1.other[0].prices.length > 0)
         {
            this.§]"g§ = param1.other[0].prices[0].p;
         }
      }
      
      protected function §]#M§(param1:String, param2:Array) : Vector.<§,T§>
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc3_:Vector.<§,T§> = new Vector.<§,T§>();
         var _loc4_:int = 0;
         while(_loc4_ < param2.length)
         {
            _loc5_ = param2[_loc4_].s != undefined ? Boolean(param2[_loc4_].s) : false;
            _loc6_ = !!isNaN(param2[_loc4_].np) ? -1 : int(param2[_loc4_].np);
            _loc7_ = !!isNaN(param2[_loc4_].up) ? -1 : int(param2[_loc4_].up);
            _loc3_.push(new §,T§(param1,param2[_loc4_].q,param2[_loc4_].p,param2[_loc4_].t,_loc5_,_loc6_,_loc7_));
            _loc4_++;
         }
         return _loc3_;
      }
   }
}
