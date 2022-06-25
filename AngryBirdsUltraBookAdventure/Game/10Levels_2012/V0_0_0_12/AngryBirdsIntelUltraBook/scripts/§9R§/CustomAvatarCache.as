package §9R§
{
   public class CustomAvatarCache
   {
      
      private static var cache:Array;
      
      {
         var cache:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(cache && _loc2_))
         {
            do
            {
               cache = [];
            }
            while(!(_loc2_ || cache));
            
         }
      }
      
      public function CustomAvatarCache()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               super();
               loop1:
               while(_loc2_)
               {
                  while(!(_loc2_ || _loc2_))
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      public static function §=!e§(avatarObject:§`y§, overwrite:Boolean = true, clearAvatar:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc10_)
         {
         }
         var av:Object = null;
         if(!_loc10_)
         {
            while(true)
            {
               addr56:
               loop1:
               while(true)
               {
                  addr53:
                  while(true)
                  {
                     addr48:
                     while(_loc9_)
                     {
                     }
                     continue loop1;
                  }
               }
            }
            addr58:
         }
         while(true)
         {
            loop5:
            while(true)
            {
               if(!_loc10_)
               {
                  loop6:
                  do
                  {
                     while(true)
                     {
                        if(!_loc10_)
                        {
                           if(!_loc10_)
                           {
                              if(!_loc10_)
                              {
                                 if(!_loc10_)
                                 {
                                    continue loop6;
                                 }
                                 continue;
                              }
                              §§goto(addr53);
                           }
                           break;
                        }
                        continue loop5;
                     }
                     §§goto(addr48);
                  }
                  while(false);
                  
                  §§push(false);
                  if(_loc9_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  var found:* = §§pop();
                  if(!_loc9_)
                  {
                  }
                  §§push(0);
                  if(!_loc10_)
                  {
                     §§push(int(§§pop()));
                  }
                  var i:* = §§pop();
                  if(_loc9_ || overwrite)
                  {
                  }
                  var _loc7_:int = 0;
                  var _loc8_:* = cache;
                  addr319:
                  for each(av in _loc8_)
                  {
                     if(_loc9_)
                     {
                        addr318:
                        if(av.id == avatarObject.id)
                        {
                           addr315:
                           addr316:
                           if(overwrite)
                           {
                              addr305:
                              if(!_loc10_)
                              {
                                 addr299:
                                 §§push(Boolean(avatarObject.avatarString != null));
                                 §§push(Boolean(avatarObject.avatarString != null));
                                 if(!_loc10_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 addr308:
                                 if(§§pop())
                                 {
                                    addr300:
                                    §§pop();
                                    addr301:
                                    §§push(avatarObject.avatarString);
                                    if(!_loc10_)
                                    {
                                       §§push(§§pop() == "");
                                       if(_loc9_)
                                       {
                                          addr245:
                                          §§push(!§§pop());
                                          if(_loc9_)
                                          {
                                             if(!(_loc10_ && CustomAvatarCache))
                                             {
                                                if(_loc9_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc9_ || overwrite)
                                                   {
                                                      addr264:
                                                      if(!_loc10_)
                                                      {
                                                         addr266:
                                                         §§push(§§pop());
                                                         if(!_loc10_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(!(_loc10_ && CustomAvatarCache))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr279:
                                                               §§pop();
                                                               addr280:
                                                               if(_loc9_ || CustomAvatarCache)
                                                               {
                                                                  addr220:
                                                                  if(clearAvatar)
                                                                  {
                                                                     if(_loc9_ || clearAvatar)
                                                                     {
                                                                     }
                                                                     addr230:
                                                                     if(!_loc10_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           cache[i] = avatarObject;
                                                                           addr103:
                                                                           §§push(i);
                                                                           if(_loc9_ || overwrite)
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc9_ || avatarObject)
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                           }
                                                                           i = §§pop();
                                                                           if(_loc9_)
                                                                           {
                                                                              if(_loc9_ || CustomAvatarCache)
                                                                              {
                                                                                 if(!(_loc10_ && overwrite))
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr103);
                                                                                       }
                                                                                       §§goto(addr319);
                                                                                    }
                                                                                    §§goto(addr103);
                                                                                 }
                                                                                 §§goto(addr280);
                                                                              }
                                                                              addr148:
                                                                              if(!(_loc10_ && clearAvatar))
                                                                              {
                                                                                 if(!(_loc9_ || CustomAvatarCache))
                                                                                 {
                                                                                    §§goto(addr315);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr230);
                                                                           }
                                                                           addr216:
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§goto(addr103);
                                                                              }
                                                                              §§goto(addr216);
                                                                           }
                                                                           addr202:
                                                                           if(_loc9_ || clearAvatar)
                                                                           {
                                                                              §§goto(addr148);
                                                                           }
                                                                           §§goto(addr301);
                                                                           addr163:
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                     §§goto(addr305);
                                                                  }
                                                                  §§goto(addr163);
                                                               }
                                                               §§goto(addr308);
                                                            }
                                                            §§goto(addr220);
                                                         }
                                                         §§goto(addr299);
                                                      }
                                                      §§goto(addr300);
                                                   }
                                                   §§goto(addr279);
                                                }
                                                §§goto(addr315);
                                             }
                                          }
                                          §§goto(addr299);
                                       }
                                       §§goto(addr264);
                                    }
                                    §§goto(addr299);
                                 }
                                 §§goto(addr266);
                              }
                              §§goto(addr318);
                           }
                           §§push(true);
                           if(_loc9_ || CustomAvatarCache)
                           {
                              if(!_loc10_)
                              {
                                 if(_loc9_)
                                 {
                                    addr190:
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc10_ && avatarObject))
                                    {
                                       if(_loc9_)
                                       {
                                          if(!_loc10_)
                                          {
                                             found = §§pop();
                                             §§goto(addr202);
                                          }
                                          §§goto(addr245);
                                       }
                                       §§goto(addr279);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr299);
                              }
                              §§goto(addr220);
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr216);
                  }
                  if(_loc9_)
                  {
                     §§push(found);
                     if(_loc9_ || overwrite)
                     {
                        §§push(!§§pop());
                     }
                     addr382:
                     if(§§pop())
                     {
                        if(_loc9_ || CustomAvatarCache)
                        {
                           addr379:
                        }
                        cache.push(avatarObject);
                        addr380:
                        if(!_loc10_)
                        {
                           if(!(_loc10_ && clearAvatar))
                           {
                              if(_loc10_)
                              {
                                 §§goto(addr380);
                              }
                              §§goto(addr326);
                           }
                           §§goto(addr380);
                        }
                        §§goto(addr382);
                     }
                     addr326:
                     return;
                  }
                  §§goto(addr379);
               }
               else
               {
                  §§goto(addr58);
               }
            }
         }
      }
      
      public static function §#!@§(id:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && av)
         {
         }
         var av:§`y§ = null;
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  addr40:
                  while(!_loc5_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(!_loc5_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr38);
            }
            §§goto(addr40);
         }
         loop4:
         for each(av in cache)
         {
            if(_loc6_ || CustomAvatarCache)
            {
            }
            loop5:
            while(true)
            {
               for(§§push(id); §§pop() == av.id; )
               {
                  §§push(av.avatarString);
                  continue loop5;
                  if(_loc6_)
                  {
                     return §§pop();
                  }
               }
               continue loop4;
            }
         }
         §§push("");
         if(_loc6_ || id)
         {
         }
         return §§pop();
      }
   }
}
