package §^X§
{
   import §8E§.§6g§;
   import flash.utils.Dictionary;
   
   public class §-]§
   {
      
      public static const §5Y§:String = "linear";
      
      public static const §;!I§:String = "easeIn";
      
      public static const §&m§:String = "easeOut";
      
      public static const §2K§:String = "easeInOut";
      
      public static const §?!@§:String = "easeOutIn";
      
      public static const §;-§:String = "easeInBack";
      
      public static const §-V§:String = "easeOutBack";
      
      public static const §=!1§:String = "easeInOutBack";
      
      public static const §4!2§:String = "easeOutInBack";
      
      public static const §1&§:String = "easeInElastic";
      
      public static const §5W§:String = "easeOutElastic";
      
      public static const set:String = "easeInOutElastic";
      
      public static const §85§:String = "easeOutInElastic";
      
      public static const §"=§:String = "easeInBounce";
      
      public static const §>!D§:String = "easeOutBounce";
      
      public static const §-8§:String = "easeInOutBounce";
      
      public static const §0f§:String = "easeOutInBounce";
      
      private static var §<!7§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;!I§ = "easeIn";
            §&m§ = "easeOut";
            if(!_loc2_)
            {
               §2K§ = "easeInOut";
               if(_loc1_ || _loc2_)
               {
                  §?!@§ = "easeOutIn";
                  addr42:
                  §;-§ = "easeInBack";
                  if(_loc1_)
                  {
                     addr57:
                     §-V§ = "easeOutBack";
                     if(_loc1_ || _loc2_)
                     {
                        §=!1§ = "easeInOutBack";
                        §4!2§ = "easeOutInBack";
                        §1&§ = "easeInElastic";
                        if(_loc1_ || _loc2_)
                        {
                           §5W§ = "easeOutElastic";
                           if(!_loc2_)
                           {
                              addr98:
                              set = "easeInOutElastic";
                              addr101:
                              §85§ = "easeOutInElastic";
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr111:
                                 §"=§ = "easeInBounce";
                              }
                              §§goto(addr117);
                           }
                           §>!D§ = "easeOutBounce";
                           addr117:
                           §-8§ = "easeInOutBounce";
                           §0f§ = "easeOutInBounce";
                           return;
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr111);
               }
               §§goto(addr57);
            }
            §§goto(addr98);
         }
         §§goto(addr42);
      }
      
      public function §-]§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
         throw new §6g§();
      }
      
      public static function §=!,§(param1:String) : Function
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(§<!7§ == null)
            {
               if(_loc3_)
               {
                  §<>§();
               }
            }
         }
         return §<!7§[param1];
      }
      
      public static function §0I§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §-]§))
         {
            if(§<!7§ == null)
            {
               if(_loc4_ || §-]§)
               {
                  §<>§();
                  if(_loc3_)
                  {
                  }
                  §§goto(addr52);
               }
            }
            §<!7§[param1] = param2;
         }
         addr52:
      }
      
      private static function §<>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §-]§))
         {
            §<!7§ = new Dictionary();
            if(!(_loc2_ && §-]§))
            {
               §0I§(§5Y§,linear);
               §0I§(§;!I§,easeIn);
               §0I§(§&m§,easeOut);
               §0I§(§2K§,easeInOut);
               §0I§(§?!@§,easeOutIn);
               if(_loc1_)
               {
                  §0I§(§;-§,easeInBack);
                  if(_loc1_ || _loc1_)
                  {
                     §0I§(§-V§,easeOutBack);
                  }
               }
               §0I§(§=!1§,easeInOutBack);
               if(_loc1_ || _loc1_)
               {
                  §0I§(§4!2§,easeOutInBack);
                  if(_loc1_ || §-]§)
                  {
                  }
                  §§goto(addr153);
               }
               §0I§(§1&§,easeInElastic);
               if(!_loc2_)
               {
                  addr109:
                  §0I§(§5W§,easeOutElastic);
               }
               §0I§(set,easeInOutElastic);
               if(!(_loc2_ && _loc1_))
               {
                  §0I§(§85§,easeOutInElastic);
                  §0I§(§"=§,easeInBounce);
                  §0I§(§>!D§,easeOutBounce);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr153);
                  }
               }
               §§goto(addr153);
            }
            §§goto(addr109);
         }
         addr153:
         §0I§(§-8§,easeInOutBounce);
         if(!_loc2_)
         {
            §0I§(§0f§,easeOutInBounce);
         }
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
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || §-]§)
               {
                  addr51:
                  §§push(§§pop() * param1);
               }
               return §§pop();
            }
         }
         §§goto(addr51);
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!(_loc3_ && param1))
         {
            §§push(§§pop() - 1);
            if(_loc4_)
            {
               addr48:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(!_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc3_ && param1))
                  {
                     addr65:
                     §§push(§§pop() * _loc2_);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr73:
                        §§push(§§pop() + 1);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr65);
            }
            §§goto(addr73);
         }
         §§goto(addr48);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §]u§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §]u§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(1.70158);
         if(!_loc4_)
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
         if(!(_loc5_ && §-]§))
         {
            §§push(§§pop() - 1);
            if(_loc4_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(1.70158);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
         if(!_loc5_)
         {
            §§push(§§pop() + 1);
         }
         return §§pop();
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §]u§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §]u§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         §§push(param1);
         §§push(0);
         if(_loc6_ || §-]§)
         {
            §§push(§§pop() == §§pop());
            if(_loc6_)
            {
               if(!§§pop())
               {
                  if(_loc6_ || §-]§)
                  {
                     §§pop();
                     §§push(param1);
                     §§push(1);
                     if(!(_loc5_ && _loc3_))
                     {
                        addr55:
                        if(§§pop() == §§pop())
                        {
                           if(_loc6_)
                           {
                              return param1;
                           }
                        }
                        else
                        {
                           §§push(0.3);
                           if(_loc6_ || _loc2_)
                           {
                              _loc2_ = §§pop();
                              §§push(_loc2_);
                              if(_loc6_ || §-]§)
                              {
                                 addr89:
                                 §§push(§§pop() / 4);
                              }
                           }
                           §§push(Number(§§pop()));
                           if(_loc6_ || _loc3_)
                           {
                              _loc3_ = §§pop();
                              §§push(param1);
                              if(_loc6_ || param1)
                              {
                                 §§push(§§pop() - 1);
                                 if(_loc6_ || _loc2_)
                                 {
                                    addr126:
                                    _loc4_ = §§pop();
                                    §§push(-1 * Math.pow(2,10 * _loc4_));
                                    addr125:
                                 }
                                 return §§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr89);
                  }
               }
            }
         }
         §§goto(addr55);
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
               if(!(_loc5_ && §-]§))
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
                                 if(!(_loc5_ && §-]§))
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
                                    if(_loc4_ || §-]§)
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
         return §]u§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §]u§(easeOutElastic,easeInElastic,param1);
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
                     if(!(_loc6_ && §-]§))
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
                                                                        if(!(_loc6_ && §-]§))
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
         return §]u§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §]u§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §]u§(param1:Function, param2:Function, param3:Number) : Number
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
                                    if(_loc5_ || §-]§)
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
                              if(_loc5_ || §-]§)
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
