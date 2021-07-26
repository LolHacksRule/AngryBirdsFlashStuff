package §<w§
{
   public class §9"?§
   {
      
      private static var §<!u§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<!u§ = [];
         }
      }
      
      public function §9"?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §"!V§(param1:§`h§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         var _loc5_:int = 0;
         loop0:
         for each(_loc6_ in §<!u§)
         {
            if(_loc6_.id == param1.id)
            {
               if(_loc10_ || param1)
               {
                  §§push(param2);
                  if(_loc10_)
                  {
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§push(param1.avatarString);
                           if(!(_loc9_ && param1))
                           {
                              §§push(§§pop() == null);
                              if(!(_loc9_ && param1))
                              {
                                 addr72:
                                 §§push(!§§pop());
                                 if(!(_loc9_ && §9"?§))
                                 {
                                    §§push(§§pop());
                                    if(!_loc9_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc10_ || param1)
                                          {
                                             §§pop();
                                             if(_loc10_)
                                             {
                                                addr160:
                                                §§push(param1.avatarString == "");
                                                if(!_loc9_)
                                                {
                                                   addr174:
                                                   §§push(!§§pop());
                                                   if(_loc10_ || param1)
                                                   {
                                                      addr182:
                                                      if(!§§pop())
                                                      {
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr185:
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(param3);
                                                               addr144:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  addr145:
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  continue loop3;
                                                               }
                                                            }
                                                         }
                                                         addr184:
                                                      }
                                                      loop4:
                                                      while(§§pop())
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §<!u§[_loc5_] = param1;
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr185);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            break loop4;
                                                            addr109:
                                                            if(!(_loc9_ && param3))
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr118);
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr106);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr182);
                                                addr104:
                                             }
                                             §§goto(addr127);
                                          }
                                          §§goto(addr174);
                                       }
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr141);
                     }
                     else
                     {
                        §§push(true);
                        if(!_loc9_)
                        {
                           if(!(_loc9_ && §9"?§))
                           {
                              _loc4_ = §§pop();
                           }
                           else
                           {
                              §§goto(addr144);
                           }
                           §§goto(addr141);
                        }
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr72);
               }
               §§goto(addr104);
            }
            addr106:
            while(true)
            {
               _loc5_++;
               if(_loc9_)
               {
                  if(_loc9_ && param3)
                  {
                     break;
                  }
                  addr141:
                  continue loop6;
               }
               §§goto(addr109);
            }
            addr118:
            return;
         }
         if(!_loc9_)
         {
            if(!_loc4_)
            {
               if(!_loc9_)
               {
                  §<!u§.push(param1);
               }
            }
         }
      }
      
      public static function §%!h§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§`h§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §<!u§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && param1)
               {
                  addr69:
                  break;
               }
               §§push(param1);
               if(!_loc6_)
               {
                  return §§pop();
               }
               if(§§pop() == _loc2_.id)
               {
                  if(_loc6_)
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
