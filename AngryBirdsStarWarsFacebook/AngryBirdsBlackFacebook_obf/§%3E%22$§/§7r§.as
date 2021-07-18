package §>"$§
{
   import §1!i§.§,#_§;
   import §6!H§.§9!!§;
   import §7K§.§5#^§;
   import §7K§.Energy;
   import §;#Q§.§>#I§;
   
   public class §7r§ implements §>#I§
   {
       
      
      public var starCoins:int;
      
      public var energy:Energy;
      
      public var subscriptions:Vector.<§9!!§>;
      
      public var items:Vector.<§5#^§>;
      
      public var birdLevels:§,#_§;
      
      public function §7r§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function init(param1:Object) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(!(_loc4_ && param1))
         {
            this.starCoins = parseInt(param1.starCoins);
            loop0:
            while(true)
            {
               this.energy = new Energy(param1.energy.q,param1.energy.p,param1.energy.t,param1.energy.m);
               while(true)
               {
                  this.items = new Vector.<§5#^§>();
                  while(true)
                  {
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                     if(!param1.items)
                     {
                        break;
                     }
                     if(!_loc3_)
                     {
                        continue;
                     }
                  }
                  addr143:
                  addr150:
                  this.birdLevels = new §,#_§(param1.birdLevels);
                  this.subscriptions = new Vector.<§9!!§>(0);
                  addr136:
                  if(param1.subscriptions)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              addr101:
                              _loc2_ = 0;
                              addr102:
                              if(!(_loc4_ && this))
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr26:
                                    §§push(_loc2_);
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(§§pop() >= param1.subscriptions.length)
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                if(_loc3_ || param1)
                                                {
                                                   if(_loc4_ && this)
                                                   {
                                                      §§goto(addr136);
                                                   }
                                                   §§goto(addr57);
                                                }
                                                _loc2_++;
                                                addr84:
                                             }
                                             if(_loc3_)
                                             {
                                                §§goto(addr26);
                                             }
                                             §§goto(addr102);
                                          }
                                          this.subscriptions.push(new §9!!§(param1.subscriptions[_loc2_].i,param1.subscriptions[_loc2_].d));
                                          §§goto(addr84);
                                       }
                                       addr139:
                                       if(§§pop() >= param1.items.length)
                                       {
                                          §§goto(addr143);
                                       }
                                       this.items.push(new §5#^§(param1.items[_loc2_].i,param1.items[_loc2_].q));
                                       _loc2_++;
                                       §§goto(addr139);
                                       §§push(_loc2_);
                                       addr172:
                                       addr153:
                                    }
                                    §§goto(addr101);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr101);
                  }
                  addr57:
                  return;
                  if(_loc4_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr139);
               }
            }
         }
         while(true)
         {
            _loc2_ = 0;
            §§goto(addr181);
         }
      }
   }
}
