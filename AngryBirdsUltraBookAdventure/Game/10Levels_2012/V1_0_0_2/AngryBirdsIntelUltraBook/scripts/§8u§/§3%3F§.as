package §8u§
{
   public class §3?§
   {
      
      private static var §1!8§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §1!8§ = [];
         }
      }
      
      public function §3?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §!`§(param1:§2!A§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         var _loc5_:int = 0;
         loop0:
         for each(_loc6_ in §1!8§)
         {
            if(_loc6_.id == param1.id)
            {
               if(_loc9_ || param3)
               {
                  §§push(param2);
                  if(_loc9_ || param3)
                  {
                     if(§§pop())
                     {
                        if(!_loc10_)
                        {
                           §§push(param1.avatarString);
                           if(!_loc10_)
                           {
                              §§push(§§pop() == null);
                              if(!(_loc10_ && param2))
                              {
                                 §§push(!§§pop());
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc10_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc10_ && §3?§))
                                          {
                                             §§pop();
                                             if(!_loc10_)
                                             {
                                                addr198:
                                                §§push(param1.avatarString != "");
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   addr202:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr190:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §1!8§[_loc5_] = param1;
                                                                  addr195:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr191:
                                                            }
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr90);
                                                               }
                                                            }
                                                            addr179:
                                                         }
                                                         addr190:
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                }
                                                addr201:
                                             }
                                             §§goto(addr166);
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr202);
                                 }
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr140);
                     }
                     else
                     {
                        §§push(true);
                        if(_loc9_ || param3)
                        {
                           if(_loc9_ || param2)
                           {
                              if(!(_loc10_ && param2))
                              {
                                 _loc4_ = §§pop();
                              }
                              else
                              {
                                 §§goto(addr198);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr169);
                        }
                     }
                     §§goto(addr170);
                  }
                  §§goto(addr203);
               }
               §§goto(addr204);
            }
            addr90:
            while(true)
            {
               _loc5_++;
               if(!(_loc10_ && param3))
               {
                  if(!(_loc9_ || param3))
                  {
                     addr166:
                     break;
                  }
                  if(_loc9_ || param3)
                  {
                     if(false)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr191);
               }
               else if(!(_loc10_ && §3?§))
               {
                  if(_loc9_ || §3?§)
                  {
                     continue loop6;
                  }
                  addr204:
                  loop12:
                  while(true)
                  {
                     §§push(param3);
                     addr169:
                     loop7:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr170:
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              continue loop1;
                           }
                           addr203:
                           addr203:
                           while(true)
                           {
                              §§pop();
                              continue loop12;
                           }
                           continue loop7;
                        }
                     }
                  }
               }
               §§goto(addr195);
            }
            return;
         }
         if(!_loc10_)
         {
            if(!_loc4_)
            {
               if(_loc9_)
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
               if(!_loc6_)
               {
                  addr69:
                  break;
               }
               §§push(param1);
               if(!(_loc6_ || _loc3_))
               {
                  return §§pop();
               }
               if(§§pop() == _loc2_.id)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return "";
         }
         §§goto(addr69);
         §§push(_loc2_.avatarString);
      }
   }
}
