package §,!C§
{
   import §>K§.§9X§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §8!3§
   {
      
      public static const §"!I§:int = 0;
      
      public static const §%2§:int;
      
      public static const §0!,§:int;
      
      public static const §+2§:int;
      
      public static const §4!=§:int = 1;
      
      public static const §default§:int = 2;
      
      public static const §%i§:int = 3;
      
      public static const §8!9§:int = 4;
      
      public static const §,0§:int = 5;
      
      public static const §'!0§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §%2§ = b2Body.b2_staticBody;
            if(!_loc2_)
            {
               §0!,§ = b2Body.b2_kinematicBody;
               if(_loc1_ || _loc1_)
               {
                  §+2§ = b2Body.b2_dynamicBody;
                  §4!=§ = 1;
                  if(_loc1_)
                  {
                     addr72:
                     §default§ = 2;
                     §%i§ = 3;
                     if(!(_loc2_ && _loc1_))
                     {
                        §8!9§ = 4;
                        addr88:
                        §,0§ = 5;
                     }
                  }
                  §'!0§ = 6;
                  return;
               }
            }
            §§goto(addr72);
         }
         §§goto(addr88);
      }
      
      public var mName:String;
      
      public var §"[§:Array;
      
      public var §9a§:Array;
      
      public var §8!B§:Array;
      
      public function §8!3§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         super();
         if(!_loc10_)
         {
            this.mName = param1;
            this.§"[§ = new Array();
            this.§"[§[§"!I§] = this.§4q§(param2);
            if(_loc9_ || param3)
            {
               §§push(this.§"[§);
               if(_loc9_ || this)
               {
                  §§push(§4!=§);
                  §§push(param3);
                  if(_loc9_)
                  {
                     §§pop()[§§pop()] = §§pop();
                     §§push(this.§"[§);
                     if(!(_loc10_ && param1))
                     {
                        §§push(§default§);
                        if(_loc9_ || param3)
                        {
                           §§push(param4);
                           if(!(_loc10_ && this))
                           {
                              addr90:
                              §§pop()[§§pop()] = §§pop();
                              if(_loc9_ || param1)
                              {
                                 §§push(this.§"[§);
                                 if(_loc9_ || param3)
                                 {
                                    §§push(§%i§);
                                    §§push(param5);
                                    if(!(_loc10_ && param2))
                                    {
                                       §§pop()[§§pop()] = §§pop();
                                       addr117:
                                       §§push(this.§"[§);
                                       if(!(_loc10_ && param2))
                                       {
                                          addr126:
                                          §§push(§8!9§);
                                          if(!(_loc10_ && param1))
                                          {
                                             §§push(param6);
                                             if(!_loc10_)
                                             {
                                                addr147:
                                                §§pop()[§§pop()] = §§pop();
                                                if(!_loc10_)
                                                {
                                                   addr152:
                                                   §§push(this.§"[§);
                                                   §§push(§,0§);
                                                   if(_loc9_)
                                                   {
                                                      §§push(param7);
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         addr163:
                                                         §§pop()[§§pop()] = §§pop();
                                                         addr167:
                                                         §§push(this.§"[§);
                                                         §§push(§'!0§);
                                                         §§push(param8);
                                                      }
                                                   }
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr169);
                                             }
                                             §§pop()[§§pop()] = §§pop();
                                             addr169:
                                             return;
                                          }
                                          §§goto(addr167);
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr167);
                              }
                              §§goto(addr117);
                           }
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr90);
               }
               §§goto(addr126);
            }
            §§goto(addr147);
         }
         §§goto(addr163);
      }
      
      public function getValue(param1:int) : *
      {
         return this.§"[§[param1];
      }
      
      private function §4q§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            if(§§pop().toLowerCase() == "kinetic")
            {
               §§push(§0!,§);
               if(!_loc3_)
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
                     §§push(§%2§);
                     if(!(_loc3_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr59:
                     if(param1.toLowerCase() == "dynamic")
                     {
                        §§push(§+2§);
                        if(!(_loc3_ && _loc2_))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        §§push(§9X§);
                        §§push("WARNING LevelItemMaterial has invalid Body Type, name = ");
                        if(_loc2_)
                        {
                           §§push(this.mName);
                           if(_loc2_ || param1)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc3_ && this)
                              {
                              }
                              §§goto(addr110);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§goto(addr110);
                     }
                  }
               }
               §§goto(addr59);
            }
            addr110:
            §§push(§§pop() + " invalid name = ");
            if(!_loc3_)
            {
               §§push(param1);
            }
            §§pop().log(§§pop());
            return §%2§;
         }
         §§goto(addr59);
      }
      
      public function §9!&§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            this.§9a§ = new Array();
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            if(!_loc5_)
            {
               break;
            }
            _loc4_ = param1.attributes()[_loc2_];
            if(!(_loc5_ || _loc2_))
            {
               break;
            }
            this.§9a§[_loc3_.toUpperCase()] = _loc4_;
            if(!_loc5_)
            {
               break;
            }
            _loc2_++;
            if(!(_loc5_ || _loc3_))
            {
               break;
            }
         }
      }
      
      public function §1a§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!_loc5_)
         {
            this.§8!B§ = new Array();
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            if(!_loc5_)
            {
               _loc4_ = param1.attributes()[_loc2_];
               if(_loc5_)
               {
                  break;
               }
               this.§8!B§[_loc3_.toUpperCase()] = _loc4_;
               if(_loc5_)
               {
                  break;
               }
            }
            _loc2_++;
            if(_loc5_)
            {
               break;
            }
         }
      }
      
      public function §^?§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§9a§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && param1))
                  {
                     §§push(1);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr52);
                  }
                  §§goto(addr92);
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
                  §§push(this.§9a§);
                  if(!_loc2_)
                  {
                     addr74:
                     §§push(param1);
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop()[§§pop()])
                        {
                           if(_loc3_)
                           {
                              §§goto(addr89);
                           }
                        }
                        addr92:
                        return 1;
                     }
                  }
               }
               §§goto(addr89);
            }
            §§goto(addr74);
         }
         addr89:
         return this.§9a§[param1];
      }
      
      public function §!!E§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§8!B§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr35:
                     §§push(1);
                     if(_loc2_ || param1)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§goto(addr74);
                  }
                  §§goto(addr101);
               }
               else
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  if(!_loc3_)
                  {
                     addr74:
                     §§push(this.§8!B§);
                     if(_loc2_)
                     {
                        §§push(param1);
                        if(!(_loc3_ && _loc2_))
                        {
                           if(§§pop()[§§pop()])
                           {
                              if(!(_loc3_ && this))
                              {
                                 §§goto(addr98);
                              }
                           }
                           addr101:
                           return 1;
                        }
                     }
                     §§goto(addr98);
                  }
               }
               §§goto(addr98);
            }
            addr98:
            return this.§8!B§[param1];
         }
         §§goto(addr35);
      }
   }
}
