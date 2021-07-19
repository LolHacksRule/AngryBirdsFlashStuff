package §2"Y§
{
   import §+#$§.b2Body;
   import §1!i§.§,#_§;
   
   public class §&!x§
   {
      
      public static const §&#_§:int;
      
      public static const §!U§:int;
      
      public static const §7!B§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&#_§ = b2Body.b2_staticBody;
            while(true)
            {
               §!U§ = b2Body.b2_kinematicBody;
               §§goto(addr64);
            }
         }
         addr64:
         while(true)
         {
            §7!B§ = b2Body.b2_dynamicBody;
            if(!(_loc1_ && _loc1_))
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected var mName:String;
      
      protected var §<q§:int;
      
      protected var §9!]§:Number;
      
      protected var § "E§:Number;
      
      protected var §>",§:Number;
      
      protected var §>!5§:Number;
      
      protected var §4O§:Number;
      
      protected var §0!'§:Number;
      
      protected var §5#8§:§,#_§;
      
      protected var §'#V§:§,#_§;
      
      public function §&!x§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1.toUpperCase();
               while(true)
               {
                  this.§<q§ = param2;
                  addr119:
                  while(true)
                  {
                     this.§9!]§ = param3;
                     addr104:
                     while(true)
                     {
                        this.§ "E§ = param4;
                        continue loop0;
                     }
                  }
                  addr66:
                  if(!(_loc10_ || param2))
                  {
                     continue;
                  }
                  this.§0!'§ = param8;
                  addr73:
                  if(!(_loc9_ && param3))
                  {
                     if(!_loc10_)
                     {
                        while(_loc10_)
                        {
                           if(!_loc9_)
                           {
                              this.§>!5§ = param6;
                              loop7:
                              while(true)
                              {
                                 this.§4O§ = param7;
                                 addr47:
                                 while(true)
                                 {
                                    if(!(_loc10_ || param3))
                                    {
                                       continue loop7;
                                    }
                                    if(_loc9_)
                                    {
                                       break;
                                    }
                                    §§goto(addr66);
                                    §§goto(addr73);
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§goto(addr119);
                           }
                        }
                        §§goto(addr104);
                        addr83:
                     }
                     return;
                  }
                  §§goto(addr47);
               }
            }
         }
         while(true)
         {
            this.§>",§ = param5;
            §§goto(addr83);
         }
      }
      
      public static function §3"K§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.toLowerCase();
         if(!(_loc3_ && param1))
         {
            if("kinetic" === _loc2_)
            {
               if(!(_loc3_ && param1))
               {
                  addr100:
                  §§push(0);
                  if(_loc3_ && _loc3_)
                  {
                     addr127:
                  }
               }
               else
               {
                  addr131:
                  §§push(2);
                  if(_loc3_)
                  {
                  }
               }
               §§goto(addr149);
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
                  addr149:
                  while(true)
                  {
                     switch(§§pop())
                     {
                        case 0:
                           §§push(§!U§);
                           if(_loc4_ || §&!x§)
                           {
                              return §§pop();
                           }
                           break;
                        case 1:
                           §§push(§&#_§);
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                           break;
                        case 2:
                           §§push(§7!B§);
                           if(!(_loc3_ && param1))
                           {
                              return §§pop();
                           }
                           break;
                     }
                  }
                  throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
               }
               if(_loc4_ || _loc3_)
               {
                  §§push(1);
                  if(!(_loc3_ && §&!x§))
                  {
                     §§goto(addr127);
                  }
               }
               else
               {
                  §§goto(addr131);
               }
               §§goto(addr149);
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
         return this.§<q§;
      }
      
      public function get density() : Number
      {
         return this.§9!]§;
      }
      
      public function get friction() : Number
      {
         return this.§ "E§;
      }
      
      public function get restitution() : Number
      {
         return this.§>",§;
      }
      
      public function get strength() : Number
      {
         return this.§>!5§;
      }
      
      public function get defence() : Number
      {
         return this.§4O§;
      }
      
      public function get colors() : Number
      {
         return this.§0!'§;
      }
      
      public function §'"Z§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!(_loc6_ && param1))
         {
            if(this.§5#8§)
            {
               if(!_loc6_)
               {
                  §§goto(addr33);
               }
            }
            this.§5#8§ = new §,#_§();
            var _loc2_:int = 0;
            while(true)
            {
               if(_loc2_ >= param1.attributes().length())
               {
                  if(!_loc6_)
                  {
                     if(!_loc6_)
                     {
                        break;
                     }
                     _loc4_ = param1.attributes()[_loc2_];
                     while(true)
                     {
                        this.§>"I§(_loc3_,_loc4_);
                        addr83:
                        while(true)
                        {
                           _loc2_++;
                        }
                     }
                     addr91:
                     addr111:
                  }
                  while(true)
                  {
                     if(_loc6_)
                     {
                        continue;
                     }
                     if(!(_loc6_ && this))
                     {
                        break;
                     }
                     §§goto(addr91);
                  }
                  continue;
               }
               _loc3_ = param1.attributes()[_loc2_].name();
               §§goto(addr111);
            }
            return;
         }
         addr33:
      }
      
      public function §>"I§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.§5#8§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  if(!(_loc3_ && this))
                  {
                     while(true)
                     {
                        this.§5#8§ = new §,#_§();
                     }
                     addr98:
                  }
                  while(true)
                  {
                  }
                  addr102:
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
                     if(!_loc3_)
                     {
                        §§push(this.§5#8§);
                        if(_loc4_)
                        {
                           if(!_loc3_)
                           {
                              §§push(param1);
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(§§pop()[§§pop()] != null)
                                 {
                                    §§goto(addr25);
                                 }
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 addr61:
                                 §§push(this.§5#8§);
                                 §§push(param1);
                              }
                              §§pop()[§§pop()] = param2;
                              continue;
                           }
                           continue loop0;
                        }
                        §§goto(addr61);
                     }
                     else
                     {
                        §§goto(addr102);
                     }
                  }
                  while(_loc3_);
                  
                  addr25:
                  return;
               }
            }
         }
         §§goto(addr98);
      }
      
      public function §&"!§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            if(this.§'#V§)
            {
               if(_loc5_ || _loc3_)
               {
                  return;
               }
            }
            else
            {
               addr41:
               this.§'#V§ = new §,#_§();
            }
            var _loc2_:int = 0;
            while(true)
            {
               if(_loc2_ >= param1.attributes().length())
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  while(!(_loc5_ || param1))
                  {
                     do
                     {
                        if(_loc6_ && _loc2_)
                        {
                           continue;
                        }
                     }
                     while(!(_loc5_ || param1));
                     
                     _loc2_++;
                  }
                  continue;
               }
               _loc3_ = param1.attributes()[_loc2_].name();
               while(true)
               {
                  _loc4_ = param1.attributes()[_loc2_];
                  while(true)
                  {
                     this.§3"R§(_loc3_,_loc4_);
                     §§goto(addr84);
                  }
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §3"R§(param1:String, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§'#V§);
            loop0:
            while(true)
            {
               if(§§pop() == null)
               {
                  addr112:
                  while(true)
                  {
                     this.§'#V§ = new §,#_§();
                     addr116:
                     while(true)
                     {
                     }
                  }
                  addr112:
               }
               loop1:
               while(true)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  while(!_loc4_)
                  {
                     §§push(this.§'#V§);
                     if(!(_loc4_ && param1))
                     {
                        continue loop0;
                     }
                     addr70:
                     §§pop()[param1] = param2;
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc3_ || _loc3_)
                     {
                        break loop1;
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr116);
               }
               addr24:
               return;
            }
         }
         §§goto(addr112);
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§5#8§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     addr93:
                     while(true)
                     {
                        §§pop();
                     }
                     addr93:
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
                              addr68:
                              §§push(this.§5#8§);
                              break;
                           }
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 §§push(this.§5#8§);
                                 if(_loc2_ && _loc3_)
                                 {
                                    break loop1;
                                 }
                                 continue loop0;
                                 §§goto(addr93);
                              }
                              addr71:
                              return §§pop()[§§pop()];
                              addr94:
                           }
                        }
                        return 1;
                     }
                     §§goto(addr71);
                     §§push(param1);
                     addr64:
                  }
                  §§goto(addr94);
               }
               §§goto(addr93);
            }
         }
         §§goto(addr68);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§'#V§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr94:
                        while(true)
                        {
                           §§push(this.§'#V§);
                           if(_loc3_ || param1)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              §§push(param1);
                              if(_loc3_)
                              {
                                 continue loop2;
                              }
                           }
                           else
                           {
                              addr67:
                              §§push(param1);
                           }
                           return §§pop()[§§pop()];
                           continue loop2;
                        }
                     }
                     addr93:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              §§push(this.§'#V§);
                              break;
                           }
                           §§goto(addr94);
                        }
                     }
                     return 1;
                     §§goto(addr50);
                  }
                  §§goto(addr67);
               }
               §§goto(addr93);
            }
         }
         §§goto(addr94);
      }
      
      public function §]"7§() : Boolean
      {
         return this.§<q§ == §&!x§.§&#_§;
      }
   }
}
