package §4!<§
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §,"[§.b2Settings;
   import §6!^§.b2Vec2;
   import §8m§.§@"M§;
   import §<5§.Texture;
   import §@!"§.§?l§;
   import flash.geom.Point;
   
   public class §9"<§
   {
       
      
      private var §"Z§:Texture;
      
      private var §?!T§:Sprite;
      
      private var §]!v§:Vector.<§ "E§>;
      
      private var §,q§:Boolean;
      
      private var §8"!§:int = 0;
      
      private var §8W§:Vector.<§ "E§>;
      
      private var §23§:Number = -1.0;
      
      private var §=!e§:Number = 0.0;
      
      public function §9"<§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§8W§ = new Vector.<§ "E§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§?!T§ = new Sprite();
                  while(_loc2_)
                  {
                     §?l§.§'h§.objects.§-!2§.addChild(this.§?!T§);
                     loop3:
                     while(true)
                     {
                        this.§"Z§ = §?l§.§'h§.animationManager.getAnimation("LASER_DOT").getFrame(0).texture;
                        while(true)
                        {
                           this.§23§ = 3;
                           continue loop1;
                           addr40:
                           if(!(_loc1_ && this))
                           {
                              continue loop3;
                           }
                        }
                     }
                     if(!(_loc1_ && this))
                     {
                        return;
                        addr66:
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!T§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ "E§ = null;
         if(_loc4_ || _loc2_)
         {
            this.§?!T§.dispose();
            loop0:
            while(true)
            {
               addr42:
               while(true)
               {
                  §?l§.§'h§.objects.§-!2§.removeChild(this.§?!T§);
                  continue loop0;
               }
            }
            addr64:
         }
         while(true)
         {
            this.§"Z§ = null;
            if(!(_loc4_ || this))
            {
               continue;
            }
            if(!_loc5_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr64);
            }
            §§goto(addr42);
         }
         for each(_loc1_ in this.§]!v§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_)
         {
            this.§]!v§ = null;
            do
            {
               this.§8W§ = null;
            }
            while(_loc5_ && this);
            
         }
      }
      
      public function §'!C§(param1:Texture) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"Z§ = param1;
         }
      }
      
      public function §;"E§(param1:Point, param2:Point, param3:Number) : void
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc16_:§ "E§ = null;
         var _loc17_:* = NaN;
         var _loc18_:§ "E§ = null;
         var _loc4_:Point = param2.clone();
         var _loc5_:Number = 9;
         if(_loc21_)
         {
            _loc4_.normalize(param3 / _loc5_);
         }
         var _loc6_:Point = param1.clone();
         var _loc7_:* = Number(0);
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         §§push(1200);
         if(_loc21_)
         {
            §§push(int(§§pop() / (20 + param3)));
         }
         var _loc10_:* = §§pop();
         var _loc11_:Boolean = false;
         §§push(§^!Z§.§ "6§);
         if(_loc21_ || param1)
         {
            §§push(§§pop() / _loc5_);
            if(_loc21_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc12_:* = §§pop();
         var _loc13_:b2Vec2 = new b2Vec2();
         §§push(b2Settings.b2_maxTranslation);
         if(!_loc22_)
         {
            §§push(§^!Z§.§ "6§);
            if(!(_loc22_ && param1))
            {
               addr110:
               §§push(§§pop() / §§pop());
               if(!(_loc22_ && this))
               {
                  §§push(_loc5_);
               }
               var _loc14_:* = §§pop();
               §§push(0);
               if(!_loc22_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc15_:* = §§pop();
               loop0:
               while(true)
               {
                  §§push(_loc11_);
                  if(_loc21_ || param1)
                  {
                     §§push(!§§pop());
                     if(_loc21_ || param3)
                     {
                        loop16:
                        while(true)
                        {
                           §§push(§§pop());
                           loop17:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc21_)
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       if(_loc21_)
                                       {
                                          loop2:
                                          while(true)
                                          {
                                             §§push(_loc8_);
                                             loop3:
                                             while(true)
                                             {
                                                §§push(§^!Z§.§=!K§);
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(§§pop() < §§pop());
                                                   addr614:
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§push(_loc9_);
                                                         if(_loc22_ && this)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() % _loc5_);
                                                         if(_loc21_)
                                                         {
                                                            §§push(0);
                                                            if(!(_loc22_ && param3))
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§3K§(_loc6_.x,_loc6_.y,_loc13_);
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        _loc4_.x += _loc13_.x * _loc12_;
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           _loc4_.y += _loc13_.y * _loc12_;
                                                                           while(true)
                                                                           {
                                                                              if(_loc22_ && param2)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(_loc4_.length <= _loc14_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc22_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr571:
                                                                              §§push(_loc15_);
                                                                              if(_loc21_ || this)
                                                                              {
                                                                                 addr579:
                                                                                 §§push(§§pop() + _loc12_);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    addr583:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 _loc15_ = §§pop();
                                                                                 if(!_loc22_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              §§goto(addr583);
                                                                           }
                                                                           addr223:
                                                                           §§push(this.§23§);
                                                                           if(_loc21_ || param3)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(§§pop() >= §§pop());
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 if(_loc22_ && param3)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr249:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc15_);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(this.§23§);
                                                                                             if(_loc21_)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(!_loc22_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                             addr377:
                                                                                             if(§§pop() == §§pop())
                                                                                             {
                                                                                                if(!(_loc21_ || param1))
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                if(this.§8W§.length > _loc8_)
                                                                                                {
                                                                                                   if(_loc21_ || param1)
                                                                                                   {
                                                                                                      addr397:
                                                                                                      _loc16_ = this.§8W§[_loc8_];
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         addr427:
                                                                                                         _loc8_++;
                                                                                                         if(_loc21_ || this)
                                                                                                         {
                                                                                                            _loc16_.x = _loc6_.x / §'!S§.§2"<§;
                                                                                                            if(_loc21_ || param1)
                                                                                                            {
                                                                                                               _loc16_.y = _loc6_.y / §'!S§.§2"<§;
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  §§push(1);
                                                                                                                  §§push(_loc8_ / §^!Z§.§=!K§);
                                                                                                                  if(_loc21_ || param1)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * 0.7);
                                                                                                                  }
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!_loc22_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc21_ || param3)
                                                                                                                     {
                                                                                                                        _loc17_ = §§pop();
                                                                                                                        if(!(_loc22_ && param3))
                                                                                                                        {
                                                                                                                           addr449:
                                                                                                                           _loc16_.scaleX = _loc17_;
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              _loc16_.scaleY = _loc17_;
                                                                                                                              if(_loc21_ || param2)
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr449);
                                                                                                                                 }
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(!(_loc22_ && this))
                                                                                                                                 {
                                                                                                                                    addr525:
                                                                                                                                    §§push(_loc4_.length * §^!Z§.§ "6§);
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc22_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc21_ || param1)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr557:
                                                                                                                                          if(§§pop() > §^!Z§.§<"7§)
                                                                                                                                          {
                                                                                                                                             if(!(_loc22_ && this))
                                                                                                                                             {
                                                                                                                                                addr567:
                                                                                                                                                §§goto(addr615);
                                                                                                                                             }
                                                                                                                                             §§goto(addr680);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr568:
                                                                                                                                             _loc9_++;
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr571);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr680);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr680);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!(_loc22_ && param2))
                                                                                                                                       {
                                                                                                                                          addr556:
                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                       }
                                                                                                                                       §§goto(addr557);
                                                                                                                                    }
                                                                                                                                    §§goto(addr556);
                                                                                                                                 }
                                                                                                                                 §§goto(addr557);
                                                                                                                              }
                                                                                                                              §§goto(addr567);
                                                                                                                              addr455:
                                                                                                                           }
                                                                                                                           §§goto(addr567);
                                                                                                                           addr490:
                                                                                                                        }
                                                                                                                        §§goto(addr660);
                                                                                                                     }
                                                                                                                     §§goto(addr557);
                                                                                                                  }
                                                                                                                  §§goto(addr525);
                                                                                                               }
                                                                                                               §§goto(addr567);
                                                                                                            }
                                                                                                            §§goto(addr680);
                                                                                                         }
                                                                                                         §§goto(addr490);
                                                                                                      }
                                                                                                      §§goto(addr455);
                                                                                                   }
                                                                                                   §§goto(addr571);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc16_ = this.§>!3§();
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      this.§?!T§.addChild(_loc16_);
                                                                                                      if(_loc21_ || param2)
                                                                                                      {
                                                                                                         this.§8W§.push(_loc16_);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr427);
                                                                                             }
                                                                                             §§goto(addr568);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr579);
                                                                                    }
                                                                                 }
                                                                                 while(§§pop())
                                                                                 {
                                                                                    if(_loc22_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    if(_loc21_ || param3)
                                                                                    {
                                                                                       _loc4_.x *= 1 - §^!Z§.§ "6§ * this.§=!e§;
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§goto(addr249);
                                                                                 }
                                                                              }
                                                                              addr368:
                                                                              §§push(§§pop() % _loc10_);
                                                                              if(!(_loc22_ && param1))
                                                                              {
                                                                                 §§goto(addr377);
                                                                              }
                                                                           }
                                                                           §§goto(addr579);
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     if(_loc22_ && param3)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr223);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc6_.x += _loc4_.x * §^!Z§.§ "6§;
                                                                  if(_loc21_ || this)
                                                                  {
                                                                     if(_loc21_)
                                                                     {
                                                                        _loc6_.y += _loc4_.y * §^!Z§.§ "6§;
                                                                        if(!(_loc22_ && param3))
                                                                        {
                                                                           if(_loc21_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(_loc9_);
                                                                              if(_loc22_)
                                                                              {
                                                                                 break loop5;
                                                                              }
                                                                              §§push(_loc10_);
                                                                              if(!(_loc21_ || this))
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              §§push(§§pop() % §§pop());
                                                                              if(!(_loc22_ && param2))
                                                                              {
                                                                                 §§goto(addr368);
                                                                                 §§push(this.§8"!§);
                                                                              }
                                                                              §§goto(addr579);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr215);
                                                                           }
                                                                        }
                                                                        §§goto(addr385);
                                                                     }
                                                                     §§goto(addr173);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr397);
                                                            }
                                                            §§goto(addr368);
                                                         }
                                                         §§goto(addr579);
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr680);
                                    }
                                    addr607:
                                 }
                              }
                              §§goto(addr614);
                           }
                        }
                        addr603:
                     }
                     §§goto(addr607);
                  }
                  §§goto(addr603);
               }
            }
            §§push(§§pop() / §§pop());
            if(!_loc22_)
            {
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr110);
      }
      
      public function get enabled() : Boolean
      {
         return this.§,q§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§,q§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr97:
                        while(true)
                        {
                           §§push(param1);
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §@"M§.§3"C§("Powerup_Laser_Sight","ChannelPowerups");
                           addr90:
                           while(true)
                           {
                           }
                        }
                        addr86:
                     }
                     while(true)
                     {
                        this.§,q§ = param1;
                        for(; _loc2_; this.§?!T§.visible = this.§,q§,if(_loc2_ || param1)
                        {
                           return;
                        })
                        {
                           if(_loc2_ || _loc3_)
                           {
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr97);
                           }
                           else
                           {
                              §§goto(addr86);
                           }
                        }
                        §§goto(addr90);
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      private function §>!3§() : § "E§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(this.§]!v§));
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        §§goto(addr36);
                     }
                     return this.§]!v§.pop();
                  }
               }
            }
            addr36:
            if(this.§]!v§.length > 0)
            {
               if(_loc2_ && this)
               {
                  §§goto(addr58);
               }
            }
            §§goto(addr58);
         }
         addr58:
         var _loc1_:§ "E§ = new § "E§(this.§"Z§);
         if(!_loc2_)
         {
            §§push(_loc1_);
            §§push(this.§"Z§.width);
            if(!_loc2_)
            {
               §§push(-§§pop());
               if(_loc3_ || _loc1_)
               {
                  §§push(§§pop() / 2);
               }
            }
            §§pop().pivotX = §§pop();
            do
            {
               §§push(_loc1_);
               §§push(this.§"Z§.height);
               if(_loc3_ || _loc2_)
               {
                  §§push(-§§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
               §§pop().pivotY = §§pop();
            }
            while(!_loc3_);
            
         }
         return _loc1_;
      }
      
      private function §-<§(param1:§ "E§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§]!v§)
            {
               while(true)
               {
                  this.§]!v§ = new Vector.<§ "E§>();
                  addr57:
                  while(true)
                  {
                  }
                  addr40:
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  return;
                  addr47:
               }
            }
            while(true)
            {
               this.§]!v§.push(param1);
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr40);
            }
         }
         §§goto(addr47);
      }
      
      private function §3K§(param1:Number, param2:Number, param3:b2Vec2) : b2Vec2
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(!param3)
            {
               if(!_loc4_)
               {
                  param3 = new b2Vec2();
               }
               §§goto(addr44);
            }
            param3.SetV(§?l§.§'h§.mLevelEngine.mWorld.§1_§());
         }
         addr44:
         return param3;
      }
   }
}
