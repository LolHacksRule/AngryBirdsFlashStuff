package § M§
{
   import §8k§.§@B§;
   import flash.utils.Dictionary;
   
   public class §'f§
   {
      
      public static const §7!A§:String = "linear";
      
      public static const §5!8§:String = "easeIn";
      
      public static const §!r§:String = "easeOut";
      
      public static const §'>§:String = "easeInOut";
      
      public static const §3!"§:String = "easeOutIn";
      
      public static const §[Q§:String = "easeInBack";
      
      public static const §^!;§:String = "easeOutBack";
      
      public static const §%Z§:String = "easeInOutBack";
      
      public static const §8b§:String = "easeOutInBack";
      
      public static const §?!8§:String = "easeInElastic";
      
      public static const §]3§:String = "easeOutElastic";
      
      public static const §+_§:String = "easeInOutElastic";
      
      public static const §#!2§:String = "easeOutInElastic";
      
      public static const §false§:String = "easeInBounce";
      
      public static const §6T§:String = "easeOutBounce";
      
      public static const §`,§:String = "easeInOutBounce";
      
      public static const §5]§:String = "easeOutInBounce";
      
      private static var §6R§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §7!A§ = "linear";
            §5!8§ = "easeIn";
            if(!_loc2_)
            {
               §!r§ = "easeOut";
               §'>§ = "easeInOut";
               §3!"§ = "easeOutIn";
               §[Q§ = "easeInBack";
               if(_loc1_ || _loc2_)
               {
                  §^!;§ = "easeOutBack";
                  §%Z§ = "easeInOutBack";
                  if(_loc1_)
                  {
                     §8b§ = "easeOutInBack";
                     if(_loc1_ || _loc2_)
                     {
                        §§goto(addr78);
                     }
                  }
               }
               §§goto(addr109);
            }
            §§goto(addr125);
         }
         addr78:
         if(_loc1_ || _loc2_)
         {
            §#!2§ = "easeOutInElastic";
            if(!_loc2_)
            {
               addr109:
               §false§ = "easeInBounce";
               §6T§ = "easeOutBounce";
               if(!(_loc2_ && _loc2_))
               {
                  §`,§ = "easeInOutBounce";
                  addr125:
                  §5]§ = "easeOutInBounce";
               }
               §§goto(addr125);
            }
         }
      }
      
      public function §'f§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
         throw new §@B§();
      }
      
      public static function §+!0§(param1:String) : Function
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(§6R§ == null)
            {
               if(!_loc2_)
               {
                  §2!;§();
               }
            }
         }
         return §6R§[param1];
      }
      
      public static function §5A§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(§6R§ == null)
            {
               if(_loc3_)
               {
                  §§goto(addr38);
               }
            }
            §§goto(addr42);
         }
         addr38:
         §2!;§();
         if(!_loc4_)
         {
            addr42:
            §6R§[param1] = param2;
         }
      }
      
      private static function §2!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §6R§ = new Dictionary();
         if(_loc2_)
         {
            §5A§(§7!A§,linear);
            §5A§(§5!8§,easeIn);
            §5A§(§!r§,easeOut);
            §5A§(§'>§,easeInOut);
            if(_loc2_ || §'f§)
            {
               §5A§(§3!"§,easeOutIn);
            }
            §5A§(§[Q§,easeInBack);
            §5A§(§^!;§,easeOutBack);
            §5A§(§%Z§,easeInOutBack);
            §5A§(§8b§,easeOutInBack);
            if(!_loc1_)
            {
               §5A§(§?!8§,easeInElastic);
               if(!(_loc1_ && _loc1_))
               {
                  §5A§(§]3§,easeOutElastic);
                  §5A§(§+_§,easeInOutElastic);
                  if(!(_loc1_ && _loc1_))
                  {
                     §5A§(§#!2§,easeOutInElastic);
                     if(!(_loc1_ && §'f§))
                     {
                        addr125:
                        §5A§(§false§,easeInBounce);
                        if(_loc2_)
                        {
                           addr131:
                           §5A§(§6T§,easeOutBounce);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr146);
                  }
               }
               addr135:
               §5A§(§`,§,easeInOutBounce);
               if(_loc2_ || _loc1_)
               {
                  addr146:
                  §5A§(§5]§,easeOutInBounce);
               }
               return;
            }
            §§goto(addr125);
         }
         §§goto(addr131);
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
         if(_loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§goto(addr32);
            }
            §§push(§§pop() * §§pop());
         }
         addr32:
         §§push(§§pop() * §§pop());
         if(_loc2_ || §'f§)
         {
            §§push(param1);
         }
         return §§pop();
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() - 1);
            if(_loc3_ || §'f§)
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(_loc2_);
            if(_loc3_ || _loc2_)
            {
               §§push(_loc2_);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_)
                  {
                     addr69:
                     §§push(§§pop() * _loc2_);
                     if(_loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                  }
                  return §§pop();
               }
            }
            §§goto(addr69);
         }
         §§goto(addr52);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §2#§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §2#§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(1.70158);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         return Math.pow(param1,2) * ((_loc2_ + 1) * param1 - _loc2_);
      }
      
      private static function easeOutBack(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() - 1);
            if(_loc4_)
            {
               addr37:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1.70158);
            if(!(_loc5_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
            if(!(_loc5_ && _loc2_))
            {
               §§push(§§pop() + 1);
            }
            return §§pop();
         }
         §§goto(addr37);
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §2#§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §2#§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && §'f§))
         {
            §§push(param1);
            §§push(0);
            if(!_loc6_)
            {
               §§push(§§pop() == §§pop());
               if(!_loc6_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc6_ && §'f§))
                     {
                        §§pop();
                        if(!(_loc6_ && §'f§))
                        {
                           §§push(param1);
                           §§push(1);
                           if(_loc5_ || _loc3_)
                           {
                              addr63:
                              if(§§pop() == §§pop())
                              {
                                 if(_loc5_ || param1)
                                 {
                                    addr81:
                                    §§push(param1);
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       return §§pop();
                                    }
                                    addr103:
                                    §§push(§§pop() / 4);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(Number(§§pop()));
                                       if(!(_loc6_ && param1))
                                       {
                                          addr120:
                                          _loc3_ = §§pop();
                                          §§goto(addr163);
                                       }
                                       §§push(§§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_));
                                    }
                                    §§goto(addr163);
                                 }
                                 addr163:
                                 §§push(param1);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    _loc4_ = §§pop() - 1;
                                    §§push(-1 * Math.pow(2,10 * _loc4_));
                                 }
                                 return §§pop();
                              }
                              §§push(Number(0.3));
                              if(!(_loc6_ && §'f§))
                              {
                                 _loc2_ = §§pop();
                                 addr102:
                                 §§goto(addr103);
                                 §§push(_loc2_);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr81);
                     }
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr103);
         }
         §§goto(addr102);
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!_loc5_)
         {
            §§push(param1);
            §§push(0);
            if(_loc4_)
            {
               §§push(§§pop() == §§pop());
               if(!(_loc5_ && §'f§))
               {
                  if(!§§pop())
                  {
                     if(_loc4_ || _loc2_)
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           §§push(param1);
                           §§push(1);
                           if(_loc4_)
                           {
                              addr51:
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc5_ && §'f§))
                                 {
                                    addr69:
                                    §§push(param1);
                                    if(_loc4_ || param1)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr104);
                                 }
                                 else
                                 {
                                    addr87:
                                    §§push(_loc2_);
                                    if(_loc4_ || §'f§)
                                    {
                                       §§push(4);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          addr103:
                                          addr104:
                                          §§push(Number(§§pop()));
                                          if(_loc4_ || param1)
                                          {
                                             addr122:
                                             _loc3_ = §§pop();
                                             addr143:
                                             §§push(Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_) + 1);
                                          }
                                          return §§pop();
                                          §§push(§§pop() / §§pop());
                                       }
                                       §§goto(addr143);
                                    }
                                 }
                                 §§goto(addr122);
                              }
                              else
                              {
                                 §§push(0.3);
                                 if(_loc4_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc2_ = §§pop();
                                 if(_loc4_)
                                 {
                                    §§goto(addr87);
                                 }
                              }
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr69);
                     }
                  }
               }
               §§goto(addr51);
            }
            §§goto(addr103);
         }
         §§goto(addr69);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §2#§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §2#§(easeOutElastic,easeInElastic,param1);
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
         if(_loc5_)
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
         if(_loc5_)
         {
            §§push(param1);
            if(!(_loc6_ && _loc3_))
            {
               §§push(1);
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc3_);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc6_ && §'f§))
                     {
                        if(§§pop() < §§pop())
                        {
                           _loc4_ = Number(_loc2_ * Math.pow(param1,2));
                        }
                        else
                        {
                           addr75:
                           §§push(param1);
                           §§push(2 / _loc3_);
                           if(_loc5_ || _loc2_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(param1);
                                    if(!_loc6_)
                                    {
                                       §§push(1.5);
                                       if(!_loc6_)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc5_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc5_)
                                                   {
                                                      param1 = §§pop();
                                                      addr125:
                                                      §§push(_loc2_ * Math.pow(param1,2));
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         §§push(0.75);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc5_)
                                                               {
                                                                  addr147:
                                                                  _loc4_ = §§pop();
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     addr241:
                                                                     return _loc4_;
                                                                     addr240:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr214:
                                                                     §§goto(addr240);
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                               else
                                                               {
                                                                  addr180:
                                                                  param1 = §§pop();
                                                                  §§push(_loc2_ * Math.pow(param1,2));
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(0.9375);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr195:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                        if(!(_loc6_ && §'f§))
                                                                        {
                                                                           §§goto(addr214);
                                                                        }
                                                                        §§goto(addr240);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr217:
                                                                        §§push(§§pop() / _loc3_);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr224:
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc5_)
                                                                              {
                                                                                 param1 = §§pop();
                                                                                 §§push(_loc2_ * Math.pow(param1,2));
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr239:
                                                                                    _loc4_ = Number(§§pop() + 0.984375);
                                                                                    §§goto(addr240);
                                                                                 }
                                                                              }
                                                                              §§goto(addr239);
                                                                           }
                                                                           §§goto(addr241);
                                                                        }
                                                                        §§goto(addr239);
                                                                     }
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                            }
                                                            §§goto(addr147);
                                                         }
                                                         §§goto(addr239);
                                                      }
                                                      else
                                                      {
                                                         addr177:
                                                         §§push(Number(§§pop()));
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr180);
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr224);
                                             }
                                             else
                                             {
                                                addr176:
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§goto(addr177);
                                          }
                                          else
                                          {
                                             addr175:
                                             §§goto(addr176);
                                             §§push(§§pop() / §§pop());
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr125);
                              }
                              else
                              {
                                 addr158:
                                 §§push(param1);
                                 §§push(2.5);
                                 §§push(_loc3_);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(_loc5_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          addr165:
                                          §§push(param1);
                                          §§push(2.25);
                                          §§push(_loc3_);
                                          if(_loc5_ || param1)
                                          {
                                             §§goto(addr175);
                                          }
                                          §§goto(addr217);
                                       }
                                       else
                                       {
                                          §§push(param1);
                                          §§push(2.625);
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr176);
                                 }
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr241);
                     }
                     §§goto(addr176);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr158);
         }
         §§goto(addr165);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §2#§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §2#§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §2#§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §§push(param3);
            if(!(_loc4_ && param3))
            {
               §§push(0.5);
               if(_loc5_ || param2)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc4_)
                     {
                        addr43:
                        §§push(0.5);
                        if(!(_loc4_ && param1))
                        {
                           §§push(param1);
                           if(_loc5_ || param1)
                           {
                              §§push(global);
                              if(_loc5_)
                              {
                                 §§push(param3);
                                 if(_loc5_)
                                 {
                                    §§push(2);
                                    if(_loc5_ || §'f§)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_)
                                       {
                                          addr86:
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(!(_loc4_ && param1))
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr146);
                                       }
                                       else
                                       {
                                          addr133:
                                          §§push(2);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr86);
                              }
                              else
                              {
                                 addr106:
                                 §§push(param3);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(§§pop() - 0.5);
                                    if(_loc5_ || param3)
                                    {
                                       §§goto(addr133);
                                    }
                                 }
                              }
                              addr135:
                              §§push(§§pop() * §§pop()(§§pop() * §§pop()));
                              if(_loc5_ || §'f§)
                              {
                              }
                              §§goto(addr146);
                           }
                           else
                           {
                              addr105:
                              §§push(global);
                           }
                           §§goto(addr106);
                        }
                        else
                        {
                           addr104:
                           §§push(param2);
                        }
                        §§goto(addr105);
                     }
                     else
                     {
                        addr96:
                        §§push(0.5);
                        if(_loc5_ || param1)
                        {
                           §§goto(addr104);
                        }
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr96);
               }
               §§goto(addr146);
            }
            addr146:
            return §§pop() + 0.5;
         }
         §§goto(addr43);
      }
   }
}
