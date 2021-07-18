package §5!`§
{
   import §9!n§.§@!T§;
   import §?!-§.§'!V§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class § !c§ extends Sprite
   {
      
      public static const §&$§:int = 0;
      
      public static const §#4§:int = 1;
      
      public static const §%p§:int = 2;
      
      public static const §2V§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §&$§ = 0;
            if(_loc1_ || _loc1_)
            {
               §#4§ = 1;
               if(_loc1_ || _loc1_)
               {
                  §%p§ = 2;
                  if(!_loc2_)
                  {
                     addr68:
                     §2V§ = 3;
                  }
               }
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr68);
      }
      
      private const §'!8§:uint = 40;
      
      private const §@8§:Number = 0.3;
      
      private const §%!v§:Number = 25;
      
      private const §'!n§:Number = 10;
      
      private const §^P§:Number = 9;
      
      private var §@4§:int;
      
      private var § 5§:int;
      
      private var §=m§:Array;
      
      private var §&9§:Array;
      
      private var §0!b§:Point;
      
      private var §2[§:int;
      
      public function § !c§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:§#!S§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(_loc13_)
         {
            super();
            if(!_loc14_)
            {
               this.§@4§ = param1;
               if(_loc13_ || param1)
               {
                  this.§ 5§ = param2;
               }
            }
         }
         var _loc7_:Number = Math.min(§'!V§.§'A§,§'!V§.§9r§);
         var _loc8_:Number = Math.max(§'!V§.§'A§,§'!V§.§9r§);
         if(_loc13_)
         {
            §§push(param3);
            if(!(_loc14_ && param3))
            {
               §§push(§'!V§.§9r§);
               if(_loc13_ || param2)
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc14_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc14_ && param2))
                     {
                        param3 = §§pop();
                        addr99:
                        §§push(param4);
                        if(_loc13_)
                        {
                           addr104:
                           addr102:
                           §§push(§§pop() / §'!V§.§'A§);
                           if(!_loc13_)
                           {
                           }
                           addr108:
                           param4 = §§pop();
                           if(!_loc14_)
                           {
                              this.§2[§ = param5;
                           }
                           this.§0!b§ = new Point(param3,param4);
                           if(_loc13_)
                           {
                              this.§=m§ = [];
                              this.§&9§ = [];
                           }
                           var _loc12_:int = 0;
                           while(_loc12_ < param6)
                           {
                              §§push(§§findproperty(§#!S§));
                              §§push(Math.random() * 40);
                              if(_loc13_)
                              {
                                 §§push(§§pop() + 10);
                              }
                              (_loc9_ = new §§pop().§#!S§(§§pop())).x = -2000;
                              if(_loc13_ || this)
                              {
                                 _loc9_.y = -2000;
                                 if(_loc13_ || param1)
                                 {
                                    this.addChild(_loc9_);
                                    if(!_loc14_)
                                    {
                                       this.§=m§[_loc12_] = _loc9_;
                                       if(_loc13_)
                                       {
                                          _loc12_++;
                                       }
                                    }
                                 }
                              }
                           }
                           if(!_loc14_)
                           {
                              this.scaleX = _loc8_;
                              if(!_loc14_)
                              {
                                 addr197:
                                 this.scaleY = _loc8_;
                              }
                              return;
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr108);
                     }
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr108);
               }
               §§goto(addr104);
            }
            §§goto(addr102);
         }
         §§goto(addr99);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§#!S§ = null;
         loop0:
         while(true)
         {
            §§push(this.§=m§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop().length <= 0)
               {
                  if(_loc2_)
                  {
                     while(true)
                     {
                        §§push(this.§&9§);
                        addr86:
                        while(§§pop().length > 0)
                        {
                           §§push(this.§&9§);
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                        }
                        if(!(_loc3_ && this))
                        {
                           this.§=m§ = [];
                           if(!_loc3_)
                           {
                              this.§&9§ = [];
                           }
                        }
                     }
                     addr84:
                  }
                  return;
               }
               §§push(this.§=m§);
               if(!(_loc3_ && _loc1_))
               {
                  _loc1_ = §§pop().shift();
                  if(_loc2_)
                  {
                     _loc1_.clean();
                  }
                  continue;
               }
               §§goto(addr86);
            }
            break;
         }
         while(true)
         {
            _loc1_ = §§pop().shift();
            if(!_loc3_)
            {
               _loc1_.clean();
            }
            §§goto(addr84);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:* = false;
         var _loc5_:§#!S§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(!_loc15_)
         {
            §§push(param1);
            if(_loc16_ || _loc2_)
            {
               §§push(§§pop() / 20);
               if(!(_loc15_ && this))
               {
                  addr60:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               addr62:
               loop0:
               while(true)
               {
                  §§push(this.§=m§);
                  if(_loc16_ || _loc3_)
                  {
                     while(§§pop().length > 0)
                     {
                        §§push(this.§=m§);
                        if(_loc15_ && _loc3_)
                        {
                           continue;
                        }
                        _loc5_ = §§pop().shift();
                        §§push(Math.random() * (this.§%!v§ - this.§'!n§));
                        if(_loc16_)
                        {
                           §§push(this.§'!n§);
                           if(_loc16_ || _loc3_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc16_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!_loc15_)
                                 {
                                    _loc6_ = §§pop();
                                    if(_loc16_ || _loc3_)
                                    {
                                       §§push(this.§2[§);
                                       if(_loc16_)
                                       {
                                          §§push(§&$§);
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc16_ || param1)
                                                {
                                                   §§push(Math.PI / 2);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(-§§pop() * Math.random());
                                                      if(_loc16_ || _loc3_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc16_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(!(_loc15_ && this))
                                                            {
                                                               §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                               if(_loc16_ || _loc2_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  _loc9_ = Number(Math.cos(_loc7_ - Math.PI / 2));
                                                                  addr435:
                                                                  §§push(_loc5_);
                                                                  §§push(_loc8_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(§§pop() * _loc6_);
                                                                  }
                                                                  §§pop().§!!P§ = §§pop();
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     §§push(_loc5_);
                                                                     §§push(_loc9_);
                                                                     if(_loc16_ || _loc2_)
                                                                     {
                                                                        §§push(§§pop() * _loc6_);
                                                                     }
                                                                     §§pop().§9<§ = §§pop();
                                                                     if(_loc16_ || param1)
                                                                     {
                                                                        addr468:
                                                                        _loc5_.x = this.§0!b§.x;
                                                                        _loc5_.y = this.§0!b§.y;
                                                                        this.§&9§.push(_loc5_);
                                                                        if(!_loc15_)
                                                                        {
                                                                           addr497:
                                                                           addr498:
                                                                           addr484:
                                                                           §§push(0.5);
                                                                           if(!(_loc15_ && param1))
                                                                           {
                                                                              addr496:
                                                                              §§push(§§pop() + Math.random() * 1.5);
                                                                           }
                                                                           _loc10_ = §§pop();
                                                                           _loc11_ = 0.2;
                                                                           addr499:
                                                                           if(!(_loc16_ || _loc2_))
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        §§goto(addr499);
                                                                     }
                                                                     _loc5_.§=y§ = §@!T§.§`!t§.§8!"§(_loc5_,{
                                                                        "scaleX":_loc11_,
                                                                        "scaleY":_loc11_
                                                                     },{
                                                                        "scaleX":_loc10_,
                                                                        "scaleY":_loc10_
                                                                     },5);
                                                                     _loc5_.§=y§.play();
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr499);
                                                               }
                                                               else
                                                               {
                                                                  addr353:
                                                                  §§push(2);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc15_ && _loc3_))
                                                                        {
                                                                           addr367:
                                                                           _loc12_ = §§pop();
                                                                           if(!(_loc15_ && _loc2_))
                                                                           {
                                                                              §§push(this.§%!v§);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr389:
                                                                                 §§push(Number(§§pop() / 2));
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    addr394:
                                                                                    _loc13_ = §§pop();
                                                                                    if(!(_loc15_ && _loc2_))
                                                                                    {
                                                                                       addr402:
                                                                                       §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          addr410:
                                                                                          §§push(_loc12_);
                                                                                          if(!(_loc15_ && this))
                                                                                          {
                                                                                             addr418:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc16_ || param1)
                                                                                             {
                                                                                                addr426:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(_loc16_ || param1)
                                                                                                {
                                                                                                   addr434:
                                                                                                   _loc6_ = §§pop();
                                                                                                   §§goto(addr435);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr497);
                                                                                          }
                                                                                          §§goto(addr496);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr497);
                                                                                 }
                                                                                 §§goto(addr496);
                                                                              }
                                                                              §§goto(addr498);
                                                                           }
                                                                           §§goto(addr484);
                                                                        }
                                                                        §§goto(addr410);
                                                                     }
                                                                  }
                                                                  §§goto(addr389);
                                                               }
                                                            }
                                                            §§goto(addr497);
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                      §§goto(addr434);
                                                   }
                                                   §§goto(addr394);
                                                }
                                                else
                                                {
                                                   addr351:
                                                   §§push(this.§'!n§);
                                                }
                                                §§goto(addr353);
                                             }
                                             else
                                             {
                                                §§push(this.§2[§);
                                                if(!_loc15_)
                                                {
                                                   §§push(§#4§);
                                                   if(_loc16_)
                                                   {
                                                      addr192:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         §§push(Math.PI * (Math.random() - 0.5));
                                                         §§push(0.5);
                                                         if(!_loc15_)
                                                         {
                                                            addr203:
                                                            §§push(Number(§§pop() * §§pop()));
                                                            if(!_loc15_)
                                                            {
                                                               _loc7_ = §§pop();
                                                               if(!(_loc15_ && _loc2_))
                                                               {
                                                                  _loc8_ = Number(Math.sin(_loc7_ + Math.PI));
                                                                  §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                  if(_loc16_ || _loc2_)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc16_)
                                                                     {
                                                                        §§goto(addr435);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr351);
                                                                     }
                                                                  }
                                                                  §§goto(addr497);
                                                               }
                                                               else
                                                               {
                                                                  addr272:
                                                                  _loc8_ = Number(Math.sin(_loc7_ + Math.PI / 2));
                                                                  if(_loc16_ || _loc2_)
                                                                  {
                                                                     addr298:
                                                                     _loc9_ = Number(Math.cos(_loc7_ + Math.PI / 2));
                                                                     §§goto(addr435);
                                                                  }
                                                               }
                                                               §§goto(addr468);
                                                            }
                                                            else
                                                            {
                                                               addr267:
                                                               _loc7_ = Number(§§pop() * Math.random());
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr418);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§2[§);
                                                         if(!_loc15_)
                                                         {
                                                            addr245:
                                                            §§push(§%p§);
                                                            if(!(_loc15_ && _loc3_))
                                                            {
                                                               addr253:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(Math.PI / 2);
                                                                     if(!(_loc15_ && _loc2_))
                                                                     {
                                                                        §§goto(addr267);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr350:
                                                                        _loc9_ = §§pop();
                                                                        §§goto(addr351);
                                                                     }
                                                                  }
                                                                  §§goto(addr468);
                                                               }
                                                               else
                                                               {
                                                                  addr302:
                                                                  §§push(this.§2[§);
                                                                  §§push(§2V§);
                                                               }
                                                               §§goto(addr435);
                                                            }
                                                            if(§§pop() == §§pop())
                                                            {
                                                               §§push(Math.PI * (Math.random() - 0.5));
                                                               if(_loc16_)
                                                               {
                                                                  §§push(0.5);
                                                                  if(_loc16_ || this)
                                                                  {
                                                                     _loc7_ = Number(§§pop() * §§pop());
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                        if(!_loc15_)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              addr343:
                                                                              §§goto(addr350);
                                                                              §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                           }
                                                                           §§goto(addr468);
                                                                        }
                                                                        §§goto(addr426);
                                                                     }
                                                                     §§goto(addr402);
                                                                  }
                                                                  §§goto(addr496);
                                                               }
                                                               §§goto(addr497);
                                                            }
                                                            §§goto(addr435);
                                                         }
                                                         §§goto(addr302);
                                                      }
                                                   }
                                                   §§goto(addr253);
                                                }
                                                §§goto(addr245);
                                             }
                                          }
                                          §§goto(addr192);
                                       }
                                       §§goto(addr302);
                                    }
                                    §§goto(addr343);
                                 }
                                 §§goto(addr410);
                              }
                              §§goto(addr367);
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr298);
                     }
                     §§push(this.§&9§);
                     break;
                  }
                  break;
               }
               var _loc2_:int = §§pop().length;
               §§push(_loc2_);
               if(!(_loc15_ && _loc2_))
               {
                  §§push(int(§§pop() - 1));
               }
               var _loc4_:* = §§pop();
               if(_loc16_)
               {
                  loop2:
                  while(_loc4_ >= 0)
                  {
                     _loc3_ = false;
                     if(_loc15_)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc5_ = this.§&9§[_loc4_];
                        §§push(_loc5_);
                        §§push(_loc5_.§9<§);
                        if(!_loc15_)
                        {
                           §§push(this.§@8§);
                           if(_loc16_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§9<§ = §§pop();
                        if(!(_loc15_ && param1))
                        {
                           if(_loc5_.§9<§ > this.§^P§)
                           {
                              _loc5_.§9<§ = this.§^P§;
                           }
                        }
                        _loc5_.x += _loc5_.§!!P§ * param1;
                        _loc5_.y += _loc5_.§9<§ * param1;
                        if(!(_loc15_ && param1))
                        {
                           _loc5_.rotation += 5 * param1;
                           if(_loc15_ && _loc3_)
                           {
                              continue loop2;
                           }
                           if(_loc5_.x < -_loc5_.width / 2)
                           {
                              §§push(true);
                              if(_loc16_ || _loc2_)
                              {
                                 _loc3_ = §§pop();
                                 if(!_loc15_)
                                 {
                                    addr706:
                                    §§push(this.§&9§);
                                    if(!_loc15_)
                                    {
                                       §§push(§§pop().length > 0);
                                       if(!_loc15_)
                                       {
                                          addr715:
                                          if(§§pop())
                                          {
                                             if(_loc16_ || param1)
                                             {
                                                §§pop();
                                                addr726:
                                                §§push(Boolean(_loc3_));
                                             }
                                          }
                                       }
                                       if(§§pop())
                                       {
                                          addr730:
                                          if((_loc14_ = this.§&9§.splice(_loc4_,1)) is §#!S§)
                                          {
                                             if(_loc16_ || this)
                                             {
                                                _loc14_.clean();
                                                if(_loc16_)
                                                {
                                                   addr760:
                                                   _loc5_.x = -2000;
                                                   if(!_loc16_)
                                                   {
                                                   }
                                                   addr768:
                                                   §§push(_loc4_);
                                                   if(_loc16_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc4_ = §§pop();
                                                   continue loop2;
                                                }
                                                §§goto(addr768);
                                             }
                                             _loc5_.y = -2000;
                                             §§goto(addr768);
                                          }
                                       }
                                       §§goto(addr760);
                                    }
                                    §§goto(addr730);
                                 }
                                 else
                                 {
                                    addr679:
                                    §§goto(addr706);
                                 }
                              }
                              §§goto(addr715);
                           }
                           else if(_loc5_.x > this.§@4§ + _loc5_.width / 2)
                           {
                              if(_loc16_ || param1)
                              {
                                 _loc3_ = true;
                                 §§goto(addr679);
                              }
                              §§goto(addr730);
                           }
                           else if(_loc5_.y > this.§ 5§ + _loc5_.height / 2)
                           {
                              if(_loc16_ || this)
                              {
                                 §§push(true);
                                 if(_loc16_ || param1)
                                 {
                                    _loc3_ = §§pop();
                                    §§goto(addr706);
                                 }
                              }
                              §§goto(addr726);
                           }
                           §§goto(addr706);
                        }
                        §§goto(addr726);
                     }
                  }
                  return;
               }
               §§goto(addr565);
            }
            §§goto(addr60);
         }
         §§goto(addr62);
      }
   }
}
