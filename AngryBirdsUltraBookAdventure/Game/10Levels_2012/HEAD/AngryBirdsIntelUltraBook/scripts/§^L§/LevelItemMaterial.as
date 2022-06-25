package §^L§
{
   import §'N§.Log;
   import §1%§.b2Body;
   
   public class LevelItemMaterial
   {
      
      public static const §?!3§:int = 0;
      
      public static const §>Z§:int;
      
      public static const §?@§:int;
      
      public static const §#]§:int;
      
      public static const §"!@§:int = 1;
      
      public static const §?!A§:int = 2;
      
      public static const §=!e§:int = 3;
      
      public static const §9!j§:int = 4;
      
      public static const §73§:int = 5;
      
      public static const §4!_§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?!3§ = 0;
            loop0:
            while(true)
            {
               §>Z§ = b2Body.b2_staticBody;
               loop1:
               while(true)
               {
                  §?@§ = b2Body.b2_kinematicBody;
                  loop2:
                  while(true)
                  {
                     §#]§ = b2Body.b2_dynamicBody;
                     loop3:
                     while(true)
                     {
                        §"!@§ = 1;
                        loop4:
                        for(; _loc1_; if(!(_loc2_ && LevelItemMaterial))
                        {
                           return;
                           addr45:
                        })
                        {
                           §?!A§ = 2;
                           while(true)
                           {
                              §=!e§ = 3;
                              addr86:
                              while(_loc1_)
                              {
                              }
                              addr72:
                              continue loop2;
                              while(_loc1_ || _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    §73§ = 5;
                                    continue loop3;
                                 }
                                 continue loop0;
                                 if(_loc2_ && LevelItemMaterial)
                                 {
                                    continue;
                                 }
                                 if(_loc1_)
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr86);
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §9!j§ = 4;
            §§goto(addr72);
         }
         §§goto(addr45);
      }
      
      public var mName:String;
      
      public var §%j§:Array;
      
      public var §;p§:Array;
      
      public var §0p§:Array;
      
      public function LevelItemMaterial(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!_loc9_)
         {
            super();
            while(true)
            {
               this.mName = param1;
            }
            addr242:
         }
         loop1:
         while(true)
         {
            this.§%j§ = new Array();
            loop2:
            while(true)
            {
               §§push(this.§%j§);
               while(true)
               {
                  §§push(§?!3§);
                  addr224:
                  while(true)
                  {
                     §§pop()[§§pop()] = this.§?s§(param2);
                     addr228:
                     while(true)
                     {
                        §§push(this.§%j§);
                        addr214:
                        while(true)
                        {
                           §§push(§"!@§);
                           addr216:
                           while(true)
                           {
                              §§push(param3);
                              addr217:
                              while(true)
                              {
                                 §§pop()[§§pop()] = §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§%j§);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(§?!A§);
                                       addr191:
                                       while(true)
                                       {
                                          §§push(param4);
                                          addr192:
                                          while(true)
                                          {
                                             §§pop()[§§pop()] = §§pop();
                                             addr193:
                                             while(_loc10_ || param2)
                                             {
                                                §§push(this.§%j§);
                                                continue loop10;
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc10_ || param2))
                  {
                     continue;
                  }
                  §§push(§=!e§);
                  loop15:
                  for(; !(_loc9_ && this); while(_loc10_ || param3)
                  {
                     §§goto(addr81);
                     §§push(param7);
                  })
                  {
                     §§push(param5);
                     loop16:
                     while(true)
                     {
                        §§pop()[§§pop()] = §§pop();
                        loop17:
                        while(true)
                        {
                           §§push(this.§%j§);
                           loop18:
                           while(true)
                           {
                              if(_loc10_)
                              {
                                 if(_loc10_)
                                 {
                                    §§push(§9!j§);
                                    loop19:
                                    for(; _loc10_; if(_loc9_ && param1)
                                    {
                                       continue;
                                    },§§goto(addr45))
                                    {
                                       if(!_loc9_)
                                       {
                                          §§push(param6);
                                          loop20:
                                          while(true)
                                          {
                                             §§pop()[§§pop()] = §§pop();
                                             addr140:
                                             while(true)
                                             {
                                                if(!_loc9_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop17;
                                             }
                                             addr81:
                                             continue loop1;
                                             while(true)
                                             {
                                                if(!(_loc9_ && param3))
                                                {
                                                   continue loop16;
                                                }
                                                §§push(param8);
                                                addr45:
                                                continue loop20;
                                                if(_loc9_ && param3)
                                                {
                                                   continue;
                                                }
                                                if(_loc10_ || param1)
                                                {
                                                   §§pop()[§§pop()] = §§pop();
                                                   if(_loc10_)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         return;
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc10_ || this)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc10_)
                                                            {
                                                               addr124:
                                                               §§push(this.§%j§);
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  §§push(§4!_§);
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               addr69:
                                                               while(!_loc9_)
                                                               {
                                                                  §§push(§73§);
                                                                  continue loop15;
                                                                  §§goto(addr124);
                                                               }
                                                               continue loop18;
                                                            }
                                                            §§goto(addr242);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr140);
                                                         }
                                                      }
                                                      §§goto(addr193);
                                                      addr103:
                                                   }
                                                }
                                                §§goto(addr192);
                                             }
                                             §§goto(addr217);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr224);
                                       }
                                    }
                                    §§goto(addr216);
                                 }
                                 break;
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr214);
                        }
                     }
                  }
                  §§goto(addr191);
               }
            }
         }
      }
      
      public function getValue(param1:int) : *
      {
         return this.§%j§[param1];
      }
      
      private function §?s§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop().toLowerCase() == "kinetic")
               {
                  if(!_loc3_)
                  {
                     §§push(§?@§);
                     break;
                  }
                  addr139:
                  while(true)
                  {
                  }
                  addr139:
               }
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     if(§§pop().toLowerCase() != "static")
                     {
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           if(!_loc2_)
                           {
                              continue loop2;
                           }
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           if(§§pop().toLowerCase() == "dynamic")
                           {
                              if(_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    §§push(§#]§);
                                    break;
                                 }
                                 §§goto(addr139);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       addr119:
                                       §§push(§>Z§);
                                       break;
                                    }
                                 }
                                 addr121:
                                 if(_loc2_ || _loc2_)
                                 {
                                    return §§pop();
                                 }
                                 break loop0;
                                 addr111:
                              }
                           }
                           while(true)
                           {
                              §§push(Log);
                              §§push("WARNING LevelItemMaterial has invalid Body Type, name = ");
                              if(_loc2_ || _loc3_)
                              {
                                 §§push(this.mName);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(§§pop() + " invalid name = ");
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          addr77:
                                          §§push(§§pop() + param1);
                                       }
                                    }
                                    §§pop().log(§§pop());
                                    if(_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(§>Z§);
                                       if(!_loc2_)
                                       {
                                          break loop3;
                                       }
                                       if(_loc2_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr111);
                                    }
                                    §§goto(addr121);
                                 }
                              }
                              §§goto(addr77);
                           }
                        }
                        return §§pop();
                     }
                     §§goto(addr119);
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr139);
      }
      
      public function §4v§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc5_ || _loc3_)
         {
            this.§;p§ = new Array();
         }
         §§push(0);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(§§pop() >= param1.attributes().length())
               {
                  if(_loc5_ || this)
                  {
                     break;
                  }
                  loop1:
                  while(!_loc5_)
                  {
                     while(_loc6_)
                     {
                        while(_loc6_)
                        {
                        }
                        this.§;p§[_loc3_.toUpperCase()] = _loc4_;
                     }
                     §§push(_loc2_);
                     if(_loc5_ || _loc2_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc5_)
                        {
                           §§push(int(§§pop()));
                        }
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               _loc3_ = param1.attributes()[_loc2_].name();
               while(true)
               {
                  _loc4_ = param1.attributes()[_loc2_];
                  §§goto(addr110);
               }
            }
            §§goto(addr79);
         }
      }
      
      public function §=R§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && _loc3_))
         {
            this.§0p§ = new Array();
         }
         §§push(0);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               if(_loc6_)
               {
                  if(§§pop() >= param1.attributes().length())
                  {
                     if(!(_loc6_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc6_ || this)
                     {
                        if(_loc6_ || _loc2_)
                        {
                           break;
                        }
                        _loc4_ = param1.attributes()[_loc2_];
                        while(true)
                        {
                           this.§0p§[_loc3_.toUpperCase()] = _loc4_;
                        }
                        addr123:
                        addr133:
                     }
                     while(!_loc6_)
                     {
                        §§goto(addr123);
                     }
                     addr85:
                     §§push(_loc2_ + 1);
                     if(!(_loc5_ && _loc2_))
                     {
                        addr104:
                        _loc2_ = int(§§pop());
                        continue;
                     }
                     §§goto(addr104);
                  }
                  else
                  {
                     _loc3_ = param1.attributes()[_loc2_].name();
                  }
                  §§goto(addr133);
               }
               §§goto(addr85);
            }
            §§goto(addr104);
         }
      }
      
      public function §]!_§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§;p§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr114:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     addr119:
                     while(true)
                     {
                     }
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop().toUpperCase());
                     }
                     param1 = §§pop();
                     addr103:
                     addr75:
                     while(true)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§push(this.§;p§);
                           if(_loc3_ && _loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     return §§pop()[param1];
                  }
               }
               addr118:
               return §§pop();
            }
         }
         §§goto(addr119);
      }
      
      public function §,!A§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§0p§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(!§§pop())
               {
                  while(true)
                  {
                     §§push(param1);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop().toUpperCase());
                     }
                     param1 = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this.§0p§);
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(param1);
                        if(_loc2_ && _loc2_)
                        {
                           addr72:
                           return §§pop()[§§pop()];
                        }
                        §§push(Boolean(§§pop()[§§pop()]));
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                        if(!§§pop())
                        {
                           addr20:
                           §§push(1);
                           if(_loc3_ || param1)
                           {
                              return §§pop();
                           }
                           §§goto(addr119);
                        }
                        if(!_loc3_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(this.§0p§);
                           break loop3;
                        }
                     }
                     continue loop0;
                  }
               }
               addr119:
               return §§pop();
            }
         }
         §§goto(addr62);
      }
   }
}
