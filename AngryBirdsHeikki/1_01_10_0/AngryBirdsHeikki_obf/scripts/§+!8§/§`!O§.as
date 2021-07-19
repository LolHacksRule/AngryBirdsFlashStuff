package §+!8§
{
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§9§;
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2BodyDef;
   import §3!R§.b2World;
   import §9b§.§"!S§;
   import §@0§.§!k§;
   
   public class §`!O§ extends § !5§
   {
      
      protected static const §2!M§:Boolean = false;
      
      protected static const §?]§:Number = 2000;
      
      protected static const §?I§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §2!M§ = false;
         }
         do
         {
            §?]§ = 2000;
            do
            {
               §?I§ = 0.2;
            }
            while(!_loc1_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private var §=!9§:Number;
      
      private var §?z§:Boolean = false;
      
      protected var §9!Q§:int = 0;
      
      public function §`!O§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            while(param10)
            {
               if(!(_loc13_ && this))
               {
                  §[r§.mTryToScream = §&!_§.§6!c§ + 1;
               }
               if(_loc12_)
               {
                  addr51:
                  break;
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function get §!!M§() : Boolean
      {
         return this.§?z§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(_loc5_)
         {
            _loc3_.§,r§ = true;
         }
         do
         {
            _loc3_.§5!T§ = 2;
         }
         while(!_loc5_);
         
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§[h§ < §'!V§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr128:
                     while(true)
                     {
                        §§push(Boolean(§[b§()));
                        addr92:
                        while(_loc3_ && this)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     this.§=!9§ = 0;
                     if(_loc2_)
                     {
                        addr19:
                        §§push(false);
                        if(!(_loc3_ && _loc3_))
                        {
                           continue loop0;
                        }
                        addr72:
                        if(!(_loc3_ && param1))
                        {
                           break;
                        }
                        §§goto(addr92);
                     }
                     else
                     {
                        loop3:
                        while(true)
                        {
                           if(_loc3_ && _loc2_)
                           {
                              while(_loc2_)
                              {
                                 §§push(this);
                                 §§push(this.§=!9§);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().§=!9§ = §§pop();
                                 while(this.§=!9§ >= §?]§)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr72);
                                       §§push(true);
                                       continue;
                                    }
                                    continue loop3;
                                 }
                              }
                              break;
                              addr101:
                           }
                           §§goto(addr19);
                        }
                        §§goto(addr128);
                     }
                  }
                  §§goto(addr101);
               }
               return §§pop();
            }
         }
         §§goto(addr128);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         if(!_loc4_)
         {
            §§push(this.§?z§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(§>R§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§>R§.toUpperCase() == "BIRD_YELLOW");
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(_loc5_ || this)
                                    {
                                       §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§>R§.toUpperCase() == "BIRD_GREEN");
                                          addr228:
                                          while(true)
                                          {
                                             loop24:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop25:
                                                while(true)
                                                {
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr239:
                                                            §§push(§>R§.toUpperCase() == "BIRD_RED");
                                                         }
                                                         addr238:
                                                      }
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc4_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop2;
                                                               }
                                                               addr194:
                                                               if(!§§pop())
                                                               {
                                                                  addr196:
                                                                  break;
                                                               }
                                                               if(!§[r§.mTryToFly)
                                                               {
                                                                  addr199:
                                                                  break;
                                                               }
                                                               §§push(true);
                                                               if(_loc5_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr203:
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop25;
                                                         }
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            loop9:
                                                            while(_loc5_ || param1)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  if(§[r§.mTryToSpecial)
                                                                  {
                                                                     loop10:
                                                                     for(; !_loc4_; while(true)
                                                                     {
                                                                        if(_loc4_ && _loc3_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr80);
                                                                     },§§goto(addr203))
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           §[r§.mTryToSpecial = false;
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    if(§[r§.mIsSpecial)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §[r§.mIsSpecial = false;
                                                                                             continue loop10;
                                                                                          }
                                                                                          addr70:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(true);
                                                                                             loop13:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_ && _loc2_)
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                _loc2_ = §§pop();
                                                                                                while(_loc5_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr24);
                                                                                                   }
                                                                                                   if(!(_loc5_ || _loc2_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§push(true);
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         addr275:
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(true);
                                                                                                            addr276:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               addr277:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr199);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                      }
                                                                                                      addr159:
                                                                                                   }
                                                                                                   §§goto(addr203);
                                                                                                }
                                                                                                §§push(§>R§.toUpperCase() == "BIRD_RED_BIG");
                                                                                                if(!(_loc4_ && this))
                                                                                                {
                                                                                                   if(!(_loc5_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   §§goto(addr194);
                                                                                                }
                                                                                                §§goto(addr199);
                                                                                             }
                                                                                             continue loop2;
                                                                                             addr171:
                                                                                             while(true)
                                                                                             {
                                                                                                §[r§.mTryToSpecial = true;
                                                                                                continue loop12;
                                                                                             }
                                                                                          }
                                                                                          addr174:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr24);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr171);
                                                                              §§goto(addr174);
                                                                              if(_loc4_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§goto(addr24);
                                                                           }
                                                                           §§goto(addr196);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr277);
                                                                        }
                                                                     }
                                                                     §§goto(addr239);
                                                                  }
                                                                  §§goto(addr24);
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                         continue loop25;
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr276);
                                 }
                              }
                              §§goto(addr228);
                           }
                        }
                     }
                     §§goto(addr275);
                  }
               }
               addr24:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     break;
                  }
                  continue loop13;
               }
               return §§pop();
            }
         }
         §§goto(addr70);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         if(_loc5_ || _loc2_)
         {
            §§push(Boolean(§0c§().IsAwake()));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr347:
                        while(true)
                        {
                           §§push(§[h§ == §'!V§);
                        }
                     }
                     addr346:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§[r§.mTryToFly)
                           {
                              loop6:
                              while(true)
                              {
                                 if(_loc5_ || this)
                                 {
                                    if(_loc5_)
                                    {
                                       §[r§.mTryToFly = false;
                                       while(!_loc4_)
                                       {
                                          if(§[r§.mIsFlying)
                                          {
                                             for(; _loc5_; if(!(_loc5_ || param1))
                                             {
                                                continue;
                                             },§§goto(addr29))
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      §[r§.mIsFlying = false;
                                                      continue loop6;
                                                   }
                                                   while(true)
                                                   {
                                                      §`X§(0);
                                                   }
                                                   addr138:
                                                }
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr29);
                                                         }
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   §§goto(addr305);
                                                }
                                             }
                                             continue;
                                          }
                                          §§goto(addr29);
                                       }
                                       §§goto(addr347);
                                    }
                                    §§goto(addr339);
                                 }
                                 §§goto(addr203);
                              }
                           }
                           addr29:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             addr58:
                                             _loc2_ = §§pop();
                                             if(_loc4_ && param1)
                                             {
                                                break;
                                             }
                                             continue loop8;
                                          }
                                          §§goto(addr308);
                                       }
                                       §§goto(addr205);
                                    }
                                 }
                                 continue loop6;
                                 addr52:
                              }
                              if(!(_loc4_ && this))
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    break;
                                 }
                                 loop25:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_)
                                    {
                                       if(_loc4_ && _loc2_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop0;
                                                }
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(!§9!5§());
                                                            addr134:
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop23;
                                                                     }
                                                                     §§goto(addr138);
                                                                  }
                                                                  addr136:
                                                               }
                                                               else
                                                               {
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr233:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           addr202:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                                 addr203:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(§2!M§);
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§push(!§,h§());
                                                                                       continue loop25;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          §!c§();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr217:
                                                                                                if(!(_loc4_ && param1))
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(_loc5_)
                                                                                                {
                                                                                                   §§push(this.§?z§);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§[r§.mTryToFly)
                                                                                                   {
                                                                                                      loop38:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §[r§.mTryToFly = true;
                                                                                                         addr339:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(true);
                                                                                                            addr308:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               addr309:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_ && this)
                                                                                                                  {
                                                                                                                     continue loop38;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop38;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§>R§.toUpperCase() != "BIRD_GREEN")
                                                                                                      {
                                                                                                         §§push(§>R§.toUpperCase() == "BIRD_WHITE");
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr323:
                                                                                                addr242:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(this.§?z§)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push(2);
                                                                                                         if(_loc5_ || _loc2_)
                                                                                                         {
                                                                                                            addr280:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(360);
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr295:
                                                                                                                     §§push(§§pop() / 1000);
                                                                                                                     if(!(_loc4_ && param1))
                                                                                                                     {
                                                                                                                        addr303:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                  }
                                                                                                                  _loc3_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §`X§(§4!W§() - _loc3_);
                                                                                                                     addr252:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr305:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr295);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr303);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(1);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr280);
                                                                                                         §§push(§§pop());
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr295);
                                                                                                }
                                                                                                §§goto(addr303);
                                                                                                §§goto(addr217);
                                                                                             }
                                                                                          }
                                                                                          addr215:
                                                                                       }
                                                                                       §§goto(addr252);
                                                                                    }
                                                                                 }
                                                                                 addr205:
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr194:
                                                      }
                                                      §§goto(addr215);
                                                   }
                                                   addr192:
                                                }
                                                else
                                                {
                                                   §§goto(addr346);
                                                }
                                             }
                                             §§goto(addr202);
                                          }
                                          continue loop5;
                                          addr178:
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr233);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr178);
                              §§goto(addr134);
                           }
                           return §§pop();
                        }
                        §§goto(addr323);
                     }
                  }
               }
            }
         }
         §§goto(addr194);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§^!2§ = §"!S§.§-!7§;
         if(!(_loc7_ && _loc3_))
         {
            §§push(§[h§ < §'!V§);
            if(!(_loc7_ && _loc1_))
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr99:
                     loop56:
                     while(true)
                     {
                        §§push(§0c§() == null);
                        if(_loc8_)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc7_ && this)
                                 {
                                    break;
                                 }
                                 if(_loc8_ || _loc2_)
                                 {
                                    _loc1_.§9?§(this);
                                    break;
                                 }
                                 continue loop56;
                              }
                              §§push(x * §^!2§.§3!S§);
                              if(!_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              §§push(y * §^!2§.§3!S§);
                              if(!_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(_loc1_.§?j§);
                                 loop1:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(§^!O§ <= 1)
                                       {
                                          §§push(§!U§.PARTICLE_NAME_BIRD_TRAIL1);
                                          loop2:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop3:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(this.§9!Q§);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      addr469:
                                                      while(§§pop() != §§pop())
                                                      {
                                                         continue loop5;
                                                      }
                                                      loop44:
                                                      while(true)
                                                      {
                                                         §§push(§!U§.PARTICLE_NAME_BIRD_TRAIL2);
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop29:
                                                            while(true)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  break loop8;
                                                               }
                                                               _loc4_ = §§pop();
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  addr388:
                                                                  loop30:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§9!Q§ + 1);
                                                                     if(_loc8_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() % 3);
                                                                     }
                                                                     §§pop().§9!Q§ = §§pop();
                                                                     loop31:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_.particles);
                                                                        loop32:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(§?F§.§;!;§);
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       §§push(§!U§.§<x§);
                                                                                       loop35:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_ || _loc1_)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   if(!(_loc7_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(-1);
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push("");
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§push(§!U§.§^!J§);
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                  loop36:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§;D§() > §9§.§;!]§);
                                                                                                                        while(!_loc7_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              loop24:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr317:
                                                                                                                                 while(_loc8_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc7_ && this))
                                                                                                                                    {
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    addr536:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           loop26:
                                                                                                                           while(§§pop())
                                                                                                                           {
                                                                                                                              loop27:
                                                                                                                              while(_loc8_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(-Math.PI);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / 2);
                                                                                                                                       if(!(_loc7_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       loop52:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                          addr301:
                                                                                                                                          addr421:
                                                                                                                                          while(!_loc7_)
                                                                                                                                          {
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                continue loop52;
                                                                                                                                             }
                                                                                                                                             continue loop9;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§!U§.PARTICLE_NAME_BIRD_TRAIL3);
                                                                                                                                             if(!(_loc7_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   continue loop2;
                                                                                                                                                }
                                                                                                                                                continue loop8;
                                                                                                                                             }
                                                                                                                                             addr440:
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                _loc4_ = §§pop();
                                                                                                                                                break loop27;
                                                                                                                                             }
                                                                                                                                             continue loop29;
                                                                                                                                          }
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                       if(_loc8_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc8_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop31;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      continue loop44;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc1_.particles);
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   if(_loc8_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr140:
                                                                                                                                                      if(_loc8_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§!U§.§&§);
                                                                                                                                                         if(!(_loc8_ || _loc1_))
                                                                                                                                                         {
                                                                                                                                                            continue loop33;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc7_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §§push(§?F§.§<G§);
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               continue loop34;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc7_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§!U§.§"R§);
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().addParticle(§§pop(),§§pop(),§§pop(),§0c§().GetPosition().x,§0c§().GetPosition().y,1250,"",§!U§.§9Z§(§>R§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        break loop26;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop36;
                                                                                                                                                                  }
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               continue loop35;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§?F§.§;!;§);
                                                                                                                                                            }
                                                                                                                                                            addr502:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§!U§.§<x§);
                                                                                                                                                            addr506:
                                                                                                                                                            loop43:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc7_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     addr515:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-1);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push("");
                                                                                                                                                                              addr519:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc8_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§!U§.§^!J§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc7_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                                          §§goto(addr536);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr528:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§!U§.§^!J§);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr579:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().addParticle(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                                    loop20:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc1_.§?j§ = false;
                                                                                                                                                                                       addr553:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§9!Q§ = 0;
                                                                                                                                                                                          addr541:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc7_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop20;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr518:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(-1);
                                                                                                                                                                              addr578:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr577:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr579);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr514:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc2_);
                                                                                                                                                                     addr576:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                     }
                                                                                                                                                                     continue loop43;
                                                                                                                                                                  }
                                                                                                                                                                  addr575:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr577);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§!U§.§7!G§);
                                                                                                                                                            addr561:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§?F§.§;!;§);
                                                                                                                                                               addr563:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr140);
                                                                                                                                                         }
                                                                                                                                                         addr559:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr575);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr500:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr502);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr317);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr301);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc8_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    if(_loc8_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc8_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          continue loop30;
                                                                                                                                       }
                                                                                                                                       addr557:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr559);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr541);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr500);
                                                                                                                                          §§push(_loc1_.particles);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr491:
                                                                                                                                 }
                                                                                                                                 §§goto(addr553);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr528);
                                                                                                            }
                                                                                                            §§goto(addr519);
                                                                                                         }
                                                                                                         §§goto(addr578);
                                                                                                      }
                                                                                                      §§goto(addr518);
                                                                                                   }
                                                                                                   §§goto(addr515);
                                                                                                }
                                                                                                §§goto(addr576);
                                                                                             }
                                                                                             §§goto(addr514);
                                                                                          }
                                                                                          §§goto(addr506);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr563);
                                                                                 }
                                                                              }
                                                                              §§goto(addr561);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr491);
                                    }
                                    §§goto(addr557);
                                 }
                              }
                              §§goto(addr277);
                              continue loop56;
                           }
                           _loc1_.§?j§ = false;
                           return;
                           addr66:
                        }
                     }
                  }
                  addr98:
               }
               §§goto(addr66);
            }
            §§goto(addr98);
         }
         §§goto(addr99);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!§[r§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(_loc1_ || _loc1_)
               {
                  if(_loc2_ && _loc2_)
                  {
                     addr66:
                     §^!H§(§!k§.§8!C§);
                     addr70:
                  }
                  else
                  {
                     addr62:
                  }
                  return;
               }
               §§goto(addr70);
            }
            §§goto(addr66);
         }
         §§goto(addr62);
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§?z§);
            loop0:
            for(; !§§pop(); if(!(_loc3_ && _loc2_))
            {
               return §§pop();
            })
            {
               loop1:
               while(true)
               {
                  §^!H§(§!k§.§4U§);
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                        this.§?z§ = true;
                        if(_loc2_)
                        {
                           §§push(true);
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  §§goto(addr74);
               }
            }
         }
         addr74:
         false;
         return §§pop();
      }
      
      private function §'N§(param1:int) : int
      {
         return Math.min(§"!S§.§-!7§.§8!0§,param1);
      }
      
      override public function addDestructionParticles(param1:§?F§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§[x§(false) + 1);
         var _loc4_:* = Number(90);
         if(!(_loc10_ && this))
         {
            §§push(this.§'N§(_loc3_));
            if(!(_loc10_ && _loc3_))
            {
               §§push(int(§§pop()));
               if(!_loc10_)
               {
                  _loc3_ = §§pop();
                  addr56:
                  §§push(0);
               }
            }
            var _loc5_:* = §§pop();
            loop0:
            while(true)
            {
               if(_loc5_ >= _loc3_)
               {
                  if(!(_loc10_ && _loc3_))
                  {
                     if(!(_loc10_ && this))
                     {
                        if(!(_loc10_ && param1))
                        {
                           break;
                        }
                        loop17:
                        while(true)
                        {
                           §§push(-§[r§.mW);
                           if(_loc9_)
                           {
                              §§push(§^!2§.§3!S§);
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc9_)
                                 {
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop15:
                                       while(true)
                                       {
                                          if(_loc9_ || _loc3_)
                                          {
                                             §§push(§§pop());
                                             loop16:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                if(_loc9_)
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            §§push(Math.random() * -_loc7_);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(2);
                                                               addr303:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     do
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(-§[r§.mH);
                                                                                 if(!(_loc10_ && param1))
                                                                                 {
                                                                                    §§push(§^!2§.§3!S§);
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       if(_loc10_ && _loc3_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       addr163:
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                addr195:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(_loc10_ && this)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   addr236:
                                                                                                   addr236:
                                                                                                   if(_loc10_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   addr243:
                                                                                                   if(_loc9_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         addr253:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         break loop13;
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   addr321:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr322:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr323:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr324:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  §§push(180 / Math.PI);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     break loop8;
                                                                                                                     §§goto(addr163);
                                                                                                                  }
                                                                                                                  addr341:
                                                                                                               }
                                                                                                               addr343:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc6_ = §§pop();
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr243);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr253);
                                                                                          }
                                                                                          §§goto(addr324);
                                                                                       }
                                                                                       §§goto(addr341);
                                                                                    }
                                                                                    §§goto(addr236);
                                                                                 }
                                                                                 §§goto(addr195);
                                                                              }
                                                                              addr309:
                                                                           }
                                                                           §§goto(addr323);
                                                                        }
                                                                     }
                                                                     while(!_loc9_);
                                                                     
                                                                     _loc8_ = §§pop();
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        param1.addParticle(§!U§.§&§,§?F§.§<G§,§!U§.§"R§,§0c§().GetPosition().x + _loc7_,§0c§().GetPosition().y + _loc8_,1500,"",§!U§.§9Z§(§>R§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           _loc5_++;
                                                                           addr89:
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop19;
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr343);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr343);
                                                   }
                                                   addr288:
                                                   addr342:
                                                }
                                                §§goto(addr306);
                                             }
                                          }
                                          §§goto(addr322);
                                       }
                                    }
                                    addr276:
                                 }
                                 §§goto(addr288);
                              }
                           }
                           §§goto(addr276);
                        }
                     }
                     §§goto(addr309);
                  }
                  §§goto(addr89);
               }
               else
               {
                  §§push(_loc4_);
                  if(!_loc10_)
                  {
                     §§goto(addr321);
                     §§push(Math.random() * (720 / _loc3_));
                  }
               }
               §§goto(addr342);
            }
            return;
         }
         §§goto(addr56);
      }
      
      override public function addDamageParticles(param1:§?F§, param2:int) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!(_loc10_ && param1))
         {
            if(§9!5§())
            {
               if(_loc9_ || _loc3_)
               {
                  return;
               }
            }
            if(param2 < 6)
            {
               if(!_loc10_)
               {
                  return;
               }
            }
         }
         §§push(§;D§() / 10);
         if(!_loc10_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(1);
         if(_loc9_ || param2)
         {
            §§push(_loc3_);
            if(!_loc10_)
            {
               addr87:
               §§push(§§pop() * §[x§(false));
               if(_loc9_ || _loc3_)
               {
                  addr83:
                  §§push(§§pop() * 0.12);
               }
               var _loc4_:* = int(§§pop() + §§pop());
               var _loc5_:Number = 90;
               if(_loc9_ || _loc3_)
               {
                  §§push(param2);
                  while(true)
                  {
                     §§push(scale * scale);
                     addr491:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        addr492:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr493:
                           while(true)
                           {
                              param2 = §§pop();
                           }
                        }
                     }
                     loop5:
                     while(!(_loc10_ && param1))
                     {
                        _loc4_ = §§pop();
                        while(true)
                        {
                           §§push(this.§'N§(_loc4_));
                           loop7:
                           while(!_loc10_)
                           {
                              §§push(int(§§pop()));
                              loop8:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 addr433:
                                 addr494:
                                 while(!_loc10_)
                                 {
                                    continue loop8;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc9_)
                                    {
                                       break loop7;
                                    }
                                    if(_loc9_ || param1)
                                    {
                                       §§push(3 + param2 / 20);
                                       if(!(_loc10_ && param1))
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc9_ || _loc3_)
                                          {
                                             §§push(int(§§pop()));
                                             break loop7;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr491);
                                       }
                                       §§goto(addr492);
                                    }
                                    §§goto(addr493);
                                 }
                              }
                           }
                           continue loop5;
                        }
                     }
                  }
               }
               §§goto(addr494);
            }
            §§goto(addr83);
         }
         §§goto(addr87);
      }
   }
}
