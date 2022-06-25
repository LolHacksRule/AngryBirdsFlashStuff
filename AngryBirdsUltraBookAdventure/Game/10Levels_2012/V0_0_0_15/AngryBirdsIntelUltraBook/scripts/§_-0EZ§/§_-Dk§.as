package §_-0EZ§
{
   public class §_-Dk§
   {
      
      private static var §_-fP§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §_-Dk§))
         {
            §_-fP§ = [];
         }
      }
      
      public function §_-Dk§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §_-86§(param1:§_-HV§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         var _loc5_:int = 0;
         loop0:
         for each(_loc6_ in §_-fP§)
         {
            if(_loc6_.id == param1.id)
            {
               if(_loc9_)
               {
                  §§push(param2);
                  if(!_loc10_)
                  {
                     if(§§pop())
                     {
                        if(_loc9_ || param3)
                        {
                           §§push(param1.avatarString);
                           if(_loc9_ || param2)
                           {
                              §§push(§§pop() == null);
                              if(_loc9_)
                              {
                                 addr188:
                                 §§push(!§§pop());
                                 if(_loc9_ || §_-Dk§)
                                 {
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    §§pop();
                                    loop4:
                                    while(true)
                                    {
                                       §§push(param3);
                                       if(!(_loc10_ && param2))
                                       {
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr150:
                                             while(true)
                                             {
                                                if(_loc10_ && param1)
                                                {
                                                   addr186:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr187:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop12;
                                                         }
                                                      }
                                                   }
                                                   addr186:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr159:
                                                      while(true)
                                                      {
                                                         §_-fP§[_loc5_] = param1;
                                                         addr163:
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ || param2))
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                      addr159:
                                                   }
                                                   while(true)
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         addr90:
                                                         while(true)
                                                         {
                                                            _loc5_++;
                                                            if(_loc9_)
                                                            {
                                                               addr103:
                                                               if(!(_loc10_ && §_-Dk§))
                                                               {
                                                                  addr110:
                                                                  if(true)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(!(_loc9_ || param1))
                                                                  {
                                                                     §§goto(addr159);
                                                                     §§goto(addr103);
                                                                  }
                                                                  addr132:
                                                               }
                                                               return;
                                                            }
                                                            if(_loc9_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§goto(addr163);
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr149:
                                       }
                                       §§goto(addr150);
                                    }
                                 }
                                 addr188:
                              }
                              §§push(§§pop());
                              if(_loc9_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       §§pop();
                                       if(!(_loc10_ && param2))
                                       {
                                          addr173:
                                          §§goto(addr186);
                                          §§push(param1.avatarString != "");
                                          addr88:
                                       }
                                       §§goto(addr110);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr159);
                     }
                     else
                     {
                        §§push(true);
                        if(_loc9_)
                        {
                           if(!_loc10_)
                           {
                              if(!(_loc10_ && param3))
                              {
                                 _loc4_ = §§pop();
                                 §§goto(addr132);
                              }
                              else
                              {
                                 §§goto(addr173);
                              }
                           }
                           §§goto(addr188);
                        }
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr188);
               }
               §§goto(addr88);
            }
            §§goto(addr90);
         }
         if(_loc9_ || param2)
         {
            if(!_loc4_)
            {
               if(!(_loc10_ && param2))
               {
                  addr210:
                  §_-fP§.push(param1);
               }
            }
            return;
         }
         §§goto(addr210);
      }
      
      public static function §_-03B§(param1:String) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-HV§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §_-fP§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!_loc5_)
               {
                  addr68:
                  break;
               }
               §§push(param1);
               if(_loc6_)
               {
                  return §§pop();
               }
               if(§§pop() == _loc2_.id)
               {
                  if(_loc5_ || param1)
                  {
                     break;
                  }
               }
            }
            return "";
         }
         §§goto(addr68);
         §§push(_loc2_.avatarString);
      }
   }
}
