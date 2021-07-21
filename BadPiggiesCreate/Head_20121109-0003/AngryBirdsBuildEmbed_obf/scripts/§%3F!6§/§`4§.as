package §?!6§
{
   import § !r§.§`![§;
   import § !t§.b2Body;
   
   public class §`4§
   {
      
      public static const §+9§:int = 0;
      
      public static const §4A§:int;
      
      public static const §'!%§:int;
      
      public static const §&L§:int;
      
      public static const §,E§:int = 1;
      
      public static const §'!-§:int = 2;
      
      public static const §0T§:int = 3;
      
      public static const §,O§:int = 4;
      
      public static const §]u§:int = 5;
      
      public static const §^!Q§:int = 6;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+9§ = 0;
            §4A§ = b2Body.b2_staticBody;
            if(_loc2_ || §`4§)
            {
               addr43:
               §'!%§ = b2Body.b2_kinematicBody;
               §&L§ = b2Body.b2_dynamicBody;
               §,E§ = 1;
               if(!(_loc1_ && §`4§))
               {
                  §'!-§ = 2;
                  if(_loc2_ || _loc2_)
                  {
                     §0T§ = 3;
                     §,O§ = 4;
                     §]u§ = 5;
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr95);
                  }
               }
               §^!Q§ = 6;
            }
            addr95:
            return;
         }
         §§goto(addr43);
      }
      
      public var mName:String;
      
      public var §6!8§:Array;
      
      public var §#!k§:Array;
      
      public var §"!c§:Array;
      
      public function §`4§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         super();
         this.mName = param1;
         this.§6!8§ = new Array();
         if(_loc9_ || param2)
         {
            §§push(this.§6!8§);
            if(!(_loc10_ && param3))
            {
               §§push(§+9§);
               if(_loc9_ || param2)
               {
                  §§pop()[§§pop()] = this.§%`§(param2);
                  §§push(this.§6!8§);
                  if(_loc9_)
                  {
                     addr57:
                     §§push(§,E§);
                     §§push(param3);
                     if(_loc9_)
                     {
                        §§pop()[§§pop()] = §§pop();
                        if(!(_loc10_ && this))
                        {
                           addr81:
                           §§push(this.§6!8§);
                           §§push(§'!-§);
                           if(_loc9_)
                           {
                              §§push(param4);
                              if(!_loc10_)
                              {
                                 §§pop()[§§pop()] = §§pop();
                                 if(_loc9_ || this)
                                 {
                                    §§push(this.§6!8§);
                                    §§push(§0T§);
                                    if(!(_loc10_ && param1))
                                    {
                                       §§push(param5);
                                       if(!_loc10_)
                                       {
                                          §§pop()[§§pop()] = §§pop();
                                          if(!_loc10_)
                                          {
                                             §§push(this.§6!8§);
                                             if(!(_loc10_ && param1))
                                             {
                                                addr121:
                                                §§push(§,O§);
                                                §§push(param6);
                                                if(!(_loc10_ && param1))
                                                {
                                                   §§pop()[§§pop()] = §§pop();
                                                   §§push(this.§6!8§);
                                                   if(_loc9_)
                                                   {
                                                      §§push(§]u§);
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr160);
                                                      }
                                                      addr159:
                                                      addr160:
                                                      addr147:
                                                      §§push(param7);
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         addr155:
                                                         §§pop()[§§pop()] = §§pop();
                                                         §§push(this.§6!8§);
                                                      }
                                                      §§pop()[§§pop()] = §§pop();
                                                      return;
                                                      §§push(param8);
                                                   }
                                                }
                                                §§goto(addr155);
                                             }
                                             §§goto(addr159);
                                             §§push(§^!Q§);
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr121);
                                 }
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr81);
               }
               §§goto(addr147);
            }
            §§goto(addr57);
         }
         §§goto(addr81);
      }
      
      public function getValue(param1:int) : *
      {
         return this.§6!8§[param1];
      }
      
      private function §%`§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            if(!(_loc3_ && this))
            {
               if(§§pop().toLowerCase() == "kinetic")
               {
                  if(_loc2_)
                  {
                     §§push(§'!%§);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr86);
                  }
               }
               else
               {
                  §§push(param1);
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop().toLowerCase() == "static")
                     {
                        if(!_loc3_)
                        {
                           addr68:
                           §§push(§4A§);
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr72:
                           if(param1.toLowerCase() == "dynamic")
                           {
                              if(!(_loc3_ && this))
                              {
                                 §§push(§&L§);
                                 if(_loc2_)
                                 {
                                    §§goto(addr86);
                                 }
                              }
                              else
                              {
                                 addr89:
                                 §§push(§`![§);
                                 §§push("WARNING LevelItemMaterial has invalid Body Type, name = ");
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(this.mName);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc2_ || _loc3_)
                                       {
                                       }
                                       §§goto(addr131);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§goto(addr131);
                              }
                              addr131:
                              §§push(§§pop() + " invalid name = ");
                              if(!_loc3_)
                              {
                                 §§push(param1);
                              }
                              §§pop().log(§§pop());
                              return §4A§;
                           }
                           §§goto(addr89);
                        }
                        addr86:
                        return §§pop();
                     }
                  }
                  §§goto(addr72);
               }
               §§goto(addr89);
            }
            §§goto(addr72);
         }
         §§goto(addr68);
      }
      
      public function §<!i§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            this.§#!k§ = new Array();
         }
         var _loc2_:int = 0;
         for(; _loc2_ < param1.attributes().length(); _loc2_++,if(_loc6_)
         {
            break;
         })
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            if(!(_loc6_ && this))
            {
               _loc4_ = param1.attributes()[_loc2_];
               if(!_loc5_)
               {
                  continue;
               }
            }
            this.§#!k§[_loc3_.toUpperCase()] = _loc4_;
            if(_loc6_ && this)
            {
               break;
            }
         }
      }
      
      public function §33§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            this.§"!c§ = new Array();
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            if(_loc5_)
            {
               _loc4_ = param1.attributes()[_loc2_];
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
            }
            this.§"!c§[_loc3_.toUpperCase()] = _loc4_;
            if(!(_loc5_ || param1))
            {
               break;
            }
            _loc2_++;
            if(_loc6_ && _loc3_)
            {
               break;
            }
         }
      }
      
      public function §-!?§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§#!k§);
            if(_loc3_ || this)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(1);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr96:
                     §§push(1);
                  }
                  return §§pop();
               }
               addr52:
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop().toUpperCase());
               }
               param1 = §§pop();
               if(!_loc2_)
               {
                  §§push(this.§#!k§);
                  if(!_loc2_)
                  {
                     §§goto(addr74);
                  }
                  §§goto(addr93);
               }
               §§goto(addr96);
            }
            addr74:
            §§push(param1);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop()[§§pop()])
               {
                  if(_loc3_ || param1)
                  {
                     addr93:
                     §§push(this.§#!k§);
                     §§push(param1);
                  }
                  else
                  {
                     §§goto(addr96);
                  }
               }
               §§goto(addr96);
            }
            return §§pop()[§§pop()];
         }
         §§goto(addr52);
      }
      
      public function §+v§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§"!c§);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(1);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr80);
                  }
                  §§goto(addr107);
               }
               else
               {
                  §§push(param1);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  if(_loc3_ || param1)
                  {
                     addr80:
                     §§push(this.§"!c§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(param1);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop()[§§pop()])
                           {
                              if(!_loc2_)
                              {
                                 §§goto(addr104);
                              }
                           }
                           addr107:
                           return 1;
                        }
                     }
                     §§goto(addr104);
                  }
               }
               §§goto(addr104);
            }
            addr104:
            return this.§"!c§[param1];
         }
         §§goto(addr80);
      }
   }
}
