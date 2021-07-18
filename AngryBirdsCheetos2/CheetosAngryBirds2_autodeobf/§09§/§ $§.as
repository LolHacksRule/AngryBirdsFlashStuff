package §09§
{
   import §&!8§.§+!6§;
   import §,§.§ p§;
   import §,§.§7!N§;
   import §4&§.§",§;
   import §6H§.§^5§;
   import §9t§.§&!W§;
   import §9t§.§=!>§;
   import §;A§.§]!A§;
   import §=!&§.§>L§;
   import §^a§.Sprite;
   import §`![§.§!!K§;
   import §`![§.§@;§;
   import flash.display.Stage;
   
   public class § $§ extends § p§
   {
      
      public static var §8#§:String = "";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §8#§ = "";
         }
      }
      
      public function § $§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super(param1);
         }
      }
      
      override public function init(param1:§!!K§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.init(param1);
         }
      }
      
      override protected function initReplay() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §96§ = new §>L§(§@;§.§6!K§);
         }
      }
      
      override protected function loadPreviousReplayData() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§8#§)
            {
               while(true)
               {
                  §1N§ = §8#§;
                  addr101:
                  while(true)
                  {
                  }
               }
               addr98:
            }
            loop2:
            for(; §1N§; §§goto(addr101))
            {
               loop3:
               while(true)
               {
                  §@D§ = §>L§.§,a§(§1N§);
                  while(!_loc1_)
                  {
                     §@D§.speed = 1;
                     while(_loc2_)
                     {
                        §@D§.play();
                        while(!(_loc1_ && this))
                        {
                           §`!e§ = -1000;
                           loop7:
                           while(_loc2_)
                           {
                              while(true)
                              {
                                 §1N§ = null;
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop7;
                              }
                           }
                        }
                     }
                  }
                  continue loop2;
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      override protected function initLevelSlingshot(param1:§!!K§) : §7!N§
      {
         return new §4!7§(this,param1,new Sprite());
      }
      
      override protected function initAnimationManager(param1:§=!>§) : §&!W§
      {
         return new §",§(param1);
      }
      
      override protected function initLevelObjectManager(param1:§!!K§) : §+!6§
      {
         return new §^5§(this,param1,new Sprite());
      }
      
      public function §&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(§96§)
            {
               if(_loc1_ || _loc2_)
               {
                  addr52:
                  (§96§ as §>L§).§7$§(mLevelEngine.currentStep);
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §,!e§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§@;§.§6!K§);
            while(true)
            {
               §§push(§§pop() == "1-1");
               while(true)
               {
                  §§push(!§§pop());
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                     }
                  }
                  §§goto(addr125);
               }
            }
         }
         §§goto(addr126);
      }
      
      override protected function addFallingBirds(param1:§!!K§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§]!A§ = null;
         if(_loc7_ || _loc2_)
         {
            §§push(§§findproperty(§0v§));
            §§push(0.33);
            if(!_loc6_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§0v§ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(5);
               loop2:
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(!_loc6_)
                  {
                     _loc3_ = §§pop();
                     if(_loc7_)
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc6_ && param1)
                           {
                              continue loop1;
                           }
                           §§push(5);
                           if(!(_loc7_ || _loc2_))
                           {
                              continue loop2;
                           }
                           if(§§pop() >= §§pop())
                           {
                              break;
                           }
                           §§push(int(§>C§() * 5));
                           if(!(_loc7_ || this))
                           {
                              continue loop1;
                           }
                           _loc4_ = §§pop();
                           if(_loc6_)
                           {
                              continue loop0;
                           }
                           §§push(_loc5_ = new §]!A§());
                           §§push(30 + _loc3_ * 10);
                           if(_loc7_)
                           {
                              §§push(§§pop() + §>C§() * 9);
                           }
                           §§pop().x = §§pop();
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(_loc2_);
                              loop4:
                              while(true)
                              {
                                 §§push(0);
                                 loop5:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(_loc5_);
                                       §§push(-100 + _loc2_ * 12);
                                       if(!_loc6_)
                                       {
                                          §§push(§>C§() * 3);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc6_)
                                             {
                                                addr308:
                                                §§push(§§pop() - _loc3_ * 8);
                                             }
                                             §§pop().y = §§pop();
                                             loop6:
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() + §§pop() * _loc3_);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc7_)
                                                                        {
                                                                           addr255:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc7_)
                                                                           {
                                                                              addr259:
                                                                              §§push(§§pop() % 5);
                                                                           }
                                                                           §§push(int(§§pop()));
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              §§push(2);
                                                                              addr278:
                                                                              loop24:
                                                                              while(§§pop() >= §§pop())
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop33;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(3);
                                                                                    if(_loc6_ && _loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          if(§§pop() != §§pop())
                                                                                          {
                                                                                             _loc5_.id = "BIRD_BLUE";
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(!(_loc7_ || _loc2_))
                                                                                                   {
                                                                                                      break loop24;
                                                                                                   }
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      loop14:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_.angle = §>C§() * 360;
                                                                                                         addr142:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc7_ || param1)
                                                                                                            {
                                                                                                               break loop14;
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                      }
                                                                                                      addr112:
                                                                                                      loop12:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.addObject(_loc5_);
                                                                                                         addr116:
                                                                                                         addr398:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               addr282:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     break loop12;
                                                                                                                  }
                                                                                                                  §§goto(addr135);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr142);
                                                                                                         }
                                                                                                         addr398:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            loop30:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(1);
                                                                                                               addr387:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  loop22:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     loop18:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        loop19:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr391:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              addr371:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 §§push(2);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    addr375:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr381:
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        addr382:
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           addr341:
                                                                                                                           loop32:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(4);
                                                                                                                              addr342:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    if(_loc7_ || param1)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   _loc5_.id = "PIG_HELMET";
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc7_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc5_.angle = 45 - §>C§() * 90;
                                                                                                                                                            break loop12;
                                                                                                                                                         }
                                                                                                                                                         addr313:
                                                                                                                                                      }
                                                                                                                                                      addr368:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr313);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr331:
                                                                                                                                                }
                                                                                                                                                addr358:
                                                                                                                                                while(_loc7_ || param1)
                                                                                                                                                {
                                                                                                                                                   _loc5_.id = "PIG_MUSTACHE";
                                                                                                                                                   §§goto(addr368);
                                                                                                                                                }
                                                                                                                                                §§goto(addr391);
                                                                                                                                                §§goto(addr381);
                                                                                                                                             }
                                                                                                                                             §§goto(addr382);
                                                                                                                                             addr356:
                                                                                                                                          }
                                                                                                                                          §§goto(addr390);
                                                                                                                                       }
                                                                                                                                       §§goto(addr375);
                                                                                                                                    }
                                                                                                                                    §§goto(addr382);
                                                                                                                                 }
                                                                                                                                 §§goto(addr374);
                                                                                                                                 continue loop32;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr383:
                                                                                                                     }
                                                                                                                     §§goto(addr356);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr135:
                                                                                                      while(_loc7_)
                                                                                                      {
                                                                                                         §§goto(addr112);
                                                                                                      }
                                                                                                      addr112:
                                                                                                      §§goto(addr358);
                                                                                                   }
                                                                                                   §§goto(addr383);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr194:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_.id = "BIRD_YELLOW";
                                                                                                   }
                                                                                                   addr194:
                                                                                                }
                                                                                                §§goto(addr197);
                                                                                             }
                                                                                             addr156:
                                                                                          }
                                                                                          §§goto(addr194);
                                                                                       }
                                                                                       §§goto(addr387);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          continue loop33;
                                                                                       }
                                                                                       addr276:
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr371);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc5_.id = "BIRD_RED";
                                                                                 §§goto(addr282);
                                                                              }
                                                                           }
                                                                           addr277:
                                                                        }
                                                                     }
                                                                     §§goto(addr259);
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§goto(addr342);
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr341);
                                                   }
                                                   §§goto(addr277);
                                                }
                                                §§goto(addr331);
                                             }
                                             continue loop4;
                                          }
                                       }
                                       §§goto(addr308);
                                    }
                                    §§goto(addr395);
                                 }
                              }
                           }
                           §§goto(addr194);
                        }
                        if(_loc6_ && this)
                        {
                           break;
                        }
                        _loc2_++;
                        if(!_loc7_)
                        {
                           break;
                        }
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
   }
}
