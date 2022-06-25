package §'o§
{
   import §+!?§.§"h§;
   import §?!+§.§,!G§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §7!%§ extends Sprite
   {
      
      public static const §`!A§:int = 0;
      
      public static const § !7§:int = 1;
      
      public static const §"B§:int = 2;
      
      public static const §^n§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §7!%§))
         {
            §`!A§ = 0;
            if(_loc1_ || _loc1_)
            {
               § !7§ = 1;
               if(_loc1_ || _loc2_)
               {
                  addr63:
                  §"B§ = 2;
                  if(_loc1_)
                  {
                     §^n§ = 3;
                  }
               }
            }
            return;
         }
         §§goto(addr63);
      }
      
      private const §^0§:uint = 40;
      
      private const §6!!§:Number = 0.3;
      
      private const §<!<§:Number = 25;
      
      private const §+b§:Number = 10;
      
      private const §5T§:Number = 9;
      
      private var §@X§:int;
      
      private var §3Z§:int;
      
      private var § 0§:Array;
      
      private var §%&§:Array;
      
      private var §93§:Point;
      
      private var §!^§:int;
      
      public function §7!%§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc9_:§<N§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(_loc13_ || param1)
         {
            super();
            if(!(_loc14_ && param2))
            {
               this.§@X§ = param1;
               if(_loc13_ || param2)
               {
                  addr49:
                  this.§3Z§ = param2;
               }
            }
            var _loc7_:Number = Math.min(§"h§.§for§,§"h§.§'!I§);
            var _loc8_:Number = Math.max(§"h§.§for§,§"h§.§'!I§);
            §§push(param3);
            if(_loc13_)
            {
               §§push(§"h§.§'!I§);
               if(_loc13_ || this)
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc14_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc13_ || param1)
                     {
                     }
                     addr118:
                     param4 = §§pop();
                     if(_loc13_)
                     {
                        addr121:
                        this.§!^§ = param5;
                        if(_loc13_)
                        {
                           addr126:
                           this.§93§ = new Point(param3,param4);
                           if(_loc13_)
                           {
                              this.§ 0§ = [];
                              if(!_loc14_)
                              {
                                 addr139:
                                 this.§%&§ = [];
                              }
                           }
                           var _loc12_:int = 0;
                           while(_loc12_ < param6)
                           {
                              §§push(§§findproperty(§<N§));
                              §§push(Math.random() * 40);
                              if(!_loc14_)
                              {
                                 §§push(§§pop() + 10);
                              }
                              (_loc9_ = new §§pop().§<N§(§§pop())).x = -2000;
                              if(_loc13_)
                              {
                                 _loc9_.y = -2000;
                                 if(_loc14_)
                                 {
                                    continue;
                                 }
                                 this.addChild(_loc9_);
                                 if(!_loc13_)
                                 {
                                    continue;
                                 }
                              }
                              this.§ 0§[_loc12_] = _loc9_;
                              if(!(_loc14_ && this))
                              {
                                 _loc12_++;
                              }
                           }
                           if(_loc13_)
                           {
                              this.scaleX = _loc8_;
                              if(_loc13_)
                              {
                                 addr206:
                                 this.scaleY = _loc8_;
                              }
                              return;
                           }
                           §§goto(addr206);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr126);
                  }
                  param3 = §§pop();
                  if(!(_loc14_ && this))
                  {
                     §§push(param4);
                     if(_loc13_)
                     {
                        addr114:
                        §§push(§§pop() / §"h§.§for§);
                        if(!_loc14_)
                        {
                           §§goto(addr118);
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr121);
               }
               §§goto(addr114);
            }
            §§goto(addr118);
         }
         §§goto(addr49);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§<N§ = null;
         loop0:
         while(true)
         {
            §§push(this.§ 0§);
            if(!_loc3_)
            {
               if(§§pop().length <= 0)
               {
                  if(_loc2_)
                  {
                     while(true)
                     {
                        §§push(this.§%&§);
                        addr86:
                        while(§§pop().length > 0)
                        {
                           §§push(this.§%&§);
                           if(!_loc3_)
                           {
                              break loop0;
                           }
                        }
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr96);
                        }
                        §§goto(addr101);
                     }
                     addr84:
                  }
                  addr96:
                  this.§ 0§ = [];
                  if(!_loc3_)
                  {
                     addr101:
                     this.§%&§ = [];
                  }
                  return;
               }
               §§push(this.§ 0§);
               if(!_loc3_)
               {
                  _loc1_ = §§pop().shift();
                  if(!(_loc3_ && this))
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
            if(!(_loc3_ && this))
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
         var _loc3_:Boolean = false;
         var _loc5_:§<N§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(!(_loc15_ && param1))
         {
            §§push(param1);
            if(_loc16_ || _loc2_)
            {
               §§push(§§pop() / 20);
               if(!_loc15_)
               {
                  addr60:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               §§goto(addr62);
            }
            §§goto(addr60);
         }
         addr62:
         loop0:
         while(true)
         {
            §§push(this.§ 0§);
            if(!(_loc15_ && _loc3_))
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§ 0§);
                  if(!(_loc16_ || this))
                  {
                     continue;
                  }
                  _loc5_ = §§pop().shift();
                  §§push(Math.random() * (this.§<!<§ - this.§+b§));
                  §§push(this.§+b§);
                  if(!_loc15_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc15_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc15_)
                        {
                           _loc6_ = §§pop();
                           §§push(this.§!^§);
                           if(!(_loc15_ && param1))
                           {
                              §§push(§`!A§);
                              if(_loc16_ || _loc2_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc16_)
                                    {
                                       §§push(Math.PI / 2);
                                       if(!_loc15_)
                                       {
                                          §§push(-§§pop());
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop() * Math.random());
                                             if(!_loc15_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc15_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         addr156:
                                                         _loc8_ = §§pop();
                                                         §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                                         if(!_loc15_)
                                                         {
                                                            addr168:
                                                            _loc9_ = §§pop();
                                                            addr423:
                                                            §§push(_loc5_);
                                                            §§push(_loc8_);
                                                            if(!_loc15_)
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            §§pop().§+!7§ = §§pop();
                                                            if(_loc16_ || _loc2_)
                                                            {
                                                               §§push(_loc5_);
                                                               §§push(_loc9_);
                                                               if(_loc16_ || this)
                                                               {
                                                                  §§push(§§pop() * _loc6_);
                                                               }
                                                               §§pop().§'!3§ = §§pop();
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  addr456:
                                                                  _loc5_.x = this.§93§.x;
                                                               }
                                                               addr509:
                                                               _loc5_.§<p§.play();
                                                               continue loop0;
                                                            }
                                                            _loc5_.y = this.§93§.y;
                                                            if(_loc15_ && param1)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr473:
                                                            this.§%&§.push(_loc5_);
                                                            if(!_loc15_)
                                                            {
                                                               addr486:
                                                               _loc10_ = 0.5 + Math.random() * 1.5;
                                                               addr489:
                                                               _loc11_ = 0.2;
                                                               _loc5_.§<p§ = §,!G§.§@j§.§47§(_loc5_,{
                                                                  "scaleX":_loc11_,
                                                                  "scaleY":_loc11_
                                                               },{
                                                                  "scaleX":_loc10_,
                                                                  "scaleY":_loc10_
                                                               },5);
                                                               if(_loc15_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr484:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr346:
                                                            _loc8_ = §§pop();
                                                            if(_loc16_)
                                                            {
                                                               §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  §§push(this.§+b§);
                                                                  if(_loc16_ || _loc3_)
                                                                  {
                                                                     addr383:
                                                                     §§push(2);
                                                                     if(!_loc15_)
                                                                     {
                                                                        addr387:
                                                                        _loc12_ = §§pop() / §§pop();
                                                                        if(!_loc15_)
                                                                        {
                                                                           addr394:
                                                                           §§push(this.§<!<§ / 2);
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr397:
                                                                              §§push(Number(§§pop()));
                                                                              if(!(_loc15_ && param1))
                                                                              {
                                                                                 addr405:
                                                                                 _loc13_ = §§pop();
                                                                                 addr406:
                                                                                 §§push(Math.random() * (_loc13_ - _loc12_));
                                                                              }
                                                                           }
                                                                           §§push(_loc12_);
                                                                           if(_loc16_ || param1)
                                                                           {
                                                                              addr421:
                                                                              _loc6_ = Number(§§pop() + §§pop());
                                                                              §§goto(addr423);
                                                                           }
                                                                           §§goto(addr484);
                                                                        }
                                                                        §§goto(addr473);
                                                                     }
                                                                     §§goto(addr394);
                                                                  }
                                                                  §§goto(addr387);
                                                               }
                                                               §§goto(addr397);
                                                            }
                                                         }
                                                         §§goto(addr509);
                                                      }
                                                      §§goto(addr489);
                                                   }
                                                   else
                                                   {
                                                      addr267:
                                                      §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                      if(!_loc15_)
                                                      {
                                                         _loc8_ = §§pop();
                                                         addr288:
                                                         _loc9_ = Number(Math.cos(_loc7_ + Math.PI / 2));
                                                         if(!(_loc15_ && _loc2_))
                                                         {
                                                            §§goto(addr423);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr406);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr397);
                                                      }
                                                      §§goto(addr394);
                                                   }
                                                }
                                                §§goto(addr168);
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr288);
                                       }
                                       §§goto(addr383);
                                    }
                                    §§goto(addr489);
                                 }
                                 else
                                 {
                                    §§push(this.§!^§);
                                    if(!_loc15_)
                                    {
                                       §§push(§ !7§);
                                       if(_loc16_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             §§push(Math.PI * (Math.random() - 0.5));
                                             §§push(0.5);
                                             if(!(_loc15_ && _loc3_))
                                             {
                                                addr193:
                                                §§push(§§pop() * §§pop());
                                                if(_loc16_ || param1)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc16_)
                                                   {
                                                      _loc7_ = §§pop();
                                                      §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                      if(!_loc15_)
                                                      {
                                                         _loc8_ = §§pop();
                                                         §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                         if(!(_loc15_ && param1))
                                                         {
                                                            addr229:
                                                            _loc9_ = §§pop();
                                                            §§goto(addr168);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr421);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr387);
                                                      }
                                                      §§goto(addr473);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr288);
                                                   }
                                                }
                                                else
                                                {
                                                   addr310:
                                                   §§push(0.5);
                                                   if(_loc16_ || param1)
                                                   {
                                                      addr318:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc16_ || _loc2_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc15_)
                                                         {
                                                            _loc7_ = §§pop();
                                                            if(_loc16_ || param1)
                                                            {
                                                               §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                               if(!_loc15_)
                                                               {
                                                                  §§goto(addr346);
                                                               }
                                                               §§goto(addr421);
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                         §§goto(addr489);
                                                      }
                                                      §§goto(addr405);
                                                   }
                                                }
                                                §§goto(addr489);
                                             }
                                             §§goto(addr318);
                                          }
                                          else
                                          {
                                             §§push(this.§!^§);
                                             if(!(_loc15_ && _loc3_))
                                             {
                                                addr240:
                                                §§push(§"B§);
                                                if(_loc16_)
                                                {
                                                   addr243:
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(!(_loc15_ && this))
                                                      {
                                                         _loc7_ = Number(Math.PI / 2 * Math.random());
                                                         if(_loc16_ || this)
                                                         {
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                      §§goto(addr456);
                                                   }
                                                   else
                                                   {
                                                      addr299:
                                                      §§push(this.§!^§);
                                                      §§push(§^n§);
                                                   }
                                                   §§goto(addr168);
                                                }
                                             }
                                             §§goto(addr299);
                                          }
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(!_loc15_)
                                          {
                                             §§goto(addr310);
                                             §§push(Math.PI * (Math.random() - 0.5));
                                          }
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr299);
                                 }
                              }
                              §§goto(addr243);
                           }
                           §§goto(addr240);
                        }
                        §§goto(addr486);
                     }
                     §§goto(addr229);
                  }
                  §§goto(addr193);
               }
               §§push(this.§%&§);
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
         if(!_loc15_)
         {
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(!(_loc16_ || _loc2_))
               {
                  break;
               }
               _loc5_ = this.§%&§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§'!3§);
               if(_loc16_)
               {
                  §§push(this.§6!!§);
                  if(!(_loc15_ && param1))
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§'!3§ = §§pop();
               if(!(_loc15_ && param1))
               {
                  if(_loc5_.§'!3§ > this.§5T§)
                  {
                     _loc5_.§'!3§ = this.§5T§;
                     if(_loc16_ || _loc2_)
                     {
                        addr600:
                        _loc5_.x += _loc5_.§+!7§ * param1;
                     }
                     _loc5_.y += _loc5_.§'!3§ * param1;
                     _loc5_.rotation += 5 * param1;
                     if(_loc5_.x < -_loc5_.width / 2)
                     {
                        _loc3_ = true;
                        if(_loc16_ || param1)
                        {
                        }
                     }
                     else if(_loc5_.x > this.§@X§ + _loc5_.width / 2)
                     {
                        if(_loc16_)
                        {
                           _loc3_ = true;
                           if(!(_loc15_ && _loc3_))
                           {
                              addr678:
                              §§push(this.§%&§);
                              if(_loc16_ || param1)
                              {
                                 §§push(§§pop().length > 0);
                                 if(§§pop().length > 0)
                                 {
                                    if(!(_loc15_ && _loc3_))
                                    {
                                       §§pop();
                                       if(_loc16_)
                                       {
                                          addr703:
                                          if(_loc3_)
                                          {
                                             if(_loc15_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             addr712:
                                             if((_loc14_ = this.§%&§.splice(_loc4_,1)) is §<N§)
                                             {
                                                if(_loc16_)
                                                {
                                                   _loc14_.clean();
                                                   if(!_loc15_)
                                                   {
                                                      addr739:
                                                      _loc5_.x = -2000;
                                                      if(_loc15_)
                                                      {
                                                      }
                                                      addr747:
                                                      §§push(_loc4_);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(§§pop() - 1);
                                                      }
                                                      _loc4_ = §§pop();
                                                      continue;
                                                   }
                                                   _loc5_.y = -2000;
                                                   §§goto(addr747);
                                                }
                                             }
                                          }
                                          §§goto(addr739);
                                       }
                                       §§goto(addr712);
                                    }
                                 }
                                 §§goto(addr703);
                              }
                              §§goto(addr712);
                           }
                           §§goto(addr703);
                        }
                     }
                     else if(_loc5_.y > this.§3Z§ + _loc5_.height / 2)
                     {
                        _loc3_ = true;
                     }
                     §§goto(addr678);
                  }
               }
               §§goto(addr600);
            }
         }
      }
   }
}
