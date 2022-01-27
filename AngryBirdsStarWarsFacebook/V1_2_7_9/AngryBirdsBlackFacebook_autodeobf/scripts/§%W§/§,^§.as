package §%W§
{
   import §7A§.§5"2§;
   import §;q§.§1"k§;
   import §;q§.Energy;
   import §@##§.§#^§;
   import §@b§.§`"5§;
   
   public class §,^§ implements §#^§
   {
       
      
      public var starCoins:int;
      
      public var energy:Energy;
      
      public var subscriptions:Vector.<§`"5§>;
      
      public var items:Vector.<§1"k§>;
      
      public var birdLevels:§5"2§;
      
      public function §,^§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         var _loc2_:int = 0;
         this.starCoins = parseInt(param1.starCoins);
         this.energy = new Energy(param1.energy.q,param1.energy.p,param1.energy.t,param1.energy.m);
         this.items = new Vector.<§1"k§>();
         if(param1.items)
         {
            _loc2_ = 0;
            while(_loc2_ < param1.items.length)
            {
               this.items.push(new §1"k§(param1.items[_loc2_].i,param1.items[_loc2_].q));
               _loc2_++;
            }
         }
         this.birdLevels = new §5"2§(param1.birdLevels);
         this.subscriptions = new Vector.<§`"5§>(0);
         if(param1.subscriptions)
         {
            _loc2_ = 0;
            while(_loc2_ < param1.subscriptions.length)
            {
               this.subscriptions.push(new §`"5§(param1.subscriptions[_loc2_].i,param1.subscriptions[_loc2_].d));
               _loc2_++;
            }
         }
      }
   }
}
