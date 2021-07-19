package §>"$§
{
   import §1!i§.§,#_§;
   import §6!H§.§9!!§;
   import §7K§.§5#^§;
   import §7K§.Energy;
   import §;#Q§.§>#I§;
   
   public class §!"C§ implements §>#I§
   {
       
      
      public var starCoins:int;
      
      public var energy:Energy;
      
      public var items:Vector.<§5#^§>;
      
      public var subscriptions:Vector.<§9!!§>;
      
      public var birdLevels:§,#_§;
      
      public function §!"C§()
      {
         super();
      }
      
      public function init(param1:Object) : void
      {
         var _loc2_:int = 0;
         this.starCoins = parseInt(param1.starCoins);
         if(param1.energy)
         {
            this.energy = new Energy(param1.energy.q,param1.energy.p,param1.energy.t,param1.energy.m);
         }
         if(param1.items)
         {
            this.items = new Vector.<§5#^§>();
            _loc2_ = 0;
            while(_loc2_ < param1.items.length)
            {
               this.items.push(new §5#^§(param1.items[_loc2_].i,param1.items[_loc2_].q));
               _loc2_++;
            }
         }
         if(param1.birdLevels)
         {
            this.birdLevels = new §,#_§(param1.birdLevels);
         }
         if(param1.subscriptions)
         {
            this.subscriptions = new Vector.<§9!!§>(0);
            _loc2_ = 0;
            while(_loc2_ < param1.subscriptions.length)
            {
               this.subscriptions.push(new §9!!§(param1.subscriptions[_loc2_].i,param1.subscriptions[_loc2_].d));
               _loc2_++;
            }
         }
      }
   }
}
