package §]">§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §@"D§ extends §1!0§
   {
       
      
      private var §=!b§:int = 0;
      
      public function §@"D§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§>_§;
      }
      
      override protected function addDestructionParticles(param1:§;U§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§+<§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(_loc10_)
               {
                  break;
               }
               loop17:
               while(true)
               {
                  if(!(_loc9_ && param1))
                  {
                     addr63:
                     if(_loc10_)
                     {
                        addr65:
                        if(_loc10_ || _loc3_)
                        {
                           continue loop0;
                        }
                        loop10:
                        while(true)
                        {
                           if(_loc10_)
                           {
                              §§push(-§'%§.height);
                              if(_loc10_)
                              {
                                 if(_loc10_)
                                 {
                                    §§push(§^g§.§5!-§);
                                    if(_loc10_ || this)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc10_ || this)
                                       {
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc10_)
                                             {
                                                addr155:
                                                §§push(§§pop());
                                                if(_loc10_)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         _loc8_ = §§pop();
                                                         if(_loc10_ || this)
                                                         {
                                                            addr180:
                                                            if(!_loc9_)
                                                            {
                                                               addr182:
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  §§push(Math.random() * -_loc8_);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr196:
                                                                     §§push(2);
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        addr205:
                                                                        §§push(§§pop() + §§pop() * §§pop());
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr216:
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    param1.§%!y§(§2!V§.§[!e§,§0"@§.§3!W§,§2!V§.§#!N§,§^!z§().GetPosition().x + _loc7_,§^!z§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§2!V§.§+9§(itemName),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                                                    addr119:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_++;
                                                                                       continue loop17;
                                                                                    }
                                                                                    §§goto(addr63);
                                                                                 }
                                                                                 §§goto(addr65);
                                                                                 addr224:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Math.random() * -_loc7_);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       loop13:
                                                                                       while(!_loc9_)
                                                                                       {
                                                                                          §§push(2);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr267:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr276:
                                                                                                      addr247:
                                                                                                      addr328:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc7_ = §§pop();
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      while(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                      }
                                                                                                      addr328:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr329:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            addr330:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(-§'%§.width);
                                                                                                               break loop10;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr182);
                                                                                                   }
                                                                                                   addr275:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(180 / Math.PI);
                                                                                                         break loop13;
                                                                                                      }
                                                                                                      §§goto(addr329);
                                                                                                   }
                                                                                                   addr310:
                                                                                                }
                                                                                                §§goto(addr329);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr328);
                                                                                       }
                                                                                       addr263:
                                                                                       addr327:
                                                                                    }
                                                                                    §§goto(addr267);
                                                                                 }
                                                                                 addr256:
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr216);
                                                                     }
                                                                     §§goto(addr266);
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr276);
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                      §§goto(addr255);
                                                   }
                                                   §§goto(addr267);
                                                }
                                                §§goto(addr196);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr329);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr196);
                                 }
                                 §§goto(addr247);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr330);
                        }
                        while(true)
                        {
                           §§push(§^g§.§5!-§);
                           if(_loc10_ || _loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc10_ || _loc3_)
                              {
                                 §§goto(addr247);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr256);
                           }
                           §§goto(addr263);
                        }
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr119);
               }
            }
            else
            {
               §§push(_loc4_);
               if(_loc10_ || param1)
               {
                  §§push(Math.random() * (720 / _loc3_));
                  if(!(_loc9_ && this))
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc10_)
                     {
                        addr306:
                        §§push(Number(§§pop()));
                        if(!_loc9_)
                        {
                           §§goto(addr310);
                           §§push(§§pop());
                        }
                        §§goto(addr328);
                     }
                     §§goto(addr329);
                  }
                  §§goto(addr327);
               }
               §§goto(addr306);
            }
            §§goto(addr328);
         }
      }
      
      override public function addDamageParticles(param1:§;U§, param2:int) : void
      {
      }
   }
}
