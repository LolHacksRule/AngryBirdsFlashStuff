package §&v§
{
   import §"n§.§<!Z§;
   import §3!`§.b2Body;
   
   public class §#c§
   {
      
      public static const §9&§:int;
      
      public static const §-!I§:int;
      
      public static const §5!n§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9&§ = b2Body.b2_staticBody;
            while(true)
            {
               §-!I§ = b2Body.b2_kinematicBody;
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     §5!n§ = b2Body.b2_dynamicBody;
                     if(_loc2_ || §#c§)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      protected var mName:String;
      
      protected var §!!-§:int;
      
      protected var §<!T§:Number;
      
      protected var §38§:Number;
      
      protected var §#'§:Number;
      
      protected var §;!0§:Number;
      
      protected var § 8§:Number;
      
      protected var §5D§:Number;
      
      protected var §"!J§:§<!Z§;
      
      protected var §?!p§:§<!Z§;
      
      public function §#c§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1.toUpperCase();
               while(true)
               {
                  this.§!!-§ = param2;
                  loop2:
                  while(!(_loc9_ && param3))
                  {
                     this.§<!T§ = param3;
                     while(true)
                     {
                        this.§38§ = param4;
                        loop4:
                        for(; !_loc9_; while(!(_loc9_ && param3))
                        {
                           continue loop0;
                        })
                        {
                           this.§#'§ = param5;
                           while(true)
                           {
                              this.§;!0§ = param6;
                              continue loop4;
                           }
                        }
                        continue loop2;
                        addr44:
                        if(_loc10_ || param3)
                        {
                           this.§5D§ = param8;
                           addr51:
                           if(_loc9_)
                           {
                              while(true)
                              {
                                 if(!_loc9_)
                                 {
                                    if(!_loc10_)
                                    {
                                       break;
                                    }
                                    §§goto(addr44);
                                 }
                                 §§goto(addr66);
                                 §§goto(addr51);
                              }
                              §§goto(addr85);
                              addr40:
                           }
                           return;
                        }
                     }
                  }
               }
               if(_loc9_ && param1)
               {
                  continue;
               }
               this.§ 8§ = param7;
               §§goto(addr40);
            }
         }
         §§goto(addr85);
      }
      
      public static function §8c§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.toLowerCase();
         if(_loc3_)
         {
            if("kinetic" === _loc2_)
            {
               if(!_loc4_)
               {
                  §§push(0);
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr118);
               }
               else
               {
                  §§goto(addr93);
               }
            }
            else
            {
               if("static" === _loc2_)
               {
                  if(!_loc4_)
                  {
                     addr93:
                     §§push(1);
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr118);
                  }
                  else
                  {
                     addr100:
                     §§push(2);
                     if(_loc3_)
                     {
                        §§goto(addr113);
                     }
                  }
               }
               else if("dynamic" === _loc2_)
               {
                  §§goto(addr100);
               }
               else
               {
                  §§push(3);
               }
               §§goto(addr100);
            }
            addr118:
            loop0:
            while(true)
            {
               switch(§§pop())
               {
                  case 0:
                     break loop0;
                  case 1:
                     §§push(§-!I§);
                     §§push(§9&§);
                     if(_loc3_)
                     {
                        return §§pop();
                     }
                     break;
                  case 2:
                     §§push(§5!n§);
                     if(_loc3_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           return §§pop();
                        }
                        break loop0;
                     }
                     break;
                  default:
                     throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
               }
            }
            return §§pop();
         }
         §§goto(addr100);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get bodyType() : int
      {
         return this.§!!-§;
      }
      
      public function get density() : Number
      {
         return this.§<!T§;
      }
      
      public function get friction() : Number
      {
         return this.§38§;
      }
      
      public function get restitution() : Number
      {
         return this.§#'§;
      }
      
      public function get strength() : Number
      {
         return this.§;!0§;
      }
      
      public function get defence() : Number
      {
         return this.§ 8§;
      }
      
      public function get colors() : Number
      {
         return this.§5D§;
      }
      
      public function §?!k§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && param1))
         {
            if(this.§"!J§)
            {
               if(_loc5_ || _loc2_)
               {
                  §§goto(addr38);
               }
            }
            else
            {
               this.§"!J§ = new §<!Z§();
            }
            var _loc2_:int = 0;
            while(true)
            {
               if(_loc2_ >= param1.attributes().length())
               {
                  if(_loc5_ || _loc2_)
                  {
                     if(_loc5_)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           break;
                        }
                        _loc4_ = param1.attributes()[_loc2_];
                        addr101:
                        while(true)
                        {
                           this.§]!u§(_loc3_,_loc4_);
                        }
                        addr101:
                        addr121:
                     }
                     while(true)
                     {
                        _loc2_++;
                        §§goto(addr101);
                     }
                  }
                  while(_loc6_)
                  {
                     §§goto(addr101);
                  }
                  continue;
               }
               _loc3_ = param1.attributes()[_loc2_].name();
               §§goto(addr121);
            }
            return;
         }
         addr38:
      }
      
      public function §]!u§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§"!J§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  if(!(_loc3_ && this))
                  {
                     while(true)
                     {
                        this.§"!J§ = new §<!Z§();
                     }
                     addr93:
                  }
                  while(true)
                  {
                  }
                  addr97:
               }
               while(true)
               {
                  §§push(param1);
                  if(!_loc3_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  do
                  {
                     §§push(this.§"!J§);
                     if(!_loc3_)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           if(§§pop()[§§pop()] != null)
                           {
                              §§goto(addr25);
                           }
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              addr56:
                              §§push(this.§"!J§);
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                              §§push(param1);
                           }
                           else
                           {
                              §§goto(addr97);
                           }
                        }
                        §§pop()[§§pop()] = param2;
                        continue;
                     }
                     §§goto(addr56);
                  }
                  while(_loc3_);
                  
                  addr25:
                  return;
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §5!m§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc5_)
         {
            if(this.§?!p§)
            {
               if(_loc5_)
               {
                  §§goto(addr28);
               }
            }
            this.§?!p§ = new §<!Z§();
            var _loc2_:int = 0;
            while(true)
            {
               if(_loc2_ >= param1.attributes().length())
               {
                  if(_loc5_ || this)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           break;
                        }
                        _loc4_ = param1.attributes()[_loc2_];
                        addr121:
                     }
                     this.§[9§(_loc3_,_loc4_);
                     while(true)
                     {
                        _loc2_++;
                     }
                     addr93:
                  }
                  while(_loc6_)
                  {
                     §§goto(addr93);
                  }
                  continue;
               }
               _loc3_ = param1.attributes()[_loc2_].name();
               §§goto(addr121);
            }
            return;
         }
         addr28:
      }
      
      public function §[9§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§?!p§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§?!p§ = new §<!Z§();
                     addr106:
                     while(true)
                     {
                     }
                  }
                  addr102:
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  while(true)
                  {
                     if(_loc3_)
                     {
                        §§push(this.§?!p§);
                        if(_loc4_)
                        {
                           break;
                        }
                        §§push(param1);
                        if(_loc3_ || this)
                        {
                           if(§§pop()[§§pop()] == null)
                           {
                              if(_loc3_)
                              {
                                 continue;
                              }
                              addr72:
                           }
                           return;
                        }
                        addr70:
                        §§pop()[§§pop()] = param2;
                        §§goto(addr72);
                     }
                     else
                     {
                        §§goto(addr106);
                     }
                  }
                  continue loop0;
               }
            }
            §§goto(addr70);
            §§push(param1);
         }
         while(true)
         {
            §§goto(addr62);
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§"!J§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc3_ && this))
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this.§"!J§);
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 §§push(param1);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(Boolean(§§pop()[§§pop()]));
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(this.§"!J§);
                                             break;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          addr69:
                                       }
                                       return 1;
                                    }
                                    addr64:
                                    §§push(param1);
                                    break;
                                    addr58:
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                           §§goto(addr64);
                        }
                        return §§pop()[§§pop()];
                     }
                     addr92:
                  }
                  §§goto(addr58);
               }
               §§goto(addr92);
            }
         }
         §§goto(addr69);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§?!p§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr93:
                        while(true)
                        {
                           §§push(this.§?!p§);
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           §§push(param1);
                           if(!_loc2_)
                           {
                              §§goto(addr65);
                           }
                           §§push(Boolean(§§pop()[§§pop()]));
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                        }
                     }
                     addr92:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§push(this.§?!p§);
                           break;
                        }
                        if(_loc3_ && _loc2_)
                        {
                           §§goto(addr93);
                        }
                     }
                     return 1;
                     §§goto(addr37);
                  }
                  continue;
               }
               §§goto(addr92);
            }
            addr65:
            return §§pop()[§§pop()];
            §§push(param1);
         }
         §§goto(addr93);
      }
      
      public function §!!2§() : Boolean
      {
         return this.§!!-§ == §#c§.§9&§;
      }
   }
}
