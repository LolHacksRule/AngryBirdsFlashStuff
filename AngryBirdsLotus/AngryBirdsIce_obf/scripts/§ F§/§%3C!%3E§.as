package § F§
{
   import §5d§.§`!=§;
   import flash.utils.Dictionary;
   
   public class §<!>§
   {
      
      public static const §7o§:String = "linear";
      
      public static const §-!$§:String = "easeIn";
      
      public static const §@Z§:String = "easeOut";
      
      public static const §?R§:String = "easeInOut";
      
      public static const §"Q§:String = "easeOutIn";
      
      public static const §4J§:String = "easeInBack";
      
      public static const §]7§:String = "easeOutBack";
      
      public static const §-`§:String = "easeInOutBack";
      
      public static const §+"§:String = "easeOutInBack";
      
      public static const §1G§:String = "easeInElastic";
      
      public static const §@]§:String = "easeOutElastic";
      
      public static const §]e§:String = "easeInOutElastic";
      
      public static const §"F§:String = "easeOutInElastic";
      
      public static const §'h§:String = "easeInBounce";
      
      public static const §@X§:String = "easeOutBounce";
      
      public static const §^M§:String = "easeInOutBounce";
      
      public static const §!q§:String = "easeOutInBounce";
      
      private static var §+8§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7o§ = "linear";
            §-!$§ = "easeIn";
            §@Z§ = "easeOut";
            §?R§ = "easeInOut";
         }
         loop0:
         while(true)
         {
            §4J§ = "easeInBack";
            while(true)
            {
               §]7§ = "easeOutBack";
               loop2:
               while(true)
               {
                  §-`§ = "easeInOutBack";
                  loop3:
                  while(true)
                  {
                     §+"§ = "easeOutInBack";
                     §1G§ = "easeInElastic";
                     while(true)
                     {
                        §@]§ = "easeOutElastic";
                        addr103:
                        while(!_loc2_)
                        {
                           §]e§ = "easeInOutElastic";
                           continue loop0;
                        }
                        addr98:
                        continue loop2;
                        §"F§ = "easeOutInElastic";
                        if(!_loc2_)
                        {
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §<!>§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
         throw new §`!=§();
      }
      
      public static function §'S§(param1:String) : Function
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(§+8§ == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr43:
                  §'O§();
               }
            }
            return §+8§[param1];
         }
         §§goto(addr43);
      }
      
      public static function § u§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(§+8§ == null)
            {
               if(_loc4_)
               {
                  §'O§();
               }
               while(true)
               {
               }
               addr49:
            }
            while(true)
            {
               §+8§[param1] = param2;
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr49);
            }
         }
      }
      
      private static function §'O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §+8§ = new Dictionary();
            § u§(§7o§,linear);
            while(true)
            {
               § u§(§-!$§,easeIn);
               loop1:
               while(true)
               {
                  § u§(§@Z§,easeOut);
                  if(_loc1_)
                  {
                     break;
                  }
                  § u§(§?R§,easeInOut);
                  § u§(§"Q§,easeOutIn);
                  loop2:
                  while(true)
                  {
                     § u§(§4J§,easeInBack);
                     while(true)
                     {
                        § u§(§]7§,easeOutBack);
                        continue loop1;
                        addr109:
                        if(_loc2_ || _loc2_)
                        {
                           § u§(§1G§,easeInElastic);
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr42);
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
         if(!_loc2_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
                  addr27:
                  return §§pop() * param1;
               }
            }
         }
         §§goto(addr27);
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() - 1);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || §<!>§)
               {
                  addr64:
                  §§push(§§pop() * _loc2_);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr69);
               }
               addr69:
               return §§pop();
               §§push(§§pop() + 1);
            }
         }
         §§goto(addr64);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §2M§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §2M§(easeOut,easeIn,param1);
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
         if(!_loc5_)
         {
            §§push(§§pop() - 1);
            if(!(_loc5_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(1.70158);
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
         if(_loc4_ || §<!>§)
         {
            return §§pop() + 1;
         }
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §2M§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §2M§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc6_)
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
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           §§push(param1);
                           §§push(1);
                           addr146:
                           while(!(_loc5_ && §<!>§))
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc5_)
                              {
                                 continue loop7;
                              }
                           }
                           continue loop1;
                        }
                        addr168:
                     }
                     while(!§§pop())
                     {
                        while(true)
                        {
                           §§push(0.3);
                           if(_loc6_ || param1)
                           {
                              continue loop0;
                           }
                           addr139:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              if(_loc5_)
                              {
                                 break;
                              }
                              §§push(_loc2_);
                              §§push(4);
                              if(_loc6_)
                              {
                                 §§push(§§pop() / §§pop());
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       §§goto(addr111);
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr146);
                              }
                           }
                        }
                        continue loop0;
                     }
                     return param1;
                  }
                  §§goto(addr168);
               }
            }
         }
         addr111:
         while(true)
         {
            §§push(param1);
            if(_loc6_)
            {
               continue loop4;
            }
            addr91:
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
               while(true)
               {
                  _loc4_ = §§pop();
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§push(-1 * Math.pow(2,10 * _loc4_));
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_));
                  }
                  if(_loc6_)
                  {
                     continue loop5;
                  }
               }
               continue;
               addr99:
            }
            continue loop6;
         }
         addr64:
         return §§pop();
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = NaN;
         var _loc3_:* = NaN;
         if(!(_loc5_ && _loc2_))
         {
            §§push(param1);
            §§push(0);
            loop0:
            while(true)
            {
               §§push(§§pop() == §§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr156:
                        while(true)
                        {
                           §§push(param1);
                           §§push(1);
                           addr111:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc5_ && _loc3_)
                              {
                                 break;
                              }
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc4_ || _loc2_)
                        {
                           break;
                        }
                        loop6:
                        while(!_loc5_)
                        {
                           while(true)
                           {
                              addr103:
                              while(true)
                              {
                                 §§push(0.3);
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc5_)
                                       {
                                          §§push(4);
                                          while(!_loc5_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!_loc5_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             §§push(1);
                                             if(_loc4_ || §<!>§)
                                             {
                                                if(!_loc5_)
                                                {
                                                   return §§pop() + §§pop();
                                                }
                                                continue loop0;
                                             }
                                          }
                                          §§goto(addr111);
                                       }
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          if(_loc5_ && param1)
                                          {
                                             break;
                                          }
                                          if(_loc4_)
                                          {
                                             continue;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    if(_loc5_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr57);
                                 }
                              }
                           }
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr103);
                  }
                  return param1;
               }
            }
         }
         §§goto(addr149);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §2M§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §2M§(easeOutElastic,easeInElastic,param1);
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
         if(!(_loc5_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(2.75);
         if(_loc6_ || §<!>§)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(1);
               loop1:
               while(true)
               {
                  §§push(_loc3_);
                  loop2:
                  while(true)
                  {
                     if(§§pop() >= §§pop() / §§pop())
                     {
                        §§push(param1);
                        loop3:
                        while(true)
                        {
                           §§push(2);
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§push(_loc3_);
                           if(!_loc6_)
                           {
                              continue loop2;
                           }
                           §§push(§§pop() / §§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop() < §§pop())
                              {
                                 §§push(param1);
                                 §§push(1.5);
                                 §§push(_loc3_);
                                 loop29:
                                 while(true)
                                 {
                                    §§push(§§pop() / §§pop());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(Number(§§pop() - §§pop()));
                                       loop10:
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(_loc2_);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_ * Math.pow(param1,2));
                                                loop13:
                                                while(true)
                                                {
                                                   _loc4_ = Number(§§pop());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         return §§pop();
                                                      }
                                                      addr181:
                                                      loop15:
                                                      while(_loc6_ || _loc3_)
                                                      {
                                                         §§push(0.984375);
                                                         if(_loc6_)
                                                         {
                                                            addr71:
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               if(!(_loc5_ && §<!>§))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc5_ && §<!>§)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc6_)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              addr207:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 addr208:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    §§push(2.25);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       §§push(_loc3_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop() / §§pop());
                                                                                          addr216:
                                                                                          loop30:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr217:
                                                                                             while(true)
                                                                                             {
                                                                                                param1 = §§pop();
                                                                                                continue loop30;
                                                                                             }
                                                                                             addr174:
                                                                                             §§push(0.9375);
                                                                                             addr178:
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                break loop14;
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   break loop15;
                                                                                                }
                                                                                                addr226:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0.75);
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_ * Math.pow(param1,2));
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr174);
                                                                              }
                                                                              §§goto(addr216);
                                                                              §§goto(addr217);
                                                                           }
                                                                        }
                                                                        addr150:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           continue loop14;
                                                                        }
                                                                        addr236:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        param1 = §§pop();
                                                                        §§goto(addr150);
                                                                     }
                                                                     §§goto(addr178);
                                                                  }
                                                                  addr147:
                                                               }
                                                               §§goto(addr211);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc5_)
                                                               {
                                                                  addr128:
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop29;
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     addr144:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr147);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr217);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr214);
                                                               §§goto(addr71);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               break loop14;
                                                               §§goto(addr128);
                                                            }
                                                            addr125:
                                                            addr205:
                                                         }
                                                         §§goto(addr143);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            _loc4_ = §§pop();
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         §§push(param1);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            if(!(_loc5_ && §<!>§))
                                                            {
                                                               §§goto(addr125);
                                                               §§push(2.625);
                                                            }
                                                            §§goto(addr208);
                                                         }
                                                         §§goto(addr144);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                }
                                             }
                                             addr280:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr226);
                                             §§goto(addr181);
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(param1);
                                 if(!_loc5_)
                                 {
                                    §§push(2.5);
                                    if(_loc5_ && §<!>§)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr205);
                                    §§push(_loc3_);
                                 }
                              }
                              §§goto(addr216);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr280);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §2M§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §2M§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §2M§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            §§push(param3);
            if(!_loc4_)
            {
               §§push(0.5);
               if(_loc5_ || param2)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc5_)
                     {
                        §§push(0.5);
                        if(!_loc4_)
                        {
                           §§push(param1);
                           if(_loc5_ || §<!>§)
                           {
                              §§push(global);
                              if(_loc5_)
                              {
                                 §§push(param3);
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(2);
                                    if(_loc5_ || param2)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_ || param3)
                                       {
                                          addr86:
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(_loc5_)
                                          {
                                             §§goto(addr90);
                                          }
                                          else
                                          {
                                             addr106:
                                             §§push(param2);
                                             §§push(global);
                                             §§push(param3);
                                             if(!(_loc4_ && §<!>§))
                                             {
                                                §§push(§§pop() - 0.5);
                                                if(!(_loc4_ && param1))
                                                {
                                                   addr124:
                                                   §§push(§§pop() * 2);
                                                }
                                             }
                                          }
                                       }
                                       §§push(§§pop() * §§pop()(§§pop()));
                                       if(_loc5_)
                                       {
                                          addr129:
                                          return §§pop() + 0.5;
                                       }
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr86);
                              }
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr90);
                     }
                     else
                     {
                        addr91:
                        §§push(0.5);
                        if(!_loc4_)
                        {
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr91);
               }
               §§goto(addr129);
            }
            addr90:
            return §§pop();
         }
         §§goto(addr91);
      }
   }
}
