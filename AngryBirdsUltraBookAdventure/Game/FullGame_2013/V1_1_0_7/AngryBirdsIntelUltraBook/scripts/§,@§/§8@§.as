package §,@§
{
   public class §8@§
   {
      
      private static var §3R§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §3R§ = [];
         }
      }
      
      public function §8@§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function § #§(param1:§`D§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         var _loc5_:int = 0;
         loop0:
         for each(_loc6_ in §3R§)
         {
            if(_loc6_.id == param1.id)
            {
               if(_loc10_)
               {
                  §§push(param2);
                  if(_loc10_ || param3)
                  {
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           §§push(param1.avatarString);
                           if(_loc10_)
                           {
                              §§push(§§pop() == null);
                              if(!_loc9_)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc9_ && param2))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc9_ && param3))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             §§pop();
                                             if(_loc10_)
                                             {
                                                addr159:
                                                §§push(param1.avatarString == "");
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   addr162:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr163:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            addr164:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr165:
                                                               while(true)
                                                               {
                                                                  §§push(param3);
                                                                  addr137:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr138:
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        addr140:
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr164:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §3R§[_loc5_] = param1;
                                                                  addr156:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr152:
                                                            }
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr96);
                                                               }
                                                            }
                                                            §§goto(addr140);
                                                         }
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                             }
                                             §§goto(addr152);
                                          }
                                          else
                                          {
                                             addr133:
                                             _loc4_ = §§pop();
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr163);
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr159);
                        }
                        §§goto(addr156);
                     }
                     else
                     {
                        §§push(true);
                        if(_loc10_ || §8@§)
                        {
                           if(!(_loc9_ && §8@§))
                           {
                              if(_loc10_)
                              {
                                 if(!_loc9_)
                                 {
                                    §§goto(addr133);
                                 }
                                 else
                                 {
                                    §§goto(addr162);
                                 }
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr164);
               }
               §§goto(addr165);
            }
            addr96:
            while(true)
            {
               _loc5_++;
               if(_loc10_)
               {
                  if(_loc9_)
                  {
                     addr134:
                     break;
                  }
                  if(!_loc9_)
                  {
                     if(_loc10_)
                     {
                        if(false)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr165);
                  }
               }
               else
               {
                  if(_loc10_)
                  {
                     continue loop6;
                  }
                  §§goto(addr156);
               }
               §§goto(addr156);
               continue loop6;
            }
            return;
         }
         if(!_loc9_)
         {
            if(!_loc4_)
            {
               if(_loc10_)
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
               if(!_loc5_)
               {
                  addr68:
                  break;
               }
               §§push(param1);
               if(_loc6_ && _loc3_)
               {
                  return §§pop();
               }
               if(§§pop() == _loc2_.id)
               {
                  if(_loc5_)
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
