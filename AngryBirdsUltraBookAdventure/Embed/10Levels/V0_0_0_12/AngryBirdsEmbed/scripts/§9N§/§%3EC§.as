package §9N§
{
   import §]c§.§^!"§;
   import flash.utils.Dictionary;
   
   public class §>C§
   {
      
      public static const §'P§:String = "linear";
      
      public static const §&T§:String = "easeIn";
      
      public static const §else §:String = "easeOut";
      
      public static const §3!C§:String = "easeInOut";
      
      public static const §>!>§:String = "easeOutIn";
      
      public static const §33§:String = "easeInBack";
      
      public static const §2d§:String = "easeOutBack";
      
      public static const §9!,§:String = "easeInOutBack";
      
      public static const §@9§:String = "easeOutInBack";
      
      public static const §9B§:String = "easeInElastic";
      
      public static const §'!G§:String = "easeOutElastic";
      
      public static const §3!=§:String = "easeInOutElastic";
      
      public static const §^S§:String = "easeOutInElastic";
      
      public static const §7<§:String = "easeInBounce";
      
      public static const §1!3§:String = "easeOutBounce";
      
      public static const §?V§:String = "easeInOutBounce";
      
      public static const §3!3§:String = "easeOutInBounce";
      
      private static var §@+§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §'P§ = "linear";
            §&T§ = "easeIn";
            if(!_loc2_)
            {
               §else § = "easeOut";
               §3!C§ = "easeInOut";
               §>!>§ = "easeOutIn";
               §33§ = "easeInBack";
               if(_loc1_ || _loc2_)
               {
                  §2d§ = "easeOutBack";
                  §9!,§ = "easeInOutBack";
                  if(_loc1_)
                  {
                     §@9§ = "easeOutInBack";
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
            §^S§ = "easeOutInElastic";
            if(!_loc2_)
            {
               addr109:
               §7<§ = "easeInBounce";
               §1!3§ = "easeOutBounce";
               if(!(_loc2_ && _loc2_))
               {
                  §?V§ = "easeInOutBounce";
                  addr125:
                  §3!3§ = "easeOutInBounce";
               }
               §§goto(addr125);
            }
         }
      }
      
      public function §>C§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
         throw new §^!"§();
      }
      
      public static function §+!&§(param1:String) : Function
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(§@+§ == null)
            {
               if(!_loc2_)
               {
                  §0y§();
               }
            }
         }
         return §@+§[param1];
      }
      
      public static function §8>§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(§@+§ == null)
            {
               if(_loc3_)
               {
                  §§goto(addr38);
               }
            }
            §§goto(addr42);
         }
         addr38:
         §0y§();
         if(!_loc4_)
         {
            addr42:
            §@+§[param1] = param2;
         }
      }
      
      private static function §0y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §@+§ = new Dictionary();
         if(_loc2_)
         {
            §8>§(§'P§,linear);
            §8>§(§&T§,easeIn);
            §8>§(§else §,easeOut);
            §8>§(§3!C§,easeInOut);
            if(_loc2_ || §>C§)
            {
               §8>§(§>!>§,easeOutIn);
            }
            §8>§(§33§,easeInBack);
            §8>§(§2d§,easeOutBack);
            §8>§(§9!,§,easeInOutBack);
            §8>§(§@9§,easeOutInBack);
            if(!_loc1_)
            {
               §8>§(§9B§,easeInElastic);
               if(!(_loc1_ && _loc1_))
               {
                  §8>§(§'!G§,easeOutElastic);
                  §8>§(§3!=§,easeInOutElastic);
                  if(!(_loc1_ && _loc1_))
                  {
                     §8>§(§^S§,easeOutInElastic);
                     if(!(_loc1_ && §>C§))
                     {
                        addr125:
                        §8>§(§7<§,easeInBounce);
                        if(_loc2_)
                        {
                           addr131:
                           §8>§(§1!3§,easeOutBounce);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr146);
                  }
               }
               addr135:
               §8>§(§?V§,easeInOutBounce);
               if(_loc2_ || _loc1_)
               {
                  addr146:
                  §8>§(§3!3§,easeOutInBounce);
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
         if(_loc2_ || §>C§)
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
            if(_loc3_ || §>C§)
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
         return §,!@§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §,!@§(easeOut,easeIn,param1);
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
         return §,!@§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §,!@§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && §>C§))
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
                     if(!(_loc6_ && §>C§))
                     {
                        §§pop();
                        if(!(_loc6_ && §>C§))
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
                              if(!(_loc6_ && §>C§))
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
               if(!(_loc5_ && §>C§))
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
                                 if(!(_loc5_ && §>C§))
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
                                    if(_loc4_ || §>C§)
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
         return §,!@§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §,!@§(easeOutElastic,easeInElastic,param1);
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
                     if(!(_loc6_ && §>C§))
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
                                                                        if(!(_loc6_ && §>C§))
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
         return §,!@§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §,!@§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §,!@§(param1:Function, param2:Function, param3:Number) : Number
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
                                    if(_loc5_ || §>C§)
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
                              if(_loc5_ || §>C§)
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
