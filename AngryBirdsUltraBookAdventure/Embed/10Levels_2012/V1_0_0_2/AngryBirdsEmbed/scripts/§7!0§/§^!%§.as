package §7!0§
{
   import §+!"§.§5!<§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §^!%§
   {
      
      public static const § 8§:int = 0;
      
      public static const §@`§:int;
      
      public static const §+j§:int;
      
      public static const §7n§:int;
      
      public static const §6H§:int = 1;
      
      public static const §,u§:int = 2;
      
      public static const § E§:int = 3;
      
      public static const §-U§:int = 4;
      
      public static const §@!,§:int = 5;
      
      public static const §>!8§:int = 6;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@`§ = b2Body.b2_staticBody;
            §+j§ = b2Body.b2_kinematicBody;
            if(_loc2_ || _loc1_)
            {
               §7n§ = b2Body.b2_dynamicBody;
               §6H§ = 1;
               §,u§ = 2;
               if(_loc2_)
               {
                  § E§ = 3;
               }
               §§goto(addr90);
            }
            §-U§ = 4;
            if(_loc2_)
            {
               §@!,§ = 5;
               if(_loc2_ || _loc1_)
               {
                  §>!8§ = 6;
               }
            }
         }
         addr90:
      }
      
      public var mName:String;
      
      public var §+!5§:Array;
      
      public var §;!8§:Array;
      
      public var §"§:Array;
      
      public function §^!%§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         super();
         this.mName = param1;
         this.§+!5§ = new Array();
         §§push(this.§+!5§);
         if(_loc9_ || param3)
         {
            §§pop()[§ 8§] = this.§;@§(param2);
            §§push(this.§+!5§);
            if(!(_loc10_ && param2))
            {
               §§push(§6H§);
               if(!(_loc10_ && param1))
               {
                  §§push(param3);
                  if(!(_loc10_ && param2))
                  {
                     §§pop()[§§pop()] = §§pop();
                     if(!_loc10_)
                     {
                        addr79:
                        §§push(this.§+!5§);
                        §§push(§,u§);
                        if(_loc9_)
                        {
                           §§push(param4);
                           if(!_loc10_)
                           {
                              addr85:
                              §§pop()[§§pop()] = §§pop();
                              §§push(this.§+!5§);
                              §§push(§ E§);
                              §§push(param5);
                              if(!(_loc10_ && param1))
                              {
                                 §§pop()[§§pop()] = §§pop();
                                 §§push(this.§+!5§);
                                 §§push(§-U§);
                                 if(!(_loc10_ && param2))
                                 {
                                    §§push(param6);
                                    if(!(_loc10_ && this))
                                    {
                                       §§pop()[§§pop()] = §§pop();
                                       if(_loc9_ || this)
                                       {
                                          addr124:
                                          §§push(this.§+!5§);
                                          if(_loc9_ || param3)
                                          {
                                             addr144:
                                             §§push(§@!,§);
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
                                       this.§+!5§[§>!8§] = param8;
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
         return this.§+!5§[param1];
      }
      
      private function §;@§(param1:String) : int
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
                  §§push(§+j§);
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
                        §§push(§@`§);
                        if(_loc2_)
                        {
                           addr46:
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr75:
                        §§push(§7n§);
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
                  §§push(§@`§);
               }
               addr125:
               return §§pop();
            }
            §§push(§5!<§);
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
      
      public function §#x§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            this.§;!8§ = new Array();
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
            this.§;!8§[_loc3_.toUpperCase()] = _loc4_;
            if(!_loc5_)
            {
               break;
            }
         }
      }
      
      public function §5!A§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc5_ || param1)
         {
            this.§"§ = new Array();
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
               this.§"§[_loc3_.toUpperCase()] = _loc4_;
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
      
      public function §34§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§;!8§);
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
                        §§push(this.§;!8§);
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
                     §§push(this.§;!8§);
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
      
      public function §%!7§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§"§);
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
                     §§push(this.§"§);
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
                                 §§push(this.§"§);
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
