package §&!P§
{
   import §"J§.b2BodyDef;
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §%!0§.§3"!§;
   import §+!-§.Sprite;
   import §,P§.§'_§;
   import §]";§.§34§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   
   public class §9`§ extends §!>§
   {
      
      protected static const §;V§:Boolean = false;
      
      protected static const §3q§:Number = 2000;
      
      protected static const §>!%§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §;V§ = false;
         }
         while(true)
         {
            §3q§ = 2000;
            while(_loc1_ || §9`§)
            {
               §>!%§ = 0.2;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private var §?9§:Number;
      
      protected var §3H§:Boolean = false;
      
      protected var §`U§:int = 0;
      
      public function §9`§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
         }
         while(param10)
         {
            if(_loc13_)
            {
               §8C§.mTryToScream = §0;§.§2!_§ + 1;
            }
            if(_loc13_ || this)
            {
               break;
            }
         }
      }
      
      public static function §#;§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         §§push(param3);
         if(_loc12_ || §9`§)
         {
            §§push(int(§§pop() + Math.random() * param4));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Number = 1;
         var _loc8_:int = 0;
         loop0:
         while(true)
         {
            if(_loc8_ >= _loc6_)
            {
               if(!(_loc11_ && param1))
               {
                  if(_loc12_)
                  {
                     break;
                  }
                  while(true)
                  {
                     §§push(0.5);
                     if(!_loc11_)
                     {
                        §§push(param5);
                        if(_loc12_ || param1)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc11_ && param1))
                           {
                              addr182:
                              §§push(§§pop() + param5 * (Math.random() * 0.5));
                              if(!_loc11_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           if(_loc12_ || param1)
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     §§goto(addr182);
                  }
                  _loc10_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(§'_§.§=M§.particles);
                     §§push("STAR_PARTICLE");
                     §§push(§`!E§.§<"9§);
                     §§push(§6!Q§.§+f§);
                     §§push(§`!E§.§]W§);
                     §§push(param1);
                     §§push(param2);
                     §§push(750);
                     §§push("");
                     §§push(§`!E§.§]!I§("BIRD_RED"));
                     §§push(_loc10_);
                     if(_loc12_)
                     {
                        §§push(§§pop() * Math.cos(_loc9_));
                        if(_loc12_ || param2)
                        {
                           addr102:
                           §§push(_loc7_);
                           if(!(_loc11_ && param3))
                           {
                              addr121:
                              §§push(§§pop() * §§pop());
                              §§push(_loc10_);
                              if(!_loc11_)
                              {
                                 addr124:
                                 §§push(-§§pop());
                                 if(_loc12_ || §9`§)
                                 {
                                    addr132:
                                    §§push(§§pop() * Math.sin(_loc9_));
                                    if(_loc12_ || §9`§)
                                    {
                                       addr143:
                                       §§push(§§pop() * _loc7_);
                                    }
                                    §§push(5);
                                    §§push(_loc10_);
                                    if(_loc12_ || §9`§)
                                    {
                                       §§push(§§pop() * 20);
                                    }
                                    §§pop().§-"<§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.sqrt(_loc7_));
                                    loop3:
                                    while(true)
                                    {
                                       _loc8_++;
                                       addr60:
                                       while(true)
                                       {
                                          if(!_loc11_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr102);
                  }
               }
               §§goto(addr60);
            }
            else
            {
               §§push(Math.random() * (Math.PI * 2));
               if(_loc12_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr227);
         }
      }
      
      public function get §+^§() : Boolean
      {
         return this.§3H§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(_loc4_ || param2)
         {
            _loc3_.§7@§ = true;
            do
            {
               _loc3_.§^"6§ = 2;
            }
            while(_loc5_ && param2);
            
         }
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§8W§ < §%5§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr109:
                     while(true)
                     {
                        §§push(Boolean(§+!>§()));
                        addr73:
                        while(!(_loc2_ && param1))
                        {
                        }
                        continue loop1;
                     }
                  }
               }
               loop4:
               while(true)
               {
                  if(!§§pop())
                  {
                     this.§?9§ = 0;
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              §§push(false);
                              if(!_loc3_)
                              {
                                 break loop4;
                              }
                              if(!_loc2_)
                              {
                                 return §§pop();
                              }
                              §§goto(addr73);
                           }
                           addr20:
                        }
                        else
                        {
                           addr82:
                           §§push(this);
                           §§push(this.§?9§);
                           if(_loc3_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§?9§ = §§pop();
                           loop6:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(this.§?9§ >= §3q§)
                                 {
                                    addr45:
                                    if(_loc3_)
                                    {
                                       §§push(true);
                                       break loop4;
                                    }
                                    addr61:
                                    while(true)
                                    {
                                       if(!(_loc3_ || this))
                                       {
                                          continue loop6;
                                       }
                                       while(true)
                                       {
                                       }
                                       §§goto(addr45);
                                    }
                                    §§goto(addr109);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr20);
                                 }
                              }
                           }
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr82);
               }
               while(true)
               {
                  if(!_loc2_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return §§pop();
         }
         §§goto(addr68);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:* = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§3H§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(§+!A§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§+!A§.toUpperCase() == "BIRD_YELLOW");
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§+!A§.toUpperCase() == "BIRD_GREEN");
                                       while(_loc5_)
                                       {
                                          loop37:
                                          while(!(_loc4_ && _loc3_))
                                          {
                                             _loc3_ = §§pop();
                                             loop38:
                                             while(true)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(§8C§.mTryToSpecial)
                                                         {
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §8C§.mTryToSpecial = false;
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr100:
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        if(§8C§.mIsSpecial)
                                                                        {
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §8C§.mIsSpecial = false;
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(true);
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   _loc2_ = §§pop();
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      continue loop38;
                                                                                                   }
                                                                                                   addr121:
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§8C§.mTryToSpecial)
                                                                                                      {
                                                                                                         if(_loc5_ || param1)
                                                                                                         {
                                                                                                            if(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               §8C§.mTryToSpecial = true;
                                                                                                               addr141:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(true);
                                                                                                                  addr110:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           _loc2_ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr89:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr117:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ && this))
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§+!A§.toUpperCase() == "BIRD_RED");
                                                                                                                                    addr244:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       break loop16;
                                                                                                                                    }
                                                                                                                                    §§goto(addr100);
                                                                                                                                 }
                                                                                                                                 addr274:
                                                                                                                              }
                                                                                                                              loop11:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 addr305:
                                                                                                                                 addr303:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop13;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr266:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        addr202:
                                                                                                                        loop30:
                                                                                                                        while(_loc5_ || _loc3_)
                                                                                                                        {
                                                                                                                           loop31:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ && this)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       break loop19;
                                                                                                                                    }
                                                                                                                                    addr166:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          break loop24;
                                                                                                                                       }
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr266);
                                                                                                                                       }
                                                                                                                                       §§goto(addr244);
                                                                                                                                    }
                                                                                                                                    addr265:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr246:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    break loop30;
                                                                                                                                 }
                                                                                                                                 continue loop31;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr141:
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr141);
                                                                                                      }
                                                                                                      §§goto(addr89);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         if(§8C§.mTryToFly)
                                                                                                         {
                                                                                                            break loop18;
                                                                                                         }
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      §§goto(addr305);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr110);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ || _loc2_))
                                                                                             {
                                                                                                break loop16;
                                                                                                addr231:
                                                                                             }
                                                                                             §§pop();
                                                                                             while(!(_loc4_ && this))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr157);
                                                                                                }
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                          addr223:
                                                                                       }
                                                                                       §§goto(addr231);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr141);
                                                                              }
                                                                              while(_loc5_)
                                                                              {
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    §§push(true);
                                                                                    continue loop37;
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                              addr255:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr202);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr29);
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  §§goto(addr117);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr246);
                                                                  §§goto(addr223);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr29);
                                                      }
                                                      §§goto(addr121);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr265);
                              }
                           }
                        }
                     }
                     §§goto(addr303);
                  }
               }
               §§goto(addr29);
            }
         }
         §§goto(addr238);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         if(_loc5_ || _loc2_)
         {
            §§push(Boolean(getBody().IsAwake()));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(§8W§ == §%5§);
                           while(!_loc4_)
                           {
                              while(_loc5_ || param1)
                              {
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(this.§3H§);
                                    addr217:
                                    loop21:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc5_)
                                       {
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(§;V§);
                                                break loop21;
                                             }
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§goto(addr29);
                                                }
                                             }
                                          }
                                          addr220:
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(!§!0§());
                                          if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc4_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr203);
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr252);
                                             }
                                             else
                                             {
                                                §§goto(addr217);
                                             }
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr225);
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(§8C§.mTryToFly)
                        {
                           §§goto(addr121);
                        }
                        addr29:
                        loop31:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              while(true)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    addr203:
                                    if(_loc5_ || this)
                                    {
                                       addr59:
                                       _loc2_ = §§pop();
                                       if(_loc4_ && param1)
                                       {
                                          break;
                                       }
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             continue loop31;
                                          }
                                          continue loop10;
                                       }
                                       while(true)
                                       {
                                          §5!D§(0);
                                          addr164:
                                          while(true)
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   continue loop11;
                                                }
                                                addr348:
                                                loop29:
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(§+!A§.toUpperCase() == "BIRD_GREEN")
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               if(_loc5_)
                                                               {
                                                                  if(this.§3H§)
                                                                  {
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§push(2 * (!(_loc4_ && _loc2_) ? §§pop() : §§pop()));
                                                                        if(_loc5_)
                                                                        {
                                                                           addr317:
                                                                           §§push(360);
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 addr334:
                                                                                 §§push(§§pop() / 1000);
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    addr342:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr334);
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §5!D§(§?"1§() - _loc3_);
                                                                           addr276:
                                                                           while(true)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        addr344:
                                                                     }
                                                                     §§goto(addr342);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§goto(addr313);
                                                                     }
                                                                  }
                                                                  §§goto(addr334);
                                                               }
                                                               §§goto(addr317);
                                                            }
                                                            addr282:
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr242);
                                                            §§push(§+!A§.toUpperCase() == "BIRD_WHITE");
                                                         }
                                                      }
                                                      addr277:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop29;
                                                      }
                                                      addr384:
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   continue loop11;
                                                }
                                                addr234:
                                             }
                                          }
                                       }
                                       addr161:
                                    }
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop16;
                                       }
                                       §§pop();
                                       while(true)
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§push(!§9!W§());
                                             while(true)
                                             {
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   break loop21;
                                                }
                                                addr159:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§goto(addr161);
                                                }
                                             }
                                             addr152:
                                          }
                                          §§goto(addr282);
                                       }
                                    }
                                    addr203:
                                 }
                                 §§goto(addr152);
                              }
                              while(!(_loc4_ && param1))
                              {
                                 if(_loc4_)
                                 {
                                    continue loop23;
                                 }
                                 §§goto(addr45);
                                 §§push(true);
                                 §§goto(addr59);
                              }
                              addr45:
                              loop6:
                              while(true)
                              {
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §8C§.mTryToFly = false;
                                    while(_loc5_ || _loc2_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(!§8C§.mIsFlying)
                                             {
                                                continue loop31;
                                             }
                                             if(_loc4_ && param1)
                                             {
                                                continue loop6;
                                             }
                                             if(_loc4_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §8C§.mIsFlying = false;
                                                continue loop6;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   break loop6;
                                                }
                                                while(true)
                                                {
                                                   if(!§8C§.mTryToFly)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §8C§.mTryToFly = true;
                                                      }
                                                      §§goto(addr384);
                                                   }
                                                   §§goto(addr277);
                                                }
                                             }
                                             addr359:
                                          }
                                          §§goto(addr344);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §7y§();
                                                §§goto(addr234);
                                             }
                                          }
                                          addr225:
                                       }
                                       §§goto(addr276);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr164);
                              }
                              addr105:
                              continue loop3;
                              addr121:
                           }
                           if(_loc5_ || param1)
                           {
                              break;
                           }
                           while(_loc5_ || _loc3_)
                           {
                              if(!_loc4_)
                              {
                                 §§push(§§pop());
                                 while(_loc5_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       continue loop16;
                                    }
                                    continue loop22;
                                 }
                                 continue loop1;
                                 addr252:
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                           }
                           addr242:
                           addr347:
                           §§goto(addr348);
                        }
                        return §§pop();
                     }
                     §§goto(addr359);
                  }
               }
            }
         }
         §§goto(addr361);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§,4§ = §'_§.§=M§;
         if(_loc8_)
         {
            §§push(§8W§ < §%5§);
            if(!(_loc7_ && this))
            {
               if(!§§pop())
               {
                  loop58:
                  while(true)
                  {
                     §§pop();
                     addr84:
                     while(true)
                     {
                        §§push(getBody() == null);
                        if(_loc8_ || _loc2_)
                        {
                           break;
                        }
                        continue loop58;
                     }
                  }
                  addr83:
               }
               loop0:
               while(§§pop())
               {
                  _loc1_.§32§(this);
                  do
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                     §§goto(addr84);
                     continue loop0;
                  }
                  while(_loc1_.§1!;§ = false, _loc7_);
                  
                  return;
               }
               §§push(x * §,4§.§,^§);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * §,4§.§,^§);
               if(!_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(!_loc7_)
               {
                  §§push(_loc1_.§1!;§);
                  loop3:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(§9T§ > 1)
                        {
                           while(true)
                           {
                              §§push(_loc1_.particles);
                              addr550:
                              while(true)
                              {
                                 §§push(§`!E§.§#!g§);
                                 addr552:
                                 while(true)
                                 {
                                    §§push(§6!Q§.§;"#§);
                                    addr554:
                                    while(true)
                                    {
                                       §§push(§`!E§.§+"=§);
                                       addr556:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          addr557:
                                          while(true)
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(_loc3_);
                                                while(true)
                                                {
                                                   §§push(-1);
                                                   addr561:
                                                   while(true)
                                                   {
                                                      §§push("");
                                                      addr562:
                                                      while(true)
                                                      {
                                                         §§push(§`!E§.§6!O§);
                                                         addr564:
                                                         loop37:
                                                         while(true)
                                                         {
                                                            §§pop().§'p§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                            addr565:
                                                            while(true)
                                                            {
                                                               continue loop37;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr560:
                                             }
                                             else
                                             {
                                                loop45:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   addr601:
                                                   while(true)
                                                   {
                                                      §§push(-1);
                                                      addr602:
                                                      while(true)
                                                      {
                                                         §§push("");
                                                         addr603:
                                                         while(true)
                                                         {
                                                            §§push(§`!E§.§6!O§);
                                                            addr605:
                                                            while(true)
                                                            {
                                                               §§pop().§'p§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                               addr606:
                                                               loop36:
                                                               while(true)
                                                               {
                                                                  _loc1_.§1!;§ = false;
                                                                  addr575:
                                                                  while(!_loc8_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc1_.particles);
                                                                        addr583:
                                                                        while(true)
                                                                        {
                                                                           §§push(§`!E§.§"!2§);
                                                                           addr585:
                                                                           while(true)
                                                                           {
                                                                              §§push(§6!Q§.§;"#§);
                                                                              addr587:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§`!E§.§+"=§);
                                                                                 addr599:
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop45;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop36;
                                                                  }
                                                                  this.§`U§ = 0;
                                                                  addr570:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr600:
                                             }
                                             addr328:
                                             while(true)
                                             {
                                                §§push(_loc1_.slingshot.§5§());
                                                continue loop3;
                                                §§goto(addr570);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr548:
                        }
                        else
                        {
                           §§push(§`!E§.PARTICLE_NAME_BIRD_TRAIL1);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§`U§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(1);
                                       addr524:
                                       while(§§pop() != §§pop())
                                       {
                                          continue loop7;
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§`!E§.PARTICLE_NAME_BIRD_TRAIL2);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop11:
                                             while(_loc8_)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop4;
                                                }
                                                _loc4_ = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   addr447:
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§`U§ + 1);
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         §§push(§§pop() % 3);
                                                      }
                                                      §§pop().§`U§ = §§pop();
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_.particles);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§push(_loc4_);
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(§6!Q§.§;"#§);
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              §§push(§`!E§.§+"=§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(!(_loc7_ && this))
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§push(-1);
                                                                                          if(_loc8_ || _loc1_)
                                                                                          {
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                §§push("");
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      §§push(§`!E§.§6!O§);
                                                                                                      if(_loc8_ || _loc2_)
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§pop().§'p§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§`!E§.PARTICLE_NAME_BIRD_TRAIL3);
                                                                                                                        if(_loc8_ || _loc2_)
                                                                                                                        {
                                                                                                                           if(_loc7_ && this)
                                                                                                                           {
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                           if(_loc7_ && this)
                                                                                                                           {
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           §§push(§§pop());
                                                                                                                        }
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        while(_loc7_ && this)
                                                                                                                        {
                                                                                                                           §§goto(addr565);
                                                                                                                        }
                                                                                                                        continue loop13;
                                                                                                                        addr512:
                                                                                                                     }
                                                                                                                     §§goto(addr570);
                                                                                                                  }
                                                                                                                  addr480:
                                                                                                               }
                                                                                                               §§goto(addr328);
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                            addr437:
                                                                                                         }
                                                                                                         §§goto(addr605);
                                                                                                         §§goto(addr570);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr564);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr603);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr562);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr602);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr561);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr601);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr560);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr557);
                                                                                 }
                                                                                 §§goto(addr600);
                                                                              }
                                                                              addr392:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr554);
                                                                           }
                                                                           §§goto(addr557);
                                                                           addr134:
                                                                           §§push(§6!Q§.§+f§);
                                                                           if(!(_loc8_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              §§push(§`!E§.§]W§);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       addr163:
                                                                                       §§pop().§'p§(§§pop(),§§pop(),§§pop(),getBody().GetPosition().x,getBody().GetPosition().y,1250,"",§`!E§.§]!I§(§+!A§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
                                                                                       if(_loc8_ || _loc1_)
                                                                                       {
                                                                                          addr206:
                                                                                          if(_loc7_ && _loc2_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          loop30:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_ || this)
                                                                                             {
                                                                                                if(_loc8_ || _loc2_)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      §§goto(addr548);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr512);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop27:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(-Math.PI);
                                                                                                      if(!(_loc7_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop() / 2);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            addr275:
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            addr277:
                                                                                                            while(_loc8_ || _loc1_)
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            addr325:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  addr327:
                                                                                                                  §§push(Math.random() < §>!%§);
                                                                                                                  if(!(_loc7_ && _loc1_))
                                                                                                                  {
                                                                                                                     while(§§pop())
                                                                                                                     {
                                                                                                                        continue loop27;
                                                                                                                        §§goto(addr327);
                                                                                                                     }
                                                                                                                     addr109:
                                                                                                                     return;
                                                                                                                     addr259:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr437);
                                                                                                               break;
                                                                                                            }
                                                                                                            addr291:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               §§goto(addr325);
                                                                                                               §§goto(addr327);
                                                                                                            }
                                                                                                            §§push(Number(Math.random()));
                                                                                                            if(!(_loc7_ && _loc1_))
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr275);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr328);
                                                                                             }
                                                                                             §§goto(addr277);
                                                                                          }
                                                                                          §§goto(addr550);
                                                                                       }
                                                                                       §§goto(addr109);
                                                                                    }
                                                                                    §§goto(addr599);
                                                                                 }
                                                                                 §§goto(addr556);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr392);
                                                                              }
                                                                           }
                                                                           §§goto(addr587);
                                                                        }
                                                                     }
                                                                     §§goto(addr585);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr552);
                                                                  }
                                                               }
                                                               addr377:
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr583);
                     }
                     §§goto(addr581);
                  }
               }
               §§goto(addr370);
            }
            §§goto(addr83);
         }
         §§goto(addr50);
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§8C§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(_loc1_)
               {
                  addr61:
               }
               return;
            }
            if(!_loc1_)
            {
               §^!x§(§34§.§5!C§);
            }
         }
         §§goto(addr61);
      }
      
      override public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§3H§);
            if(!(_loc2_ && _loc3_))
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §^!x§(§34§.§'k§);
                     while(true)
                     {
                        if(_loc2_)
                        {
                           §§push(false);
                        }
                        else
                        {
                           addr89:
                        }
                        this.§3H§ = true;
                        if(_loc2_ && _loc3_)
                        {
                           continue;
                        }
                        if(!_loc2_)
                        {
                           §§push(true);
                           if(_loc3_ || _loc3_)
                           {
                              return §§pop();
                           }
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr89);
            }
            return §§pop();
         }
         §§goto(addr89);
      }
      
      private function §<L§(param1:int) : int
      {
         return Math.min(§'_§.§=M§.§]!c§,param1);
      }
      
      override public function addDestructionParticles(param1:§6!Q§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§9!3§(false) + 1);
         var _loc4_:* = Number(90);
         if(_loc9_ || param1)
         {
            §§push(this.§<L§(_loc3_));
            if(!_loc10_)
            {
               §§push(int(§§pop()));
               if(!(_loc10_ && _loc3_))
               {
                  addr55:
                  _loc3_ = §§pop();
                  §§push(0);
               }
               var _loc5_:* = §§pop();
               loop0:
               while(true)
               {
                  if(_loc5_ >= _loc3_)
                  {
                     if(_loc10_ && _loc2_)
                     {
                        continue;
                     }
                     if(!(_loc10_ && this))
                     {
                        if(_loc9_ || _loc2_)
                        {
                           if(!(_loc10_ && _loc2_))
                           {
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(-§8C§.mW);
                              loop2:
                              while(true)
                              {
                                 §§push(§,4§.§,^§);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                       loop4:
                                       while(true)
                                       {
                                          if(!_loc10_)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(§§pop());
                                                loop5:
                                                while(true)
                                                {
                                                   _loc7_ = §§pop();
                                                   addr290:
                                                   while(true)
                                                   {
                                                      §§push(Math.random() * -_loc7_);
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            §§push(2);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr311:
                                                               loop8:
                                                               while(!_loc10_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop10:
                                                                     while(_loc9_)
                                                                     {
                                                                        _loc7_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(-§8C§.mH);
                                                                           if(_loc9_)
                                                                           {
                                                                              if(_loc10_ && this)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              if(_loc10_ && this)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(§,4§.§,^§);
                                                                              if(_loc9_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              addr256:
                                                                              addr256:
                                                                              if(!_loc9_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc10_ && _loc2_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 param1.§'p§(§`!E§.§@!1§,§6!Q§.§+f§,§`!E§.§]W§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,1500,"",§`!E§.§]!I§(§+!A§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                                                 addr138:
                                                                                 while(!_loc9_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 _loc5_++;
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr267);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     addr329:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr330:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           break loop8;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  addr342:
                                                                  while(true)
                                                                  {
                                                                     §§push(180 / Math.PI);
                                                                     addr346:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        break loop4;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr310:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr328:
                                                         }
                                                         §§goto(addr329);
                                                      }
                                                      §§goto(addr311);
                                                   }
                                                }
                                             }
                                             §§goto(addr330);
                                          }
                                          break;
                                          if(!(_loc10_ && _loc3_))
                                          {
                                             continue loop2;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr290);
                                 }
                              }
                           }
                        }
                        §§goto(addr318);
                     }
                     §§goto(addr138);
                  }
                  else
                  {
                     §§push(_loc4_);
                  }
                  §§goto(addr322);
               }
               return;
            }
         }
         §§goto(addr55);
      }
      
      override public function addDamageParticles(param1:§6!Q§, param2:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!_loc9_)
         {
            if(§9!W§())
            {
               if(_loc10_ || _loc3_)
               {
                  return;
               }
            }
            else if(param2 < 6)
            {
               if(_loc10_ || _loc3_)
               {
                  §§goto(addr48);
               }
            }
            §§push(§[!_§() / 10);
            if(!(_loc9_ && this))
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(_loc10_ || param1)
            {
               §§push(_loc3_);
               if(!(_loc9_ && this))
               {
                  addr88:
                  §§push(§§pop() * §9!3§(false));
                  if(_loc10_)
                  {
                     addr84:
                     §§push(§§pop() * 0.12);
                  }
                  var _loc4_:* = int(§§pop() + §§pop());
                  var _loc5_:Number = 90;
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(param2);
                     loop0:
                     while(true)
                     {
                        §§push(scale * scale);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           loop2:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 param2 = §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(3 + param2 / 20);
                                       if(!_loc10_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc10_ || _loc3_))
                                       {
                                          continue loop2;
                                       }
                                       §§push(int(§§pop()));
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          addr480:
                                          while(_loc10_ || _loc3_)
                                          {
                                          }
                                          addr449:
                                          continue loop4;
                                          loop9:
                                          for(; _loc10_ || _loc3_; if(_loc10_ || param1)
                                          {
                                             continue loop5;
                                          })
                                          {
                                             if(_loc9_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(int(§§pop()));
                                             loop10:
                                             while(true)
                                             {
                                                _loc4_ = §§pop();
                                                addr460:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   if(_loc10_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop10;
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr449);
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr88);
         }
         addr48:
      }
   }
}
