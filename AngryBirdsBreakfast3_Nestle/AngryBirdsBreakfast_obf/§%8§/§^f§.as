package §%8§
{
   import §0"!§.b2Body;
   import §4!i§.§0]§;
   
   public class §^f§
   {
      
      public static const §7!C§:int;
      
      public static const §7"-§:int;
      
      public static const §6"&§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §7!C§ = b2Body.b2_staticBody;
            while(true)
            {
               §7"-§ = b2Body.b2_kinematicBody;
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            §6"&§ = b2Body.b2_dynamicBody;
            if(!_loc1_)
            {
               if(_loc2_ || §^f§)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected var mName:String;
      
      protected var §+A§:int;
      
      protected var §5$§:Number;
      
      protected var §]!!§:Number;
      
      protected var §-!S§:Number;
      
      protected var §5!T§:Number;
      
      protected var §=s§:Number;
      
      protected var §,]§:Number;
      
      protected var §1!y§:§0]§;
      
      protected var §+N§:§0]§;
      
      public function §^f§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc10_)
         {
            super();
            while(true)
            {
               this.mName = param1.toUpperCase();
            }
            addr117:
         }
         loop1:
         while(true)
         {
            this.§+A§ = param2;
            while(true)
            {
               this.§5$§ = param3;
               loop3:
               while(_loc9_ || param2)
               {
                  this.§]!!§ = param4;
                  loop4:
                  while(true)
                  {
                     this.§-!S§ = param5;
                     loop5:
                     while(true)
                     {
                        this.§5!T§ = param6;
                        loop6:
                        while(_loc9_)
                        {
                           this.§=s§ = param7;
                           while(true)
                           {
                              if(!_loc10_)
                              {
                                 continue loop4;
                              }
                              continue loop6;
                              addr64:
                              this.§,]§ = param8;
                              if(!_loc9_)
                              {
                                 continue;
                              }
                              if(_loc10_)
                              {
                                 continue loop5;
                              }
                              if(!_loc10_)
                              {
                                 return;
                              }
                              §§goto(addr117);
                           }
                           continue loop1;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
      }
      
      public static function §6"1§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.toLowerCase();
         if(!(_loc3_ && _loc2_))
         {
            if("kinetic" === _loc2_)
            {
               if(!_loc3_)
               {
                  addr100:
                  §§push(0);
                  if(_loc3_ && _loc2_)
                  {
                     addr149:
                  }
               }
               else
               {
                  addr131:
                  §§push(2);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr149);
                  }
               }
               §§goto(addr154);
            }
            else
            {
               if("static" !== _loc2_)
               {
                  if("dynamic" === _loc2_)
                  {
                     §§goto(addr131);
                  }
                  else
                  {
                     §§push(3);
                  }
                  addr154:
                  loop0:
                  while(true)
                  {
                     switch(§§pop())
                     {
                        case 0:
                           §§push(§7"-§);
                           if(!(_loc3_ && _loc3_))
                           {
                              return §§pop();
                           }
                           break;
                        case 1:
                           break loop0;
                        case 2:
                           §§push(§7!C§);
                           §§push(§6"&§);
                           if(!(_loc3_ && _loc2_))
                           {
                              if(_loc4_ || _loc3_)
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
               if(!(_loc3_ && _loc3_))
               {
                  §§push(1);
                  if(_loc3_ && param1)
                  {
                  }
               }
               else
               {
                  §§goto(addr131);
               }
               §§goto(addr154);
            }
            §§goto(addr131);
         }
         §§goto(addr100);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get bodyType() : int
      {
         return this.§+A§;
      }
      
      public function get density() : Number
      {
         return this.§5$§;
      }
      
      public function get friction() : Number
      {
         return this.§]!!§;
      }
      
      public function get restitution() : Number
      {
         return this.§-!S§;
      }
      
      public function get strength() : Number
      {
         return this.§5!T§;
      }
      
      public function get defence() : Number
      {
         return this.§=s§;
      }
      
      public function get colors() : Number
      {
         return this.§,]§;
      }
      
      public function §7!F§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc6_ || _loc3_)
         {
            if(this.§1!y§)
            {
               if(_loc6_ || param1)
               {
                  §§goto(addr39);
               }
            }
            this.§1!y§ = new §0]§();
            var _loc2_:int = 0;
            while(true)
            {
               if(_loc2_ >= param1.attributes().length())
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     while(true)
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                        _loc2_++;
                     }
                  }
                  while(_loc5_)
                  {
                  }
                  continue;
               }
               _loc3_ = param1.attributes()[_loc2_].name();
               while(true)
               {
                  _loc4_ = param1.attributes()[_loc2_];
                  §§goto(addr102);
               }
            }
            return;
         }
         addr39:
      }
      
      public function §=!W§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(this.§1!y§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§1!y§ = new §0]§();
                     addr112:
                     while(true)
                     {
                     }
                  }
                  addr108:
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  do
                  {
                     §§push(this.§1!y§);
                     if(_loc4_ || param1)
                     {
                        §§push(param1);
                        if(_loc4_ || _loc3_)
                        {
                           if(§§pop()[§§pop()] != null)
                           {
                              §§goto(addr25);
                           }
                           if(_loc3_ && param2)
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              addr71:
                              §§push(this.§1!y§);
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              §§push(param1);
                           }
                           else
                           {
                              §§goto(addr112);
                           }
                        }
                        §§pop()[§§pop()] = param2;
                        continue;
                     }
                     §§goto(addr71);
                  }
                  while(!_loc4_);
                  
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr108);
               }
            }
         }
         addr25:
      }
      
      public function §%i§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc6_ || _loc3_)
         {
            if(this.§+N§)
            {
               if(!(_loc5_ && _loc2_))
               {
                  §§goto(addr39);
               }
            }
            this.§+N§ = new §0]§();
            var _loc2_:int = 0;
            loop0:
            while(true)
            {
               if(_loc2_ >= param1.attributes().length())
               {
                  if(_loc6_)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        this.§+#§(_loc3_,_loc4_);
                        loop2:
                        while(_loc6_)
                        {
                           _loc2_++;
                           while(!(_loc6_ || _loc3_))
                           {
                              continue loop2;
                           }
                           continue loop0;
                        }
                        addr122:
                        while(true)
                        {
                           _loc4_ = param1.attributes()[_loc2_];
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr79);
               }
               else
               {
                  _loc3_ = param1.attributes()[_loc2_].name();
               }
               §§goto(addr122);
            }
            return;
         }
         addr39:
      }
      
      public function §+#§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§+N§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  while(true)
                  {
                     this.§+N§ = new §0]§();
                     addr116:
                     while(true)
                     {
                     }
                  }
                  addr112:
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  loop4:
                  for(; !(_loc4_ && param2); if(!(_loc4_ && _loc3_))
                  {
                     §§push(this.§+N§);
                     continue loop0;
                  })
                  {
                     while(true)
                     {
                        §§push(this.§+N§);
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        §§push(param1);
                        if(_loc3_ || _loc3_)
                        {
                           if(§§pop()[§§pop()] == null)
                           {
                              if(!_loc4_)
                              {
                                 continue loop4;
                              }
                              addr75:
                              if(_loc3_ || this)
                              {
                                 break;
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr24);
                        }
                        else
                        {
                           addr73:
                        }
                        §§pop()[§§pop()] = param2;
                        §§goto(addr75);
                     }
                     addr24:
                     return;
                  }
                  §§goto(addr116);
               }
            }
         }
         §§goto(addr97);
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§1!y§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     addr98:
                     while(true)
                     {
                        §§pop();
                     }
                     addr98:
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              addr73:
                              §§push(this.§1!y§);
                              break;
                           }
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 §§push(this.§1!y§);
                                 if(_loc2_ && this)
                                 {
                                    break loop1;
                                 }
                                 continue loop0;
                                 §§goto(addr98);
                              }
                              addr76:
                              return §§pop()[§§pop()];
                              addr99:
                           }
                        }
                        Boolean(§§pop()[§§pop()]);
                        addr60:
                        return 1;
                        if(_loc3_ || this)
                        {
                           continue;
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr76);
                     §§push(param1);
                  }
                  §§goto(addr99);
               }
               §§goto(addr98);
            }
         }
         §§goto(addr73);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§+N§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr90:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc3_ && param1))
                        {
                           if(!_loc3_)
                           {
                              addr71:
                              §§push(this.§+N§);
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(this.§+N§);
                                 if(_loc3_ && param1)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr93:
                           }
                           return §§pop()[param1];
                           addr74:
                        }
                        break;
                     }
                     return 1;
                     addr60:
                  }
                  while(true)
                  {
                     §§pop();
                  }
                  §§goto(addr93);
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §4X§() : Boolean
      {
         return this.§+A§ == §^f§.§7!C§;
      }
   }
}
