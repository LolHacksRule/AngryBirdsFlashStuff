package §6!J§
{
   import §+8§.§0K§;
   
   public class §&!A§
   {
      
      public static const NONE:String = "none";
      
      public static const §^Z§:String = "bilinear";
      
      public static const §?k§:String = "trilinear";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            NONE = "none";
            while(true)
            {
               §^Z§ = "bilinear";
               loop1:
               while(_loc1_ || §&!A§)
               {
                  while(true)
                  {
                     §?k§ = "trilinear";
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §&!A§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         throw new §0K§();
      }
      
      public static function §-!Z§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop8:
                                       while(_loc3_)
                                       {
                                          §§push(§^Z§);
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             addr95:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr96:
                                                while(_loc3_ || §&!A§)
                                                {
                                                }
                                                continue loop2;
                                             }
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(_loc2_ && param1)
                                             {
                                                continue loop8;
                                             }
                                             §§push(§?k§);
                                             if(!_loc2_)
                                             {
                                                if(!(_loc3_ || param1))
                                                {
                                                   continue loop1;
                                                }
                                                §§push(§§pop() == §§pop());
                                                if(!_loc2_)
                                                {
                                                   addr43:
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr53);
                                                      }
                                                      §§goto(addr95);
                                                      §§goto(addr96);
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      if(_loc2_ && param1)
                                                      {
                                                         break;
                                                      }
                                                      continue loop14;
                                                      §§goto(addr43);
                                                   }
                                                   continue loop7;
                                                   addr133:
                                                }
                                                §§goto(addr53);
                                             }
                                             else
                                             {
                                                §§goto(addr94);
                                             }
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!(_loc2_ && §&!A§))
                                 {
                                    if(!(_loc3_ || §&!A§))
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc3_)
                                 {
                                    if(!§§pop())
                                    {
                                       §§goto(addr133);
                                    }
                                    addr53:
                                    §§push(Boolean(§§pop()));
                                 }
                                 continue loop4;
                                 if(!(_loc2_ && param1))
                                 {
                                    if(!(_loc3_ || param1))
                                    {
                                       continue loop6;
                                    }
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue loop3;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr96);
                                 }
                                 return §§pop();
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr141);
      }
   }
}
