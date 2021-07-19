package §2G§
{
   import §`K§.§ L§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §,6§
   {
      
      public static const § "§:int = 0;
      
      public static const §"I§:int = b2Body.b2_staticBody;
      
      public static const §-i§:int = b2Body.b2_kinematicBody;
      
      public static const §>!C§:int = b2Body.b2_dynamicBody;
      
      public static const §?!A§:int = 1;
      
      public static const § !>§:int = 2;
      
      public static const §']§:int = 3;
      
      public static const §!!!§:int = 4;
      
      public static const §0P§:int = 5;
      
      public static const §1I§:int = 6;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §']§ = 3;
            §!!!§ = 4;
            loop1:
            do
            {
               §0P§ = 5;
               while(_loc1_)
               {
                  §1I§ = 6;
                  if(!(_loc2_ && §,6§))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc2_ && _loc1_);
            
            return;
         }
      }
      
      public var mName:String;
      
      public var §"!;§:Array;
      
      public var §5s§:Array;
      
      public var §;I§:Array;
      
      public function §,6§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         super();
         this.mName = param1;
         while(true)
         {
            this.§"!;§ = new Array();
            this.§"!;§[§ "§] = this.§^%§(param2);
            loop1:
            while(true)
            {
               §§push(this.§"!;§);
               loop2:
               while(true)
               {
                  §§push(§?!A§);
                  loop3:
                  while(true)
                  {
                     §§push(param3);
                     loop4:
                     while(true)
                     {
                        §§pop()[§§pop()] = §§pop();
                        §§push(this.§"!;§);
                        loop5:
                        while(_loc9_)
                        {
                           §§push(§ !>§);
                           loop6:
                           while(true)
                           {
                              §§push(param4);
                              loop7:
                              while(true)
                              {
                                 §§pop()[§§pop()] = §§pop();
                                 §§push(this.§"!;§);
                                 §§push(§']§);
                                 §§push(param5);
                                 while(true)
                                 {
                                    §§pop()[§§pop()] = §§pop();
                                    continue loop1;
                                    addr49:
                                    if(!(_loc10_ && this))
                                    {
                                       §§pop()[§§pop()] = §§pop();
                                       if(_loc9_)
                                       {
                                          return;
                                       }
                                       loop15:
                                       while(true)
                                       {
                                          if(_loc9_)
                                          {
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             addr103:
                                             §§push(this.§"!;§);
                                             if(_loc9_)
                                             {
                                                addr26:
                                                §§push(§1I§);
                                                if(!(_loc10_ && this))
                                                {
                                                   addr34:
                                                   §§push(param8);
                                                   if(!(_loc10_ && param1))
                                                   {
                                                      addr42:
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§goto(addr49);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop()[§§pop()] = §§pop();
                                                            addr112:
                                                            while(true)
                                                            {
                                                               §§push(this.§"!;§);
                                                               addr63:
                                                               while(!_loc10_)
                                                               {
                                                                  §§push(§0P§);
                                                                  if(!(_loc9_ || param1))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(param7);
                                                                  §§goto(addr103);
                                                               }
                                                               continue loop5;
                                                            }
                                                            §§goto(addr42);
                                                         }
                                                         addr111:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc10_ && param3))
                                                      {
                                                         if(!(_loc9_ || param3))
                                                         {
                                                            break;
                                                         }
                                                         §§pop()[§§pop()] = §§pop();
                                                         continue loop15;
                                                      }
                                                      continue loop7;
                                                      §§goto(addr34);
                                                   }
                                                   continue loop4;
                                                }
                                                addr108:
                                                while(!_loc10_)
                                                {
                                                   §§push(param6);
                                                   §§goto(addr26);
                                                }
                                                continue loop6;
                                                §§goto(addr111);
                                             }
                                             §§goto(addr63);
                                          }
                                          §§goto(addr112);
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      public function getValue(param1:int) : *
      {
         return this.§"!;§[param1];
      }
      
      private function §^%§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(§§pop().toLowerCase() != "kinetic")
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  if(§§pop().toLowerCase() == "static")
                  {
                     §§goto(addr123);
                  }
                  else
                  {
                     addr90:
                  }
                  while(true)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        if(!(_loc3_ || param1))
                        {
                           continue loop0;
                        }
                        if(§§pop().toLowerCase() != "dynamic")
                        {
                           §§push(§ L§);
                           §§push("WARNING LevelItemMaterial has invalid Body Type, name = ");
                           if(!_loc2_)
                           {
                              §§push(this.mName);
                              if(!_loc2_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§§pop() + " invalid name = ");
                                    if(!(_loc2_ && param1))
                                    {
                                       addr78:
                                       §§push(§§pop() + param1);
                                    }
                                 }
                                 §§pop().log(§§pop());
                                 if(!_loc2_)
                                 {
                                    if(!(_loc3_ || this))
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             §§goto(addr90);
                                          }
                                          addr131:
                                       }
                                       break loop0;
                                    }
                                    §§push(§"I§);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(_loc2_)
                                       {
                                          addr123:
                                          return §"I§;
                                       }
                                       if(_loc3_ || param1)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr90);
                                    }
                                    else
                                    {
                                       §§goto(addr115);
                                    }
                                 }
                                 addr114:
                                 §§goto(addr115);
                                 §§push(§>!C§);
                              }
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr114);
                        continue loop0;
                     }
                     continue loop1;
                  }
                  return §§pop();
               }
               return §§pop();
            }
            §§goto(addr90);
            §§push(§-i§);
         }
         §§goto(addr131);
      }
      
      public function §9W§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            this.§5s§ = new Array();
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
               while(true)
               {
                  if(_loc5_)
                  {
                     if(_loc5_ || _loc2_)
                     {
                        break;
                     }
                     loop2:
                     while(true)
                     {
                        this.§5s§[_loc3_.toUpperCase()] = _loc4_;
                        addr100:
                        while(true)
                        {
                           _loc4_ = param1.attributes()[_loc2_];
                           continue loop2;
                        }
                     }
                  }
                  while(!_loc5_)
                  {
                  }
                  _loc2_++;
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr100);
         }
      }
      
      public function §0!M§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc5_ || _loc3_)
         {
            this.§;I§ = new Array();
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= param1.attributes().length())
            {
               if(!_loc6_)
               {
                  if(!(_loc6_ && this))
                  {
                     if(_loc5_ || _loc3_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        this.§;I§[_loc3_.toUpperCase()] = _loc4_;
                        addr110:
                        while(true)
                        {
                           _loc4_ = param1.attributes()[_loc2_];
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     _loc2_++;
                  }
               }
               while(_loc6_)
               {
               }
               continue;
            }
            _loc3_ = param1.attributes()[_loc2_].name();
            §§goto(addr110);
         }
      }
      
      public function §%!"§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§5s§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr78:
                     if(!(_loc2_ && this))
                     {
                        addr20:
                        §§push(1);
                        if(!_loc2_)
                        {
                           return §§pop();
                        }
                        break loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(param1);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop().toUpperCase());
                  }
                  param1 = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(this.§5s§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(param1);
                        if(!_loc2_)
                        {
                           if(§§pop()[§§pop()])
                           {
                              if(!(_loc3_ || param1))
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 §§push(this.§5s§);
                                 break loop3;
                              }
                           }
                           else
                           {
                              §§goto(addr20);
                           }
                        }
                        §§goto(addr64);
                     }
                     break;
                  }
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     addr64:
                     return §§pop()[§§pop()];
                     return param1;
                  }
               }
            }
            return §§pop();
         }
         §§goto(addr59);
      }
      
      public function §?r§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§;I§);
            loop0:
            do
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(§§pop().toUpperCase());
                     }
                     param1 = §§pop();
                     while(true)
                     {
                        §§push(this.§;I§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§push(param1);
                        if(!_loc2_)
                        {
                           §§goto(addr80);
                        }
                        if(§§pop()[§§pop()])
                        {
                           if(_loc2_ || _loc3_)
                           {
                              if(_loc2_)
                              {
                                 §§push(this.§;I§);
                                 break;
                              }
                              continue loop1;
                           }
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 addr24:
                                 §§push(1);
                                 if(_loc2_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr98:
                                 return 1;
                              }
                              return §§pop();
                           }
                           continue;
                        }
                        §§goto(addr24);
                     }
                     continue loop0;
                  }
               }
            }
            while(_loc3_ && _loc2_);
            
            addr80:
            return §§pop()[§§pop()];
            §§push(param1);
         }
         §§goto(addr98);
      }
   }
}
