package §_-z4§
{
   import §_-JM§.§_-03y§;
   
   public class §_-IJ§
   {
      
      public static const NONE:String = "none";
      
      public static const §_-Th§:String = "bilinear";
      
      public static const §_-nO§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            NONE = "none";
            while(true)
            {
               §_-Th§ = "bilinear";
               while(_loc2_ || §_-IJ§)
               {
                  §_-nO§ = "trilinear";
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      public function §_-IJ§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         throw new §_-03y§();
      }
      
      public static function §_-Yq§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
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
                              loop5:
                              while(true)
                              {
                                 §§push(param1);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§_-Th§);
                                    addr76:
                                    addr85:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc3_)
                                       {
                                          continue loop6;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§_-nO§);
                                       if(!_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc3_ && param1)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             else
                                             {
                                                addr78:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop5;
                                                      addr82:
                                                   }
                                                }
                                                continue loop3;
                                                addr78:
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr82);
                                       }
                                       else
                                       {
                                          §§goto(addr76);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr78);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
   }
}
