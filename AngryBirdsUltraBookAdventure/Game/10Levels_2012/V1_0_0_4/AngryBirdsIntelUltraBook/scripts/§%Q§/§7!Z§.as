package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§^g§;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §`w§.b2World;
   import §true§.§ _§;
   
   public class §7!Z§ extends §`!<§
   {
       
      
      private var §4!&§:int = 0;
      
      public function §7!Z§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
         do
         {
            §4!c§ = param12;
            do
            {
               §!!?§ = param13;
            }
            while(!(_loc14_ || param1));
            
         }
         while(_loc15_);
         
      }
      
      override public function addDestructionParticles(param1:§+F§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc2_:Number = 4;
         var _loc3_:int = Math.min(49,Math.max(1,§#!g§(false))) + 1;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!(_loc10_ && _loc2_))
            {
               if(!(_loc10_ && this))
               {
                  if(§§pop() >= _loc3_)
                  {
                     if(!(_loc10_ && this))
                     {
                        if(!(_loc10_ && param1))
                        {
                           if(_loc11_)
                           {
                              if(_loc11_)
                              {
                                 break;
                              }
                              loop1:
                              while(true)
                              {
                                 if(§4!c§ != "")
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(1);
                                       addr218:
                                       while(true)
                                       {
                                          §§push(int(§§pop() + Math.floor(Math.random() * §!!?§)));
                                          addr226:
                                          while(true)
                                          {
                                             _loc9_ = §§pop();
                                             addr227:
                                             while(true)
                                             {
                                                if(_loc11_ || this)
                                                {
                                                   addr200:
                                                   §§push(param1);
                                                   §§push(§4!c§ + "_");
                                                   if(_loc11_)
                                                   {
                                                      §§push(§§pop() + _loc9_);
                                                   }
                                                   §§pop().§0!>§(§§pop(),§1!e§.§ !t§,§+F§.§+!X§,§1!e§.§<V§,§5b§().GetPosition().x + _loc7_,§5b§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§"!J§(§<!]§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         _loc5_++;
                                                         addr88:
                                                         while(_loc10_)
                                                         {
                                                            loop24:
                                                            while(true)
                                                            {
                                                               §§push(-§?!M§.mW);
                                                               addr348:
                                                               while(true)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(§^g§.§^!S§);
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr354:
                                                                        §§push(§§pop() * §§pop());
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc10_ && _loc2_))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(!_loc10_)
                                                                              {
                                                                                 addr366:
                                                                                 §§push(§§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    addr367:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Math.random() * -_loc7_);
                                                                                       addr372:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(2);
                                                                                          addr373:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             addr374:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc11_ || _loc3_)
                                                                                                {
                                                                                                   addr382:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr383:
                                                                                                      addr397:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc10_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc11_ || this)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr412:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Math.random() * (720 / _loc3_));
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  addr421:
                                                                                                               }
                                                                                                               addr435:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  addr436:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr437:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc11_ || param1)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               addr431:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      _loc7_ = §§pop();
                                                                                                      break loop3;
                                                                                                   }
                                                                                                   addr382:
                                                                                                }
                                                                                                §§goto(addr435);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr366:
                                                                              }
                                                                              §§goto(addr382);
                                                                           }
                                                                           §§goto(addr437);
                                                                        }
                                                                        addr355:
                                                                     }
                                                                     §§goto(addr366);
                                                                  }
                                                                  §§goto(addr436);
                                                               }
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   addr200:
                                                }
                                                addr398:
                                                while(true)
                                                {
                                                   §§push(-§?!M§.mH);
                                                   if(!_loc10_)
                                                   {
                                                      if(!(_loc10_ && this))
                                                      {
                                                         if(!(_loc10_ && this))
                                                         {
                                                            §§push(§^g§.§^!S§);
                                                            if(!(_loc10_ && _loc3_))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc11_ || this)
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        addr282:
                                                                        if(_loc11_)
                                                                        {
                                                                           if(_loc11_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 addr299:
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr306:
                                                                                          §§push(Math.random() * -_loc8_);
                                                                                          if(_loc11_ || _loc3_)
                                                                                          {
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                §§push(2);
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   addr334:
                                                                                                   §§push(§§pop() + §§pop() * §§pop());
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      addr337:
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr340:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr382);
                                                                                                      }
                                                                                                      §§goto(addr431);
                                                                                                   }
                                                                                                   §§goto(addr340);
                                                                                                }
                                                                                                §§goto(addr373);
                                                                                             }
                                                                                             §§goto(addr372);
                                                                                          }
                                                                                          §§goto(addr334);
                                                                                       }
                                                                                       §§goto(addr337);
                                                                                    }
                                                                                    §§goto(addr366);
                                                                                 }
                                                                                 §§goto(addr374);
                                                                              }
                                                                              §§goto(addr334);
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                        §§goto(addr367);
                                                                     }
                                                                     §§goto(addr306);
                                                                  }
                                                                  §§goto(addr355);
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                            §§goto(addr299);
                                                         }
                                                         §§goto(addr421);
                                                      }
                                                      §§goto(addr383);
                                                   }
                                                   §§goto(addr282);
                                                   §§goto(addr397);
                                                }
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    param1.§ K§(§1!e§.§ !t§,§+F§.§+!X§,§1!e§.§<V§,§5b§().GetPosition().x + _loc7_,§5b§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§"!J§(§<!]§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),10,_loc2_ * 50);
                                    while(true)
                                    {
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          §§goto(addr86);
                                       }
                                       else
                                       {
                                          §§goto(addr200);
                                       }
                                    }
                                    addr139:
                                 }
                                 §§goto(addr200);
                              }
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr88);
                  }
                  else
                  {
                     §§push(_loc4_);
                  }
                  §§goto(addr412);
               }
               §§goto(addr218);
            }
            §§goto(addr226);
         }
      }
      
      override public function addDamageParticles(param1:§+F§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§^g§ = § _§.§!6§;
         if(!(_loc6_ && _loc1_))
         {
            §§push(§%!R§ < §-!!§);
            if(!(_loc6_ && _loc1_))
            {
               if(!§§pop())
               {
                  loop10:
                  while(true)
                  {
                     §§pop();
                     addr86:
                     while(true)
                     {
                        §§push(§5b§() == null);
                        if(!_loc6_)
                        {
                           break;
                        }
                        continue loop10;
                     }
                  }
                  addr85:
               }
               loop0:
               for(; §§pop(); §§goto(addr86))
               {
                  loop1:
                  while(true)
                  {
                     _loc1_.§'Y§(this);
                     loop2:
                     while(!(_loc6_ && _loc2_))
                     {
                        while(true)
                        {
                           _loc1_.§"!j§ = false;
                           if(!_loc6_)
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
               §§push(x * §^g§.§^!S§);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * §^g§.§^!S§);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(§1!e§.PARTICLE_NAME_BIRD_TRAIL1);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop());
               }
               var _loc4_:* = §§pop();
               if(_loc5_)
               {
                  §§push(this.§4!&§);
                  loop4:
                  while(true)
                  {
                     §§push(1);
                     addr229:
                     addr232:
                     addr234:
                     while(§§pop() != §§pop())
                     {
                        continue loop4;
                     }
                     _loc4_ = §1!e§.PARTICLE_NAME_BIRD_TRAIL2;
                     loop6:
                     while(true)
                     {
                        addr154:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§4!&§ + 1);
                           if(_loc5_ || _loc2_)
                           {
                              §§push(§§pop() % 3);
                           }
                           §§pop().§4!&§ = §§pop();
                           while(!_loc6_)
                           {
                              _loc1_.particles.§ K§(_loc4_,§+F§.§%!W§,§1!e§.§]!e§,_loc2_,_loc3_,-1,"",§1!e§.§+Q§);
                              if(_loc5_)
                              {
                                 return;
                              }
                           }
                           continue loop6;
                        }
                     }
                  }
               }
               §§goto(addr193);
            }
            §§goto(addr85);
         }
         §§goto(addr72);
      }
   }
}
