package §0!%§
{
   import §]!R§.§'3§;
   
   public class §%§
   {
      
      public static const NONE:String = "none";
      
      public static const §<!U§:String = "bilinear";
      
      public static const §]h§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            NONE = "none";
            while(true)
            {
               §<!U§ = "bilinear";
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            §]h§ = "trilinear";
            if(!(_loc1_ && _loc1_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §%§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         throw new §'3§();
      }
      
      public static function §,!#§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
                           while(true)
                           {
                              §§pop();
                              addr102:
                              while(true)
                              {
                                 §§push(param1);
                                 addr68:
                                 while(true)
                                 {
                                    §§push(§<!U§);
                                    addr69:
                                    while(true)
                                    {
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr101:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    if(_loc2_)
                                    {
                                       §§push(param1);
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(§]h§);
                                          if(_loc2_ || §%§)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc3_)
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop6;
                                             }
                                             if(_loc2_ || param1)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr62);
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr101);
                                          }
                                          §§goto(addr69);
                                       }
                                       §§goto(addr68);
                                    }
                                    break;
                                 }
                                 §§goto(addr102);
                              }
                              addr62:
                              return §§pop();
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
   }
}
