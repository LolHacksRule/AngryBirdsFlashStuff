package §?]§
{
   import §[z§.§@F§;
   
   public class §7l§
   {
      
      public static const NONE:String = "none";
      
      public static const §6!%§:String = "bilinear";
      
      public static const §`!,§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            NONE = "none";
            while(true)
            {
               §6!%§ = "bilinear";
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  while(true)
                  {
                     §`!,§ = "trilinear";
                     if(!(_loc1_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §7l§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
         throw new §@F§();
      }
      
      public static function §7"#§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(NONE);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr108:
                              loop7:
                              while(true)
                              {
                                 §§push(param1);
                                 loop8:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§6!%§);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr86:
                                          if(!_loc2_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc2_ && param1))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(_loc2_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(param1);
                                                         if(!_loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§push(§`!,§);
                                                         if(!_loc3_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(_loc2_ && _loc3_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(§§pop() == §§pop());
                                                         if(!(_loc3_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            continue loop4;
                                                         }
                                                      }
                                                      §§goto(addr86);
                                                      addr98:
                                                   }
                                                   return §§pop();
                                                }
                                                break;
                                             }
                                             continue loop3;
                                             addr88:
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr98);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr88);
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
   }
}
