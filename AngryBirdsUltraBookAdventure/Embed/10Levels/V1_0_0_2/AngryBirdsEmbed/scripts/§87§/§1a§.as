package §87§
{
   import §5H§.§[k§;
   import §`F§.§,B§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §1a§ extends Sprite
   {
      
      public static const §&§:int = 0;
      
      public static const §8U§:int = 1;
      
      public static const § ?§:int = 2;
      
      public static const §%_§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&§ = 0;
            if(!_loc2_)
            {
               addr33:
               §8U§ = 1;
               if(_loc1_)
               {
                  § ?§ = 2;
                  if(_loc2_)
                  {
                  }
                  §§goto(addr46);
               }
               §%_§ = 3;
            }
            addr46:
            return;
         }
         §§goto(addr33);
      }
      
      private const §9P§:uint = 40;
      
      private const §@!C§:Number = 0.3;
      
      private const §1!=§:Number = 25;
      
      private const §>e§:Number = 10;
      
      private const §9k§:Number = 9;
      
      private var §1!>§:int;
      
      private var §+^§:int;
      
      private var §6!A§:Array;
      
      private var §3y§:Array;
      
      private var §!5§:Point;
      
      private var §1U§:int;
      
      public function §1a§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:§24§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(_loc14_ || param3)
         {
            super();
            if(_loc14_ || param3)
            {
               this.§1!>§ = param1;
               if(_loc14_)
               {
                  addr45:
                  this.§+^§ = param2;
               }
            }
            var _loc7_:Number = Math.min(§[k§.§@$§,§[k§.§3!5§);
            var _loc8_:Number = Math.max(§[k§.§@$§,§[k§.§3!5§);
            §§push(param3);
            if(_loc14_)
            {
               §§push(§[k§.§3!5§);
               if(_loc14_ || param1)
               {
                  §§push(§§pop() / §§pop());
                  if(!(_loc13_ && param2))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc13_)
                     {
                        param3 = §§pop();
                        §§push(param4);
                        if(_loc14_)
                        {
                           addr93:
                           §§push(§§pop() / §[k§.§@$§);
                           if(_loc14_ || param1)
                           {
                           }
                           addr112:
                           param4 = §§pop();
                           if(_loc14_ || param1)
                           {
                              this.§1U§ = param5;
                              if(_loc14_ || param3)
                              {
                                 this.§!5§ = new Point(param3,param4);
                                 this.§6!A§ = [];
                                 if(_loc14_ || param3)
                                 {
                                 }
                                 addr149:
                                 var _loc12_:int = 0;
                                 while(_loc12_ < param6)
                                 {
                                    §§push(§§findproperty(§24§));
                                    §§push(Math.random() * 40);
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop() + 10);
                                    }
                                    (_loc9_ = new §§pop().§24§(§§pop())).x = -2000;
                                    if(!_loc13_)
                                    {
                                       _loc9_.y = -2000;
                                       if(_loc13_)
                                       {
                                          continue;
                                       }
                                       this.addChild(_loc9_);
                                       if(!_loc14_)
                                       {
                                          continue;
                                       }
                                    }
                                    this.§6!A§[_loc12_] = _loc9_;
                                    if(!(_loc13_ && param3))
                                    {
                                       _loc12_++;
                                    }
                                 }
                                 if(_loc14_ || param1)
                                 {
                                    this.scaleX = _loc8_;
                                    if(_loc14_)
                                    {
                                       addr218:
                                       this.scaleY = _loc8_;
                                    }
                                    return;
                                 }
                                 §§goto(addr218);
                              }
                              this.§3y§ = [];
                           }
                           §§goto(addr149);
                        }
                     }
                     §§goto(addr112);
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr93);
         }
         §§goto(addr45);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§24§ = null;
         loop0:
         while(true)
         {
            §§push(this.§6!A§);
            if(_loc3_)
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§6!A§);
                  if(_loc3_)
                  {
                     _loc1_ = §§pop().shift();
                     if(!(_loc2_ && _loc3_))
                     {
                        _loc1_.clean();
                     }
                     continue loop0;
                  }
               }
               if(!(_loc2_ && _loc2_))
               {
                  while(true)
                  {
                     §§push(this.§3y§);
                     while(§§pop().length > 0)
                     {
                        §§push(this.§3y§);
                        if(!(_loc2_ && this))
                        {
                           break loop0;
                        }
                     }
                     if(_loc3_ || _loc1_)
                     {
                        this.§6!A§ = [];
                        if(_loc2_)
                        {
                        }
                        §§goto(addr115);
                     }
                     this.§3y§ = [];
                  }
                  addr95:
               }
               addr115:
               return;
            }
            break;
         }
         while(true)
         {
            _loc1_ = §§pop().shift();
            if(!(_loc2_ && _loc2_))
            {
               _loc1_.clean();
            }
            §§goto(addr95);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§24§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(_loc15_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc16_ && this))
            {
               §§push(§§pop() / 20);
               if(!_loc16_)
               {
                  addr59:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               addr61:
               loop0:
               while(true)
               {
                  §§push(this.§6!A§);
                  if(!(_loc16_ && _loc3_))
                  {
                     while(§§pop().length > 0)
                     {
                        §§push(this.§6!A§);
                        if(_loc16_ && _loc3_)
                        {
                           continue;
                        }
                        _loc5_ = §§pop().shift();
                        §§push(Math.random() * (this.§1!=§ - this.§>e§));
                        if(!(_loc16_ && _loc3_))
                        {
                           §§push(this.§>e§);
                           if(_loc15_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc16_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc16_ && _loc2_))
                                 {
                                    _loc6_ = §§pop();
                                    if(!_loc16_)
                                    {
                                       §§push(this.§1U§);
                                       if(_loc15_)
                                       {
                                          §§push(§&§);
                                          if(_loc15_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc16_)
                                                {
                                                   §§push(Number(-(Math.PI / 2) * Math.random()));
                                                   if(!_loc16_)
                                                   {
                                                      addr129:
                                                      _loc7_ = §§pop();
                                                      if(!(_loc16_ && _loc2_))
                                                      {
                                                         §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                         if(_loc15_ || param1)
                                                         {
                                                            _loc8_ = §§pop();
                                                            if(_loc15_)
                                                            {
                                                               _loc9_ = Number(Math.cos(_loc7_ - Math.PI / 2));
                                                               addr427:
                                                               §§push(_loc5_);
                                                               §§push(_loc8_);
                                                               if(_loc15_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() * _loc6_);
                                                               }
                                                               §§pop().§#!0§ = §§pop();
                                                               addr166:
                                                            }
                                                            §§push(_loc5_);
                                                            §§push(_loc9_);
                                                            if(_loc15_ || this)
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            §§pop().§ ^§ = §§pop();
                                                            _loc5_.x = this.§!5§.x;
                                                            _loc5_.y = this.§!5§.y;
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               addr468:
                                                               this.§3y§.push(_loc5_);
                                                               if(_loc16_)
                                                               {
                                                               }
                                                               addr486:
                                                               §§push(0.2);
                                                               if(_loc15_)
                                                               {
                                                                  addr489:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               _loc11_ = §§pop();
                                                               _loc5_.§@U§ = §,B§.§^n§.§2E§(_loc5_,{
                                                                  "scaleX":_loc11_,
                                                                  "scaleY":_loc11_
                                                               },{
                                                                  "scaleX":_loc10_,
                                                                  "scaleY":_loc10_
                                                               },5);
                                                               if(_loc15_ || param1)
                                                               {
                                                                  addr515:
                                                                  _loc5_.§@U§.play();
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                         addr222:
                                                         _loc9_ = §§pop();
                                                         if(!_loc16_)
                                                         {
                                                            §§goto(addr427);
                                                         }
                                                         addr479:
                                                         §§push(0.5 + Math.random() * 1.5);
                                                         if(_loc15_)
                                                         {
                                                            addr482:
                                                            §§push(Number(§§pop()));
                                                            if(_loc15_)
                                                            {
                                                               addr485:
                                                               _loc10_ = §§pop();
                                                               §§goto(addr486);
                                                            }
                                                         }
                                                         §§goto(addr486);
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   else
                                                   {
                                                      addr280:
                                                      _loc8_ = §§pop();
                                                      §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                      if(_loc15_)
                                                      {
                                                         _loc9_ = §§pop();
                                                         if(_loc15_)
                                                         {
                                                            §§goto(addr427);
                                                         }
                                                         else
                                                         {
                                                            addr401:
                                                            §§push(Math.random() * (_loc13_ - _loc12_));
                                                            §§push(_loc12_);
                                                            if(!(_loc16_ && _loc2_))
                                                            {
                                                               addr415:
                                                               §§push(Number(§§pop() + §§pop()));
                                                               if(_loc15_)
                                                               {
                                                                  addr419:
                                                                  _loc6_ = §§pop();
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     §§goto(addr427);
                                                                  }
                                                                  §§goto(addr486);
                                                               }
                                                               §§goto(addr489);
                                                            }
                                                            §§goto(addr479);
                                                         }
                                                      }
                                                      §§goto(addr419);
                                                   }
                                                }
                                                §§goto(addr486);
                                             }
                                             else
                                             {
                                                §§push(this.§1U§);
                                                if(_loc15_)
                                                {
                                                   §§push(§8U§);
                                                   if(!_loc16_)
                                                   {
                                                      addr174:
                                                      if(§§pop() == §§pop())
                                                      {
                                                         §§push(Math.PI * (Math.random() - 0.5));
                                                         §§push(0.5);
                                                         if(!(_loc16_ && this))
                                                         {
                                                            addr191:
                                                            _loc7_ = Number(§§pop() * §§pop());
                                                            if(_loc15_ || this)
                                                            {
                                                               _loc8_ = Number(Math.sin(_loc7_ + Math.PI));
                                                               if(_loc15_ || param1)
                                                               {
                                                                  §§goto(addr222);
                                                                  §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                               }
                                                               §§goto(addr427);
                                                            }
                                                            §§goto(addr468);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr415);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§1U§);
                                                         if(!_loc16_)
                                                         {
                                                            addr230:
                                                            §§push(§ ?§);
                                                            if(!(_loc16_ && param1))
                                                            {
                                                               addr238:
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(Math.PI / 2);
                                                                     if(_loc15_ || this)
                                                                     {
                                                                        §§push(§§pop() * Math.random());
                                                                        if(!(_loc16_ && this))
                                                                        {
                                                                           _loc7_ = Number(§§pop());
                                                                           §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                                           if(_loc15_ || _loc2_)
                                                                           {
                                                                              §§goto(addr280);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr348:
                                                                              _loc9_ = §§pop();
                                                                              §§push(this.§>e§);
                                                                              §§push(2);
                                                                              if(!(_loc16_ && this))
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!(_loc16_ && _loc2_))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc15_ || param1)
                                                                                    {
                                                                                       _loc12_ = §§pop();
                                                                                       addr388:
                                                                                       §§push(this.§1!=§ / 2);
                                                                                       if(_loc15_ || param1)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             addr400:
                                                                                             _loc13_ = §§pop();
                                                                                             §§goto(addr401);
                                                                                          }
                                                                                          §§goto(addr482);
                                                                                       }
                                                                                       §§goto(addr479);
                                                                                    }
                                                                                    §§goto(addr388);
                                                                                 }
                                                                                 §§goto(addr400);
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                        }
                                                                        §§goto(addr419);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr329:
                                                                     §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                     if(_loc15_)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§goto(addr348);
                                                                           §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                        }
                                                                        §§goto(addr479);
                                                                     }
                                                                  }
                                                                  §§goto(addr388);
                                                               }
                                                               else
                                                               {
                                                                  addr298:
                                                                  §§push(this.§1U§);
                                                                  §§push(§%_§);
                                                               }
                                                               §§goto(addr427);
                                                            }
                                                            if(§§pop() == §§pop())
                                                            {
                                                               §§push(Math.PI * (Math.random() - 0.5));
                                                               if(!(_loc16_ && param1))
                                                               {
                                                                  §§push(0.5);
                                                                  if(!(_loc16_ && param1))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        _loc7_ = Number(§§pop());
                                                                        if(!_loc16_)
                                                                        {
                                                                           §§goto(addr329);
                                                                        }
                                                                        §§goto(addr515);
                                                                     }
                                                                     §§goto(addr348);
                                                                  }
                                                                  §§goto(addr479);
                                                               }
                                                               §§goto(addr485);
                                                            }
                                                            §§goto(addr427);
                                                         }
                                                         §§goto(addr298);
                                                      }
                                                      §§goto(addr427);
                                                   }
                                                   §§goto(addr238);
                                                }
                                                §§goto(addr230);
                                             }
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr230);
                                    }
                                    §§goto(addr427);
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr419);
                           }
                           §§goto(addr479);
                        }
                        §§goto(addr129);
                     }
                     §§push(this.§3y§);
                     break;
                  }
                  break;
               }
               var _loc2_:int = §§pop().length;
               §§push(_loc2_);
               if(!_loc16_)
               {
                  §§push(int(§§pop() - 1));
               }
               var _loc4_:* = §§pop();
               if(!(_loc16_ && _loc2_))
               {
                  loop2:
                  for(; _loc4_ >= 0; §§push(_loc4_),if(_loc15_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  },_loc4_ = §§pop())
                  {
                     _loc3_ = false;
                     if(!(_loc15_ || _loc3_))
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc5_ = this.§3y§[_loc4_];
                        §§push(_loc5_);
                        §§push(_loc5_.§ ^§);
                        if(!(_loc16_ && this))
                        {
                           §§push(this.§@!C§);
                           if(!(_loc16_ && this))
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§ ^§ = §§pop();
                        if(_loc5_.§ ^§ > this.§9k§)
                        {
                           _loc5_.§ ^§ = this.§9k§;
                           if(!(_loc16_ && _loc3_))
                           {
                              addr604:
                              _loc5_.x += _loc5_.§#!0§ * param1;
                           }
                           _loc5_.y += _loc5_.§ ^§ * param1;
                           _loc5_.rotation += 5 * param1;
                           if(_loc5_.x < -_loc5_.width / 2)
                           {
                              if(_loc15_)
                              {
                                 _loc3_ = true;
                                 if(_loc15_ || param1)
                                 {
                                    addr682:
                                    §§push(this.§3y§);
                                    if(_loc15_)
                                    {
                                       if(!(§§pop().length > 0 && _loc3_))
                                       {
                                          continue loop2;
                                       }
                                       §§push(this.§3y§);
                                    }
                                    if((_loc14_ = §§pop().splice(_loc4_,1)) is §24§)
                                    {
                                       if(_loc15_)
                                       {
                                          _loc14_.clean();
                                          if(!(_loc15_ || param1))
                                          {
                                             continue loop2;
                                          }
                                       }
                                    }
                                    _loc5_.x = -2000;
                                    if(_loc15_)
                                    {
                                       _loc5_.y = -2000;
                                    }
                                    continue loop2;
                                    addr649:
                                 }
                                 else
                                 {
                                    addr673:
                                    §§push(true);
                                    if(!(_loc16_ && _loc2_))
                                    {
                                       _loc3_ = §§pop();
                                       §§goto(addr682);
                                    }
                                 }
                                 §§goto(addr693);
                              }
                              §§goto(addr649);
                           }
                           else if(_loc5_.x > this.§1!>§ + _loc5_.width / 2)
                           {
                              _loc3_ = true;
                           }
                           else if(_loc5_.y > this.§+^§ + _loc5_.height / 2)
                           {
                              §§goto(addr673);
                           }
                           §§goto(addr682);
                        }
                        §§goto(addr604);
                     }
                  }
                  return;
               }
               §§goto(addr559);
            }
            §§goto(addr59);
         }
         §§goto(addr61);
      }
   }
}
