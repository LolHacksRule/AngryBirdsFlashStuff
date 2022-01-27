package §%W§
{
   import §;q§.§ true§;
   import §;q§.§-<§;
   import §;q§.§<"d§;
   import §;q§.§>§;
   import §;q§.§@!h§;
   import §;q§.§`"b§;
   import §@##§.§#^§;
   import §`"8§.§-!w§;
   import §`"8§.§[F§;
   import flash.utils.Dictionary;
   
   public class §[!h§ implements §#^§
   {
       
      
      public var §#?§:Dictionary;
      
      public var upgrades:Dictionary;
      
      public var energies:Dictionary;
      
      public var §8"H§:Dictionary;
      
      public var discounts:Dictionary;
      
      public var §]"j§:int = -1;
      
      public var §-"G§:int = -1;
      
      public function §[!h§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc2_:§[F§ = §-!w§(§;"@§.singleton.dataModel).§!#%§;
         _loc2_.§]!t§ = param1.currency;
         this.§#?§ = new Dictionary();
         this.upgrades = new Dictionary();
         this.energies = new Dictionary();
         this.§8"H§ = new Dictionary();
         this.discounts = new Dictionary();
         if(param1.items)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.items.length)
            {
               this.§#?§[param1.items[_loc3_].id] = new §`"b§(param1.items[_loc3_].id,this.§`!,§(param1.items[_loc3_].id,param1.items[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.upgrades)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.upgrades.length)
            {
               this.upgrades[param1.upgrades[_loc3_].id] = new §>#6§(param1.upgrades[_loc3_].id,this.§`!,§(param1.upgrades[_loc3_].id,param1.upgrades[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.energies)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.energies.length)
            {
               this.energies[param1.energies[_loc3_].id] = new §<"d§(param1.energies[_loc3_].id,this.§`!,§(param1.energies[_loc3_].id,param1.energies[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.subscriptions)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.subscriptions.length)
            {
               this.§8"H§[param1.subscriptions[_loc3_].id] = new §-<§(param1.subscriptions[_loc3_].id,this.§`!,§(param1.subscriptions[_loc3_].id,param1.subscriptions[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.discounts)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.discounts.length)
            {
               this.discounts[param1.discounts[_loc3_].id] = new §@!h§(param1.discounts[_loc3_].id,this.§`!,§(param1.discounts[_loc3_].id,param1.discounts[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.levels && param1.levels.length > 0 && param1.levels[0].prices && param1.levels[0].prices.length > 0)
         {
            this.§]"j§ = param1.levels[0].prices[0].p;
         }
         if(param1.other && param1.other.length > 0 && param1.other[0].prices && param1.other[0].prices.length > 0)
         {
            this.§-"G§ = param1.other[0].prices[0].p;
         }
      }
      
      protected function §`!,§(param1:String, param2:Array) : Vector.<§ true§>
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc3_:Vector.<§ true§> = new Vector.<§ true§>();
         var _loc4_:int = 0;
         while(_loc4_ < param2.length)
         {
            _loc5_ = param2[_loc4_].s != undefined ? Boolean(param2[_loc4_].s) : false;
            _loc6_ = !!isNaN(param2[_loc4_].np) ? -1 : int(param2[_loc4_].np);
            _loc7_ = !!isNaN(param2[_loc4_].up) ? -1 : int(param2[_loc4_].up);
            _loc3_.push(new § true§(param1,param2[_loc4_].q,param2[_loc4_].p,param2[_loc4_].t,_loc5_,_loc6_,_loc7_));
            _loc4_++;
         }
         return _loc3_;
      }
   }
}
