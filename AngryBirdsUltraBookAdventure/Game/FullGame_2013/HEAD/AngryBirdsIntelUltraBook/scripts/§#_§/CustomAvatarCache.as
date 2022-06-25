package §#_§
{
   public class CustomAvatarCache
   {
      
      private static var cache:Array;
      
      {
         var cache:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(cache && cache))
         {
            do
            {
               cache = [];
            }
            while(cache && cache);
            
         }
      }
      
      public function CustomAvatarCache()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            while(true)
            {
               super();
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            if(_loc1_ || _loc1_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public static function §[h§(avatarObject:§3a§, overwrite:Boolean = true, clearAvatar:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc9_)
         {
         }
         var av:Object = null;
         if(!_loc10_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     for(; !_loc10_; if(!(_loc9_ || CustomAvatarCache))
                     {
                        continue;
                     })
                     {
                        if(!_loc9_)
                        {
                           continue loop0;
                        }
                        loop4:
                        while(true)
                        {
                           addr44:
                           while(true)
                           {
                              while(_loc9_)
                              {
                                 if(!_loc10_)
                                 {
                                    if(!(_loc10_ && overwrite))
                                    {
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr44);
         }
         §§push(false);
         if(!_loc10_)
         {
            §§push(Boolean(§§pop()));
         }
         var found:* = §§pop();
         if(!_loc9_)
         {
         }
         §§push(0);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         if(_loc10_)
         {
         }
         loop8:
         for each(av in cache)
         {
            if(_loc9_)
            {
               loop9:
               while(true)
               {
                  if(av.id == avatarObject.id)
                  {
                     loop10:
                     while(true)
                     {
                        addr351:
                        loop35:
                        while(true)
                        {
                           §§push(overwrite);
                           loop28:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(true);
                                 if(_loc9_ || overwrite)
                                 {
                                    if(_loc9_)
                                    {
                                       if(_loc9_ || clearAvatar)
                                       {
                                          addr187:
                                          §§push(Boolean(§§pop()));
                                          if(_loc9_ || CustomAvatarCache)
                                          {
                                             break;
                                          }
                                          loop29:
                                          while(true)
                                          {
                                             if(_loc9_ || clearAvatar)
                                             {
                                                loop26:
                                                while(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc9_ || clearAvatar)
                                                      {
                                                         loop32:
                                                         while(true)
                                                         {
                                                            cache[i] = avatarObject;
                                                            addr212:
                                                            while(true)
                                                            {
                                                               if(!(_loc10_ && CustomAvatarCache))
                                                               {
                                                                  break loop32;
                                                               }
                                                               continue loop32;
                                                            }
                                                         }
                                                         break loop26;
                                                      }
                                                      loop24:
                                                      while(true)
                                                      {
                                                         §§push(clearAvatar);
                                                         if(_loc9_ || CustomAvatarCache)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  addr233:
                                                                  if(!(_loc10_ && overwrite))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     continue loop29;
                                                                  }
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr319:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        addr320:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr322:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       break loop27;
                                                                                    }
                                                                                    addr324:
                                                                                    §§push(avatarObject.avatarString);
                                                                                    if(_loc9_ || overwrite)
                                                                                    {
                                                                                       addr269:
                                                                                       §§push(§§pop() == "");
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          if(!(_loc10_ && overwrite))
                                                                                          {
                                                                                             if(!(_loc9_ || clearAvatar))
                                                                                             {
                                                                                                continue loop28;
                                                                                             }
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          break;
                                                                                          §§goto(addr269);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          continue loop24;
                                                                                       }
                                                                                       addr271:
                                                                                       addr307:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() == null);
                                                                                          addr314:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                continue loop18;
                                                                                             }
                                                                                             continue loop27;
                                                                                          }
                                                                                          §§goto(addr324);
                                                                                       }
                                                                                       addr312:
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop9;
                                                                              addr321:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              break loop24;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                            break;
                                                         }
                                                         continue loop29;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc9_ || CustomAvatarCache)
                                                            {
                                                               addr299:
                                                               §§push(Boolean(§§pop()));
                                                               if(!(_loc10_ && overwrite))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop26;
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               §§goto(addr319);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr299);
                                                      }
                                                      §§goto(addr320);
                                                   }
                                                }
                                                addr165:
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(i);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(!_loc10_)
                                                      {
                                                         addr129:
                                                         §§push(int(§§pop()));
                                                      }
                                                      i = §§pop();
                                                      loop12:
                                                      while(_loc9_ || clearAvatar)
                                                      {
                                                         if(_loc10_ && avatarObject)
                                                         {
                                                            while(true)
                                                            {
                                                               break loop12;
                                                            }
                                                            return;
                                                         }
                                                         addr205:
                                                         addr164:
                                                         if(!(_loc9_ || CustomAvatarCache))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc10_)
                                                         {
                                                            if(!(_loc10_ && overwrite))
                                                            {
                                                               if(true)
                                                               {
                                                                  break loop11;
                                                               }
                                                               continue loop11;
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                         else
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr322);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            if(!(_loc10_ && overwrite))
                                                            {
                                                               §§goto(addr164);
                                                            }
                                                            else
                                                            {
                                                               addr328:
                                                               while(true)
                                                               {
                                                               }
                                                               addr328:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc9_ || overwrite)
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop35;
                                                            §§goto(addr328);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr129);
                                                }
                                                continue loop8;
                                                addr122:
                                             }
                                             §§goto(addr269);
                                          }
                                       }
                                       §§goto(addr314);
                                    }
                                    §§goto(addr321);
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr328);
                           }
                           found = §§pop();
                           §§goto(addr205);
                        }
                     }
                  }
                  §§goto(addr122);
               }
            }
            §§goto(addr351);
         }
         if(_loc9_)
         {
            loop36:
            do
            {
               §§push(found);
               if(_loc9_ || avatarObject)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               while(true)
               {
                  addr415:
                  while(true)
                  {
                     cache.push(avatarObject);
                  }
                  addr376:
                  if(_loc9_)
                  {
                     continue loop36;
                  }
               }
            }
            while(_loc10_ && avatarObject);
            
            return;
         }
         while(true)
         {
            if(_loc10_ && overwrite)
            {
               continue;
            }
            if(!_loc10_)
            {
               §§goto(addr376);
            }
            §§goto(addr415);
         }
      }
      
      public static function §9!B§(id:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && id)
         {
         }
         var av:§3a§ = null;
         if(_loc5_)
         {
         }
         while(true)
         {
            while(true)
            {
               while(!_loc6_)
               {
               }
               if(_loc6_)
               {
                  if(true)
                  {
                     loop3:
                     for each(av in cache)
                     {
                        if(!(_loc5_ && CustomAvatarCache))
                        {
                           loop4:
                           while(true)
                           {
                              §§push(id);
                              addr105:
                              while(§§pop() == av.id)
                              {
                                 §§push(av.avatarString);
                                 continue loop4;
                                 if(!_loc5_)
                                 {
                                    §§goto(addr81);
                                 }
                              }
                              continue loop3;
                           }
                           addr118:
                        }
                        while(true)
                        {
                           if(_loc6_ || av)
                           {
                              §§goto(addr116);
                           }
                           else
                           {
                              §§goto(addr118);
                           }
                        }
                        addr81:
                        return §§pop();
                     }
                     §§push("");
                     if(!_loc6_)
                     {
                     }
                  }
                  continue;
                  return §§pop();
               }
               break;
            }
         }
      }
   }
}
