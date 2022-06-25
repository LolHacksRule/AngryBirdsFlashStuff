package §6!Y§
{
   public class §!o§
   {
      
      private static var §#C§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#C§ = [];
         }
      }
      
      public function §!o§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §[b§(param1:§8;§, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Object = null;
         var _loc4_:* = false;
         var _loc5_:int = 0;
         loop0:
         for each(_loc6_ in §#C§)
         {
            if(_loc6_.id == param1.id)
            {
               if(_loc9_)
               {
                  §§push(param2);
                  if(_loc9_ || param2)
                  {
                     if(§§pop())
                     {
                        if(_loc9_ || param3)
                        {
                           addr58:
                           §§push(param1.avatarString);
                           if(!(_loc10_ && §!o§))
                           {
                              §§push(§§pop() == null);
                              if(!(_loc10_ && param2))
                              {
                                 §§push(!§§pop());
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop());
                                    if(_loc9_ || param2)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             addr90:
                                             §§pop();
                                             if(_loc9_)
                                             {
                                                addr176:
                                                §§push(param1.avatarString == "");
                                                if(!(_loc10_ && param1))
                                                {
                                                   addr195:
                                                   §§push(!§§pop());
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr197:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr199:
                                                               while(true)
                                                               {
                                                                  §§push(param3);
                                                                  if(_loc9_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        addr151:
                                                                        while(true)
                                                                        {
                                                                           if(_loc10_ && param1)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(!(_loc9_ || param3))
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr150:
                                                                  }
                                                                  §§goto(addr151);
                                                               }
                                                            }
                                                            addr198:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §#C§[_loc5_] = param1;
                                                                  addr171:
                                                                  while(!_loc10_)
                                                                  {
                                                                  }
                                                                  §§goto(addr199);
                                                               }
                                                               addr167:
                                                            }
                                                            while(true)
                                                            {
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  addr95:
                                                                  while(true)
                                                                  {
                                                                     _loc5_++;
                                                                     if(_loc9_ || param2)
                                                                     {
                                                                        addr113:
                                                                        if(true)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     else if(_loc9_ || param1)
                                                                     {
                                                                        if(_loc9_ || param3)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr167);
                                                                        }
                                                                        §§goto(addr171);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr145:
                                                                     }
                                                                     return;
                                                                     continue loop5;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr196:
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr113);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr196);
                                    }
                                    §§goto(addr197);
                                 }
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr113);
                     }
                     else
                     {
                        §§push(true);
                        if(!(_loc10_ && param1))
                        {
                           _loc4_ = §§pop();
                        }
                        else
                        {
                           §§goto(addr151);
                        }
                        §§goto(addr145);
                     }
                  }
                  §§goto(addr195);
               }
               §§goto(addr58);
            }
            §§goto(addr95);
         }
         if(_loc9_ || param3)
         {
            if(!_loc4_)
            {
               if(_loc9_ || param2)
               {
                  addr220:
                  §#C§.push(param1);
               }
            }
            return;
         }
         §§goto(addr220);
      }
      
      public static function §#7§(param1:String) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§8;§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = §#C§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_)
               {
                  §§push(param1);
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(§§pop() == _loc2_.id)
                  {
                     if(_loc6_)
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
