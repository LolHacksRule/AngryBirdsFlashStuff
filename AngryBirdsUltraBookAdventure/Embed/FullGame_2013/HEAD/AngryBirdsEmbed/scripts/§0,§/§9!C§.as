package §0,§
{
   import §#P§.§@7§;
   import §5!L§.§=w§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §9!C§ extends Sprite
   {
      
      public static const §0T§:int = 0;
      
      public static const §>!9§:int = 1;
      
      public static const §=0§:int = 2;
      
      public static const §'w§:int = 3;
      
      public static const §9!H§:uint = 40;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0T§ = 0;
            if(_loc1_)
            {
               §>!9§ = 1;
               if(!_loc2_)
               {
                  §=0§ = 2;
                  if(_loc1_ || _loc1_)
                  {
                     addr48:
                     §'w§ = 3;
                     if(_loc2_)
                     {
                     }
                     §§goto(addr56);
                  }
               }
               §9!H§ = 40;
               addr56:
               return;
            }
         }
         §§goto(addr48);
      }
      
      private const §<U§:Number = 0.3;
      
      private const §<!?§:Number = 25;
      
      private const §>h§:Number = 10;
      
      private const §;5§:Number = 9;
      
      private var §"<§:int;
      
      private var §&e§:int;
      
      private var §>!1§:Array;
      
      private var §6G§:Array;
      
      private var §#!N§:Point;
      
      private var §^!+§:int;
      
      public function §9!C§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:Boolean = false)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:§4F§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(!_loc15_)
         {
            super();
            if(!_loc15_)
            {
               addr29:
               this.§"<§ = param1;
               if(!(_loc15_ && param1))
               {
                  addr39:
                  this.§&e§ = param2;
               }
               var _loc8_:Number = Math.min(§=w§.§'c§,§=w§.§continue§);
               var _loc9_:Number = Math.max(§=w§.§'c§,§=w§.§continue§);
               §§push(param3);
               if(!(_loc15_ && param1))
               {
                  §§push(§=w§.§continue§);
                  if(!_loc15_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc14_ || param2)
                     {
                        §§push(Number(§§pop()));
                        if(_loc14_)
                        {
                           param3 = §§pop();
                           §§push(param4);
                           if(_loc14_ || this)
                           {
                              addr90:
                              §§push(§§pop() / §=w§.§'c§);
                              if(_loc14_ || param1)
                              {
                                 addr110:
                                 §§push(Number(§§pop()));
                              }
                           }
                           param4 = §§pop();
                           this.§^!+§ = param5;
                           if(_loc14_ || this)
                           {
                              this.§#!N§ = new Point(param3,param4);
                              if(_loc14_ || param3)
                              {
                                 this.§>!1§ = [];
                                 this.§6G§ = [];
                              }
                           }
                           var _loc13_:int = 0;
                           while(_loc13_ < param6)
                           {
                              §§push(§§findproperty(§4F§));
                              §§push(Math.random() * 40);
                              if(_loc14_)
                              {
                                 §§push(§§pop() + 10);
                              }
                              (_loc10_ = new §§pop().§4F§(§§pop(),param7)).x = -2000;
                              if(!_loc15_)
                              {
                                 _loc10_.y = -2000;
                                 if(!_loc15_)
                                 {
                                    this.addChild(_loc10_);
                                    if(!(_loc15_ && param3))
                                    {
                                       addr188:
                                       this.§>!1§[_loc13_] = _loc10_;
                                       if(_loc15_)
                                       {
                                          continue;
                                       }
                                    }
                                 }
                                 _loc13_++;
                                 continue;
                              }
                              §§goto(addr188);
                           }
                           if(_loc14_)
                           {
                              this.scaleX = _loc9_;
                              if(_loc14_ || param3)
                              {
                                 addr211:
                                 this.scaleY = _loc9_;
                              }
                              return;
                           }
                           §§goto(addr211);
                        }
                     }
                  }
                  §§goto(addr90);
               }
               §§goto(addr110);
            }
            §§goto(addr39);
         }
         §§goto(addr29);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§4F§ = null;
         loop0:
         while(true)
         {
            §§push(this.§>!1§);
            if(_loc3_ && this)
            {
               break;
            }
            if(§§pop().length <= 0)
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     §§push(this.§6G§);
                     break loop0;
                  }
                  addr84:
               }
               §§goto(addr104);
            }
            §§push(this.§>!1§);
            if(!_loc2_)
            {
               break;
            }
            _loc1_ = §§pop().shift();
            if(!_loc3_)
            {
               _loc1_.clean();
            }
         }
         while(§§pop().length > 0)
         {
            §§push(this.§6G§);
            if(_loc3_)
            {
               continue;
            }
            _loc1_ = §§pop().shift();
            if(_loc2_ || this)
            {
               _loc1_.clean();
            }
            §§goto(addr84);
         }
         if(!_loc3_)
         {
            this.§>!1§ = [];
            if(_loc2_ || this)
            {
               addr101:
               this.§6G§ = [];
            }
            addr104:
            return;
         }
         §§goto(addr101);
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:* = false;
         var _loc5_:§4F§ = null;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(!(_loc15_ && _loc2_))
         {
            §§push(param1);
            if(!(_loc15_ && this))
            {
               §§push(§§pop() / 20);
               if(_loc16_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this.§>!1§);
            if(!_loc15_)
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§>!1§);
                  if(!(_loc16_ || param1))
                  {
                     continue;
                  }
                  _loc5_ = §§pop().shift();
                  if(_loc16_ || param1)
                  {
                     §§push(Math.random() * (this.§<!?§ - this.§>h§));
                     if(_loc16_)
                     {
                        §§push(this.§>h§);
                        if(!_loc15_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc16_ || _loc2_)
                           {
                              _loc6_ = §§pop();
                              if(!(_loc15_ && _loc2_))
                              {
                                 §§push(this.§^!+§);
                                 if(!_loc15_)
                                 {
                                    §§push(§0T§);
                                    if(!(_loc15_ && this))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          §§push(-(Math.PI / 2) * Math.random());
                                          if(!_loc15_)
                                          {
                                             addr143:
                                             _loc7_ = Number(§§pop());
                                             if(_loc16_)
                                             {
                                                §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                if(_loc16_ || _loc2_)
                                                {
                                                   _loc8_ = §§pop();
                                                   if(_loc15_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                                   if(!(_loc15_ && _loc2_))
                                                   {
                                                      _loc9_ = §§pop();
                                                      addr434:
                                                      §§push(_loc5_);
                                                      §§push(_loc8_);
                                                      if(_loc16_)
                                                      {
                                                         §§push(§§pop() * _loc6_);
                                                      }
                                                      §§pop().§0F§ = §§pop();
                                                      if(_loc16_ || _loc2_)
                                                      {
                                                         §§push(_loc5_);
                                                         §§push(_loc9_);
                                                         if(_loc16_ || param1)
                                                         {
                                                            §§push(§§pop() * _loc6_);
                                                         }
                                                         §§pop().§]!5§ = §§pop();
                                                         addr460:
                                                         _loc5_.x = this.§#!N§.x;
                                                         if(_loc16_)
                                                         {
                                                            _loc5_.y = this.§#!N§.y;
                                                            if(!_loc16_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr474:
                                                            this.§6G§.push(_loc5_);
                                                            if(_loc15_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr480:
                                                            §§push(0.5);
                                                            if(!_loc15_)
                                                            {
                                                               addr487:
                                                               _loc10_ = §§pop() + Math.random() * 1.5;
                                                               addr483:
                                                               if(!_loc15_)
                                                               {
                                                                  addr492:
                                                                  §§push(0.2);
                                                                  if(!(_loc15_ && _loc2_))
                                                                  {
                                                                     addr500:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc11_ = §§pop();
                                                               }
                                                               _loc5_.§5§ = §@7§.§@6§.§3!%§(_loc5_,{
                                                                  "scaleX":_loc11_,
                                                                  "scaleY":_loc11_
                                                               },{
                                                                  "scaleX":_loc10_,
                                                                  "scaleY":_loc10_
                                                               },5);
                                                               if(_loc16_ || _loc3_)
                                                               {
                                                                  addr526:
                                                                  _loc5_.§5§.play();
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr500);
                                                         }
                                                         §§goto(addr492);
                                                      }
                                                      §§goto(addr526);
                                                   }
                                                   else
                                                   {
                                                      addr271:
                                                      §§push(Number(§§pop() * Math.random()));
                                                      if(!_loc15_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         _loc8_ = Number(Math.sin(_loc7_ + Math.PI / 2));
                                                         if(!(_loc15_ && _loc2_))
                                                         {
                                                            addr304:
                                                            _loc9_ = Number(Math.cos(_loc7_ + Math.PI / 2));
                                                            if(!(_loc15_ && _loc2_))
                                                            {
                                                               addr312:
                                                               §§goto(addr434);
                                                            }
                                                            else
                                                            {
                                                               addr363:
                                                               §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                               if(!_loc15_)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  §§push(this.§>h§);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(2);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        if(_loc16_ || param1)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc16_ || param1)
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              §§push(this.§<!?§);
                                                                              if(!(_loc15_ && param1))
                                                                              {
                                                                                 addr417:
                                                                                 §§push(Number(§§pop() / 2));
                                                                              }
                                                                              _loc13_ = §§pop();
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr428:
                                                                                 §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                 §§push(_loc12_);
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    _loc6_ = §§pop() + §§pop();
                                                                                    §§goto(addr434);
                                                                                 }
                                                                                 §§goto(addr487);
                                                                              }
                                                                              §§goto(addr460);
                                                                           }
                                                                           §§goto(addr483);
                                                                        }
                                                                        §§goto(addr428);
                                                                     }
                                                                     §§goto(addr417);
                                                                  }
                                                                  §§goto(addr492);
                                                               }
                                                               §§goto(addr417);
                                                            }
                                                         }
                                                         §§goto(addr474);
                                                      }
                                                      else
                                                      {
                                                         addr326:
                                                         §§push(0.5);
                                                         if(_loc16_)
                                                         {
                                                            addr329:
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc15_ && _loc3_))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc15_)
                                                               {
                                                                  addr340:
                                                                  _loc7_ = §§pop();
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     _loc8_ = Number(Math.sin(_loc7_ + Math.PI));
                                                                     if(_loc16_ || param1)
                                                                     {
                                                                        §§goto(addr363);
                                                                     }
                                                                  }
                                                                  §§goto(addr428);
                                                               }
                                                               §§goto(addr492);
                                                            }
                                                            §§goto(addr340);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr487);
                                                }
                                                §§goto(addr304);
                                             }
                                             else
                                             {
                                                addr226:
                                                _loc8_ = Number(Math.sin(_loc7_ + Math.PI));
                                                §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                if(_loc16_)
                                                {
                                                   _loc9_ = §§pop();
                                                   if(!_loc15_)
                                                   {
                                                      addr246:
                                                      §§goto(addr434);
                                                   }
                                                   §§goto(addr480);
                                                }
                                             }
                                             §§goto(addr500);
                                          }
                                          §§goto(addr340);
                                       }
                                       else
                                       {
                                          §§push(this.§^!+§);
                                          if(_loc16_ || param1)
                                          {
                                             addr192:
                                             §§push(§>!9§);
                                             if(_loc16_ || _loc2_)
                                             {
                                                addr200:
                                                if(§§pop() == §§pop())
                                                {
                                                   if(_loc16_ || _loc2_)
                                                   {
                                                      §§push(Math.PI * (Math.random() - 0.5));
                                                      §§push(0.5);
                                                      if(_loc16_ || this)
                                                      {
                                                         addr225:
                                                         _loc7_ = Number(§§pop() * §§pop());
                                                         addr223:
                                                         §§goto(addr226);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr329);
                                                      }
                                                   }
                                                   §§goto(addr246);
                                                }
                                                else
                                                {
                                                   §§push(this.§^!+§);
                                                   if(!_loc15_)
                                                   {
                                                      addr251:
                                                      §§push(§=0§);
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         addr259:
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!(_loc15_ && this))
                                                            {
                                                               §§goto(addr271);
                                                               §§push(Math.PI / 2);
                                                            }
                                                            §§goto(addr363);
                                                         }
                                                         else
                                                         {
                                                            addr315:
                                                            §§push(this.§^!+§);
                                                            §§push(§'w§);
                                                         }
                                                         §§goto(addr434);
                                                      }
                                                      if(§§pop() == §§pop())
                                                      {
                                                         §§push(Math.PI * (Math.random() - 0.5));
                                                         if(!_loc15_)
                                                         {
                                                            §§goto(addr326);
                                                         }
                                                         §§goto(addr417);
                                                      }
                                                      §§goto(addr434);
                                                   }
                                                   §§goto(addr315);
                                                }
                                             }
                                             §§goto(addr259);
                                          }
                                          §§goto(addr251);
                                       }
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr312);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr225);
                  }
                  §§goto(addr480);
               }
               §§push(this.§6G§);
               break;
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(_loc16_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(!_loc15_)
         {
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(_loc15_ && _loc2_)
               {
                  break;
               }
               _loc5_ = this.§6G§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§]!5§);
               if(_loc16_ || param1)
               {
                  §§push(this.§<U§);
                  if(!(_loc15_ && _loc2_))
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§]!5§ = §§pop();
               if(!_loc15_)
               {
                  if(_loc5_.§]!5§ > this.§;5§)
                  {
                     if(!_loc15_)
                     {
                        _loc5_.§]!5§ = this.§;5§;
                        if(_loc16_ || param1)
                        {
                           addr609:
                           _loc5_.x += _loc5_.§0F§ * param1;
                           _loc5_.y += _loc5_.§]!5§ * param1;
                           if(_loc16_ || this)
                           {
                              _loc5_.rotation += 5 * param1;
                              if(_loc5_.x < -_loc5_.width / 2)
                              {
                                 addr650:
                                 §§push(true);
                                 if(!_loc15_)
                                 {
                                    _loc3_ = §§pop();
                                    addr696:
                                    §§push(this.§6G§);
                                    if(_loc16_ || this)
                                    {
                                       addr708:
                                       §§push(§§pop().length > 0);
                                       if(§§pop().length > 0)
                                       {
                                          if(!_loc15_)
                                          {
                                             §§pop();
                                             if(!(_loc16_ || param1))
                                             {
                                                continue;
                                             }
                                             addr720:
                                             §§push(_loc3_);
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          addr725:
                                          if((_loc14_ = this.§6G§.splice(_loc4_,1)) is §4F§)
                                          {
                                             if(!(_loc15_ && _loc2_))
                                             {
                                                _loc14_.clean();
                                                if(_loc16_)
                                                {
                                                   addr755:
                                                   _loc5_.x = -2000;
                                                   if(_loc16_ || _loc3_)
                                                   {
                                                   }
                                                   addr768:
                                                   §§push(_loc4_);
                                                   if(!_loc15_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc4_ = §§pop();
                                                   continue;
                                                }
                                             }
                                             _loc5_.y = -2000;
                                             §§goto(addr768);
                                          }
                                       }
                                       §§goto(addr755);
                                    }
                                    §§goto(addr725);
                                 }
                                 §§goto(addr708);
                              }
                              else if(_loc5_.x > this.§"<§ + _loc5_.width / 2)
                              {
                                 if(_loc16_ || _loc2_)
                                 {
                                    _loc3_ = true;
                                 }
                              }
                              else if(_loc5_.y > this.§&e§ + _loc5_.height / 2)
                              {
                                 if(_loc16_ || param1)
                                 {
                                    _loc3_ = true;
                                    if(_loc15_)
                                    {
                                       continue;
                                    }
                                 }
                                 §§goto(addr725);
                              }
                              §§goto(addr696);
                           }
                           §§goto(addr720);
                        }
                        §§goto(addr725);
                     }
                     §§goto(addr720);
                  }
                  §§goto(addr609);
               }
               §§goto(addr650);
            }
         }
      }
   }
}
