package §-!&§
{
   import § N§.Sprite;
   import §&^§.§[!7§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §,!"§.§[!G§;
   import §1&§.§1!B§;
   import §9T§.§1r§;
   import §9T§.§6O§;
   import §9T§.§?9§;
   import §?#§.§+7§;
   import §^]§.§[z§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.geom.Point;
   
   public class §[J§ extends §20§
   {
       
      
      private var §"!,§:Boolean = false;
      
      private var §-!@§:int = 0;
      
      private var §+!+§:§3!,§ = null;
      
      private var §3!N§:§[!9§;
      
      public function §[J§(param1:§1r§, param2:§[z§, param3:Sprite)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§3!,§ = null;
         if(!(_loc7_ && this))
         {
            super(param1,param2,param3);
         }
         var _loc4_:int = 0;
         while(_loc4_ < §]!I§.length)
         {
            if((_loc5_ = §]!I§[_loc4_]).§4V§ == "BLOCK_ROPE_THICK")
            {
               if(_loc7_)
               {
                  continue;
               }
               _loc5_.sprite.parent.setChildIndex(_loc5_.sprite,0);
               if(!(_loc6_ || param2))
               {
                  continue;
               }
            }
            _loc4_++;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.dispose();
         }
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §3!,§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!(_loc10_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push("MISC_EASTER_EGG_");
               loop1:
               while(§§pop().indexOf(§§pop()) != 0)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     §§push("BIRD_MIGHTY_EAGLE");
                     loop3:
                     while(§§pop() != §§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(param1);
                           loop5:
                           while(true)
                           {
                              §§push("BIRD_SARDINE");
                              while(true)
                              {
                                 if(!(_loc10_ && param3))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          if(_loc11_ || this)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(super.addObject("BIRD_PHIL_SARDINE",param2,param3,param4,param5,param6,param7,param8,param9));
                                                break;
                                             }
                                             break loop1;
                                          }
                                          addr139:
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                    §§push(param1);
                                    if(_loc11_)
                                    {
                                       if(!_loc10_)
                                       {
                                          if(_loc11_)
                                          {
                                             §§push("PIG_BASIC_SMALL");
                                             if(_loc11_)
                                             {
                                                if(_loc11_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,true);
                                                   }
                                                   else
                                                   {
                                                      §§push(super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9));
                                                      if(_loc11_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   return §§pop();
                                                }
                                                continue loop1;
                                             }
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    continue loop5;
                                 }
                                 continue loop3;
                              }
                              return §§pop();
                           }
                        }
                     }
                     this.§+!+§ = super.addObject("BIRD_MIGHTY_PHIL_EAGLE",param2,param3,param4,param5,param6,param7,param8,param9);
                     return this.§+!+§;
                  }
               }
               return null;
            }
         }
         §§goto(addr139);
      }
      
      override protected function get Tuner() : Class
      {
         return §6O§;
      }
      
      override public function mightyEagleUsed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.mightyEagleUsed();
         }
      }
      
      override public function objectCollision(param1:§3!,§, param2:§3!,§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§1!B§ = null;
         §§push(Boolean(_loc3_ = param1 as §1!B§));
         if(!_loc5_)
         {
            if(§§pop())
            {
               if(_loc6_)
               {
                  §§pop();
                  if(_loc6_ || param2)
                  {
                     §§push(_loc3_.§2s§);
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        §§goto(addr80);
                     }
                  }
                  §§goto(addr117);
               }
               §§goto(addr83);
            }
            addr80:
            loop3:
            while(§§pop())
            {
               loop4:
               while(true)
               {
                  §§push(_loc3_.§0J§);
                  addr83:
                  loop7:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           _loc3_.§`%§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                           addr117:
                           while(true)
                           {
                           }
                           addr117:
                        }
                        §§goto(addr117);
                     }
                     while(true)
                     {
                        _loc3_.§0J§ = true;
                        if(_loc6_)
                        {
                           §§push(false);
                           if(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           continue loop7;
                        }
                        continue loop4;
                     }
                     return §§pop();
                  }
               }
            }
            §§push(Boolean(_loc3_ = param2 as §1!B§));
            if(_loc6_)
            {
               if(§§pop())
               {
                  §§pop();
                  if(!(_loc5_ && this))
                  {
                     §§push(Boolean(_loc3_.§2s§));
                     if(!_loc5_)
                     {
                        addr196:
                        if(!§§pop())
                        {
                           return super.objectCollision(param1,param2);
                        }
                        addr197:
                        §§push(_loc3_.§0J§);
                     }
                     if(!§§pop())
                     {
                        while(true)
                        {
                           _loc3_.§`%§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
                           §§goto(addr174);
                        }
                     }
                     addr174:
                     §§goto(addr151);
                  }
                  §§goto(addr197);
               }
               §§goto(addr196);
            }
            addr151:
            while(true)
            {
               _loc3_.§0J§ = true;
               if(_loc6_)
               {
                  break;
               }
               continue loop5;
            }
            return false;
         }
         §§goto(addr83);
      }
      
      override protected function checkExplosions(param1:§3!,§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!(param1 is §1!B§))
            {
               super.checkExplosions(param1);
               if(!(_loc2_ && param1))
               {
                  addr62:
               }
               else
               {
                  addr81:
               }
               return;
            }
            if(!_loc2_)
            {
               this.addExplosions(§9r§.§4!H§,param1.§`%§().GetPosition().x,param1.§`%§().GetPosition().y);
            }
            §§goto(addr81);
         }
         §§goto(addr62);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            § c§.push(§9r§.createExplosion(param1,param2,param3));
         }
         do
         {
            §[!7§.playSound("TntExplosions","ChannelExplosions");
         }
         while(_loc4_ && param1);
         
      }
      
      override public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:Point = null;
         var _loc6_:§[!G§ = null;
         if(!(_loc8_ && _loc3_))
         {
            if(§'4§ != 0)
            {
               §[!G§(§!D§.§46§.§@!@§()).§4v§().§1B§(§+7§.§4!'§,true);
            }
            loop0:
            while(this.mMightyEagleAdded)
            {
               if(!(_loc8_ && _loc3_))
               {
                  §§push(1);
                  while(true)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc8_ && _loc3_))
                     {
                        if(mMightyEagleHasTouchedGround)
                        {
                           §§push(-1);
                           if(!_loc7_)
                           {
                              continue;
                           }
                           _loc2_ = §§pop();
                           if(false)
                           {
                              continue loop0;
                           }
                        }
                        _loc3_ = new b2Vec2(§6O§.MIGHTY_EAGLE_X_DIRECTION,_loc2_ * §6O§.MIGHTY_EAGLE_Y_CHANGE);
                        _loc4_ = this.§+!+§.§`%§().GetPosition().Copy();
                        if(!_loc8_)
                        {
                           _loc3_.Normalize();
                        }
                        loop11:
                        while(true)
                        {
                           addr134:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.x);
                              if(!(_loc8_ && param1))
                              {
                                 §§push(_loc3_.x);
                                 if(_loc7_)
                                 {
                                    addr161:
                                    §§push(§§pop() * 5.5);
                                    if(_loc7_ || _loc3_)
                                    {
                                       addr158:
                                       §§push(§§pop() * 5);
                                    }
                                    §§pop().x = §§pop() - §§pop();
                                    continue loop11;
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr161);
                           }
                        }
                     }
                     break;
                  }
                  loop10:
                  while(true)
                  {
                     addr568:
                     loop9:
                     while(true)
                     {
                        addr569:
                        while(true)
                        {
                           §§push(Boolean(this.mMightyEagleAdded));
                           addr572:
                           while(true)
                           {
                              §§push(§§pop());
                              addr573:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       addr575:
                                       addr563:
                                       while(true)
                                       {
                                          §§push(this.§+!+§);
                                          if(_loc8_)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(null);
                                             addr541:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                continue loop5;
                                             }
                                          }
                                       }
                                       addr563:
                                       while(true)
                                       {
                                          §§pop().§4V§ = "BIRD_MIGHTY_EAGLE";
                                          if(_loc7_)
                                          {
                                             addr530:
                                             super.updateLevelObjectsComplete(param1);
                                             return;
                                             addr534:
                                          }
                                          else
                                          {
                                             addr631:
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             §§push(this.§3!N§);
                                             if(!(_loc8_ && _loc2_))
                                             {
                                                §§pop().play();
                                                while(true)
                                                {
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   addr612:
                                                   while(true)
                                                   {
                                                      §§push(this.§3!N§);
                                                   }
                                                }
                                                addr587:
                                             }
                                             while(§§pop() != null)
                                             {
                                                continue loop9;
                                             }
                                             addr616:
                                             while(true)
                                             {
                                                this.§3!N§ = §3C§.§>o§.§<t§(§;§,{"timeMultiplier":1},{"timeMultiplier":§6O§.§4I§},§6O§.§0!O§);
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                    addr574:
                                 }
                                 while(true)
                                 {
                                    addr551:
                                    while(§§pop())
                                    {
                                       if(_loc7_ || this)
                                       {
                                          if(_loc7_)
                                          {
                                             addr561:
                                             while(true)
                                             {
                                                §§goto(addr563);
                                             }
                                             addr561:
                                          }
                                          §§goto(addr587);
                                       }
                                       else
                                       {
                                          §§goto(addr575);
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr530);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr616);
            }
            if(§6O§.§1"§)
            {
               if(_loc7_)
               {
                  §§push(Boolean(this.mMightyEagleAdded));
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop());
                     if(!(_loc8_ && _loc2_))
                     {
                        if(§§pop())
                        {
                           if(!(_loc8_ && _loc2_))
                           {
                              §§pop();
                              if(!_loc8_)
                              {
                                 §§push(this.§+!+§);
                                 if(!_loc8_)
                                 {
                                    §§push(null);
                                    if(_loc7_ || this)
                                    {
                                       §§push(§§pop() != §§pop());
                                       if(!(_loc8_ && param1))
                                       {
                                          addr228:
                                          if(§§pop())
                                          {
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(Boolean(mMightyEagleHasTouchedGround));
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc7_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            §§pop();
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               §§push(this.§+!+§);
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  §§push(null);
                                                                  if(_loc7_)
                                                                  {
                                                                     addr273:
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           addr276:
                                                                           _loc5_ = §;§.box2DToScreen(this.§+!+§.§`%§().GetPosition().x,this.§+!+§.§`%§().GetPosition().y);
                                                                           §§push(!(_loc6_ = §[!G§(§!D§.§46§.§@!@§())).§#!H§());
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr316:
                                                                                    §§pop();
                                                                                    addr483:
                                                                                    §§push(this.§-!@§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                    }
                                                                                    addr483:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    §§goto(addr483);
                                                                                 }
                                                                              }
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(_loc5_.x > AngryBirdsCustomCanvas.§-p§ + §6O§.§5>§);
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§push(this.§-!@§);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       §§push(!§§pop());
                                                                                       loop26:
                                                                                       for(; !(_loc8_ && this); §§push(§§pop()),if(_loc8_ && this)
                                                                                       {
                                                                                          continue;
                                                                                       },if(§§pop())
                                                                                       {
                                                                                          §§goto(addr366);
                                                                                       },§§goto(addr327))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§pop();
                                                                                             §§push(_loc5_.x > AngryBirdsCustomCanvas.§-p§ + §6O§.§1L§);
                                                                                          }
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc8_ && _loc2_))
                                                                                                {
                                                                                                   this.§-!@§ = mMightyEagleTimer;
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      break loop25;
                                                                                                   }
                                                                                                   this.§"!,§ = true;
                                                                                                   this.§;§.slowMotion = true;
                                                                                                   this.§3!N§ = §3C§.§>o§.§<t§(§;§,{"timeMultiplier":§6O§.§4I§},{"timeMultiplier":1},§6O§.§1i§);
                                                                                                   do
                                                                                                   {
                                                                                                      §§push(this.§3!N§);
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().onComplete = this.§^!'§;
                                                                                                         addr395:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§3!N§);
                                                                                                            if(_loc7_ || _loc2_)
                                                                                                            {
                                                                                                               break loop30;
                                                                                                            }
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                      }
                                                                                                      §§pop().play();
                                                                                                   }
                                                                                                   while(!(_loc7_ || _loc3_));
                                                                                                   
                                                                                                   addr344:
                                                                                                   break;
                                                                                                   addr423:
                                                                                                }
                                                                                                break;
                                                                                                addr480:
                                                                                             }
                                                                                             §§push(Boolean(this.§"!,§));
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                             addr366:
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§pop();
                                                                                             loop32:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_.x < AngryBirdsCustomCanvas.§-p§ + §6O§.§1L§);
                                                                                                addr327:
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         this.§>i§();
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                            }
                                                                                                            break loop27;
                                                                                                         }
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                      §§goto(addr423);
                                                                                                      §§goto(addr344);
                                                                                                   }
                                                                                                   §§goto(addr395);
                                                                                                }
                                                                                                break loop27;
                                                                                             }
                                                                                             §§goto(addr392);
                                                                                          }
                                                                                          §§push(this.§"!,§);
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr492:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§push(mMightyEagleTimer - this.§-!@§);
                                                                                                if(!(_loc8_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§6O§.§=!§);
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(§§pop() > §§pop() + §6O§.§'2§)
                                                                                                      {
                                                                                                         if(_loc7_ || this)
                                                                                                         {
                                                                                                            §[!G§(§!D§.§46§.§@!@§()).§1Y§();
                                                                                                            addr525:
                                                                                                         }
                                                                                                         §§goto(addr561);
                                                                                                      }
                                                                                                      addr609:
                                                                                                      §§push(mMightyEagleTimer - this.§-!@§);
                                                                                                      §§push(§6O§.§=!§);
                                                                                                   }
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      §§goto(addr612);
                                                                                                   }
                                                                                                   §§goto(addr568);
                                                                                                }
                                                                                                §§goto(addr609);
                                                                                             }
                                                                                             §§goto(addr569);
                                                                                          }
                                                                                          §§goto(addr572);
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr483);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              _loc6_.§4L§();
                                                                              §§goto(addr480);
                                                                           }
                                                                           §§goto(addr316);
                                                                        }
                                                                        §§goto(addr534);
                                                                     }
                                                                     §§goto(addr488);
                                                                  }
                                                                  §§goto(addr541);
                                                               }
                                                               §§goto(addr540);
                                                            }
                                                            §§goto(addr561);
                                                         }
                                                         §§goto(addr574);
                                                      }
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr573);
                                                }
                                                §§goto(addr492);
                                             }
                                             §§goto(addr631);
                                          }
                                          §§goto(addr488);
                                       }
                                       §§goto(addr551);
                                    }
                                    §§goto(addr273);
                                 }
                                 §§goto(addr563);
                              }
                              §§goto(addr525);
                           }
                           §§goto(addr551);
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr573);
                  }
                  §§goto(addr542);
               }
               §§goto(addr616);
            }
            §§goto(addr569);
         }
         §§goto(addr276);
      }
      
      public function §>i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§"!,§ = false;
            loop0:
            do
            {
               this.§-!@§ = 0;
               if(§;§ != null)
               {
                  §?9§(§;§).timeMultiplier = 1;
                  while(true)
                  {
                  }
                  addr80:
               }
               while(true)
               {
                  §§push(this.§3!N§);
                  if(_loc1_ || _loc1_)
                  {
                     if(§§pop() == null)
                     {
                        return;
                     }
                     addr19:
                     §§push(this.§3!N§);
                  }
                  continue loop0;
               }
            }
            while(§§pop().stop(), !(_loc1_ || _loc2_));
            
            this.§3!N§ = null;
            §§goto(addr19);
         }
         §§goto(addr80);
      }
      
      private function §^!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§3!N§ = null;
         }
      }
      
      private function §&`§(param1:b2Vec2, param2:b2Vec2, param3:int) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc6_:§3!,§ = null;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = param3;
         loop0:
         for each(_loc6_ in §]!I§)
         {
            §§push(_loc6_.§`%§());
            if(_loc15_ || param3)
            {
               §§push(§§pop().GetPosition());
               if(!_loc16_)
               {
                  §§push(§§pop().x);
                  §§push(param1.x);
                  if(!_loc16_)
                  {
                     §§push(Number(§§pop() - §§pop()));
                     if(_loc15_)
                     {
                        _loc7_ = §§pop();
                        §§push(_loc6_.§`%§());
                        while(true)
                        {
                           §§push(§§pop().GetPosition());
                           addr275:
                           while(true)
                           {
                              §§push(§§pop().y);
                              §§push(param1.y);
                              addr278:
                              while(true)
                              {
                                 _loc8_ = §§pop() - §§pop();
                                 _loc9_ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
                                 loop17:
                                 while(true)
                                 {
                                    _loc4_++;
                                    loop18:
                                    while(true)
                                    {
                                       §§push(_loc9_);
                                       §§push(_loc5_);
                                       while(true)
                                       {
                                          if(§§pop() > §§pop())
                                          {
                                             continue loop0;
                                          }
                                          if(_loc16_ && param2)
                                          {
                                             continue loop17;
                                          }
                                          §§push(_loc6_.§+!?§);
                                          loop12:
                                          while(true)
                                          {
                                             §§push(§§pop().§4V§);
                                             addr229:
                                             while(true)
                                             {
                                                if(§§pop().toUpperCase() == "BREAKABLE_STATIC_BLOCK_TRANSPARENT")
                                                {
                                                   if(_loc15_)
                                                   {
                                                      _loc6_.applyDamage(9999,false);
                                                   }
                                                   if(!(_loc16_ && param2))
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop18;
                                                }
                                                _loc10_ = 10;
                                                continue loop12;
                                             }
                                          }
                                          continue loop18;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr274:
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr278);
               }
               §§goto(addr275);
            }
            §§goto(addr274);
         }
      }
   }
}
