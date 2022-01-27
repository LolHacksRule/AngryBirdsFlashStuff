package §[! §
{
   import §'!P§.§29§;
   import §'"A§.§#F§;
   import §+d§.§2!g§;
   import §98§.§3!i§;
   import §98§.Energy;
   
   public class §40§ implements §29§
   {
       
      
      public var starCoins:int;
      
      public var energy:Energy;
      
      public var subscriptions:Vector.<§#F§>;
      
      public var items:Vector.<§3!i§>;
      
      public var birdLevels:§2!g§;
      
      public function §40§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         var _loc2_:int = 0;
         this.starCoins = parseInt(param1.starCoins);
         this.energy = new Energy(param1.energy.q,param1.energy.p,param1.energy.t,param1.energy.m);
         this.items = new Vector.<§3!i§>();
         if(param1.items)
         {
            _loc2_ = 0;
            while(_loc2_ < param1.items.length)
            {
               this.items.push(new §3!i§(param1.items[_loc2_].i,param1.items[_loc2_].q));
               _loc2_++;
            }
         }
         this.birdLevels = new §2!g§(param1.birdLevels);
         this.subscriptions = new Vector.<§#F§>(0);
         if(param1.subscriptions)
         {
            _loc2_ = 0;
            while(_loc2_ < param1.subscriptions.length)
            {
               this.subscriptions.push(new §#F§(param1.subscriptions[_loc2_].i,param1.subscriptions[_loc2_].d));
               _loc2_++;
            }
         }
      }
   }
}
