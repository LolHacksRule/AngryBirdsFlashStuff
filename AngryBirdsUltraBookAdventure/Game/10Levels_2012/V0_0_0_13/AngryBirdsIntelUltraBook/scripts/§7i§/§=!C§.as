package §7i§
{
   import §"v§.§2!;§;
   
   public class §=!C§
   {
      
      public static const NONE:String = "none";
      
      public static const §1l§:String = "bilinear";
      
      public static const §!!N§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            NONE = "none";
         }
         while(true)
         {
            §1l§ = "bilinear";
            while(_loc2_)
            {
               §!!N§ = "trilinear";
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §=!C§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
         throw new §2!;§();
      }
      
      public static function §,;§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
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
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    addr125:
                                    loop10:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§1l§);
                                          loop7:
                                          for(; !_loc3_; continue loop8)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc3_ && param1))
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc2_)
                                                {
                                                   addr78:
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      do
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc2_ || §=!C§)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                      }
                                                      while(!§§pop());
                                                      
                                                      addr58:
                                                      return §§pop();
                                                      addr85:
                                                   }
                                                   continue loop9;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(_loc3_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§push(param1);
                                                   if(!(_loc2_ || §=!C§))
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(§!!N§);
                                                   if(!_loc2_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr58);
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr78);
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 addr124:
                              }
                              §§goto(addr85);
                           }
                        }
                     }
                  }
                  §§goto(addr124);
               }
            }
         }
         §§goto(addr125);
      }
   }
}
