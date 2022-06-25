package §,K§
{
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §+%§ extends Sprite
   {
      
      public static const §=!B§:int = 0;
      
      public static const §`!<§:int = 1;
      
      public static const §^W§:int = 2;
      
      public static const §?A§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §=!B§ = 0;
            if(_loc1_)
            {
               §`!<§ = 1;
               if(!(_loc2_ && §+%§))
               {
                  §^W§ = 2;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr56);
               }
               §?A§ = 3;
            }
         }
         addr56:
      }
      
      private const §-y§:uint = 40;
      
      private const §<#§:Number = 0.3;
      
      private const §8!%§:Number = 25;
      
      private const §extends§:Number = 10;
      
      private const §4l§:Number = 9;
      
      private var §@v§:int;
      
      private var §4U§:int;
      
      private var §6!C§:Array;
      
      private var §+Q§:Array;
      
      private var § g§:Point;
      
      private var §9"§:int;
      
      public function §+%§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:§2H§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(_loc13_)
         {
            super();
            if(_loc13_)
            {
               addr29:
               this.§@v§ = param1;
               if(_loc13_)
               {
                  this.§4U§ = param2;
               }
            }
            var _loc7_:Number = Math.min(§,!!§.§,`§,§,!!§.§0!3§);
            var _loc8_:Number = Math.max(§,!!§.§,`§,§,!!§.§0!3§);
            §§push(param3);
            if(!_loc14_)
            {
               §§push(§,!!§.§0!3§);
               if(_loc13_ || param3)
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc14_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc13_)
                     {
                        addr71:
                        param3 = §§pop();
                        if(_loc13_ || this)
                        {
                           §§push(param4);
                           if(!_loc14_)
                           {
                              addr82:
                              §§push(§§pop() / §,!!§.§,`§);
                              if(_loc13_ || param2)
                              {
                                 addr92:
                                 §§push(Number(§§pop()));
                              }
                           }
                           param4 = §§pop();
                           if(!(_loc14_ && param2))
                           {
                              this.§9"§ = param5;
                           }
                        }
                        this.§ g§ = new Point(param3,param4);
                        if(_loc13_ || param2)
                        {
                           this.§6!C§ = [];
                        }
                        this.§+Q§ = [];
                        var _loc12_:int = 0;
                        while(_loc12_ < param6)
                        {
                           §§push(§§findproperty(§2H§));
                           §§push(Math.random() * 40);
                           if(_loc13_ || this)
                           {
                              §§push(§§pop() + 10);
                           }
                           (_loc9_ = new §§pop().§2H§(§§pop())).x = -2000;
                           if(_loc14_ && this)
                           {
                              continue;
                           }
                           _loc9_.y = -2000;
                           if(_loc13_)
                           {
                              this.addChild(_loc9_);
                              if(_loc13_)
                              {
                                 this.§6!C§[_loc12_] = _loc9_;
                                 addr174:
                                 if(!_loc13_)
                                 {
                                    continue;
                                 }
                              }
                              _loc12_++;
                              continue;
                           }
                           §§goto(addr174);
                        }
                        if(_loc13_ || param2)
                        {
                           this.scaleX = _loc8_;
                           if(_loc13_ || this)
                           {
                              addr212:
                              this.scaleY = _loc8_;
                           }
                           return;
                        }
                        §§goto(addr212);
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr71);
         }
         §§goto(addr29);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§2H§ = null;
         loop0:
         while(true)
         {
            §§push(this.§6!C§);
            if(_loc3_)
            {
               if(§§pop().length <= 0)
               {
                  if(_loc3_ || _loc1_)
                  {
                     while(true)
                     {
                        §§push(this.§+Q§);
                        addr87:
                        while(§§pop().length > 0)
                        {
                           §§push(this.§+Q§);
                           if(!_loc2_)
                           {
                              break loop0;
                           }
                        }
                        if(!_loc2_)
                        {
                           this.§6!C§ = [];
                           if(!_loc2_)
                           {
                              addr97:
                              this.§+Q§ = [];
                           }
                           return;
                        }
                     }
                     addr85:
                  }
                  §§goto(addr97);
               }
               else
               {
                  §§push(this.§6!C§);
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_ = §§pop().shift();
                     if(!_loc2_)
                     {
                        _loc1_.clean();
                     }
                     continue;
                  }
               }
               §§goto(addr87);
            }
            break;
         }
         while(true)
         {
            _loc1_ = §§pop().shift();
            if(!_loc2_)
            {
               _loc1_.clean();
            }
            §§goto(addr85);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§2H§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(_loc15_ || param1)
         {
            §§push(param1);
            if(_loc15_)
            {
               §§push(§§pop() / 20);
               if(!_loc16_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         while(true)
         {
            §§push(this.§6!C§);
            if(_loc15_)
            {
               if(§§pop().length <= 0)
               {
                  §§push(this.§+Q§);
                  break;
               }
               §§push(this.§6!C§);
               if(_loc16_)
               {
                  break;
               }
               _loc5_ = §§pop().shift();
               §§push(Math.random() * (this.§8!%§ - this.§extends§));
               if(!_loc16_)
               {
                  §§push(this.§extends§);
                  if(_loc15_)
                  {
                     _loc6_ = Number(§§pop() + §§pop());
                     §§push(this.§9"§);
                     if(_loc15_)
                     {
                        §§push(§=!B§);
                        if(_loc15_)
                        {
                           if(§§pop() == §§pop())
                           {
                              §§push(-(Math.PI / 2));
                              if(!(_loc16_ && this))
                              {
                                 _loc7_ = Number(§§pop() * Math.random());
                                 _loc8_ = Number(Math.sin(_loc7_ - Math.PI / 2));
                                 if(_loc15_)
                                 {
                                    §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                    if(!(_loc16_ && param1))
                                    {
                                       _loc9_ = §§pop();
                                       if(_loc15_ || _loc3_)
                                       {
                                          addr434:
                                          §§push(_loc5_);
                                          §§push(_loc8_);
                                          if(!(_loc16_ && param1))
                                          {
                                             §§push(§§pop() * _loc6_);
                                          }
                                          §§pop().§,W§ = §§pop();
                                          if(_loc15_ || param1)
                                          {
                                             §§push(_loc5_);
                                             §§push(_loc9_);
                                             if(!(_loc16_ && this))
                                             {
                                                §§push(§§pop() * _loc6_);
                                             }
                                             §§pop().§5!<§ = §§pop();
                                             if(!_loc16_)
                                             {
                                                addr467:
                                                _loc5_.x = this.§ g§.x;
                                                if(_loc15_)
                                                {
                                                   _loc5_.y = this.§ g§.y;
                                                   addr479:
                                                   this.§+Q§.push(_loc5_);
                                                   addr483:
                                                   §§push(0.5);
                                                   if(!_loc16_)
                                                   {
                                                      addr490:
                                                      §§push(Number(§§pop() + Math.random() * 1.5));
                                                      if(_loc15_)
                                                      {
                                                         addr494:
                                                         _loc10_ = §§pop();
                                                         if(!_loc15_)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(0.2);
                                                      }
                                                   }
                                                   _loc11_ = §§pop();
                                                   _loc5_.§6k§ = §%!>§.§-]§.§?U§(_loc5_,{
                                                      "scaleX":_loc11_,
                                                      "scaleY":_loc11_
                                                   },{
                                                      "scaleX":_loc10_,
                                                      "scaleY":_loc10_
                                                   },5);
                                                   if(_loc16_)
                                                   {
                                                      continue;
                                                   }
                                                }
                                                _loc5_.§6k§.play();
                                                continue;
                                             }
                                             §§goto(addr483);
                                          }
                                          §§goto(addr479);
                                       }
                                       else
                                       {
                                          addr351:
                                          §§push(this.§extends§);
                                          §§push(2);
                                          if(!(_loc16_ && param1))
                                          {
                                             addr362:
                                             _loc12_ = §§pop() / §§pop();
                                             addr364:
                                             §§push(this.§8!%§);
                                             if(_loc15_ || this)
                                             {
                                                addr384:
                                                §§push(§§pop() / 2);
                                                if(!(_loc16_ && this))
                                                {
                                                   addr392:
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc13_ = §§pop();
                                                §§push(Math.random() * (_loc13_ - _loc12_));
                                                if(_loc15_ || _loc2_)
                                                {
                                                   §§push(_loc12_);
                                                   if(_loc15_ || _loc3_)
                                                   {
                                                      addr415:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            _loc6_ = §§pop();
                                                            if(_loc15_ || this)
                                                            {
                                                               §§goto(addr434);
                                                            }
                                                            §§goto(addr467);
                                                         }
                                                      }
                                                      §§goto(addr479);
                                                   }
                                                   §§goto(addr490);
                                                }
                                                §§goto(addr479);
                                             }
                                             §§goto(addr494);
                                          }
                                          §§goto(addr384);
                                       }
                                    }
                                    else
                                    {
                                       addr178:
                                       _loc7_ = §§pop();
                                       if(_loc15_ || param1)
                                       {
                                          §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                          if(_loc15_ || param1)
                                          {
                                             _loc8_ = §§pop();
                                             if(!(_loc15_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                             if(!(_loc16_ && _loc3_))
                                             {
                                                _loc9_ = §§pop();
                                                if(_loc15_ || _loc3_)
                                                {
                                                   §§goto(addr434);
                                                }
                                                else
                                                {
                                                   §§goto(addr351);
                                                }
                                             }
                                             else
                                             {
                                                addr348:
                                                _loc9_ = §§pop();
                                                if(_loc15_)
                                                {
                                                   §§goto(addr351);
                                                }
                                             }
                                             §§goto(addr364);
                                          }
                                          §§goto(addr362);
                                       }
                                    }
                                    §§goto(addr351);
                                 }
                                 §§goto(addr479);
                              }
                              else
                              {
                                 addr306:
                                 §§push(0.5);
                                 if(_loc15_ || param1)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc15_ || param1)
                                    {
                                       addr323:
                                       _loc7_ = Number(§§pop());
                                       if(!_loc16_)
                                       {
                                          addr333:
                                          _loc8_ = Number(Math.sin(_loc7_ + Math.PI));
                                          if(!(_loc16_ && _loc2_))
                                          {
                                             addr341:
                                             §§goto(addr348);
                                             §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                          }
                                          §§goto(addr362);
                                       }
                                       §§goto(addr479);
                                    }
                                    §§goto(addr333);
                                 }
                                 §§goto(addr415);
                              }
                           }
                           else
                           {
                              §§push(this.§9"§);
                              if(_loc15_)
                              {
                                 §§push(§`!<§);
                                 if(!(_loc16_ && param1))
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc15_)
                                       {
                                          §§push(Math.PI * (Math.random() - 0.5));
                                          if(!_loc16_)
                                          {
                                             §§push(0.5);
                                             if(!(_loc16_ && this))
                                             {
                                                addr177:
                                                §§goto(addr178);
                                                §§push(Number(§§pop() * §§pop()));
                                             }
                                             §§goto(addr490);
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr384);
                                    }
                                    else
                                    {
                                       §§push(this.§9"§);
                                       if(_loc15_)
                                       {
                                          addr235:
                                          §§push(§^W§);
                                          if(!(_loc16_ && _loc2_))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc16_)
                                                {
                                                   §§push(Math.PI / 2);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop() * Math.random());
                                                      if(!(_loc16_ && _loc2_))
                                                      {
                                                         _loc7_ = Number(§§pop());
                                                         if(!_loc15_)
                                                         {
                                                            continue;
                                                         }
                                                         _loc8_ = Number(Math.sin(_loc7_ + Math.PI / 2));
                                                         if(_loc15_)
                                                         {
                                                            _loc9_ = Number(Math.cos(_loc7_ + Math.PI / 2));
                                                            if(!_loc15_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr434);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr351);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr323);
                                                      }
                                                      §§goto(addr479);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr323);
                                                   }
                                                }
                                                §§goto(addr434);
                                             }
                                             else
                                             {
                                                §§push(this.§9"§);
                                             }
                                             §§goto(addr434);
                                          }
                                          addr294:
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc16_)
                                             {
                                                §§push(Math.PI * (Math.random() - 0.5));
                                                if(!_loc16_)
                                                {
                                                   §§goto(addr306);
                                                }
                                                §§goto(addr362);
                                             }
                                             §§goto(addr341);
                                          }
                                          §§goto(addr434);
                                       }
                                    }
                                    §§goto(addr434);
                                 }
                              }
                              §§goto(addr294);
                              §§push(§?A§);
                           }
                           §§goto(addr434);
                        }
                        §§goto(addr294);
                     }
                     §§goto(addr235);
                  }
                  §§goto(addr415);
               }
               §§goto(addr392);
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(!(_loc16_ && param1))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(!(_loc16_ && _loc2_))
         {
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(!_loc15_)
               {
                  break;
               }
               _loc5_ = this.§+Q§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§5!<§);
               if(_loc15_)
               {
                  §§push(this.§<#§);
                  if(!_loc16_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§5!<§ = §§pop();
               if(_loc15_)
               {
                  if(_loc5_.§5!<§ > this.§4l§)
                  {
                     if(_loc16_ && _loc2_)
                     {
                        continue;
                     }
                     _loc5_.§5!<§ = this.§4l§;
                     if(!(_loc16_ && this))
                     {
                        addr602:
                        _loc5_.x += _loc5_.§,W§ * param1;
                        _loc5_.y += _loc5_.§5!<§ * param1;
                        _loc5_.rotation += 5 * param1;
                        if(_loc5_.x < -_loc5_.width / 2)
                        {
                           addr636:
                           §§push(true);
                           if(_loc15_ || param1)
                           {
                              _loc3_ = §§pop();
                              addr687:
                              §§push(this.§+Q§);
                              if(_loc15_)
                              {
                                 §§push(§§pop().length > 0);
                                 if(§§pop().length > 0)
                                 {
                                    §§pop();
                                    if(!_loc15_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc3_);
                                    if(_loc15_)
                                    {
                                       addr702:
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc15_)
                                    {
                                       continue;
                                    }
                                    addr708:
                                    if((_loc14_ = this.§+Q§.splice(_loc4_,1)) is §2H§)
                                    {
                                       if(_loc15_)
                                       {
                                          _loc14_.clean();
                                          if(_loc15_)
                                          {
                                             addr733:
                                             _loc5_.x = -2000;
                                             if(_loc15_ || _loc3_)
                                             {
                                             }
                                             addr746:
                                             §§push(_loc4_);
                                             if(!(_loc16_ && _loc2_))
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc4_ = §§pop();
                                             continue;
                                          }
                                          _loc5_.y = -2000;
                                          §§goto(addr746);
                                       }
                                    }
                                 }
                                 §§goto(addr733);
                              }
                              §§goto(addr708);
                           }
                           §§goto(addr702);
                        }
                        else if(_loc5_.x > this.§@v§ + _loc5_.width / 2)
                        {
                           if(_loc15_)
                           {
                              §§push(true);
                              if(!(_loc16_ && _loc3_))
                              {
                                 _loc3_ = §§pop();
                                 addr667:
                                 §§goto(addr687);
                              }
                              §§goto(addr702);
                           }
                           §§goto(addr667);
                        }
                        else if(_loc5_.y > this.§4U§ + _loc5_.height / 2)
                        {
                           _loc3_ = true;
                           if(!(_loc16_ && _loc2_))
                           {
                              §§goto(addr687);
                           }
                           §§goto(addr708);
                        }
                        §§goto(addr687);
                     }
                     §§goto(addr636);
                  }
               }
               §§goto(addr602);
            }
         }
      }
   }
}
