package §[! §
{
   import §'!P§.§29§;
   import §9"U§.§,N§;
   import §9"U§.§7"1§;
   import §98§.§&T§;
   import §98§.§'"M§;
   import §98§.§0Y§;
   import §98§.§2§;
   import §98§.§;!"§;
   import §98§.§="W§;
   import flash.utils.Dictionary;
   
   public class §<",§ implements §29§
   {
       
      
      public var §1"y§:Dictionary;
      
      public var upgrades:Dictionary;
      
      public var energies:Dictionary;
      
      public var §9"5§:Dictionary;
      
      public var discounts:Dictionary;
      
      public var §?2§:int = -1;
      
      public var § "j§:int = -1;
      
      public function §<",§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc2_:§,N§ = §7"1§(§4"#§.singleton.dataModel).§=#1§;
         _loc2_.§^"o§ = param1.currency;
         this.§1"y§ = new Dictionary();
         this.upgrades = new Dictionary();
         this.energies = new Dictionary();
         this.§9"5§ = new Dictionary();
         this.discounts = new Dictionary();
         if(param1.items)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.items.length)
            {
               this.§1"y§[param1.items[_loc3_].id] = new §;!"§(param1.items[_loc3_].id,this.§-U§(param1.items[_loc3_].id,param1.items[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.upgrades)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.upgrades.length)
            {
               this.upgrades[param1.upgrades[_loc3_].id] = new §0Y§(param1.upgrades[_loc3_].id,this.§-U§(param1.upgrades[_loc3_].id,param1.upgrades[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.energies)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.energies.length)
            {
               this.energies[param1.energies[_loc3_].id] = new §="W§(param1.energies[_loc3_].id,this.§-U§(param1.energies[_loc3_].id,param1.energies[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.subscriptions)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.subscriptions.length)
            {
               this.§9"5§[param1.subscriptions[_loc3_].id] = new §&T§(param1.subscriptions[_loc3_].id,this.§-U§(param1.subscriptions[_loc3_].id,param1.subscriptions[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.discounts)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.discounts.length)
            {
               this.discounts[param1.discounts[_loc3_].id] = new §2#5§(param1.discounts[_loc3_].id,this.§-U§(param1.discounts[_loc3_].id,param1.discounts[_loc3_].prices));
               _loc3_++;
            }
         }
         if(param1.levels && param1.levels.length > 0 && param1.levels[0].prices && param1.levels[0].prices.length > 0)
         {
            this.§?2§ = param1.levels[0].prices[0].p;
         }
         if(param1.other && param1.other.length > 0 && param1.other[0].prices && param1.other[0].prices.length > 0)
         {
            this.§ "j§ = param1.other[0].prices[0].p;
         }
      }
      
      protected function §-U§(param1:String, param2:Array) : Vector.<§'"M§>
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc3_:Vector.<§'"M§> = new Vector.<§'"M§>();
         var _loc4_:int = 0;
         while(_loc4_ < param2.length)
         {
            _loc5_ = param2[_loc4_].s != undefined ? Boolean(param2[_loc4_].s) : false;
            _loc6_ = !!isNaN(param2[_loc4_].np) ? -1 : int(param2[_loc4_].np);
            _loc7_ = !!isNaN(param2[_loc4_].up) ? -1 : int(param2[_loc4_].up);
            _loc3_.push(new §'"M§(param1,param2[_loc4_].q,param2[_loc4_].p,param2[_loc4_].t,_loc5_,_loc6_,_loc7_));
            _loc4_++;
         }
         return _loc3_;
      }
   }
}
