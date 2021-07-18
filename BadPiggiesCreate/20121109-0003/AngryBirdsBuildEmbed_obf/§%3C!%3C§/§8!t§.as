package §<!<§
{
   import §-!0§.§!!s§;
   import §-!0§.§2! §;
   import §@_§.§[!k§;
   import §`a§.§ !U§;
   
   public class §8!t§
   {
      
      public static const §-!-§:Number = 50;
      
      public static var §5-§:Number = 0;
      
      public static const § S§:Number = 0.5;
      
      public static const §1!G§:Number = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!-§ = 50;
            if(_loc2_ || _loc1_)
            {
               §5-§ = 0;
               if(!_loc1_)
               {
                  addr44:
                  § S§ = 0.5;
                  if(_loc2_ || _loc2_)
                  {
                  }
                  §§goto(addr57);
               }
               §1!G§ = 0;
            }
            addr57:
            return;
         }
         §§goto(addr44);
      }
      
      public var §'U§:Number;
      
      public var §<`§:Number;
      
      public var §=!,§:Number;
      
      public var mBorderGround_B2:Number;
      
      public var §4w§:Number;
      
      public var §-n§:§7E§;
      
      public function §8!t§(param1:§7E§, param2:§2! §)
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:§!!s§ = null;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:§[!k§ = null;
         if(!_loc11_)
         {
            super();
            if(!(_loc11_ && param2))
            {
               this.§-n§ = param1;
               if(!_loc11_)
               {
                  addr44:
                  this.§'U§ = int.MAX_VALUE;
                  if(_loc11_ && this)
                  {
                  }
                  addr59:
                  var _loc3_:* = 0;
                  if(_loc10_ || param1)
                  {
                     _loc3_ = 0;
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc10_)
                     {
                        §§push(param2.§"T§);
                        if(_loc10_ || this)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!(_loc11_ && param2))
                              {
                                 §§push(0);
                                 if(_loc10_ || _loc3_)
                                 {
                                    break;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(param2.§0'§);
                                    addr327:
                                    while(§§pop() < §§pop())
                                    {
                                       §§push((_loc9_ = param2.getObject(_loc3_)).x);
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          §§push(this.§'U§);
                                          if(!(_loc11_ && this))
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                   this.§'U§ = _loc9_.x;
                                                   if(_loc10_)
                                                   {
                                                      addr310:
                                                      addr314:
                                                      addr312:
                                                      if(_loc9_.x > this.§<`§)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            addr317:
                                                            this.§<`§ = _loc9_.x;
                                                            addr324:
                                                            if(_loc11_)
                                                            {
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr324:
                                                         }
                                                         §§goto(addr324);
                                                      }
                                                      _loc3_++;
                                                   }
                                                   §§goto(addr324);
                                                }
                                                §§goto(addr317);
                                             }
                                             §§goto(addr310);
                                          }
                                          §§goto(addr314);
                                       }
                                       §§goto(addr312);
                                       continue loop3;
                                    }
                                 }
                              }
                              addr328:
                              §§push(0.1);
                              if(_loc10_ || _loc3_)
                              {
                                 §§push(§7E§.§#!U§);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc10_ || this)
                                    {
                                       addr350:
                                       §§push(§§pop() * §7E§.§8!'§);
                                       if(_loc11_)
                                       {
                                       }
                                       addr354:
                                       var _loc4_:* = §§pop();
                                       if(!(_loc11_ && this))
                                       {
                                          §§push(this);
                                          §§push(this.§'U§);
                                          if(_loc10_ || _loc3_)
                                          {
                                             §§push(§§pop() - _loc4_);
                                          }
                                          §§pop().§'U§ = §§pop();
                                          if(!_loc11_)
                                          {
                                             addr377:
                                             §§push(this);
                                             §§push(this.§<`§);
                                             if(!_loc11_)
                                             {
                                                §§push(§§pop() + _loc4_);
                                             }
                                             §§pop().§<`§ = §§pop();
                                             §§push(this);
                                             §§push(§7E§.§#!U§);
                                             if(!(_loc11_ && this))
                                             {
                                                §§push(§7E§.§8!'§);
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc11_ && this)
                                                   {
                                                   }
                                                   §§goto(addr420);
                                                }
                                                §§goto(addr416);
                                             }
                                             addr420:
                                             §§push(this.§<`§);
                                             if(!(_loc11_ && param2))
                                             {
                                                addr416:
                                                §§push(§§pop() - this.§'U§);
                                             }
                                             §§pop().§4w§ = §§pop() / §§pop();
                                             this.§4w§ = Math.max(this.§4w§,§ !U§.§-`§);
                                             this.mBorderGround_B2 = §1!G§;
                                             if(!(_loc11_ && param1))
                                             {
                                                §§push(this);
                                                §§push(this.mBorderGround_B2);
                                                if(!(_loc11_ && param1))
                                                {
                                                   §§push(§§pop() - 200);
                                                }
                                                §§pop().§=!,§ = §§pop();
                                             }
                                             §§goto(addr462);
                                          }
                                          addr462:
                                          return;
                                       }
                                       §§goto(addr377);
                                    }
                                    §§goto(addr354);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr350);
                           }
                           else
                           {
                              _loc5_ = param2.getCamera(_loc3_);
                              _loc6_ = Number(0);
                              if(_loc10_ || _loc3_)
                              {
                                 §§push(_loc5_.left);
                                 if(_loc10_ || this)
                                 {
                                    if(§§pop().toString() != "NaN")
                                    {
                                       if(!(_loc10_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       §§push(_loc5_.right - _loc5_.left);
                                       if(!(_loc11_ && _loc3_))
                                       {
                                          §§push(4);
                                          if(!(_loc11_ && param1))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc11_)
                                             {
                                                _loc6_ = Number(§§pop());
                                                if(_loc10_ || param1)
                                                {
                                                   addr166:
                                                   §§push(_loc5_.x);
                                                   §§push(_loc6_);
                                                   §§push(2);
                                                   if(!(_loc11_ && param1))
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(!_loc11_)
                                                      {
                                                         addr181:
                                                         _loc7_ = §§pop() - §§pop();
                                                         §§push(_loc5_.x);
                                                         if(_loc10_)
                                                         {
                                                            §§push(_loc6_);
                                                            if(!(_loc11_ && this))
                                                            {
                                                               addr195:
                                                               addr196:
                                                               §§push(§§pop() + §§pop() / 2);
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     addr208:
                                                                     _loc8_ = §§pop();
                                                                     addr209:
                                                                     §§push(_loc7_);
                                                                     if(!_loc10_)
                                                                     {
                                                                     }
                                                                     addr233:
                                                                     addr235:
                                                                     if(§§pop() > this.§<`§)
                                                                     {
                                                                        addr236:
                                                                        this.§<`§ = _loc8_;
                                                                     }
                                                                     _loc3_++;
                                                                     continue;
                                                                  }
                                                                  §§goto(addr233);
                                                               }
                                                               §§push(this.§'U§);
                                                               if(!_loc11_)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr229:
                                                                        this.§'U§ = _loc7_;
                                                                        addr232:
                                                                        §§goto(addr233);
                                                                        §§push(_loc8_);
                                                                     }
                                                                     §§goto(addr236);
                                                                  }
                                                                  §§goto(addr232);
                                                               }
                                                            }
                                                            §§goto(addr235);
                                                         }
                                                         §§goto(addr233);
                                                      }
                                                      §§goto(addr195);
                                                   }
                                                   §§goto(addr196);
                                                }
                                                §§goto(addr209);
                                             }
                                             else
                                             {
                                                addr144:
                                                §§push(§§pop() * 4 * §7E§.§8!'§);
                                                if(_loc10_ || param2)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc10_)
                                                   {
                                                      _loc6_ = §§pop();
                                                      if(!(_loc11_ && param2))
                                                      {
                                                         §§goto(addr166);
                                                      }
                                                      §§goto(addr236);
                                                   }
                                                   §§goto(addr181);
                                                }
                                             }
                                             §§goto(addr209);
                                          }
                                       }
                                       §§goto(addr144);
                                    }
                                    else
                                    {
                                       §§push(§7E§.§#!U§);
                                       if(_loc10_)
                                       {
                                          §§goto(addr144);
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr208);
                              }
                              §§goto(addr229);
                           }
                        }
                        §§goto(addr327);
                     }
                     break;
                  }
                  _loc3_ = §§pop();
                  if(!(_loc11_ && param1))
                  {
                     §§goto(addr317);
                  }
                  §§goto(addr328);
               }
               this.§<`§ = int.MIN_VALUE;
               §§goto(addr59);
            }
         }
         §§goto(addr44);
      }
      
      public function clear() : void
      {
      }
      
      public function §&!L§(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(param2);
            if(_loc4_)
            {
               §§push(this.§=!,§);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() < §§pop());
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop());
                     if(_loc4_ || param2)
                     {
                        if(!§§pop())
                        {
                           addr53:
                           §§pop();
                           if(_loc4_ || this)
                           {
                              §§push(param2);
                              if(!_loc3_)
                              {
                                 addr64:
                                 §§push(this.mBorderGround_B2);
                                 if(!(_loc3_ && param2))
                                 {
                                    §§push(§§pop() + 50);
                                    if(_loc4_)
                                    {
                                       addr88:
                                       §§push(§§pop() > §§pop());
                                       §§push(§§pop() > §§pop());
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr96:
                                          if(!§§pop())
                                          {
                                             if(!(_loc3_ && param2))
                                             {
                                                §§pop();
                                                if(!_loc3_)
                                                {
                                                   §§push(param1);
                                                   if(!_loc3_)
                                                   {
                                                      addr110:
                                                      §§push(this.§'U§);
                                                      if(!(_loc3_ && param2))
                                                      {
                                                         addr119:
                                                         §§push(§§pop() < §§pop());
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            addr127:
                                                            if(!§§pop())
                                                            {
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  addr136:
                                                                  §§pop();
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     addr157:
                                                                     §§push(param1 > this.§<`§);
                                                                     if(_loc4_)
                                                                     {
                                                                        addr160:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              addr168:
                                                                              §§push(true);
                                                                              if(!(_loc3_ && param2))
                                                                              {
                                                                                 §§goto(addr176);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr177:
                                                                              §§push(false);
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr177);
                                                                     }
                                                                     §§goto(addr176);
                                                                  }
                                                                  §§goto(addr168);
                                                               }
                                                               addr176:
                                                               return §§pop();
                                                            }
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                   }
                                                }
                                                §§goto(addr157);
                                             }
                                             §§goto(addr136);
                                          }
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr53);
               }
               §§goto(addr157);
            }
            §§goto(addr64);
         }
         §§goto(addr177);
      }
   }
}
