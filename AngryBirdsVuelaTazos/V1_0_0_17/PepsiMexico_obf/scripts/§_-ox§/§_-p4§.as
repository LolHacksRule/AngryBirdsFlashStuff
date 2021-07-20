package §_-ox§
{
   import §_-20§.§_-j5§;
   import §_-hU§.§_-MB§;
   import §_-mD§.§_-29§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §_-p4§ extends Sprite
   {
      
      public static const §_-m2§:int = 0;
      
      public static const §_-4p§:int = 1;
      
      public static const §_-d7§:int = 2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §_-p4§)
         {
            §_-m2§ = 0;
            if(_loc2_)
            {
               §_-4p§ = 1;
               if(!(_loc1_ && §_-p4§))
               {
                  addr50:
                  §_-d7§ = 2;
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      private const §_-UH§:uint = 40;
      
      private const §_-vG§:Number = 0.3;
      
      private const §_-Ij§:Number = 25;
      
      private const §_-Rf§:Number = 10;
      
      private const §_-nd§:Number = 9;
      
      private var §_-ap§:int;
      
      private var §_-wH§:int;
      
      private var §_-3x§:Array;
      
      private var §_-3U§:Array;
      
      private var §_-qr§:Point;
      
      private var §_-vH§:int;
      
      public function §_-p4§(param1:int, param2:int, param3:Number, param4:Number, param5:int)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc6_:§_-PQ§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         super();
         this.§_-ap§ = param1 * §_-MB§.§_-Rs§;
         if(_loc11_)
         {
            this.§_-wH§ = param2 * §_-MB§.§_-y3§;
         }
         this.§_-vH§ = param5;
         if(!(_loc10_ && param3))
         {
            this.§_-qr§ = new Point(param3,param4);
            this.§_-3x§ = [];
            if(_loc11_ || param1)
            {
               this.§_-3U§ = [];
            }
         }
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-UH§)
         {
            §§push(§§findproperty(§_-PQ§));
            §§push(Math.random() * 40);
            if(!_loc10_)
            {
               §§push(§§pop() + 10);
            }
            (_loc6_ = new §§pop().§_-PQ§(§§pop())).x = -2000;
            if(!(_loc10_ && param1))
            {
               _loc6_.y = -2000;
               if(!(_loc11_ || this))
               {
                  continue;
               }
               this.addChild(_loc6_);
               if(!(_loc11_ || param2))
               {
                  continue;
               }
               this.§_-3x§[_loc9_] = _loc6_;
               if(!_loc11_)
               {
                  continue;
               }
            }
            _loc9_++;
         }
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-PQ§ = null;
         loop0:
         while(true)
         {
            §§push(this.§_-3x§);
            if(!_loc2_)
            {
               break;
            }
            if(§§pop().length <= 0)
            {
               if(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     §§push(this.§_-3U§);
                     break loop0;
                  }
                  addr68:
               }
               §§goto(addr92);
            }
            §§push(this.§_-3x§);
            if(_loc3_ && _loc2_)
            {
               break;
            }
            _loc1_ = §§pop().shift();
            if(_loc2_)
            {
               _loc1_.clean();
            }
         }
         while(§§pop().length > 0)
         {
            §§push(this.§_-3U§);
            if(_loc3_)
            {
               continue;
            }
            _loc1_ = §§pop().shift();
            if(!_loc3_)
            {
               _loc1_.clean();
            }
            §§goto(addr68);
         }
         if(!(_loc3_ && _loc2_))
         {
            this.§_-3x§ = [];
            if(_loc3_)
            {
            }
            §§goto(addr92);
         }
         addr92:
         this.§_-3U§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc3_:* = false;
         var _loc5_:§_-PQ§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:§_-j5§ = null;
         var _loc13_:Object = null;
         if(!_loc14_)
         {
            §§push(param1);
            if(_loc15_)
            {
               §§push(§§pop() / 20);
               if(!(_loc14_ && this))
               {
                  addr51:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               addr53:
               loop0:
               while(true)
               {
                  §§push(this.§_-3x§);
                  if(!_loc14_)
                  {
                     while(§§pop().length > 0)
                     {
                        §§push(this.§_-3x§);
                        if(!(_loc15_ || this))
                        {
                           continue;
                        }
                        _loc5_ = §§pop().shift();
                        if(_loc15_ || param1)
                        {
                           §§push(Math.random() * (this.§_-Ij§ - this.§_-Rf§));
                           §§push(this.§_-Rf§);
                           if(_loc15_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc15_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc14_ && _loc2_))
                                 {
                                    addr97:
                                    _loc6_ = §§pop();
                                    if(_loc15_ || this)
                                    {
                                       §§push(this.§_-vH§);
                                       if(!_loc14_)
                                       {
                                          §§push(§_-m2§);
                                          if(_loc15_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc15_ || _loc2_)
                                                {
                                                   §§push(Math.PI / 2);
                                                   if(!(_loc14_ && _loc2_))
                                                   {
                                                      §§push(Number(-§§pop() * Math.random()));
                                                      if(!_loc14_)
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(!_loc14_)
                                                         {
                                                            addr141:
                                                            _loc8_ = Math.sin(_loc7_ - Math.PI / 2);
                                                            _loc9_ = Math.cos(_loc7_ - Math.PI / 2);
                                                            addr267:
                                                            §§push(_loc5_);
                                                            §§push(_loc8_);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            §§pop().§_-Nd§ = §§pop();
                                                            §§push(_loc5_);
                                                            §§push(_loc9_);
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            §§pop().§_-zG§ = §§pop();
                                                            if(!_loc15_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            _loc5_.x = this.§_-qr§.x;
                                                            addr300:
                                                            _loc5_.y = this.§_-qr§.y;
                                                            this.§_-3U§.push(_loc5_);
                                                            §§push(0.5 + Math.random() * 1.5);
                                                            if(_loc15_ || param1)
                                                            {
                                                               addr322:
                                                               §§push(Number(§§pop()));
                                                               if(_loc15_ || param1)
                                                               {
                                                                  addr330:
                                                                  _loc10_ = §§pop();
                                                                  if(_loc14_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr333:
                                                                  §§push(0.2);
                                                               }
                                                               _loc11_ = §§pop();
                                                               continue loop0;
                                                            }
                                                            §§goto(addr330);
                                                            addr288:
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      §§goto(addr322);
                                                   }
                                                   else
                                                   {
                                                      addr198:
                                                      _loc7_ = Number(§§pop());
                                                      if(!_loc14_)
                                                      {
                                                         _loc8_ = Math.sin(_loc7_ + Math.PI);
                                                         if(_loc15_)
                                                         {
                                                            _loc9_ = Math.cos(_loc7_ + Math.PI);
                                                            if(_loc14_)
                                                            {
                                                            }
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr333);
                                                      }
                                                      else
                                                      {
                                                         addr227:
                                                         §§push(Number(Math.PI / 2 * Math.random()));
                                                         if(_loc15_)
                                                         {
                                                            addr237:
                                                            _loc7_ = §§pop();
                                                            if(!_loc14_)
                                                            {
                                                               addr249:
                                                               _loc8_ = Math.sin(_loc7_ + Math.PI / 2);
                                                               addr259:
                                                               _loc9_ = Math.cos(_loc7_ + Math.PI / 2);
                                                               if(!(_loc14_ && this))
                                                               {
                                                                  §§goto(addr267);
                                                               }
                                                               §§goto(addr288);
                                                               addr240:
                                                            }
                                                            §§goto(addr300);
                                                         }
                                                         §§goto(addr259);
                                                      }
                                                   }
                                                   §§goto(addr300);
                                                }
                                                §§goto(addr141);
                                             }
                                             else
                                             {
                                                §§push(this.§_-vH§);
                                                if(_loc15_ || param1)
                                                {
                                                   §§push(§_-4p§);
                                                   if(_loc15_ || _loc2_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         §§push(Math.PI * (Math.random() - 0.5));
                                                         §§push(0.5);
                                                         if(_loc15_ || this)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc15_)
                                                            {
                                                               §§goto(addr198);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                      else
                                                      {
                                                         addr226:
                                                         if(this.§_-vH§ == §_-d7§)
                                                         {
                                                            §§goto(addr227);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr226);
                                             }
                                          }
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr240);
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr300);
                        }
                        §§goto(addr249);
                     }
                     §§push(this.§_-3U§);
                     break;
                  }
                  break;
               }
               var _loc2_:int = §§pop().length;
               §§push(_loc2_);
               if(_loc15_ || _loc3_)
               {
                  §§push(int(§§pop() - 1));
               }
               var _loc4_:* = §§pop();
               if(!_loc14_)
               {
                  loop2:
                  while(_loc4_ >= 0)
                  {
                     _loc3_ = false;
                     if(!(_loc15_ || _loc2_))
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc5_ = this.§_-3U§[_loc4_];
                        §§push(_loc5_);
                        §§push(_loc5_.§_-zG§);
                        if(!(_loc14_ && _loc3_))
                        {
                           §§push(this.§_-vG§);
                           if(_loc15_)
                           {
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().§_-zG§ = §§pop();
                        if(_loc5_.§_-zG§ > this.§_-nd§)
                        {
                           _loc5_.§_-zG§ = this.§_-nd§;
                           if(_loc15_)
                           {
                              addr425:
                              _loc5_.x += _loc5_.§_-Nd§ * param1;
                              _loc5_.y += _loc5_.§_-zG§ * param1;
                              _loc5_.rotation += 5 * param1;
                              if(_loc5_.x < -_loc5_.width / 2)
                              {
                                 addr459:
                                 _loc3_ = true;
                              }
                              else if(_loc5_.x > this.§_-ap§ + _loc5_.width / 2)
                              {
                                 _loc3_ = true;
                                 if(!_loc15_)
                                 {
                                 }
                              }
                              else if(_loc5_.y > this.§_-wH§ + _loc5_.height / 2)
                              {
                                 if(!(_loc14_ && _loc3_))
                                 {
                                    §§push(true);
                                    if(!_loc14_)
                                    {
                                       _loc3_ = §§pop();
                                       if(!_loc14_)
                                       {
                                          addr500:
                                          §§push(this.§_-3U§);
                                          if(_loc15_ || param1)
                                          {
                                             §§push(§§pop().length > 0);
                                             if(!_loc14_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc15_ || param1)
                                                   {
                                                      addr523:
                                                      §§pop();
                                                      if(!_loc15_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(_loc3_);
                                                      if(!(_loc14_ && _loc2_))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                   }
                                                }
                                                if(§§pop())
                                                {
                                                   addr538:
                                                   if((_loc13_ = this.§_-3U§.splice(_loc4_,1)) is §_-PQ§)
                                                   {
                                                      if(_loc15_ || param1)
                                                      {
                                                         _loc13_.clean();
                                                         if(_loc15_)
                                                         {
                                                            addr558:
                                                            _loc5_.x = -2000;
                                                            if(_loc15_ || param1)
                                                            {
                                                            }
                                                            addr571:
                                                            §§push(_loc4_);
                                                            if(_loc15_ || this)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc4_ = §§pop();
                                                            continue loop2;
                                                         }
                                                         §§goto(addr571);
                                                      }
                                                      _loc5_.y = -2000;
                                                      §§goto(addr571);
                                                   }
                                                }
                                                §§goto(addr558);
                                             }
                                             §§goto(addr523);
                                          }
                                       }
                                       §§goto(addr538);
                                    }
                                    §§goto(addr523);
                                 }
                                 §§goto(addr538);
                              }
                              §§goto(addr500);
                           }
                           §§goto(addr459);
                        }
                        §§goto(addr425);
                     }
                  }
                  return;
               }
               §§goto(addr390);
            }
            §§goto(addr51);
         }
         §§goto(addr53);
      }
   }
}
