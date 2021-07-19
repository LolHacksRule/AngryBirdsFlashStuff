package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §>!Z§.§!u§;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   import §@L§.§?!'§;
   
   public class §>!9§ extends §"_§
   {
       
      
      private var §2!V§:int = 0;
      
      public function §>!9§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number, param7:String = "", param8:int = 1)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
         while(true)
         {
            §`,§ = param7;
            while(!(_loc10_ && param1))
            {
               §1!3§ = param8;
               if(!(_loc10_ && param1))
               {
                  return;
               }
            }
         }
      }
      
      override public function isDamageAwardingScore() : Boolean
      {
         return !§%!Q§;
      }
      
      override protected function addDestructionParticles(param1:§3!#§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         if(_loc11_ || _loc2_)
         {
            if(!param1)
            {
               if(!_loc10_)
               {
                  §§goto(addr36);
               }
            }
            var _loc2_:Number = 4;
            var _loc3_:int = Math.min(49,Math.max(1,§[z§(false))) + 1;
            var _loc4_:* = Number(90);
            var _loc5_:int = 0;
            while(true)
            {
               §§push(_loc5_);
               if(!_loc10_)
               {
                  if(§§pop() >= _loc3_)
                  {
                     if(_loc11_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           if(!_loc10_)
                           {
                              if(!(_loc10_ && _loc3_))
                              {
                                 break;
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(param1);
                                 §§push(§`,§ + "_");
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop() + _loc9_);
                                 }
                                 §§pop().§+!v§(§§pop(),§2_§.§`!%§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x + _loc7_,§^`§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§2_§.§%j§(itemName),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                 addr235:
                                 while(true)
                                 {
                                    _loc9_ = §§pop();
                                    continue loop2;
                                 }
                              }
                           }
                           loop3:
                           while(true)
                           {
                              if(!(_loc10_ && param1))
                              {
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    break;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(-§`!f§.width);
                                    loop5:
                                    for(; _loc11_ || this; if(_loc10_ && _loc2_)
                                    {
                                       continue;
                                    },§§push(§?!'§.§'!i§),if(_loc11_)
                                    {
                                       if(!_loc10_)
                                       {
                                          if(_loc11_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc10_ && this))
                                             {
                                                if(_loc11_ || this)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc11_)
                                                   {
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr340);
                                                }
                                                §§goto(addr393);
                                             }
                                             §§goto(addr352);
                                          }
                                          §§goto(addr432);
                                       }
                                       §§goto(addr392);
                                    },§§goto(addr291))
                                    {
                                       §§push(§?!'§.§'!i§);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          loop7:
                                          while(!(_loc10_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop9:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      §§push(Math.random() * -_loc7_);
                                                      while(true)
                                                      {
                                                         §§push(2);
                                                         addr391:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            addr392:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                      }
                                                      addr390:
                                                   }
                                                   addr393:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop14:
                                                      while(_loc11_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(-§`!f§.height);
                                                            if(!_loc10_)
                                                            {
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  continue loop5;
                                                               }
                                                               continue loop14;
                                                            }
                                                            addr283:
                                                            §§push(§§pop());
                                                            if(_loc11_ || _loc3_)
                                                            {
                                                               addr291:
                                                               if(!_loc10_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  if(_loc10_ && _loc3_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(Math.random() * -_loc8_);
                                                                        if(!_loc11_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        addr312:
                                                                        if(_loc10_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           §§push(2);
                                                                           if(_loc11_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              continue loop6;
                                                                           }
                                                                           §§goto(addr391);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              break loop7;
                                                                           }
                                                                           addr427:
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Math.random() * (720 / _loc3_));
                                                                           if(_loc11_ || this)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              break loop5;
                                                                           }
                                                                           addr432:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              break loop14;
                                                                           }
                                                                        }
                                                                        addr401:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr427);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr390);
                                                               }
                                                               §§goto(addr391);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                         _loc8_ = §§pop();
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(§`,§ != "")
                                                            {
                                                               continue;
                                                            }
                                                            addr132:
                                                            param1.§-!,§(§2_§.§`!%§,§!u§.§54§,§2_§.§4d§,§^`§().GetPosition().x + _loc7_,§^`§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§2_§.§%j§(itemName),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                            while(true)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  break loop3;
                                                               }
                                                               continue loop22;
                                                            }
                                                         }
                                                         §§push(1);
                                                         if(_loc11_)
                                                         {
                                                            §§goto(addr235);
                                                            §§push(int(§§pop() + Math.floor(Math.random() * §1!3§)));
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr432);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr416);
                                    }
                                 }
                              }
                              §§goto(addr397);
                           }
                           continue;
                        }
                        §§goto(addr132);
                     }
                     continue;
                  }
                  §§push(_loc4_);
                  §§goto(addr401);
               }
               §§goto(addr235);
            }
            return;
         }
         addr36:
      }
   }
}
