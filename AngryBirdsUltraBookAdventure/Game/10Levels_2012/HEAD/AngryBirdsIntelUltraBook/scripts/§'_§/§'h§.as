package §'_§
{
   import §@%§.§"m§;
   
   public class §'h§
   {
      
      public static const NONE:String = "none";
      
      public static const §?!4§:String = "bilinear";
      
      public static const §^`§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            NONE = "none";
         }
         while(true)
         {
            §?!4§ = "bilinear";
            while(_loc2_)
            {
               §^`§ = "trilinear";
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §'h§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
         throw new §"m§();
      }
      
      public static function § '§(param1:String) : Boolean
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
                                          §§push(§?!4§);
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
                                                         if(_loc2_ || §'h§)
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
                                                   if(!(_loc2_ || §'h§))
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(§^`§);
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
