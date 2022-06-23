package §[!+§
{
   import §<t§.§ !'§;
   import flash.utils.Dictionary;
   
   public class §^4§
   {
      
      public static const §#8§:String = "linear";
      
      public static const §6!3§:String = "easeIn";
      
      public static const §%a§:String = "easeOut";
      
      public static const §`r§:String = "easeInOut";
      
      public static const §+!0§:String = "easeOutIn";
      
      public static const §^N§:String = "easeInBack";
      
      public static const §5N§:String = "easeOutBack";
      
      public static const §=N§:String = "easeInOutBack";
      
      public static const §&!I§:String = "easeOutInBack";
      
      public static const §%!3§:String = "easeInElastic";
      
      public static const §finally§:String = "easeOutElastic";
      
      public static const §=!9§:String = "easeInOutElastic";
      
      public static const §&y§:String = "easeOutInElastic";
      
      public static const §6!0§:String = "easeInBounce";
      
      public static const §6S§:String = "easeOutBounce";
      
      public static const § !,§:String = "easeInOutBounce";
      
      public static const §7v§:String = "easeOutInBounce";
      
      private static var §'8§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §^4§))
         {
            §6!3§ = "easeIn";
            §%a§ = "easeOut";
            if(!_loc1_)
            {
               §`r§ = "easeInOut";
               if(_loc2_ || _loc2_)
               {
                  §+!0§ = "easeOutIn";
                  if(!_loc1_)
                  {
                     §^N§ = "easeInBack";
                     §5N§ = "easeOutBack";
                     addr53:
                     if(_loc2_)
                     {
                        §=N§ = "easeInOutBack";
                        if(_loc2_ || _loc2_)
                        {
                           addr78:
                           §&!I§ = "easeOutInBack";
                           addr81:
                           §%!3§ = "easeInElastic";
                           §finally§ = "easeOutElastic";
                           §=!9§ = "easeInOutElastic";
                           if(!(_loc1_ && _loc2_))
                           {
                              §&y§ = "easeOutInElastic";
                              §6!0§ = "easeInBounce";
                              if(_loc2_)
                              {
                                 §6S§ = "easeOutBounce";
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    addr125:
                                    § !,§ = "easeInOutBounce";
                                    if(_loc2_ || §^4§)
                                    {
                                       addr135:
                                       §7v§ = "easeOutInBounce";
                                    }
                                 }
                              }
                           }
                           §§goto(addr135);
                        }
                        return;
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr81);
               }
               §§goto(addr53);
            }
            §§goto(addr78);
         }
         §§goto(addr125);
      }
      
      public function §^4§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         throw new § !'§();
      }
      
      public static function §=!F§(param1:String) : Function
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§'8§ == null)
            {
               if(_loc2_)
               {
                  § !K§();
               }
            }
         }
         return §'8§[param1];
      }
      
      public static function §#!A§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            if(§'8§ == null)
            {
               if(_loc3_ || §^4§)
               {
                  addr43:
                  § !K§();
                  if(_loc3_ || param1)
                  {
                     addr52:
                     §'8§[param1] = param2;
                  }
               }
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr43);
      }
      
      private static function § !K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §'8§ = new Dictionary();
         if(!(_loc2_ && _loc2_))
         {
            §#!A§(§#8§,linear);
            if(!(_loc2_ && _loc2_))
            {
               §#!A§(§6!3§,easeIn);
               §#!A§(§%a§,easeOut);
               §#!A§(§`r§,easeInOut);
               if(_loc1_ || _loc1_)
               {
                  §#!A§(§+!0§,easeOutIn);
                  addr71:
                  §#!A§(§^N§,easeInBack);
                  §#!A§(§5N§,easeOutBack);
                  §#!A§(§=N§,easeInOutBack);
                  §#!A§(§&!I§,easeOutInBack);
                  if(!(_loc2_ && §^4§))
                  {
                     §#!A§(§%!3§,easeInElastic);
                     if(!(_loc2_ && §^4§))
                     {
                        §#!A§(§finally§,easeOutElastic);
                        if(_loc1_)
                        {
                           addr121:
                           §#!A§(§=!9§,easeInOutElastic);
                        }
                        §#!A§(§&y§,easeOutInElastic);
                        if(!_loc2_)
                        {
                           §#!A§(§6!0§,easeInBounce);
                           if(!_loc2_)
                           {
                              §#!A§(§6S§,easeOutBounce);
                              §#!A§(§ !,§,easeInOutBounce);
                              addr145:
                              §#!A§(§7v§,easeOutInBounce);
                           }
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr121);
                  }
               }
               addr149:
               return;
            }
            §§goto(addr71);
         }
         §§goto(addr145);
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
            if(_loc2_ || _loc3_)
            {
               §§goto(addr47);
            }
            §§push(§§pop() * §§pop());
         }
         addr47:
         §§push(§§pop() * §§pop());
         if(_loc2_ || _loc2_)
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
         if(!(_loc4_ && §^4§))
         {
            §§push(§§pop() - 1);
            if(_loc3_ || §^4§)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && _loc2_))
               {
                  addr74:
                  §§push(§§pop() * _loc2_);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() + 1);
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr74);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §?!2§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §?!2§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(1.70158);
         if(!(_loc3_ && §^4§))
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
         if(_loc4_)
         {
            §§push(§§pop() - 1);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(1.70158);
         if(!(_loc5_ && §^4§))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
         if(!(_loc5_ && param1))
         {
            §§push(§§pop() + 1);
         }
         return §§pop();
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §?!2§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §?!2§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() == §§pop());
               if(!(_loc5_ && §^4§))
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr41:
                        §§pop();
                        addr93:
                        §§push(param1);
                        §§push(1);
                        if(!(_loc5_ && §^4§))
                        {
                           §§push(§§pop() == §§pop());
                        }
                        §§push(§§pop() / §§pop());
                        if(!(_loc5_ && _loc3_))
                        {
                           _loc3_ = §§pop();
                           if(!_loc5_)
                           {
                              addr105:
                              §§push(param1);
                              if(!(_loc5_ && param1))
                              {
                                 §§push(§§pop() - 1);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!_loc5_)
                                    {
                                       addr134:
                                       _loc4_ = §§pop();
                                       addr135:
                                       §§push(-1 * Math.pow(2,10 * _loc4_));
                                       if(_loc5_ && _loc2_)
                                       {
                                       }
                                       §§goto(addr163);
                                    }
                                    addr150:
                                    addr163:
                                    return §§pop();
                                    §§push(§§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_));
                                 }
                              }
                              §§goto(addr134);
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr134);
                     }
                  }
                  if(§§pop())
                  {
                     if(!(_loc5_ && param1))
                     {
                        §§push(param1);
                        if(_loc6_ || §^4§)
                        {
                           return §§pop();
                        }
                        §§goto(addr150);
                     }
                     else
                     {
                        §§goto(addr105);
                     }
                     §§goto(addr134);
                  }
                  else
                  {
                     addr81:
                     _loc2_ = 0.3;
                     if(_loc6_ || param1)
                     {
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§goto(addr93);
                           §§push(4);
                        }
                        §§goto(addr134);
                     }
                  }
                  §§goto(addr134);
               }
            }
            §§goto(addr41);
         }
         §§goto(addr81);
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc3_:* = NaN;
         if(!(_loc5_ && §^4§))
         {
            §§push(param1);
            §§push(0);
            if(_loc4_ || §^4§)
            {
               §§push(§§pop() == §§pop());
               if(!(_loc5_ && §^4§))
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(!(_loc5_ && §^4§))
                        {
                           §§push(param1);
                           §§push(1);
                           if(!_loc5_)
                           {
                              addr71:
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(param1);
                                    if(_loc4_ || _loc3_)
                                    {
                                       return §§pop();
                                    }
                                    addr120:
                                    _loc3_ = §§pop();
                                    §§push(Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_));
                                    if(_loc4_ || §^4§)
                                    {
                                       addr148:
                                       §§push(§§pop() + 1);
                                    }
                                 }
                                 else
                                 {
                                    addr102:
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       §§push(4);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr120);
                                          §§push(Number(§§pop() / §§pop()));
                                       }
                                       §§goto(addr148);
                                    }
                                 }
                                 return §§pop();
                              }
                              addr85:
                              §§push(0.3);
                              if(!(_loc5_ && §^4§))
                              {
                                 _loc2_ = §§pop();
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§goto(addr102);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr120);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr85);
                     }
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr148);
         }
         §§goto(addr120);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §?!2§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §?!2§(easeOutElastic,easeInElastic,param1);
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
         if(_loc5_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            §§push(param1);
            §§push(1);
            if(_loc5_ || _loc2_)
            {
               §§push(_loc3_);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() / §§pop());
                  if(_loc5_ || param1)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc5_ || §^4§)
                        {
                           addr78:
                           §§push(_loc2_);
                           if(!(_loc6_ && param1))
                           {
                              _loc4_ = Number(§§pop() * Math.pow(param1,2));
                              addr312:
                              §§push(_loc4_);
                           }
                           else
                           {
                              addr267:
                              §§push(Number(§§pop()));
                              if(!(_loc6_ && _loc2_))
                              {
                                 param1 = §§pop();
                                 addr286:
                                 §§push(_loc2_);
                                 if(!_loc6_)
                                 {
                                    addr289:
                                    §§push(§§pop() * Math.pow(param1,2));
                                 }
                                 §§push(§§pop() + 0.984375);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc5_ || §^4§)
                                    {
                                       _loc4_ = §§pop();
                                       §§goto(addr312);
                                    }
                                 }
                                 §§goto(addr313);
                              }
                              §§goto(addr289);
                           }
                           §§goto(addr313);
                        }
                        else
                        {
                           addr108:
                           §§push(param1);
                           §§push(1.5);
                           §§push(_loc3_);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc5_ || _loc3_)
                              {
                                 addr126:
                                 §§push(§§pop() - §§pop());
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc5_)
                                    {
                                       param1 = §§pop();
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(_loc2_ * Math.pow(param1,2));
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§push(0.75);
                                             if(!_loc6_)
                                             {
                                                _loc4_ = Number(§§pop() + §§pop());
                                                if(_loc5_)
                                                {
                                                   §§goto(addr312);
                                                }
                                                else
                                                {
                                                   addr205:
                                                   §§push(param1);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(2.25);
                                                      if(_loc5_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§push(§§pop() - §§pop() / §§pop());
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               param1 = Number(§§pop());
                                                               if(_loc5_ || §^4§)
                                                               {
                                                                  addr251:
                                                                  _loc4_ = Number(_loc2_ * Math.pow(param1,2) + 0.9375);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr254:
                                                                     §§goto(addr312);
                                                                  }
                                                                  §§goto(addr313);
                                                               }
                                                               §§goto(addr286);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr267);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr266:
                                                            §§goto(addr267);
                                                            §§push(§§pop() - §§pop() / §§pop());
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      §§goto(addr266);
                                                   }
                                                   else
                                                   {
                                                      addr263:
                                                      §§goto(addr266);
                                                      §§push(2.625);
                                                      §§push(_loc3_);
                                                   }
                                                   §§goto(addr266);
                                                }
                                             }
                                             §§goto(addr266);
                                          }
                                          §§goto(addr289);
                                       }
                                       §§goto(addr254);
                                    }
                                    §§goto(addr267);
                                 }
                                 §§goto(addr251);
                              }
                              else
                              {
                                 addr193:
                                 §§push(_loc3_);
                                 if(_loc5_ || param1)
                                 {
                                    if(§§pop() < §§pop() / §§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr205);
                                       }
                                       §§goto(addr286);
                                    }
                                    else
                                    {
                                       §§push(param1);
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§goto(addr263);
                                       }
                                    }
                                    §§goto(addr286);
                                 }
                              }
                           }
                           §§goto(addr266);
                        }
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc5_)
                        {
                           addr99:
                           if(§§pop() < 2 / _loc3_)
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§goto(addr108);
                              }
                              §§goto(addr254);
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc5_ || _loc2_)
                              {
                                 §§push(2.5);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§goto(addr193);
                                 }
                                 §§goto(addr286);
                              }
                           }
                           §§goto(addr251);
                        }
                     }
                     §§goto(addr263);
                  }
                  §§goto(addr126);
               }
            }
            §§goto(addr99);
         }
         §§goto(addr78);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §?!2§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §?!2§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §?!2§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param3);
            if(_loc4_)
            {
               §§push(0.5);
               if(!(_loc5_ && param3))
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc4_ || §^4§)
                     {
                        §§push(0.5);
                        if(_loc4_)
                        {
                           addr40:
                           §§push(param1);
                           if(!(_loc5_ && §^4§))
                           {
                              §§push(global);
                              if(_loc4_ || param2)
                              {
                                 §§push(param3);
                                 if(_loc4_)
                                 {
                                    §§push(2);
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc5_)
                                       {
                                          addr80:
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(_loc4_ || param3)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr130);
                                    }
                                    else
                                    {
                                       addr123:
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr80);
                              }
                              else
                              {
                                 addr105:
                                 §§push(param3);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(§§pop() - 0.5);
                                    if(!(_loc5_ && param2))
                                    {
                                       addr122:
                                       §§goto(addr123);
                                       §§push(2);
                                    }
                                    addr124:
                                    §§push(§§pop() * §§pop()(§§pop()));
                                    if(_loc5_)
                                    {
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr122);
                              }
                           }
                           else
                           {
                              addr104:
                              §§push(global);
                           }
                           §§goto(addr105);
                        }
                     }
                     else
                     {
                        addr90:
                        §§push(0.5);
                        if(!_loc5_)
                        {
                           §§goto(addr104);
                           §§push(param2);
                        }
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr90);
               }
               addr130:
               return §§pop() + 0.5;
            }
            §§goto(addr40);
         }
         §§goto(addr90);
      }
   }
}
