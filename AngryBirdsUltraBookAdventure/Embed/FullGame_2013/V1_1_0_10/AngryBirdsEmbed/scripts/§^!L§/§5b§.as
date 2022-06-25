package §^!L§
{
   import §3a§.§7!+§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §5b§
   {
      
      public static const §'!1§:int = 0;
      
      public static const §-!G§:int = b2Body.b2_staticBody;
      
      public static const §?!%§:int = b2Body.b2_kinematicBody;
      
      public static const §77§:int;
      
      public static const §>!2§:int = 1;
      
      public static const §^!0§:int = 2;
      
      public static const §0!,§:int = 3;
      
      public static const §<!I§:int = 4;
      
      public static const §`@§:int = 5;
      
      public static const §-3§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §5b§))
         {
            §77§ = b2Body.b2_dynamicBody;
            §>!2§ = 1;
            if(_loc1_)
            {
               §^!0§ = 2;
               if(_loc1_)
               {
                  §0!,§ = 3;
                  if(!_loc2_)
                  {
                     addr73:
                     §<!I§ = 4;
                     if(_loc1_)
                     {
                        addr78:
                        §`@§ = 5;
                     }
                  }
                  §-3§ = 6;
                  return;
               }
            }
            §§goto(addr73);
         }
         §§goto(addr78);
      }
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §-!?§:Array;
      
      public var §]d§:Array;
      
      public function §5b§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || this)
         {
            super();
            this.mName = param1;
            if(_loc10_)
            {
               this.mValues = new Array();
               this.mValues[§'!1§] = this.§-o§(param2);
               if(!_loc9_)
               {
                  §§push(this.mValues);
                  if(!(_loc9_ && param3))
                  {
                     §§push(§>!2§);
                     if(!(_loc9_ && param3))
                     {
                        §§push(param3);
                        if(_loc10_ || param3)
                        {
                           §§pop()[§§pop()] = §§pop();
                           if(_loc10_ || param1)
                           {
                              addr77:
                              §§push(this.mValues);
                              if(!_loc9_)
                              {
                                 §§push(§^!0§);
                                 if(_loc10_ || param2)
                                 {
                                    §§push(param4);
                                    if(_loc10_ || this)
                                    {
                                       §§pop()[§§pop()] = §§pop();
                                       if(_loc10_ || param2)
                                       {
                                          addr115:
                                          §§push(this.mValues);
                                          if(_loc10_)
                                          {
                                             §§goto(addr119);
                                          }
                                          §§goto(addr133);
                                       }
                                       §§goto(addr124);
                                    }
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr115);
                        }
                        §§goto(addr123);
                     }
                     addr119:
                     §§push(§0!,§);
                     §§push(param5);
                     if(!_loc9_)
                     {
                        addr123:
                        §§pop()[§§pop()] = §§pop();
                        addr124:
                        §§push(this.mValues);
                        if(_loc10_ || param3)
                        {
                           addr133:
                           §§push(§<!I§);
                           if(!_loc9_)
                           {
                              §§push(param6);
                              if(!_loc9_)
                              {
                                 §§pop()[§§pop()] = §§pop();
                                 if(_loc10_ || param1)
                                 {
                                    addr147:
                                    §§push(this.mValues);
                                    §§push(§`@§);
                                    if(_loc10_ || param2)
                                    {
                                       addr167:
                                       §§push(param7);
                                       if(_loc10_ || param3)
                                       {
                                          §§goto(addr175);
                                       }
                                    }
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr187);
                     }
                     addr175:
                     §§pop()[§§pop()] = §§pop();
                     if(!(_loc9_ && this))
                     {
                        addr187:
                        this.mValues[§-3§] = param8;
                     }
                     return;
                  }
                  §§goto(addr187);
               }
               §§goto(addr123);
            }
            §§goto(addr77);
         }
         §§goto(addr147);
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §-o§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            if(§§pop().toLowerCase() == "kinetic")
            {
               §§push(§?!%§);
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            else
            {
               §§push(param1);
               if(_loc2_)
               {
                  if(§§pop().toLowerCase() == "static")
                  {
                     if(_loc2_ || this)
                     {
                        §§push(§-!G§);
                        if(_loc2_ || _loc2_)
                        {
                           §§goto(addr64);
                        }
                     }
                     else
                     {
                        addr65:
                        addr66:
                        if(param1.toLowerCase() == "dynamic")
                        {
                           if(!_loc3_)
                           {
                              §§push(§77§);
                              if(!(_loc3_ && _loc2_))
                              {
                                 return §§pop();
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr126);
                        }
                        §§push(§7!+§);
                        §§push("WARNING LevelItemMaterial has invalid Body Type, name = ");
                        if(_loc2_)
                        {
                           §§push(this.mName);
                           if(!_loc3_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(§§pop() + " invalid name = ");
                                 if(_loc2_ || param1)
                                 {
                                    addr122:
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().log(§§pop());
                                 addr126:
                                 return §§pop();
                                 §§push(§-!G§);
                              }
                           }
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr65);
               }
               §§goto(addr66);
            }
            addr64:
            return §§pop();
         }
         §§goto(addr65);
      }
      
      public function § s§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            this.§-!?§ = new Array();
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            if(!_loc6_)
            {
               _loc4_ = param1.attributes()[_loc2_];
               if(_loc5_)
               {
                  this.§-!?§[_loc3_.toUpperCase()] = _loc4_;
                  if(!_loc5_)
                  {
                  }
                  break;
               }
               _loc2_++;
               if(_loc6_)
               {
                  break;
               }
            }
         }
      }
      
      public function §0N§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!_loc5_)
         {
            this.§]d§ = new Array();
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            if(!(_loc6_ || _loc3_))
            {
               break;
            }
            _loc4_ = param1.attributes()[_loc2_];
            if(_loc6_ || param1)
            {
               this.§]d§[_loc3_.toUpperCase()] = _loc4_;
               if(!_loc5_)
               {
                  _loc2_++;
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
         }
      }
      
      public function §'F§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§-!?§);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || this)
                  {
                     §§push(1);
                     if(_loc3_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr111:
                     §§push(1);
                  }
                  return §§pop();
               }
               addr62:
               §§push(param1);
               if(_loc3_ || this)
               {
                  §§push(§§pop().toUpperCase());
               }
               param1 = §§pop();
               if(_loc3_ || this)
               {
                  §§push(this.§-!?§);
                  if(_loc3_)
                  {
                     §§push(param1);
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop()[§§pop()])
                        {
                           if(!_loc2_)
                           {
                              addr108:
                              §§push(this.§-!?§);
                              §§push(param1);
                           }
                           else
                           {
                              §§goto(addr111);
                           }
                        }
                        §§goto(addr111);
                     }
                     return §§pop()[§§pop()];
                  }
                  §§goto(addr108);
               }
               §§goto(addr111);
            }
            §§goto(addr108);
         }
         §§goto(addr62);
      }
      
      public function § !0§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§]d§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     addr31:
                     §§push(1);
                     if(!(_loc2_ && _loc2_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr97);
               }
               addr57:
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop().toUpperCase());
               }
               param1 = §§pop();
               if(!_loc2_)
               {
                  §§push(this.§]d§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        if(§§pop()[§§pop()])
                        {
                           if(_loc3_)
                           {
                              §§goto(addr94);
                           }
                        }
                        addr97:
                        return 1;
                     }
                  }
               }
               §§goto(addr94);
            }
            addr94:
            return this.§]d§[param1];
         }
         §§goto(addr31);
      }
   }
}
