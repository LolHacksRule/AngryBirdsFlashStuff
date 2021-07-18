package §&E§
{
   import §6!^§.b2Vec2;
   import §6"1§.b2Fixture;
   import §8m§.§@"M§;
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   import §`!G§.§[!8§;
   
   public class §""1§ extends §]6§
   {
       
      
      private var §7"&§:Number = 0;
      
      private const §>s§:Number = 1500;
      
      private var §=i§:§[!8§;
      
      public function §""1§(param1:§^!Y§, param2:§`m§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false, param18:String = "")
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         if(_loc19_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17,param18);
         }
      }
      
      override public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §!"W§ += 0.5;
            if(!(_loc4_ && param1))
            {
               if(§!"W§ > 360)
               {
                  if(_loc3_)
                  {
                     addr35:
                     §!"W§ = 0;
                  }
               }
               var _loc2_:Boolean = super.update(param1);
               if(_loc3_ || param1)
               {
                  §§push(_loc2_);
                  loop0:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§push(this.§=i§);
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §§push(this.§=i§);
                                    loop25:
                                    while(true)
                                    {
                                       §§push(true);
                                       addr306:
                                       while(true)
                                       {
                                          §§pop().§]"K§ = §§pop();
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§=i§);
                                          loop9:
                                          while(_loc3_)
                                          {
                                             §§push(§§pop().getBody());
                                             if(!_loc4_)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(this.§=i§);
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§§pop().getBody());
                                                                     loop11:
                                                                     while(_loc3_)
                                                                     {
                                                                        §§push(true);
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§pop().SetAwake(§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 addr193:
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§=i§);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    if(!(_loc3_ || param1))
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(_loc3_ || _loc3_)
                                                                                       {
                                                                                          §§push(false);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§pop().§]"K§ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   addr51:
                                                                                                   §§push(true);
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_ || param1)
                                                                                                      {
                                                                                                         §@"M§.§3"C§("FairyDust_Particle_1","ChannelMisc");
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§+!&§();
                                                                                                            addr216:
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §>R§.visible = false;
                                                                                                               addr198:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_ || this)
                                                                                                                  {
                                                                                                                     if(_loc3_ || param1)
                                                                                                                     {
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr259:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§=i§);
                                                                                                                     addr226:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().getBody());
                                                                                                                           break loop11;
                                                                                                                        }
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     §§goto(addr248);
                                                                                                                  }
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr248:
                                                                                                         addr222:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr266:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this);
                                                                                                            §§push(this.§7"&§);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(§§pop() + param1);
                                                                                                            }
                                                                                                            §§pop().§7"&§ = §§pop();
                                                                                                         }
                                                                                                         addr266:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc4_ && param1))
                                                                                                         {
                                                                                                            §§push(this.§=i§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().getBody());
                                                                                                               addr253:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§=i§);
                                                                                                                     break loop10;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr252:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr310:
                                                                                                            §§push(false);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr241:
                                                                                                }
                                                                                                §§goto(addr311);
                                                                                             }
                                                                                             addr132:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr306);
                                                                                          }
                                                                                          §§goto(addr266);
                                                                                       }
                                                                                       §§goto(addr252);
                                                                                    }
                                                                                    §§goto(addr226);
                                                                                    §§goto(addr193);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().getBody());
                                                                                    addr257:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(true);
                                                                                       addr258:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().SetAwake(§§pop());
                                                                                          §§goto(addr259);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr256:
                                                                                 addr107:
                                                                              }
                                                                              §§goto(addr216);
                                                                           }
                                                                           addr186:
                                                                        }
                                                                        §§goto(addr258);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           §§pop().SetLinearVelocity(new b2Vec2(0,-10));
                                                                           §§goto(addr241);
                                                                        }
                                                                        §§goto(addr253);
                                                                     }
                                                                     addr175:
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(this.§7"&§ > this.§>s§)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                            addr307:
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      addr166:
                                                   }
                                                   §§goto(addr107);
                                                }
                                                §§goto(addr257);
                                             }
                                             §§goto(addr175);
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 §§goto(addr307);
                              }
                              else
                              {
                                 §?l§.§'h§.mLevelEngine.mWorld.§6N§(this.§##§,new b2Vec2(§4!K§,§7!#§));
                                 if(!(_loc4_ && param1))
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr51);
                                             }
                                             else
                                             {
                                                §§goto(addr254);
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr186);
                                 }
                              }
                              §§goto(addr132);
                           }
                        }
                     }
                     §§goto(addr310);
                  }
               }
               §§goto(addr259);
            }
         }
         §§goto(addr35);
      }
      
      private function §##§(param1:b2Fixture) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§[!8§ = null;
         if(!_loc4_)
         {
            §§push(param1.GetBody());
            if(_loc3_)
            {
               if(§§pop().GetUserData())
               {
                  addr29:
                  _loc2_ = param1.GetBody().GetUserData() as §[!8§;
                  if(_loc3_)
                  {
                     §§push(!this.§=i§);
                     loop0:
                     while(true)
                     {
                        §§push(§§pop());
                        if(§§pop())
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(_loc2_);
                           }
                           addr241:
                        }
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop6:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§pop();
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_.§^!f§.§@x§ == "MISC_FAIRY_BLOCK_4X4");
                                                      while(true)
                                                      {
                                                         §§push(!§§pop());
                                                         loop15:
                                                         for(; !(_loc4_ && _loc3_); if(!(_loc3_ || param1))
                                                         {
                                                            continue;
                                                         },§§goto(addr92),§§push(Boolean(§§pop())))
                                                         {
                                                            §§pop();
                                                            loop16:
                                                            while(_loc3_)
                                                            {
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.isTexture());
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§push(_loc2_.isGround());
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              if(_loc4_ && _loc3_)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           if(_loc4_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    addr96:
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       addr103:
                                                                                       §§push(§§pop());
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          addr242:
                                                                                          addr61:
                                                                                          while(§§pop())
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   continue loop16;
                                                                                                }
                                                                                                §"$§.visible = false;
                                                                                             }
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                             continue loop20;
                                                                                          }
                                                                                          return false;
                                                                                          addr61:
                                                                                       }
                                                                                       §§goto(addr61);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                this.§=i§ = _loc2_;
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          addr128:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(_loc2_));
                                                                                             addr131:
                                                                                             addr200:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc3_ || param1))
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                if(!(_loc3_ || this))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr96);
                                                                                       }
                                                                                       addr181:
                                                                                    }
                                                                                    while(_loc3_ || this)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          break loop17;
                                                                                       }
                                                                                       §§goto(addr61);
                                                                                       §§goto(addr103);
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 §§goto(addr131);
                                                                              }
                                                                              while(_loc4_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              return §§pop();
                                                                              addr92:
                                                                              addr167:
                                                                           }
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr61);
                                                                        }
                                                                        else if(!_loc3_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr128);
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                               }
                                                               continue loop15;
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      break loop7;
                                                   }
                                                   addr232:
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr200);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr181);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr232);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr196);
               }
               §§goto(addr242);
            }
         }
         §§goto(addr29);
      }
      
      private function §+!&§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§="@§ = §?l§.§'h§.particles as §="@§;
         §§push(this.§=i§.getBody().GetPosition().x);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc6_ || _loc3_)
         {
            §§push(_loc2_);
            if(_loc6_ || _loc1_)
            {
               §§push(§§pop() + this.§=e§(-2,2));
               if(!(_loc5_ && _loc2_))
               {
                  addr60:
                  §§push(Number(§§pop()));
                  if(_loc6_)
                  {
                     _loc2_ = §§pop();
                     addr74:
                     §§push(this.§=i§.getBody().GetPosition().y);
                     if(_loc6_)
                     {
                        addr81:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && this))
                  {
                     §§push(_loc3_);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() + this.§=e§(-2,2));
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc6_)
                           {
                           }
                           §§goto(addr126);
                        }
                        _loc3_ = §§pop();
                        addr109:
                        §§push(Math.random() * 1);
                        if(!_loc5_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     addr126:
                     var _loc4_:* = §§pop();
                     if(!_loc5_)
                     {
                        _loc1_.§@6§("PARTICLE_WONDERLAND_DUST",§0i§.PARTICLE_NAME_BLOCK_DESTRUCTION_PARTICLES,§6!O§.PARTICLE_GROUP_GAME_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,_loc2_,_loc3_,400,"",§0i§.getParticleMaterialFromEngineMaterial("BIRD_RED"),0,0,0,20,_loc4_,0.5);
                     }
                     return;
                  }
                  §§goto(addr109);
               }
               §§goto(addr81);
            }
            §§goto(addr60);
         }
         §§goto(addr74);
      }
      
      private function §=e§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
   }
}
