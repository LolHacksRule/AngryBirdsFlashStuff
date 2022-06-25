package §`K§
{
   import §0!<§.§#y§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §7g§
   {
      
      public static const §7i§:int = 0;
      
      public static const §0!!§:int;
      
      public static const §^!=§:int;
      
      public static const §4!8§:int;
      
      public static const §0^§:int = 1;
      
      public static const §5X§:int = 2;
      
      public static const §;!"§:int = 3;
      
      public static const §8!@§:int = 4;
      
      public static const §+n§:int = 5;
      
      public static const §<L§:int = 6;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0!!§ = b2Body.b2_staticBody;
            §^!=§ = b2Body.b2_kinematicBody;
            if(_loc2_ || _loc1_)
            {
               §4!8§ = b2Body.b2_dynamicBody;
               §0^§ = 1;
               §5X§ = 2;
               if(_loc2_)
               {
                  §;!"§ = 3;
               }
               §§goto(addr90);
            }
            §8!@§ = 4;
            if(_loc2_)
            {
               §+n§ = 5;
               if(_loc2_ || _loc1_)
               {
                  §<L§ = 6;
               }
            }
         }
         addr90:
      }
      
      public var mName:String;
      
      public var §-a§:Array;
      
      public var §8X§:Array;
      
      public var §2l§:Array;
      
      public function §7g§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         super();
         this.mName = param1;
         this.§-a§ = new Array();
         §§push(this.§-a§);
         if(_loc9_ || param3)
         {
            §§pop()[§7i§] = this.§?Z§(param2);
            §§push(this.§-a§);
            if(!(_loc10_ && param2))
            {
               §§push(§0^§);
               if(!(_loc10_ && param1))
               {
                  §§push(param3);
                  if(!(_loc10_ && param2))
                  {
                     §§pop()[§§pop()] = §§pop();
                     if(!_loc10_)
                     {
                        addr79:
                        §§push(this.§-a§);
                        §§push(§5X§);
                        if(_loc9_)
                        {
                           §§push(param4);
                           if(!_loc10_)
                           {
                              addr85:
                              §§pop()[§§pop()] = §§pop();
                              §§push(this.§-a§);
                              §§push(§;!"§);
                              §§push(param5);
                              if(!(_loc10_ && param1))
                              {
                                 §§pop()[§§pop()] = §§pop();
                                 §§push(this.§-a§);
                                 §§push(§8!@§);
                                 if(!(_loc10_ && param2))
                                 {
                                    §§push(param6);
                                    if(!(_loc10_ && this))
                                    {
                                       §§pop()[§§pop()] = §§pop();
                                       if(_loc9_ || this)
                                       {
                                          addr124:
                                          §§push(this.§-a§);
                                          if(_loc9_ || param3)
                                          {
                                             addr144:
                                             §§push(§+n§);
                                             §§push(param7);
                                             if(_loc9_ || param3)
                                             {
                                                §§goto(addr152);
                                             }
                                          }
                                       }
                                       §§goto(addr164);
                                    }
                                    addr152:
                                    §§pop()[§§pop()] = §§pop();
                                    if(!(_loc10_ && param1))
                                    {
                                       addr164:
                                       this.§-a§[§<L§] = param8;
                                    }
                                    return;
                                 }
                                 §§goto(addr144);
                              }
                           }
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr124);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr79);
         }
         §§goto(addr164);
      }
      
      public function getValue(param1:int) : *
      {
         return this.§-a§[param1];
      }
      
      private function §?Z§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            if(§§pop().toLowerCase() == "kinetic")
            {
               if(_loc2_)
               {
                  §§push(§^!=§);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
                  §§goto(addr46);
               }
               else
               {
                  addr64:
                  §§push(param1);
               }
            }
            else
            {
               §§push(param1);
               if(!_loc3_)
               {
                  addr38:
                  if(§§pop().toLowerCase() == "static")
                  {
                     if(!_loc3_)
                     {
                        §§push(§0!!§);
                        if(_loc2_)
                        {
                           addr46:
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr75:
                        §§push(§4!8§);
                        if(!_loc2_)
                        {
                           §§goto(addr125);
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr64);
                  §§goto(addr125);
               }
            }
            if(§§pop().toLowerCase() == "dynamic")
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr75);
               }
               else
               {
                  addr124:
                  §§push(§0!!§);
               }
               addr125:
               return §§pop();
            }
            §§push(§#y§);
            §§push("WARNING LevelItemMaterial has invalid Body Type, name = ");
            if(_loc2_ || _loc2_)
            {
               §§push(this.mName);
               if(_loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc2_)
                  {
                     addr123:
                     §§push(§§pop() + " invalid name = ");
                     if(_loc2_ || _loc3_)
                     {
                        §§push(param1);
                     }
                     §§pop().log(§§pop());
                     §§goto(addr124);
                  }
                  §§goto(addr123);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr123);
            §§goto(addr124);
         }
         §§goto(addr38);
      }
      
      public function §=!1§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            this.§8X§ = new Array();
         }
         var _loc2_:int = 0;
         for(; _loc2_ < param1.attributes().length(); _loc2_++,if(!_loc5_)
         {
            break;
         })
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            if(_loc5_)
            {
               _loc4_ = param1.attributes()[_loc2_];
               if(!_loc5_)
               {
                  continue;
               }
            }
            this.§8X§[_loc3_.toUpperCase()] = _loc4_;
            if(!_loc5_)
            {
               break;
            }
         }
      }
      
      public function §@g§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc5_ || param1)
         {
            this.§2l§ = new Array();
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            if(_loc5_)
            {
               _loc4_ = param1.attributes()[_loc2_];
               if(!_loc5_)
               {
                  continue;
               }
               this.§2l§[_loc3_.toUpperCase()] = _loc4_;
               if(_loc6_)
               {
                  continue;
               }
            }
            _loc2_++;
            if(!(_loc5_ || _loc2_))
            {
               break;
            }
         }
      }
      
      public function §]"§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§8X§);
            if(_loc3_ || param1)
            {
               if(!§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     §§push(1);
                     if(_loc3_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr67:
                     §§push(param1);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop().toUpperCase());
                     }
                     param1 = §§pop();
                     if(_loc3_)
                     {
                        §§push(this.§8X§);
                        if(_loc3_)
                        {
                           §§goto(addr94);
                        }
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr112);
               }
               §§goto(addr67);
            }
            addr94:
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop()[§§pop()])
               {
                  if(!(_loc2_ && param1))
                  {
                     addr108:
                     §§push(this.§8X§);
                     §§push(param1);
                  }
                  else
                  {
                     addr112:
                     return 1;
                     addr111:
                  }
               }
               §§goto(addr111);
            }
            return §§pop()[§§pop()];
         }
         §§goto(addr112);
      }
      
      public function §@]§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§2l§);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(1);
                     if(!(_loc2_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr80:
                     §§push(this.§2l§);
                     if(!_loc2_)
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           if(§§pop()[§§pop()])
                           {
                              if(_loc3_ || this)
                              {
                                 addr98:
                                 §§push(this.§2l§);
                                 §§push(param1);
                              }
                              else
                              {
                                 addr102:
                                 return 1;
                                 addr101:
                              }
                           }
                           §§goto(addr101);
                        }
                        return §§pop()[§§pop()];
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr102);
               }
               else
               {
                  addr57:
                  §§push(param1);
                  if(!_loc2_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr80);
                  }
               }
               §§goto(addr102);
            }
            §§goto(addr98);
         }
         §§goto(addr57);
      }
   }
}
