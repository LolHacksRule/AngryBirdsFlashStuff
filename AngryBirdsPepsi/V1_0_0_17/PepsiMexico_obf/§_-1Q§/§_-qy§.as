package §_-1Q§
{
   import §_-HT§.§_-rU§;
   import flash.utils.Dictionary;
   
   public class §_-qy§
   {
      
      public static const §_-yD§:String = "linear";
      
      public static const §_-az§:String = "easeIn";
      
      public static const §_-gV§:String = "easeOut";
      
      public static const each:String = "easeInOut";
      
      public static const §_-zu§:String = "easeOutIn";
      
      public static const §_-xJ§:String = "easeInBack";
      
      public static const §_-t§:String = "easeOutBack";
      
      public static const §_-MF§:String = "easeInOutBack";
      
      public static const §_-mZ§:String = "easeOutInBack";
      
      public static const §_-N8§:String = "easeInElastic";
      
      public static const §_-I7§:String = "easeOutElastic";
      
      public static const §_-79§:String = "easeInOutElastic";
      
      public static const §_-Rr§:String = "easeOutInElastic";
      
      public static const §_-Yw§:String = "easeInBounce";
      
      public static const §_-EO§:String = "easeOutBounce";
      
      public static const §_-KK§:String = "easeInOutBounce";
      
      public static const §_-CV§:String = "easeOutInBounce";
      
      private static var §_-H§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §_-yD§ = "linear";
            if(!_loc1_)
            {
               §_-az§ = "easeIn";
               addr29:
               §_-gV§ = "easeOut";
               if(!_loc1_)
               {
                  each = "easeInOut";
                  if(!_loc1_)
                  {
                     addr39:
                     §_-zu§ = "easeOutIn";
                     if(_loc2_)
                     {
                        §_-xJ§ = "easeInBack";
                        §_-t§ = "easeOutBack";
                        §_-MF§ = "easeInOutBack";
                        §§goto(addr47);
                     }
                     §§goto(addr62);
                  }
                  addr47:
                  if(_loc2_)
                  {
                     addr62:
                     §_-mZ§ = "easeOutInBack";
                     §_-N8§ = "easeInElastic";
                     §_-I7§ = "easeOutElastic";
                     if(_loc2_ || _loc2_)
                     {
                        §_-79§ = "easeInOutElastic";
                        if(_loc2_)
                        {
                           §_-Rr§ = "easeOutInElastic";
                        }
                        addr89:
                        §_-EO§ = "easeOutBounce";
                        if(!_loc1_)
                        {
                           §§goto(addr101);
                        }
                        §§goto(addr106);
                     }
                     §_-Yw§ = "easeInBounce";
                     §§goto(addr89);
                  }
                  addr101:
                  §_-KK§ = "easeInOutBounce";
                  if(_loc2_)
                  {
                     addr106:
                     §_-CV§ = "easeOutInBounce";
                  }
                  return;
               }
               §§goto(addr89);
            }
            §§goto(addr39);
         }
         §§goto(addr29);
      }
      
      public function §_-qy§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         throw new §_-rU§();
      }
      
      public static function §_-g1§(param1:String) : Function
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(§_-H§ == null)
            {
               if(_loc3_ || _loc3_)
               {
                  addr45:
                  §_-i7§();
               }
            }
            return §_-H§[param1];
         }
         §§goto(addr45);
      }
      
      public static function §_-Ut§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(§_-H§ == null)
            {
               if(!(_loc4_ && §_-qy§))
               {
                  §§goto(addr37);
               }
            }
            §§goto(addr53);
         }
         addr37:
         §_-i7§();
         if(!(_loc4_ && _loc3_))
         {
            addr53:
            §_-H§[param1] = param2;
         }
      }
      
      private static function §_-i7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-H§ = new Dictionary();
            §_-Ut§(§_-yD§,linear);
            if(!(_loc1_ && _loc2_))
            {
               §_-Ut§(§_-az§,easeIn);
               addr35:
               §_-Ut§(§_-gV§,easeOut);
               §_-Ut§(each,easeInOut);
               §_-Ut§(§_-zu§,easeOutIn);
               §_-Ut§(§_-xJ§,easeInBack);
               §_-Ut§(§_-t§,easeOutBack);
               if(_loc2_ || _loc1_)
               {
                  §_-Ut§(§_-MF§,easeInOutBack);
                  if(!_loc1_)
                  {
                     §_-Ut§(§_-mZ§,easeOutInBack);
                     addr79:
                     §_-Ut§(§_-N8§,easeInElastic);
                     §_-Ut§(§_-I7§,easeOutElastic);
                     addr87:
                     §_-Ut§(§_-79§,easeInOutElastic);
                     §_-Ut§(§_-Rr§,easeOutInElastic);
                     §_-Ut§(§_-Yw§,easeInBounce);
                     §_-Ut§(§_-EO§,easeOutBounce);
                  }
                  §_-Ut§(§_-KK§,easeInOutBounce);
                  §_-Ut§(§_-CV§,easeOutInBounce);
                  return;
               }
               §§goto(addr87);
            }
            §§goto(addr79);
         }
         §§goto(addr35);
      }
      
      private static function linear(param1:Number) : Number
      {
         return param1;
      }
      
      private static function easeIn(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc3_)
               {
                  addr35:
                  §§push(§§pop() * param1);
               }
               return §§pop();
            }
         }
         §§goto(addr35);
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() - 1);
            if(!(_loc4_ && §_-qy§))
            {
               addr24:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(_loc2_);
               if(_loc3_ || §_-qy§)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_)
                  {
                     addr53:
                     §§push(§§pop() * _loc2_);
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() + 1);
                     }
                  }
                  return §§pop();
               }
            }
            §§goto(addr53);
         }
         §§goto(addr24);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §_-bD§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §_-bD§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(1.70158);
         if(_loc3_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         return Math.pow(param1,2) * ((_loc2_ + 1) * param1 - _loc2_);
      }
      
      private static function easeOutBack(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(_loc5_ || _loc2_)
         {
            §§push(§§pop() - 1);
            if(_loc5_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(1.70158);
         if(!(_loc4_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
         if(!_loc4_)
         {
            §§push(§§pop() + 1);
         }
         return §§pop();
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §_-bD§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §_-bD§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         §§push(param1);
         §§push(0);
         if(_loc5_ || param1)
         {
            §§push(§§pop() == §§pop());
            if(_loc5_ || §_-qy§)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§goto(addr40);
                  }
               }
               §§goto(addr48);
            }
            addr40:
            §§pop();
            if(!_loc6_)
            {
               §§push(param1);
               §§push(1);
               if(_loc5_)
               {
                  addr48:
                  if(§§pop() == §§pop())
                  {
                     if(_loc5_)
                     {
                        return param1;
                     }
                  }
                  §§push(0.3);
                  if(_loc5_ || §_-qy§)
                  {
                     _loc2_ = §§pop();
                     §§push(_loc2_);
                     if(!_loc6_)
                     {
                        §§goto(addr74);
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr74);
         }
         addr74:
         §§push(§§pop() / 4);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         _loc3_ = §§pop();
         §§push(param1);
         if(_loc5_)
         {
            addr84:
            _loc4_ = §§pop() - 1;
            addr83:
            §§push(-1 * Math.pow(2,10 * _loc4_));
         }
         return §§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_);
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!_loc4_)
         {
            §§push(param1);
            if(!(_loc4_ && §_-qy§))
            {
               §§push(0);
               if(!(_loc4_ && §_-qy§))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(_loc5_)
                        {
                           §§pop();
                           if(_loc5_ || §_-qy§)
                           {
                              §§push(param1);
                              if(_loc5_)
                              {
                                 §§push(1);
                                 if(!(_loc4_ && param1))
                                 {
                                    addr70:
                                    addr69:
                                    if(§§pop() == §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(param1);
                                          if(!_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          addr99:
                                          _loc3_ = §§pop();
                                       }
                                       else
                                       {
                                          §§goto(addr128);
                                       }
                                       §§goto(addr128);
                                    }
                                    else
                                    {
                                       addr80:
                                       _loc2_ = 0.3;
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          §§goto(addr128);
                                       }
                                    }
                                    §§push(Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_));
                                    §§push(1);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr80);
                           }
                           §§goto(addr128);
                        }
                     }
                  }
                  §§goto(addr70);
               }
               §§goto(addr69);
            }
            §§goto(addr80);
         }
         addr128:
         §§push(_loc2_);
         §§push(4);
         if(_loc5_ || _loc2_)
         {
            §§goto(addr99);
            §§push(§§pop() / §§pop());
         }
         return §§pop() + §§pop();
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §_-bD§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §_-bD§(easeOutElastic,easeInElastic,param1);
      }
      
      private static function easeInBounce(param1:Number) : Number
      {
         return 1 - easeOutBounce(1 - param1);
      }
      
      private static function easeOutBounce(param1:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         §§push(7.5625);
         if(!(_loc6_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(2.75);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(_loc5_ || _loc3_)
         {
            §§push(1);
            if(!_loc6_)
            {
               §§push(_loc3_);
               if(_loc5_)
               {
                  if(§§pop() < §§pop() / §§pop())
                  {
                     §§push(_loc2_ * Math.pow(param1,2));
                     if(!(_loc6_ && _loc2_))
                     {
                        _loc4_ = Number(§§pop());
                     }
                     else
                     {
                        addr63:
                        §§push(2 / _loc3_);
                        if(!(_loc6_ && _loc2_))
                        {
                           if(§§pop() < §§pop())
                           {
                              addr76:
                              §§push(param1);
                              §§push(1.5);
                              §§push(_loc3_);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() - §§pop() / §§pop());
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc5_)
                                    {
                                       param1 = §§pop();
                                       if(!_loc6_)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc6_ && param1))
                                          {
                                             addr107:
                                             §§push(§§pop() * Math.pow(param1,2));
                                             §§push(0.75);
                                             if(_loc5_ || _loc2_)
                                             {
                                                _loc4_ = Number(§§pop() + §§pop());
                                                addr233:
                                                return _loc4_;
                                                addr125:
                                             }
                                             else
                                             {
                                                addr204:
                                                §§push(§§pop() - §§pop());
                                                if(!_loc6_)
                                                {
                                                   addr208:
                                                   param1 = Number(§§pop());
                                                   addr232:
                                                   §§push(_loc2_);
                                                   if(!(_loc6_ && §_-qy§))
                                                   {
                                                      addr217:
                                                      §§push(§§pop() * Math.pow(param1,2));
                                                   }
                                                   _loc4_ = §§pop();
                                                   §§goto(addr233);
                                                   addr207:
                                                }
                                                §§push(Number(§§pop() + 0.984375));
                                             }
                                             §§goto(addr233);
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr125);
                                    }
                                 }
                                 §§goto(addr107);
                              }
                              else
                              {
                                 addr140:
                                 if(§§pop() < §§pop() / §§pop())
                                 {
                                    §§push(param1);
                                    if(_loc5_)
                                    {
                                       §§push(2.25);
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr158:
                                             §§push(Number(§§pop() - §§pop()));
                                             if(_loc5_ || param1)
                                             {
                                                param1 = §§pop();
                                                addr181:
                                                §§push(_loc2_);
                                                if(_loc5_ || §_-qy§)
                                                {
                                                   §§push(§§pop() * Math.pow(param1,2));
                                                }
                                                §§push(§§pop() + 0.9375);
                                                if(_loc5_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc5_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§goto(addr233);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr232);
                                                      }
                                                   }
                                                   §§goto(addr217);
                                                }
                                                else
                                                {
                                                   §§goto(addr207);
                                                }
                                             }
                                             §§goto(addr208);
                                          }
                                          else
                                          {
                                             §§goto(addr204);
                                          }
                                       }
                                       else
                                       {
                                          addr201:
                                          §§push(§§pop() / §§pop());
                                          if(_loc6_)
                                          {
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr204);
                                    }
                                    §§goto(addr208);
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    §§push(2.625);
                                    if(_loc5_)
                                    {
                                       §§goto(addr201);
                                       §§push(_loc3_);
                                    }
                                 }
                              }
                              §§goto(addr204);
                           }
                           else
                           {
                              §§push(param1);
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr134:
                                 §§push(2.5);
                                 if(!_loc6_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc5_)
                                    {
                                       §§goto(addr140);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr181);
                              }
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr233);
                  }
                  else
                  {
                     §§push(param1);
                  }
               }
            }
            §§goto(addr63);
         }
         §§goto(addr134);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §_-bD§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §_-bD§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §_-bD§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(param3);
            if(!(_loc5_ && param2))
            {
               §§push(0.5);
               if(!(_loc5_ && param1))
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc4_ || §_-qy§)
                     {
                        addr44:
                        §§push(0.5);
                        if(!(_loc5_ && §_-qy§))
                        {
                           addr52:
                           §§push(param1);
                           if(!(_loc5_ && param1))
                           {
                              §§push(global);
                              if(_loc4_ || param2)
                              {
                                 §§push(param3);
                                 if(!_loc5_)
                                 {
                                    §§push(2);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(!_loc5_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr126);
                                       }
                                       else
                                       {
                                          addr120:
                                          §§push(§§pop() - 0.5);
                                          if(_loc4_)
                                          {
                                             addr118:
                                             §§push(2);
                                          }
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(!_loc5_)
                                          {
                                             addr125:
                                             addr126:
                                             return §§pop();
                                             §§push(§§pop() + 0.5);
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr126);
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§goto(addr120);
                              }
                              else
                              {
                                 addr99:
                                 §§push(param3);
                                 if(_loc4_ || param1)
                                 {
                                    §§goto(addr120);
                                 }
                              }
                              §§goto(addr118);
                           }
                           else
                           {
                              addr98:
                              §§push(global);
                           }
                           §§goto(addr99);
                        }
                        else
                        {
                           addr97:
                           §§push(param2);
                        }
                        §§goto(addr98);
                     }
                     else
                     {
                        addr89:
                        §§push(0.5);
                        if(!(_loc5_ && §_-qy§))
                        {
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr89);
               }
               §§goto(addr125);
            }
            §§goto(addr52);
         }
         §§goto(addr44);
      }
   }
}
