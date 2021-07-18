package §;!E§
{
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§^!2§;
   import §+!8§.§-!N§;
   import §+!8§.§8d§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   import §9b§.§"!S§;
   
   public class §>!8§ extends §8d§
   {
       
      
      private var §#!5§:int;
      
      public function §>!8§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            do
            {
               this.§#!5§ = 0;
            }
            while(!(_loc13_ || param3));
            
         }
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activateSpecialPower(param1);
         }
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§^!2§ = §"!S§.§-!7§;
         if(!(_loc9_ && _loc3_))
         {
            §§push(§[h§ < §'!V§);
            if(_loc10_ || this)
            {
               if(!§§pop())
               {
                  do
                  {
                     §§pop();
                     §§push(§0c§() == null);
                  }
                  while(!_loc10_);
                  
                  addr93:
               }
               if(§§pop())
               {
                  do
                  {
                     _loc1_.§9?§(this);
                     do
                     {
                        _loc1_.§?j§ = false;
                     }
                     while(_loc9_);
                     
                  }
                  while(!(_loc10_ || _loc1_));
                  
                  return;
                  addr77:
               }
               else
               {
                  §§push(x * §^!2§.§3!S§);
                  if(!(_loc9_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  §§push(y * §^!2§.§3!S§);
                  if(_loc10_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc3_:* = §§pop();
                  if(_loc10_ || _loc1_)
                  {
                     if(!_loc1_.§?j§)
                     {
                        if(§^!O§ > 1)
                        {
                           if(!(_loc9_ && _loc3_))
                           {
                              addr360:
                              §§push(_loc1_.particles);
                              §§push(§!U§.§<+§);
                              if(_loc10_)
                              {
                                 §§push(§?F§.§;!;§);
                                 if(_loc10_ || _loc1_)
                                 {
                                    if(_loc10_ || this)
                                    {
                                       §§push(§!U§.§<x§);
                                       if(!_loc9_)
                                       {
                                          addr383:
                                          §§push(_loc2_);
                                          if(_loc10_)
                                          {
                                             addr390:
                                             §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),_loc3_,-1,"",§!U§.§^!J§);
                                             loop2:
                                             while(Math.random() < §?I§)
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(-Math.PI);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / 2);
                                                      if(_loc10_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      addr600:
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                      }
                                                   }
                                                   addr595:
                                                }
                                                loop5:
                                                while(_loc10_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Number(Math.random()));
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr638:
                                                            loop6:
                                                            for(; _loc10_ || _loc3_; §§pop().addParticle(§§pop(),§§pop(),§§pop(),§0c§().GetPosition().x,§0c§().GetPosition().y,1250,"",§!U§.§9Z§(§>R§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale)),if(_loc9_ && _loc3_)
                                                            {
                                                               continue;
                                                            },if(_loc9_ && _loc1_)
                                                            {
                                                               continue loop5;
                                                            },if(_loc10_)
                                                            {
                                                               break loop2;
                                                            },addr645:,while(true)
                                                            {
                                                               addr621:
                                                               while(true)
                                                               {
                                                                  §9!Q§ = (§9!Q§ + 1) % 3;
                                                                  break loop6;
                                                               }
                                                            })
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_.particles);
                                                                  if(_loc10_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§!U§.§&§);
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           §§push(§?F§.§<G§);
                                                                           if(!_loc9_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§!U§.§"R§);
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 addr612:
                                                                                 addr612:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    addr613:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       addr614:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(-1);
                                                                                          addr615:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push("");
                                                                                             addr616:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§!U§.§^!J§);
                                                                                                addr618:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                   break loop5;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr501:
                                                                           }
                                                                           §§goto(addr612);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr608:
                                                                           while(true)
                                                                           {
                                                                              §§push(§?F§.§;!;§);
                                                                           }
                                                                           addr608:
                                                                        }
                                                                        addr610:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr612);
                                                                        }
                                                                     }
                                                                     addr488:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr607:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr607:
                                                                  }
                                                                  §§goto(addr608);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr607);
                                                            }
                                                            addr638:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr595);
                                                         }
                                                      }
                                                      §§goto(addr600);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             return;
                                             addr586:
                                             addr391:
                                             addr388:
                                             addr387:
                                             addr386:
                                          }
                                          else
                                          {
                                             loop25:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                addr438:
                                                while(true)
                                                {
                                                   §§push(-1);
                                                   addr439:
                                                   while(true)
                                                   {
                                                      §§push("");
                                                      addr440:
                                                      while(true)
                                                      {
                                                         §§push(§!U§.§^!J§);
                                                         addr442:
                                                         while(true)
                                                         {
                                                            §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                            if(!(_loc9_ && this))
                                                            {
                                                               _loc1_.§?j§ = false;
                                                               if(_loc10_ || _loc1_)
                                                               {
                                                                  if(_loc10_ || this)
                                                                  {
                                                                     §9!Q§ = 0;
                                                                     if(_loc10_ || _loc2_)
                                                                     {
                                                                        §§goto(addr586);
                                                                        addr403:
                                                                     }
                                                                     §§goto(addr619);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_.particles);
                                                                        if(_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§!U§.§7!G§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§?F§.§;!;§);
                                                                           addr434:
                                                                           while(true)
                                                                           {
                                                                              §§push(§!U§.§<x§);
                                                                              addr436:
                                                                              while(true)
                                                                              {
                                                                                 continue loop25;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr488);
                                                                     addr426:
                                                                  }
                                                                  §§goto(addr608);
                                                               }
                                                               §§goto(addr619);
                                                            }
                                                            break;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr437:
                                          }
                                          §§goto(addr584);
                                       }
                                       §§goto(addr612);
                                    }
                                    §§goto(addr434);
                                 }
                                 §§goto(addr501);
                              }
                              §§goto(addr432);
                           }
                           §§goto(addr638);
                        }
                        else
                        {
                           §§push(§!U§.PARTICLE_NAME_BIRD_TRAIL1);
                           if(_loc10_ || _loc2_)
                           {
                              §§push(§§pop());
                              loop0:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 while(true)
                                 {
                                    if(_loc10_ || _loc1_)
                                    {
                                       if(§9!Q§ != 1)
                                       {
                                          if(§9!Q§ == 2)
                                          {
                                             if(!_loc9_)
                                             {
                                                if(this.§#!5§ < 3)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      if(!(_loc10_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      if(_loc9_ && _loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(§!U§.§-!_§);
                                                      if(!_loc9_)
                                                      {
                                                         if(!(_loc9_ && _loc3_))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc10_)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr307:
                                                            _loc4_ = §§pop();
                                                            if(_loc10_)
                                                            {
                                                               addr245:
                                                               §§goto(addr621);
                                                            }
                                                            else
                                                            {
                                                               addr639:
                                                               §§push(§!U§.PARTICLE_NAME_BIRD_TRAIL3);
                                                               if(!_loc9_)
                                                               {
                                                                  addr643:
                                                                  §§push(§§pop());
                                                               }
                                                               addr478:
                                                            }
                                                            §§goto(addr645);
                                                         }
                                                         addr644:
                                                         _loc4_ = §§pop();
                                                         §§goto(addr645);
                                                      }
                                                      §§goto(addr643);
                                                   }
                                                   §§goto(addr619);
                                                }
                                                §§goto(addr639);
                                             }
                                             §§goto(addr603);
                                          }
                                          §§goto(addr621);
                                       }
                                       break;
                                    }
                                    §§goto(addr391);
                                    §§goto(addr586);
                                 }
                                 §§push(§!U§.PARTICLE_NAME_BIRD_TRAIL2);
                                 if(_loc10_)
                                 {
                                    §§goto(addr307);
                                    §§push(§§pop());
                                 }
                                 §§goto(addr644);
                              }
                           }
                           §§goto(addr643);
                        }
                     }
                     §§goto(addr426);
                  }
                  §§goto(addr403);
               }
            }
            §§goto(addr93);
         }
         §§goto(addr77);
      }
   }
}
