package §"!&§
{
   import § !Y§.§[!%§;
   import §'!&§.b2Body;
   
   public class §<s§
   {
      
      public static const §%!2§:int;
      
      public static const §5!P§:int;
      
      public static const §6x§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §%!2§ = b2Body.b2_staticBody;
            while(true)
            {
               §5!P§ = b2Body.b2_kinematicBody;
               while(_loc1_)
               {
                  §6x§ = b2Body.b2_dynamicBody;
                  if(!_loc2_)
                  {
                     return;
                     addr40:
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      protected var mName:String;
      
      protected var §!"+§:int;
      
      protected var §9!C§:Number;
      
      protected var §0!%§:Number;
      
      protected var §>!5§:Number;
      
      protected var §6$§:Number;
      
      protected var §`!2§:Number;
      
      protected var §,!-§:Number;
      
      protected var §'9§:§[!%§;
      
      protected var §6!j§:§[!%§;
      
      public function §<s§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1.toUpperCase();
               loop1:
               while(true)
               {
                  this.§!"+§ = param2;
                  addr104:
                  while(true)
                  {
                     this.§9!C§ = param3;
                     addr89:
                     while(true)
                     {
                        this.§0!%§ = param4;
                        while(!_loc9_)
                        {
                           this.§>!5§ = param5;
                           while(_loc10_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         loop6:
         while(true)
         {
            this.§6$§ = param6;
            loop7:
            while(true)
            {
               this.§`!2§ = param7;
               while(_loc10_)
               {
                  this.§,!-§ = param8;
                  if(!_loc10_)
                  {
                     continue;
                  }
                  if(!_loc10_)
                  {
                     continue loop7;
                  }
                  if(!_loc9_)
                  {
                     if(_loc10_)
                     {
                        break loop6;
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr89);
               }
               §§goto(addr68);
            }
         }
      }
      
      public static function §`!k§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.toLowerCase();
         if(!(_loc4_ && _loc2_))
         {
            if("kinetic" === _loc2_)
            {
               if(_loc3_ || _loc2_)
               {
                  addr84:
                  §§push(0);
                  if(_loc4_ && _loc3_)
                  {
                     addr123:
                  }
               }
               else
               {
                  addr110:
                  §§push(2);
                  if(_loc3_)
                  {
                     §§goto(addr123);
                  }
               }
               §§goto(addr128);
            }
            else
            {
               if("static" !== _loc2_)
               {
                  if("dynamic" === _loc2_)
                  {
                     §§goto(addr110);
                  }
                  else
                  {
                     §§push(3);
                  }
                  addr128:
                  loop0:
                  while(true)
                  {
                     switch(§§pop())
                     {
                        case 0:
                           break loop0;
                        case 1:
                           §§push(§5!P§);
                           §§push(§%!2§);
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 return §§pop();
                              }
                              break loop0;
                           }
                           break;
                        case 2:
                           §§push(§6x§);
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                           break;
                        default:
                           throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
                     }
                  }
                  return §§pop();
               }
               if(_loc3_ || param1)
               {
                  §§push(1);
                  if(_loc4_)
                  {
                     §§goto(addr123);
                  }
               }
               else
               {
                  §§goto(addr110);
               }
               §§goto(addr128);
            }
            §§goto(addr110);
         }
         §§goto(addr84);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get bodyType() : int
      {
         return this.§!"+§;
      }
      
      public function get density() : Number
      {
         return this.§9!C§;
      }
      
      public function get friction() : Number
      {
         return this.§0!%§;
      }
      
      public function get restitution() : Number
      {
         return this.§>!5§;
      }
      
      public function get strength() : Number
      {
         return this.§6$§;
      }
      
      public function get defence() : Number
      {
         return this.§`!2§;
      }
      
      public function get colors() : Number
      {
         return this.§,!-§;
      }
      
      public function §0!o§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && _loc3_))
         {
            if(this.§'9§)
            {
               if(_loc5_)
               {
                  §§goto(addr33);
               }
            }
            this.§'9§ = new §[!%§();
            var _loc2_:int = 0;
            while(true)
            {
               if(_loc2_ >= param1.attributes().length())
               {
                  if(_loc5_ || param1)
                  {
                     if(_loc5_ || param1)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc2_++;
                        addr96:
                        this.§+!;§(_loc3_,_loc4_);
                     }
                  }
                  while(_loc6_)
                  {
                  }
                  continue;
               }
               _loc3_ = param1.attributes()[_loc2_].name();
               while(true)
               {
                  _loc4_ = param1.attributes()[_loc2_];
               }
               addr116:
               while(_loc6_)
               {
                  §§goto(addr116);
               }
               §§goto(addr96);
            }
            return;
         }
         addr33:
      }
      
      public function §+!;§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§'9§);
            while(true)
            {
               if(§§pop() == null)
               {
                  addr97:
                  while(true)
                  {
                     this.§'9§ = new §[!%§();
                     addr101:
                     while(true)
                     {
                     }
                  }
                  addr97:
               }
               while(true)
               {
                  §§push(param1);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  while(true)
                  {
                     §§push(this.§'9§);
                     if(_loc4_)
                     {
                        break;
                     }
                     §§push(param1);
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop()[§§pop()] == null)
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           addr60:
                           if(_loc3_ || _loc3_)
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr19);
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr101);
                        }
                        addr19:
                        return;
                     }
                     addr58:
                     §§pop()[§§pop()] = param2;
                     §§goto(addr60);
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr58);
                  §§push(param1);
               }
            }
         }
         §§goto(addr97);
      }
      
      public function § "$§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && _loc3_))
         {
            if(this.§6!j§)
            {
               if(!(_loc6_ && _loc2_))
               {
                  return;
               }
            }
            this.§6!j§ = new §[!%§();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.attributes().length())
            {
               if(!(_loc6_ && _loc2_))
               {
                  break;
               }
               while(true)
               {
                  if(!_loc6_)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     addr126:
                     while(true)
                     {
                        _loc4_ = param1.attributes()[_loc2_];
                        addr106:
                        while(true)
                        {
                           this.§@" §(_loc3_,_loc4_);
                        }
                     }
                  }
                  while(!(_loc5_ || this))
                  {
                     §§goto(addr106);
                  }
                  _loc2_++;
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr126);
         }
      }
      
      public function §@" §(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§6!j§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§6!j§ = new §[!%§();
                     addr96:
                     while(true)
                     {
                     }
                  }
                  addr92:
               }
               while(true)
               {
                  §§push(param1);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  loop4:
                  while(true)
                  {
                     §§push(this.§6!j§);
                     if(!_loc4_)
                     {
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        §§push(param1);
                        if(!_loc4_)
                        {
                           if(§§pop()[§§pop()] != null)
                           {
                              §§goto(addr19);
                           }
                           if(!_loc3_)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 §§push(this.§6!j§);
                                 addr52:
                                 while(true)
                                 {
                                    §§push(param1);
                                 }
                              }
                              addr50:
                           }
                           else
                           {
                              §§goto(addr92);
                           }
                        }
                        while(true)
                        {
                           §§pop()[§§pop()] = param2;
                           continue loop4;
                        }
                     }
                     §§goto(addr52);
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr96);
               }
               addr19:
               return;
            }
         }
         §§goto(addr50);
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§'9§);
            do
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        §§goto(addr94);
                     }
                     addr93:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§push(this.§'9§);
                           break;
                        }
                        if(_loc2_ && this)
                        {
                           addr94:
                           §§goto(addr61);
                        }
                        else
                        {
                           addr70:
                        }
                     }
                     return 1;
                  }
                  continue;
               }
               §§goto(addr93);
            }
            while(!(_loc3_ || _loc3_));
            
            addr61:
            while(true)
            {
               §§push(this.§'9§);
               if(!_loc3_)
               {
                  continue loop0;
               }
               §§push(param1);
               if(_loc2_)
               {
                  break;
               }
               §§push(Boolean(§§pop()[§§pop()]));
               if(!_loc2_)
               {
               }
               continue loop3;
            }
            return §§pop()[§§pop()];
            §§push(param1);
         }
         §§goto(addr70);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§6!j§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || param1)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        §§goto(addr94);
                     }
                     addr93:
                  }
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              while(true)
                              {
                                 §§push(this.§6!j§);
                                 break loop1;
                              }
                              addr63:
                           }
                           else
                           {
                              addr94:
                              §§goto(addr68);
                           }
                        }
                     }
                     return 1;
                     §§goto(addr38);
                  }
                  continue;
               }
               §§goto(addr93);
            }
            addr68:
            while(true)
            {
               §§push(this.§6!j§);
               if(!(_loc3_ || param1))
               {
                  continue loop0;
               }
               §§push(param1);
               if(_loc2_)
               {
                  break;
               }
               §§push(Boolean(§§pop()[§§pop()]));
               if(!_loc2_)
               {
               }
               continue loop3;
            }
            return §§pop()[§§pop()];
            §§push(param1);
         }
         §§goto(addr63);
      }
      
      public function §@">§() : Boolean
      {
         return this.§!"+§ == §<s§.§%!2§;
      }
   }
}
