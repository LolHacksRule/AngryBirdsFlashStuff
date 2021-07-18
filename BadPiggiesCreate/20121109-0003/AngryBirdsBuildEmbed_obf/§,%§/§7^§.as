package §,%§
{
   import §6!@§.§;!%§;
   import flash.utils.Dictionary;
   
   public class §7^§
   {
      
      public static const §?0§:String = "linear";
      
      public static const §"!`§:String = "easeIn";
      
      public static const §5e§:String = "easeOut";
      
      public static const §;!+§:String = "easeInOut";
      
      public static const §"!"§:String = "easeOutIn";
      
      public static const §4^§:String = "easeInBack";
      
      public static const §3!e§:String = "easeOutBack";
      
      public static const §[!L§:String = "easeInOutBack";
      
      public static const native:String = "easeOutInBack";
      
      public static const §@!Z§:String = "easeInElastic";
      
      public static const §+c§:String = "easeOutElastic";
      
      public static const §5L§:String = "easeInOutElastic";
      
      public static const §>! §:String = "easeOutInElastic";
      
      public static const §5t§:String = "easeInBounce";
      
      public static const §,!d§:String = "easeOutBounce";
      
      public static const §&P§:String = "easeInOutBounce";
      
      public static const §62§:String = "easeOutInBounce";
      
      private static var §%!g§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §?0§ = "linear";
            if(!_loc1_)
            {
               §"!`§ = "easeIn";
               §5e§ = "easeOut";
               §;!+§ = "easeInOut";
               if(!_loc1_)
               {
                  §"!"§ = "easeOutIn";
                  if(!(_loc1_ && _loc2_))
                  {
                     §4^§ = "easeInBack";
                     if(_loc2_ || §7^§)
                     {
                        §3!e§ = "easeOutBack";
                        §[!L§ = "easeInOutBack";
                        addr76:
                        native = "easeOutInBack";
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr86);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr119);
                  }
                  addr86:
                  §@!Z§ = "easeInElastic";
                  §+c§ = "easeOutElastic";
                  if(!(_loc1_ && _loc2_))
                  {
                     addr109:
                     §5L§ = "easeInOutElastic";
                     if(!(_loc1_ && §7^§))
                     {
                        addr119:
                        §>! § = "easeOutInElastic";
                        if(!_loc1_)
                        {
                           addr124:
                           §5t§ = "easeInBounce";
                        }
                     }
                     §,!d§ = "easeOutBounce";
                     §&P§ = "easeInOutBounce";
                  }
                  §62§ = "easeOutInBounce";
                  return;
               }
               §§goto(addr76);
            }
            §§goto(addr119);
         }
         §§goto(addr109);
      }
      
      public function §7^§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         throw new §;!%§();
      }
      
      public static function §&1§(param1:String) : Function
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(§%!g§ == null)
            {
               if(_loc3_ || param1)
               {
                  §5!]§();
               }
            }
         }
         return §%!g§[param1];
      }
      
      public static function §1Z§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§%!g§ == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §5!]§();
                  if(!(_loc3_ && _loc3_))
                  {
                     addr48:
                     §%!g§[param1] = param2;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      private static function §5!]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §%!g§ = new Dictionary();
            if(!_loc1_)
            {
               §1Z§(§?0§,linear);
               §1Z§(§"!`§,easeIn);
               if(!(_loc1_ && §7^§))
               {
                  §1Z§(§5e§,easeOut);
                  §1Z§(§;!+§,easeInOut);
                  §1Z§(§"!"§,easeOutIn);
                  if(_loc2_)
                  {
                     §1Z§(§4^§,easeInBack);
                     if(_loc2_ || _loc2_)
                     {
                        addr80:
                        §1Z§(§3!e§,easeOutBack);
                        if(!(_loc1_ && _loc1_))
                        {
                           §1Z§(§[!L§,easeInOutBack);
                           §1Z§(native,easeOutInBack);
                           if(_loc2_)
                           {
                              §1Z§(§@!Z§,easeInElastic);
                              if(_loc2_ || §7^§)
                              {
                                 §1Z§(§+c§,easeOutElastic);
                                 §1Z§(§5L§,easeInOutElastic);
                                 §1Z§(§>! §,easeOutInElastic);
                                 addr134:
                                 §1Z§(§5t§,easeInBounce);
                                 addr138:
                                 §1Z§(§,!d§,easeOutBounce);
                                 if(_loc2_ || _loc1_)
                                 {
                                    addr149:
                                    §1Z§(§&P§,easeInOutBounce);
                                    if(!_loc1_)
                                    {
                                       addr155:
                                       §1Z§(§62§,easeOutInBounce);
                                    }
                                 }
                                 §§goto(addr155);
                              }
                           }
                           return;
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr155);
               }
               §§goto(addr80);
            }
         }
         §§goto(addr134);
      }
      
      private static function linear(param1:Number) : Number
      {
         return param1;
      }
      
      private static function easeIn(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr33);
            }
            §§push(§§pop() * §§pop());
         }
         addr33:
         §§push(§§pop() * §§pop());
         if(_loc3_)
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
         if(!_loc4_)
         {
            §§push(§§pop() - 1);
            if(_loc3_)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(_loc2_);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_ || _loc3_)
                  {
                     addr54:
                     §§push(§§pop() * _loc2_);
                     if(_loc4_)
                     {
                     }
                     §§goto(addr59);
                  }
                  addr59:
                  return §§pop();
                  §§push(§§pop() + 1);
               }
            }
            §§goto(addr54);
         }
         §§goto(addr32);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §3u§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §3u§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(1.70158);
         if(!(_loc4_ && param1))
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
         if(!(_loc4_ && §7^§))
         {
            §§push(§§pop() - 1);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(1.70158);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
         if(_loc5_ || param1)
         {
            §§push(§§pop() + 1);
         }
         return §§pop();
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §3u§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §3u§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         §§push(param1);
         if(_loc6_ || §7^§)
         {
            §§push(0);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() == §§pop());
               if(!(_loc5_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§pop();
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(param1);
                           §§push(1);
                           if(_loc6_)
                           {
                              addr79:
                              if(§§pop() == §§pop())
                              {
                                 §§push(param1);
                                 if(_loc6_ || _loc2_)
                                 {
                                    return §§pop();
                                 }
                                 addr100:
                                 _loc2_ = §§pop();
                                 if(_loc6_)
                                 {
                                    addr103:
                                    §§push(_loc2_);
                                    if(!(_loc5_ && §7^§))
                                    {
                                       addr112:
                                       §§push(Number(§§pop() / 4));
                                       if(!_loc5_)
                                       {
                                          _loc3_ = §§pop();
                                          addr117:
                                          §§push(param1);
                                          if(!_loc5_)
                                          {
                                             addr130:
                                             §§push(§§pop() - 1);
                                          }
                                          §§push(Number(§§pop()));
                                          if(!_loc5_)
                                          {
                                             §§goto(addr134);
                                          }
                                          §§goto(addr145);
                                       }
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr117);
                              }
                              else
                              {
                                 §§push(0.3);
                                 if(!(_loc5_ && §7^§))
                                 {
                                    §§goto(addr100);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr103);
                     }
                  }
               }
            }
            §§goto(addr79);
         }
         addr134:
         _loc4_ = §§pop();
         §§push(-1 * Math.pow(2,10 * _loc4_));
         if(_loc6_)
         {
            addr145:
            §§push(§§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_));
         }
         return §§pop();
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!_loc4_)
         {
            §§push(param1);
            if(!(_loc4_ && _loc3_))
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc5_)
                        {
                           §§goto(addr46);
                        }
                     }
                     §§goto(addr59);
                  }
                  addr46:
                  §§pop();
                  if(!_loc4_)
                  {
                     §§push(param1);
                     §§push(1);
                     if(!(_loc4_ && param1))
                     {
                        addr59:
                        if(§§pop() == §§pop())
                        {
                           if(!_loc4_)
                           {
                              §§push(param1);
                              if(_loc5_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr83:
                              §§push(0.3);
                           }
                           §§push(Number(§§pop()));
                           if(_loc5_ || param1)
                           {
                              _loc2_ = §§pop();
                              §§goto(addr126);
                           }
                           §§push(4);
                           if(_loc5_)
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc5_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr125:
                                    _loc3_ = §§pop();
                                    §§goto(addr126);
                                 }
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr153);
                  }
                  addr126:
                  if(!(_loc4_ && param1))
                  {
                     addr100:
                     §§push(_loc2_);
                  }
                  §§push(Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_));
                  if(_loc5_ || param1)
                  {
                     addr153:
                     §§push(§§pop() + 1);
                  }
                  return §§pop();
               }
               §§goto(addr59);
            }
            §§goto(addr125);
         }
         §§goto(addr100);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §3u§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §3u§(easeOutElastic,easeInElastic,param1);
      }
      
      private static function easeInBounce(param1:Number) : Number
      {
         return 1 - easeOutBounce(1 - param1);
      }
      
      private static function easeOutBounce(param1:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         §§push(7.5625);
         if(_loc6_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(2.75);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1);
            §§push(1);
            if(_loc6_ || _loc2_)
            {
               §§push(_loc3_);
               if(!(_loc5_ && _loc2_))
               {
                  if(§§pop() < §§pop() / §§pop())
                  {
                     §§push(_loc2_);
                     if(!(_loc5_ && §7^§))
                     {
                        §§push(§§pop() * Math.pow(param1,2));
                        if(_loc6_ || §7^§)
                        {
                           §§push(Number(§§pop()));
                           if(_loc6_ || _loc3_)
                           {
                              _loc4_ = §§pop();
                              if(_loc6_)
                              {
                                 addr297:
                                 return _loc4_;
                                 addr296:
                              }
                              else
                              {
                                 addr104:
                                 §§push(param1);
                                 if(!_loc5_)
                                 {
                                    §§push(1.5);
                                    §§push(_loc3_);
                                    if(_loc6_ || §7^§)
                                    {
                                       §§push(§§pop() - §§pop() / §§pop());
                                       if(_loc6_ || param1)
                                       {
                                          param1 = Number(§§pop());
                                          §§push(_loc2_ * Math.pow(param1,2));
                                          if(!(_loc5_ && §7^§))
                                          {
                                             addr153:
                                             _loc4_ = Number(§§pop() + 0.75);
                                          }
                                          else
                                          {
                                             addr156:
                                             §§push(2.5);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(_loc3_);
                                                if(!(_loc5_ && §7^§))
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§push(param1);
                                                            §§push(2.25);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     addr203:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc5_)
                                                                        {
                                                                           param1 = §§pop();
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(_loc6_ || §7^§)
                                                                              {
                                                                                 §§push(§§pop() * Math.pow(param1,2));
                                                                                 if(_loc6_ || _loc2_)
                                                                                 {
                                                                                    addr232:
                                                                                    §§push(0.9375);
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       addr241:
                                                                                       §§push(Number(§§pop() + §§pop()));
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr244:
                                                                                          _loc4_ = §§pop();
                                                                                          addr245:
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr291:
                                                                                          §§push(§§pop() * Math.pow(param1,2) + 0.984375);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr297);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr291);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr276:
                                                                                    param1 = §§pop();
                                                                                    addr277:
                                                                                    §§push(_loc2_);
                                                                                    if(_loc6_ || _loc2_)
                                                                                    {
                                                                                       §§goto(addr291);
                                                                                    }
                                                                                 }
                                                                                 _loc4_ = Number(§§pop());
                                                                                 §§goto(addr297);
                                                                              }
                                                                              §§goto(addr241);
                                                                           }
                                                                           §§goto(addr277);
                                                                        }
                                                                        §§goto(addr291);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr275:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               else
                                                               {
                                                                  addr256:
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                               §§goto(addr297);
                                                            }
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc5_ && §7^§))
                                                            {
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr297);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      else
                                                      {
                                                         §§push(param1);
                                                         §§push(2.625);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§goto(addr256);
                                                            §§push(_loc3_);
                                                         }
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                }
                                                §§goto(addr256);
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr297);
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr256);
                                 }
                                 §§goto(addr232);
                              }
                              §§goto(addr297);
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr244);
                     }
                     §§goto(addr297);
                  }
                  else
                  {
                     addr95:
                     if(param1 < 2 / _loc3_)
                     {
                        if(!(_loc5_ && §7^§))
                        {
                           §§goto(addr104);
                        }
                        §§goto(addr276);
                     }
                     else
                     {
                        §§push(param1);
                     }
                  }
                  §§goto(addr156);
               }
            }
            §§goto(addr95);
         }
         §§goto(addr104);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §3u§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §3u§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §3u§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param3);
            if(!(_loc5_ && param2))
            {
               §§push(0.5);
               if(_loc4_ || param1)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc5_ && param2))
                     {
                        addr42:
                        §§push(0.5);
                        if(!(_loc5_ && §7^§))
                        {
                           §§push(param1);
                           if(!_loc5_)
                           {
                              §§push(global);
                              if(!_loc5_)
                              {
                                 §§goto(addr114);
                              }
                              else
                              {
                                 addr105:
                                 §§push(param3);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() - 0.5);
                                    if(_loc4_)
                                    {
                                       §§goto(addr112);
                                    }
                                    addr114:
                                    §§push(param3);
                                    if(_loc4_)
                                    {
                                       §§push(2);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop() * §§pop()(§§pop()));
                                             if(_loc4_ || param1)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr125);
                                          }
                                          else
                                          {
                                             addr112:
                                             §§push(2);
                                          }
                                          §§goto(addr125);
                                       }
                                       §§push(§§pop() * §§pop());
                                    }
                                    §§push(§§pop() * §§pop()(§§pop()));
                                    if(_loc4_ || param1)
                                    {
                                    }
                                    §§goto(addr125);
                                 }
                              }
                              §§goto(addr112);
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
                        addr100:
                        §§push(0.5);
                        if(_loc4_)
                        {
                           addr103:
                           §§goto(addr104);
                           §§push(param2);
                        }
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr100);
               }
               addr125:
               return §§pop() + 0.5;
            }
            §§goto(addr103);
         }
         §§goto(addr42);
      }
   }
}
