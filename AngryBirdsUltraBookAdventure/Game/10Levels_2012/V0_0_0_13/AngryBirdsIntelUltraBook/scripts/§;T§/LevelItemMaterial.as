package §;T§
{
   import §6b§.Log;
   import §]=§.b2Body;
   
   public class LevelItemMaterial
   {
      
      public static const §&y§:int = 0;
      
      public static const §!!&§:int;
      
      public static const § 1§:int;
      
      public static const §9p§:int;
      
      public static const §<[§:int = 1;
      
      public static const §=O§:int = 2;
      
      public static const §+a§:int = 3;
      
      public static const §,j§:int = 4;
      
      public static const §0y§:int = 5;
      
      public static const §@F§:int = 6;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §&y§ = 0;
            loop0:
            while(true)
            {
               §!!&§ = b2Body.b2_staticBody;
               loop1:
               while(true)
               {
                  § 1§ = b2Body.b2_kinematicBody;
                  while(true)
                  {
                     §9p§ = b2Body.b2_dynamicBody;
                     while(true)
                     {
                        §<[§ = 1;
                        continue loop0;
                        addr49:
                        if(!(_loc1_ && LevelItemMaterial))
                        {
                           return;
                           addr56:
                        }
                     }
                     addr61:
                     while(!(_loc1_ && _loc1_))
                     {
                        §@F§ = 6;
                        if(!(_loc2_ || LevelItemMaterial))
                        {
                           continue;
                        }
                        addr40:
                        if(_loc2_ || _loc1_)
                        {
                           if(!_loc1_)
                           {
                              §§goto(addr49);
                           }
                           else
                           {
                              loop6:
                              while(true)
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    §,j§ = 4;
                                    addr83:
                                    while(_loc2_ || LevelItemMaterial)
                                    {
                                       continue loop1;
                                       §§goto(addr40);
                                    }
                                    continue loop0;
                                    addr83:
                                 }
                                 else
                                 {
                                    addr114:
                                 }
                                 while(true)
                                 {
                                    §+a§ = 3;
                                    continue loop6;
                                 }
                              }
                           }
                           §§goto(addr56);
                        }
                        §§goto(addr83);
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      public var mName:String;
      
      public var §"!I§:Array;
      
      public var §`!P§:Array;
      
      public var §+!J§:Array;
      
      public function LevelItemMaterial(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || param1)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.mName = param1;
            loop1:
            while(true)
            {
               this.§"!I§ = new Array();
               while(true)
               {
                  §§push(this.§"!I§);
                  loop3:
                  while(true)
                  {
                     §§push(§&y§);
                     loop4:
                     while(true)
                     {
                        §§pop()[§§pop()] = this.§3!]§(param2);
                        loop5:
                        while(true)
                        {
                           §§push(this.§"!I§);
                           loop6:
                           while(true)
                           {
                              §§push(§<[§);
                              loop7:
                              while(true)
                              {
                                 §§push(param3);
                                 while(true)
                                 {
                                    §§pop()[§§pop()] = §§pop();
                                    while(true)
                                    {
                                       §§push(this.§"!I§);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§=O§);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(param4);
                                             while(true)
                                             {
                                                §§pop()[§§pop()] = §§pop();
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(this.§"!I§);
                                                   loop14:
                                                   for(; !_loc9_; if(!(_loc10_ || param1))
                                                   {
                                                      continue;
                                                   },if(_loc9_)
                                                   {
                                                      continue loop6;
                                                   },if(_loc9_)
                                                   {
                                                      continue loop3;
                                                   },§§goto(addr126),§§push(§0y§))
                                                   {
                                                      §§push(§+a§);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(param5);
                                                         while(true)
                                                         {
                                                            §§pop()[§§pop()] = §§pop();
                                                            loop17:
                                                            while(_loc10_)
                                                            {
                                                               §§push(this.§"!I§);
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(§,j§);
                                                                  loop19:
                                                                  while(!(_loc9_ && param1))
                                                                  {
                                                                     §§push(param6);
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§pop()[§§pop()] = §§pop();
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              if(_loc9_ && param3)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(this.§"!I§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       continue loop18;
                                                                                       addr137:
                                                                                       §§push(this.§"!I§);
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          §§push(§@F§);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             if(!(_loc10_ || param3))
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             addr54:
                                                                                             §§push(param8);
                                                                                             if(_loc10_ || param2)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop()[§§pop()] = §§pop();
                                                                                                addr130:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_ && this)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   §§goto(addr137);
                                                                                                }
                                                                                                continue loop11;
                                                                                                §§goto(addr54);
                                                                                             }
                                                                                             addr129:
                                                                                          }
                                                                                          while(_loc10_)
                                                                                          {
                                                                                             §§goto(addr129);
                                                                                             §§push(param7);
                                                                                          }
                                                                                          continue loop19;
                                                                                          addr126:
                                                                                       }
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc10_ || param1)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function getValue(param1:int) : *
      {
         return this.§"!I§[param1];
      }
      
      private function §3!]§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop().toLowerCase() != "kinetic")
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     loop2:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(§§pop().toLowerCase() == "static")
                           {
                              break;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 continue loop2;
                              }
                              if(§§pop().toLowerCase() != "dynamic")
                              {
                                 while(true)
                                 {
                                    §§push(Log);
                                    §§push("WARNING LevelItemMaterial has invalid Body Type, name = ");
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§push(this.mName);
                                       if(_loc3_ || _loc3_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc3_)
                                          {
                                             addr68:
                                             §§push(§§pop() + " invalid name = ");
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr78:
                                                §§push(§§pop() + param1);
                                             }
                                          }
                                          §§pop().log(§§pop());
                                          if(_loc3_)
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§push(§!!&§);
                                                if(!(_loc3_ || param1))
                                                {
                                                   addr104:
                                                   if(_loc3_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   break;
                                                }
                                                if(_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                addr98:
                                                if(!_loc2_)
                                                {
                                                   break loop3;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop3;
                                                }
                                                addr142:
                                                return § 1§;
                                             }
                                             return §§pop();
                                          }
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             break loop2;
                                          }
                                          continue;
                                       }
                                       §§goto(addr78);
                                    }
                                    §§goto(addr68);
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr98);
                           }
                           if(!_loc2_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     addr134:
                     return §§pop();
                  }
                  addr102:
                  §§goto(addr104);
                  §§push(§9p§);
               }
               §§goto(addr142);
            }
         }
         §§goto(addr102);
      }
      
      public function § !X§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!(_loc5_ && this))
         {
            this.§`!P§ = new Array();
         }
         §§push(0);
         if(!(_loc5_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               if(§§pop() >= param1.attributes().length())
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  loop1:
                  while(!(_loc6_ || _loc2_))
                  {
                     do
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                     }
                     while(!(_loc6_ || _loc2_));
                     
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc6_)
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
                  while(true)
                  {
                     this.§`!P§[_loc3_.toUpperCase()] = _loc4_;
                     §§goto(addr101);
                  }
               }
            }
            §§goto(addr75);
         }
      }
      
      public function §`p§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc6_ || _loc3_)
         {
            this.§+!J§ = new Array();
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               if(§§pop() >= param1.attributes().length())
               {
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     if(_loc6_ || param1)
                     {
                        break;
                     }
                     loop1:
                     while(!_loc6_)
                     {
                        while(true)
                        {
                           _loc4_ = param1.attributes()[_loc2_];
                           continue loop1;
                        }
                     }
                     this.§+!J§[_loc3_.toUpperCase()] = _loc4_;
                     addr111:
                  }
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc5_)
                     {
                     }
                     addr94:
                     _loc2_ = §§pop();
                     continue;
                  }
                  §§goto(addr94);
                  §§push(int(§§pop()));
               }
               else
               {
                  _loc3_ = param1.attributes()[_loc2_].name();
                  §§goto(addr123);
               }
               §§goto(addr111);
            }
            §§goto(addr94);
         }
      }
      
      public function override(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§`!P§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        return 1;
                     }
                     else
                     {
                        loop2:
                        while(true)
                        {
                           addr83:
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc3_ && param1))
                              {
                                 §§push(§§pop().toUpperCase());
                              }
                              param1 = §§pop();
                              while(true)
                              {
                                 §§push(this.§`!P§);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(param1);
                                    if(_loc3_)
                                    {
                                       addr68:
                                       return §§pop()[param1];
                                    }
                                    §§push(Boolean(§§pop()[§§pop()]));
                                    if(_loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             addr65:
                                             §§push(this.§`!P§);
                                             if(!_loc3_)
                                             {
                                                §§goto(addr68);
                                             }
                                             continue loop0;
                                          }
                                          continue;
                                       }
                                       if(!_loc3_)
                                       {
                                          addr82:
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr65);
                              }
                              §§push(1);
                              if(_loc2_)
                              {
                                 return §§pop();
                              }
                           }
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr83);
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §`2§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§+!J§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(§§pop().toUpperCase());
                     }
                     param1 = §§pop();
                     while(true)
                     {
                        §§push(this.§+!J§);
                        if(_loc2_)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           §§push(param1);
                           if(!(_loc3_ || _loc3_))
                           {
                              return §§pop()[§§pop()];
                           }
                           §§push(Boolean(§§pop()[§§pop()]));
                           if(!(_loc2_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(this.§+!J§);
                                       break;
                                    }
                                    break loop1;
                                 }
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc2_ && param1)
                                 {
                                    continue loop2;
                                 }
                              }
                              §§push(1);
                              if(!(_loc2_ && _loc3_))
                              {
                                 return §§pop();
                              }
                              addr119:
                              return §§pop();
                           }
                           continue loop1;
                           addr79:
                        }
                        continue loop0;
                     }
                     §§goto(addr79);
                  }
               }
            }
         }
         §§goto(addr119);
         §§push(1);
      }
   }
}
