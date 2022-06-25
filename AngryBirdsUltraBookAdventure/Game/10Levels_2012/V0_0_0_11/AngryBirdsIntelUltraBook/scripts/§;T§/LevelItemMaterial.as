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
               addr142:
               while(true)
               {
                  § 1§ = b2Body.b2_kinematicBody;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §9p§ = b2Body.b2_dynamicBody;
            §§goto(addr121);
         }
      }
      
      public var mName:String;
      
      public var §"!I§:Array;
      
      public var §`!P§:Array;
      
      public var §+!J§:Array;
      
      public function LevelItemMaterial(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || param2)
         {
            super();
            while(true)
            {
               this.mName = param1;
               addr224:
               while(true)
               {
                  this.§"!I§ = new Array();
                  loop2:
                  while(true)
                  {
                     §§push(this.§"!I§);
                     addr200:
                     while(true)
                     {
                        §§push(§&y§);
                        addr202:
                        while(true)
                        {
                           §§pop()[§§pop()] = this.§3!]§(param2);
                           continue loop2;
                        }
                     }
                  }
               }
               addr95:
               if(!_loc9_)
               {
                  return;
               }
            }
         }
         while(true)
         {
            §§push(this.§"!I§);
            loop7:
            while(true)
            {
               §§push(§<[§);
               while(true)
               {
                  §§push(param3);
                  loop9:
                  while(true)
                  {
                     §§pop()[§§pop()] = §§pop();
                     loop10:
                     while(true)
                     {
                        §§push(this.§"!I§);
                        loop11:
                        while(_loc10_)
                        {
                           if(_loc10_)
                           {
                              §§push(§=O§);
                              loop12:
                              while(true)
                              {
                                 §§push(param4);
                                 addr177:
                                 while(true)
                                 {
                                    §§pop()[§§pop()] = §§pop();
                                    loop14:
                                    while(true)
                                    {
                                       §§push(this.§"!I§);
                                       loop15:
                                       while(true)
                                       {
                                          §§push(§+a§);
                                          addr153:
                                          while(true)
                                          {
                                             §§push(param5);
                                             addr154:
                                             while(!(_loc9_ && param2))
                                             {
                                                §§pop()[§§pop()] = §§pop();
                                                while(true)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         break;
                                                         addr128:
                                                      }
                                                      §§push(this.§"!I§);
                                                      while(true)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§,j§);
                                                            continue loop12;
                                                         }
                                                         continue loop15;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop14;
                                                   addr88:
                                                   if(!(_loc10_ || param3))
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr95);
                                                }
                                                continue loop10;
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr200);
                        }
                        continue loop7;
                     }
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
               if(§§pop().toLowerCase() == "kinetic")
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr142:
                     §§push(§ 1§);
                     break;
                  }
                  addr145:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  §§push(param1);
                  continue loop0;
               }
               addr127:
               return §!!&§;
            }
            return §§pop();
         }
         §§goto(addr142);
      }
      
      public function § !X§(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc5_ || this)
         {
            this.§`!P§ = new Array();
         }
         §§push(0);
         if(_loc5_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_ || _loc3_)
            {
               if(_loc5_ || _loc2_)
               {
                  if(§§pop() >= param1.attributes().length())
                  {
                     if(_loc5_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           break;
                        }
                        _loc4_ = param1.attributes()[_loc2_];
                        while(true)
                        {
                           this.§`!P§[_loc3_.toUpperCase()] = _loc4_;
                           addr124:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(_loc5_)
                              {
                                 §§push(§§pop() + 1);
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr91:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                                 addr90:
                              }
                              §§goto(addr91);
                           }
                        }
                        addr132:
                        addr142:
                     }
                     while(true)
                     {
                        if(!(_loc6_ && param1))
                        {
                           if(_loc5_ || _loc2_)
                           {
                              break;
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr124);
                        §§goto(addr91);
                     }
                     continue;
                  }
                  _loc3_ = param1.attributes()[_loc2_].name();
                  §§goto(addr142);
               }
               §§goto(addr90);
            }
            §§goto(addr91);
         }
      }
      
      public function §`p§(param1:XML) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(_loc6_ || this)
         {
            this.§+!J§ = new Array();
         }
         §§push(0);
         if(!(_loc5_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_ || this)
            {
               if(§§pop() >= param1.attributes().length())
               {
                  if(!(_loc5_ && this))
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           addr133:
                           while(true)
                           {
                              _loc4_ = param1.attributes()[_loc2_];
                           }
                        }
                        while(true)
                        {
                           this.§+!J§[_loc3_.toUpperCase()] = _loc4_;
                        }
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc6_)
                        {
                           §§push(§§pop() + 1);
                           if(!(_loc6_ || param1))
                           {
                              continue loop1;
                           }
                        }
                        §§push(int(§§pop()));
                        continue loop1;
                     }
                  }
                  continue;
               }
               _loc3_ = param1.attributes()[_loc2_].name();
               §§goto(addr133);
            }
            §§goto(addr90);
         }
      }
      
      public function override(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§`!P§);
            while(true)
            {
               §§push(!§§pop());
               addr111:
               while(!§§pop())
               {
                  while(true)
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop().toUpperCase());
                     }
                     param1 = §§pop();
                     addr100:
                     while(_loc2_ || _loc2_)
                     {
                     }
                  }
               }
               addr112:
               return 1;
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§push(param1);
               if(_loc2_)
               {
                  §§push(Boolean(§§pop()[§§pop()]));
                  if(!(_loc3_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr100);
                           }
                           if(_loc2_)
                           {
                              addr19:
                              §§push(1);
                              if(_loc2_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§goto(addr112);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr71);
                     }
                     §§goto(addr19);
                  }
                  §§goto(addr111);
               }
               §§goto(addr71);
            }
         }
         while(true)
         {
            §§push(this.§`!P§);
            if(!(_loc3_ && this))
            {
               §§goto(addr112);
            }
            break;
         }
         addr71:
         return this.§`!P§[param1];
      }
      
      public function §`2§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop().toUpperCase());
                     }
                     param1 = §§pop();
                     while(true)
                     {
                        §§push(this.§+!J§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           §§push(param1);
                           if(!(_loc2_ || param1))
                           {
                              return §§pop()[§§pop()];
                           }
                           addr90:
                           §§push(Boolean(§§pop()[§§pop()]));
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                    addr114:
                                 }
                              }
                              §§push(1);
                              if(_loc2_ || _loc2_)
                              {
                                 return §§pop();
                              }
                              §§goto(addr113);
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     §§goto(addr90);
                  }
               }
               addr113:
               return §§pop();
            }
         }
         §§goto(addr114);
      }
   }
}
