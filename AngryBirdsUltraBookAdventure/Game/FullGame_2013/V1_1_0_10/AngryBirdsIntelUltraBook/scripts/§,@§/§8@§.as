package §,@§
{
   public class §8@§
   {
      
      private static var §3R§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §8@§))
         {
            §3R§ = [];
         }
      }
      
      public function §8@§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function § #§(param1:§`D§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         var _loc5_:int = 0;
         loop0:
         for each(_loc6_ in §3R§)
         {
            if(_loc6_.id == param1.id)
            {
               if(!(_loc10_ && param2))
               {
                  §§push(param2);
                  if(!_loc10_)
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           addr53:
                           §§push(param1.avatarString);
                           if(!(_loc10_ && param2))
                           {
                              §§push(§§pop() == null);
                              if(!_loc10_)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc10_ && param2))
                                 {
                                    §§push(§§pop());
                                    if(_loc9_ || param1)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc10_)
                                          {
                                             §§pop();
                                             §§goto(addr132);
                                          }
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             addr176:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                             }
                                          }
                                          addr175:
                                       }
                                       §§goto(addr176);
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§pop();
                                             addr179:
                                             loop11:
                                             while(true)
                                             {
                                                §§push(param3);
                                                addr135:
                                                while(true)
                                                {
                                                   if(_loc10_ && param1)
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(!_loc10_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      while(true)
                                                      {
                                                         if(_loc10_ && param3)
                                                         {
                                                            §§goto(addr176);
                                                         }
                                                      }
                                                      addr145:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr175);
                                                   }
                                                   §§goto(addr176);
                                                   continue loop11;
                                                }
                                             }
                                          }
                                          addr178:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(_loc9_)
                                             {
                                                §3R§[_loc5_] = param1;
                                                while(true)
                                                {
                                                }
                                             }
                                             §§goto(addr179);
                                             addr154:
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                addr105:
                                                while(true)
                                                {
                                                   _loc5_++;
                                                   if(!(_loc10_ && param3))
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(false)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop4;
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr132);
                                                   }
                                                }
                                                §§goto(addr132);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr176);
                              }
                              else
                              {
                                 addr131:
                                 _loc4_ = §§pop();
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr123);
                     }
                     else
                     {
                        §§push(true);
                        if(!_loc10_)
                        {
                           if(_loc9_)
                           {
                              §§goto(addr131);
                           }
                           else
                           {
                              §§goto(addr135);
                           }
                           return;
                        }
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr178);
               }
               §§goto(addr53);
            }
            §§goto(addr105);
         }
         if(!(_loc10_ && §8@§))
         {
            if(!_loc4_)
            {
               if(_loc9_ || param3)
               {
                  §3R§.push(param1);
               }
            }
         }
      }
      
      public static function §<!u§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`D§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §3R§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc6_ && _loc3_))
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     break;
                  }
                  if(§§pop() == _loc2_.id)
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(_loc2_.avatarString);
                        break;
                     }
                  }
               }
            }
            return "";
         }
         return §§pop();
      }
   }
}
