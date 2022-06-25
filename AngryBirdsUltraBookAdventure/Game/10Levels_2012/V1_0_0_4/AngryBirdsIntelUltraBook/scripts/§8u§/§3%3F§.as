package §8u§
{
   public class §3?§
   {
      
      private static var §1!8§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1!8§ = [];
         }
      }
      
      public function §3?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §!`§(param1:§2!A§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         var _loc5_:int = 0;
         loop0:
         for each(_loc6_ in §1!8§)
         {
            if(_loc6_.id == param1.id)
            {
               if(!_loc9_)
               {
                  §§push(param2);
                  if(_loc10_ || param1)
                  {
                     if(§§pop())
                     {
                        if(!(_loc9_ && param2))
                        {
                           §§push(param1.avatarString);
                           if(!_loc9_)
                           {
                              §§push(§§pop() == null);
                              if(_loc10_ || param3)
                              {
                                 §§push(!§§pop());
                                 if(_loc10_)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc9_ && param1))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             §§pop();
                                             if(!(_loc9_ && param3))
                                             {
                                                addr165:
                                                §§push(param1.avatarString == "");
                                                if(!(_loc9_ && §3?§))
                                                {
                                                   addr194:
                                                   §§push(!§§pop());
                                                   if(_loc10_ || param2)
                                                   {
                                                   }
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(param3);
                                                         addr153:
                                                         while(true)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr156:
                                                               while(true)
                                                               {
                                                                  addr157:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §1!8§[_loc5_] = param1;
                                                                           addr162:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr158:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        loop3:
                                                                        while(true)
                                                                        {
                                                                           addr106:
                                                                           while(true)
                                                                           {
                                                                              _loc5_++;
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 addr134:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc9_ && §3?§))
                                                                                    {
                                                                                       if(_loc10_ || §3?§)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr150:
                                                                                             break;
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§goto(addr158);
                                                                                    }
                                                                                    §§goto(addr162);
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr194:
                                                }
                                                §§goto(addr194);
                                             }
                                             §§goto(addr115);
                                          }
                                       }
                                       §§push(§§pop());
                                    }
                                    if(!§§pop())
                                    {
                                       §§goto(addr194);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr115);
                     }
                     else
                     {
                        §§push(true);
                        if(!(_loc9_ && param3))
                        {
                           if(_loc10_ || param1)
                           {
                              _loc4_ = §§pop();
                              §§goto(addr134);
                           }
                           §§goto(addr153);
                        }
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr194);
               }
               §§goto(addr150);
            }
            §§goto(addr106);
         }
         if(!(_loc9_ && param1))
         {
            if(!_loc4_)
            {
               if(_loc10_ || §3?§)
               {
                  §1!8§.push(param1);
               }
            }
         }
      }
      
      public static function §"!r§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§2!A§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §1!8§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && _loc2_)
               {
                  addr74:
                  break;
               }
               §§push(param1);
               if(_loc5_)
               {
                  return §§pop();
               }
               if(§§pop() == _loc2_.id)
               {
                  if(_loc6_ || _loc2_)
                  {
                     break;
                  }
               }
            }
            return "";
         }
         §§goto(addr74);
         §§push(_loc2_.avatarString);
      }
   }
}
