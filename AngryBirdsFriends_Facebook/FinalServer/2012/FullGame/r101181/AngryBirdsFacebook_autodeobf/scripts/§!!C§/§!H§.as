package §!!C§
{
   public class §!H§
   {
      
      private static var §,!2§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!2§ = [];
         }
      }
      
      public function §!H§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §^!;§(param1:§^!b§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         var _loc5_:int = 0;
         for each(_loc6_ in §,!2§)
         {
            if(_loc6_.id == param1.id)
            {
               if(!(_loc9_ && param2))
               {
                  §§push(param2);
                  if(!(_loc9_ && §!H§))
                  {
                     if(§§pop())
                     {
                        if(_loc10_)
                        {
                           §§push(param1.avatarString);
                           if(!_loc9_)
                           {
                              §§push(§§pop() == null);
                              if(_loc10_ || param1)
                              {
                                 §§push(!§§pop());
                                 if(_loc10_)
                                 {
                                    §§push(§§pop());
                                    if(_loc10_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc9_ && param1))
                                          {
                                             addr91:
                                             §§pop();
                                             addr121:
                                             if(_loc10_ || §!H§)
                                             {
                                                addr192:
                                                §§push(param1.avatarString == "");
                                             }
                                             if(false)
                                             {
                                                §§goto(addr123);
                                             }
                                             continue;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             if(!_loc9_)
                                             {
                                                addr197:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                }
                                                addr197:
                                             }
                                             addr199:
                                             loop10:
                                             while(true)
                                             {
                                                §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(param3);
                                                   addr163:
                                                   while(true)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      if(_loc9_ && param3)
                                                      {
                                                         continue loop7;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      while(true)
                                                      {
                                                         addr174:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §,!2§[_loc5_] = param1;
                                                                  addr179:
                                                                  while(true)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               addr175:
                                                            }
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  addr111:
                                                                  while(true)
                                                                  {
                                                                     _loc5_++;
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     addr125:
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr151);
                                                                  }
                                                                  §§goto(addr121);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr199);
                                       }
                                       §§goto(addr173);
                                    }
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr91);
                     }
                     else
                     {
                        §§push(true);
                        if(!(_loc9_ && param1))
                        {
                           if(!(_loc9_ && param1))
                           {
                              _loc4_ = §§pop();
                              addr151:
                              while(true)
                              {
                                 if(_loc10_ || param1)
                                 {
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr179);
                                 §§goto(addr125);
                              }
                              addr123:
                              return;
                           }
                           §§goto(addr163);
                        }
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr197);
               }
               §§goto(addr91);
            }
            §§goto(addr111);
         }
         if(!_loc9_)
         {
            if(!_loc4_)
            {
               if(_loc10_ || param1)
               {
                  §,!2§.push(param1);
               }
            }
         }
      }
      
      public static function §,!6§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§^!b§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §,!2§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || _loc2_))
               {
                  addr73:
                  break;
               }
               §§push(param1);
               if(_loc6_)
               {
                  return §§pop();
               }
               if(§§pop() == _loc2_.id)
               {
                  if(_loc5_ || §!H§)
                  {
                     break;
                  }
               }
            }
            return "";
         }
         §§goto(addr73);
         §§push(_loc2_.avatarString);
      }
   }
}
