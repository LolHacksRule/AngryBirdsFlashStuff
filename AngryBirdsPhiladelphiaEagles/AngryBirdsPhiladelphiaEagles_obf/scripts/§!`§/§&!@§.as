package §!`§
{
   import §7!O§.§^!§;
   import flash.utils.Dictionary;
   
   public class §&!@§
   {
      
      public static const §<4§:String = "linear";
      
      public static const §??§:String = "easeIn";
      
      public static const §"a§:String = "easeOut";
      
      public static const §[!+§:String = "easeInOut";
      
      public static const §-!>§:String = "easeOutIn";
      
      public static const §3c§:String = "easeInBack";
      
      public static const §>!?§:String = "easeOutBack";
      
      public static const §^Y§:String = "easeInOutBack";
      
      public static const §?u§:String = "easeOutInBack";
      
      public static const §7h§:String = "easeInElastic";
      
      public static const §+K§:String = "easeOutElastic";
      
      public static const §5d§:String = "easeInOutElastic";
      
      public static const §&!"§:String = "easeOutInElastic";
      
      public static const §&!G§:String = "easeInBounce";
      
      public static const §@!O§:String = "easeOutBounce";
      
      public static const §1^§:String = "easeInOutBounce";
      
      public static const §<[§:String = "easeOutInBounce";
      
      private static var §<g§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            §??§ = "easeIn";
            §"a§ = "easeOut";
            §[!+§ = "easeInOut";
            while(true)
            {
               §-!>§ = "easeOutIn";
               while(true)
               {
                  §3c§ = "easeInBack";
                  loop3:
                  while(true)
                  {
                     §>!?§ = "easeOutBack";
                     loop4:
                     while(true)
                     {
                        §^Y§ = "easeInOutBack";
                        while(true)
                        {
                           §?u§ = "easeOutInBack";
                           continue loop4;
                           addr118:
                           §7h§ = "easeInElastic";
                           if(!(_loc2_ || §&!@§))
                           {
                              continue;
                           }
                           §+K§ = "easeOutElastic";
                           loop7:
                           while(true)
                           {
                              §5d§ = "easeInOutElastic";
                              addr83:
                              while(_loc2_)
                              {
                                 continue loop7;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §&!@§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         throw new §^!§();
      }
      
      public static function §^n§(param1:String) : Function
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§<g§ == null)
            {
               if(_loc3_ || param1)
               {
                  §case§();
               }
            }
         }
         return §<g§[param1];
      }
      
      public static function §`Q§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§<g§ == null)
            {
               while(true)
               {
                  §case§();
                  addr59:
                  while(true)
                  {
                  }
                  addr46:
                  if(!(_loc4_ || §&!@§))
                  {
                     continue;
                  }
                  return;
                  addr53:
               }
            }
            while(true)
            {
               §<g§[param1] = param2;
               if(_loc3_ && §&!@§)
               {
                  continue;
               }
               §§goto(addr46);
            }
            §§goto(addr53);
         }
         §§goto(addr59);
      }
      
      private static function §case§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<g§ = new Dictionary();
            loop0:
            while(true)
            {
               §`Q§(§<4§,linear);
               §`Q§(§??§,easeIn);
               while(true)
               {
                  §`Q§(§"a§,easeOut);
                  §`Q§(§[!+§,easeInOut);
                  §`Q§(§-!>§,easeOutIn);
                  §`Q§(§3c§,easeInBack);
                  while(_loc2_ || _loc2_)
                  {
                     §`Q§(§?u§,easeOutInBack);
                     loop5:
                     while(_loc2_)
                     {
                        §`Q§(§7h§,easeInElastic);
                        loop6:
                        while(_loc2_)
                        {
                           §`Q§(§+K§,easeOutElastic);
                           while(!(_loc1_ && §&!@§))
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              §`Q§(§>!?§,easeOutBack);
                              break loop6;
                              §§goto(addr109);
                           }
                           addr109:
                        }
                        while(true)
                        {
                           §`Q§(§^Y§,easeInOutBack);
                           break loop5;
                        }
                        loop9:
                        for(; !(_loc1_ && _loc1_); if(_loc1_ && _loc2_)
                        {
                           continue;
                        },if(!_loc1_)
                        {
                           return;
                        },§§goto(addr109))
                        {
                           §`Q§(§@!O§,easeOutBounce);
                           addr74:
                           if(_loc2_ || §&!@§)
                           {
                              §`Q§(§1^§,easeInOutBounce);
                              while(_loc2_)
                              {
                                 §`Q§(§<[§,easeOutInBounce);
                                 if(_loc2_)
                                 {
                                    continue loop9;
                                 }
                              }
                              §§goto(addr122);
                           }
                           else
                           {
                              while(true)
                              {
                                 §`Q§(§&!G§,easeInBounce);
                                 continue loop9;
                                 §§goto(addr74);
                              }
                              addr80:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr157);
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
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc2_)
            {
               §§goto(addr47);
            }
            §§push(§§pop() * §§pop());
         }
         addr47:
         §§push(§§pop() * §§pop());
         if(_loc2_ || _loc3_)
         {
            return param1;
         }
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() - 1);
            if(!_loc3_)
            {
               addr33:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     §§goto(addr45);
                  }
                  §§goto(addr53);
               }
               §§goto(addr45);
            }
            addr45:
            §§push(§§pop() * _loc2_);
            if(!(_loc3_ && param1))
            {
               addr53:
               return §§pop() + 1;
            }
         }
         §§goto(addr33);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §+B§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §+B§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(1.70158);
         if(!_loc3_)
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
         if(_loc5_)
         {
            §§push(§§pop() - 1);
            if(_loc5_ || §&!@§)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(1.70158);
         if(!(_loc4_ && §&!@§))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
         if(!(_loc4_ && param1))
         {
            return §§pop() + 1;
         }
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §+B§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §+B§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || §&!@§)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc5_ && _loc3_))
                  {
                     if(!§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           addr163:
                           loop9:
                           while(true)
                           {
                              §§push(param1);
                              addr134:
                              while(true)
                              {
                                 addr135:
                                 §§push(1);
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    break;
                                 }
                                 §§push(§§pop() == §§pop());
                                 if(_loc5_)
                                 {
                                    continue loop8;
                                 }
                                 continue loop9;
                              }
                              continue loop1;
                           }
                        }
                        addr162:
                     }
                     while(!§§pop())
                     {
                        §§push(0.3);
                        while(_loc6_)
                        {
                           §§push(§§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_));
                           continue loop0;
                           if(!(_loc5_ && _loc2_))
                           {
                              addr77:
                              return §§pop();
                           }
                        }
                        §§goto(addr134);
                     }
                     return param1;
                  }
                  §§goto(addr162);
               }
            }
         }
         §§goto(addr89);
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:* = NaN;
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr170:
                           loop10:
                           while(true)
                           {
                              §§push(param1);
                              addr151:
                              while(true)
                              {
                                 §§push(1);
                                 addr152:
                                 do
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() == §§pop());
                                 }
                                 while(_loc5_);
                                 
                                 continue loop10;
                              }
                           }
                        }
                        addr169:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(0.3);
                              loop4:
                              while(!_loc4_)
                              {
                                 _loc2_ = §§pop();
                                 loop5:
                                 for(; !(_loc4_ && §&!@§); while(true)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc4_ && §&!@§)
                                    {
                                       continue loop5;
                                    }
                                    if(_loc4_ && param1)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc4_ && _loc3_)
                                    {
                                       addr159:
                                       §§push(param1);
                                       break;
                                    }
                                    §§push(Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_));
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§goto(addr51);
                                    }
                                    §§goto(addr79);
                                 },addr160:,return §§pop())
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                    if(!_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(4);
                                    loop6:
                                    for(; !_loc4_; §§push(1),if(!(_loc4_ && §&!@§))
                                    {
                                       addr79:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc4_)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr160);
                                       }
                                       continue loop5;
                                    })
                                    {
                                       §§push(§§pop() / §§pop());
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          continue loop5;
                                          addr51:
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop6;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr151);
                           }
                        }
                        §§goto(addr159);
                     }
                  }
                  §§goto(addr169);
               }
            }
         }
         §§goto(addr170);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §+B§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §+B§(easeOutElastic,easeInElastic,param1);
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
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(2.75);
         if(!(_loc5_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         §§push(1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            addr293:
            while(true)
            {
               §§push(§§pop() / §§pop());
               loop2:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     continue loop0;
                  }
                  §§push(_loc2_);
                  loop24:
                  while(true)
                  {
                     _loc4_ = Number(§§pop() * Math.pow(param1,2));
                     loop25:
                     while(true)
                     {
                        loop15:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc5_)
                           {
                              loop13:
                              while(true)
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc6_)
                                    {
                                       continue loop15;
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc6_ || param1)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() * Math.pow(param1,2));
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                addr65:
                                                §§push(0.984375);
                                                if(!(_loc5_ && §&!@§))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc5_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            if(!(_loc5_ && §&!@§))
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  continue loop13;
                                                               }
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  param1 = Number(§§pop());
                                                                  §§push(_loc2_);
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() * Math.pow(param1,2));
                                                                  }
                                                                  addr225:
                                                                  while(true)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ || _loc2_))
                                                               {
                                                                  continue loop24;
                                                               }
                                                               §§push(0.9375);
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     addr177:
                                                                     addr176:
                                                                     §§push(Number(§§pop() + §§pop()));
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                           }
                                                                           addr289:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * Math.pow(param1,2));
                                                                           §§push(0.75);
                                                                           addr237:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop() + §§pop()));
                                                                           }
                                                                        }
                                                                     }
                                                                     while(!(_loc6_ || _loc2_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(1.5);
                                                                           addr284:
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              addr285:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop() / §§pop());
                                                                                 addr287:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr288:
                                                                                    while(true)
                                                                                    {
                                                                                       param1 = §§pop();
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                 }
                                                                                 continue loop21;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     continue loop25;
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr225);
                                                               }
                                                            }
                                                            continue loop25;
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      §§goto(addr284);
                                                   }
                                                   else
                                                   {
                                                      loop9:
                                                      while(!(_loc5_ && §&!@§))
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               break loop12;
                                                            }
                                                            addr203:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  if(§§pop() < §§pop())
                                                                  {
                                                                     §§push(param1);
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§push(2.25);
                                                                        if(_loc5_ && param1)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(_loc3_);
                                                                        addr128:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ || _loc2_))
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              param1 = §§pop();
                                                                              continue loop12;
                                                                           }
                                                                           §§goto(addr287);
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  §§push(param1);
                                                                  §§push(2.625);
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr225);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               §§goto(addr225);
                                                               §§push(§§pop() / §§pop());
                                                            }
                                                            §§goto(addr285);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr203);
                                                         §§goto(addr113);
                                                      }
                                                      addr113:
                                                      addr202:
                                                   }
                                                   §§goto(addr225);
                                                }
                                                break;
                                             }
                                             continue loop13;
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr65);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr65);
                                    }
                                 }
                                 §§goto(addr128);
                              }
                           }
                           return §§pop();
                        }
                     }
                  }
               }
               continue loop0;
            }
         }
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §+B§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §+B§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §+B§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            §§push(param3);
            if(!_loc5_)
            {
               §§push(0.5);
               if(_loc4_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0.5);
                        if(!_loc5_)
                        {
                           §§push(param1);
                           if(!_loc5_)
                           {
                              §§push(global);
                              if(_loc4_)
                              {
                                 §§push(param3);
                                 if(!(_loc5_ && param3))
                                 {
                                    §§push(2);
                                    if(_loc4_ || param2)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(!_loc5_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr115);
                                       }
                                       else
                                       {
                                          addr102:
                                          §§push(2);
                                       }
                                       §§goto(addr115);
                                    }
                                    addr104:
                                    §§push(§§pop() * §§pop()(§§pop() * §§pop()));
                                    if(!(_loc5_ && param3))
                                    {
                                       addr114:
                                       addr115:
                                       return §§pop();
                                       §§push(§§pop() + 0.5);
                                    }
                                    §§goto(addr115);
                                 }
                              }
                              else
                              {
                                 addr90:
                                 §§push(param3);
                                 if(!(_loc5_ && §&!@§))
                                 {
                                    §§push(§§pop() - 0.5);
                                    if(!_loc5_)
                                    {
                                       §§goto(addr102);
                                    }
                                    §§goto(addr104);
                                 }
                              }
                              §§goto(addr102);
                           }
                           else
                           {
                              addr89:
                              §§push(global);
                           }
                           §§goto(addr90);
                        }
                     }
                     else
                     {
                        addr75:
                        §§push(0.5);
                        if(!_loc5_)
                        {
                           §§goto(addr89);
                           §§push(param2);
                        }
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr75);
               }
            }
            §§goto(addr114);
         }
         §§goto(addr75);
      }
   }
}
