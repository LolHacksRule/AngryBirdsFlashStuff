package §&v§
{
   import §;8§.§["T§;
   
   public class § +§
   {
      
      public static const NONE:String = "none";
      
      public static const §1#B§:String = "bilinear";
      
      public static const §5!^§:String = "trilinear";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            NONE = "none";
            while(true)
            {
               §1#B§ = "bilinear";
               while(_loc1_ || § +§)
               {
                  §5!^§ = "trilinear";
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      public function § +§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
         throw new §["T§();
      }
      
      public static function §%"_§(param1:String) : Boolean
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
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 return §§pop();
                              }
                              loop6:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    §§pop();
                                    if(_loc2_)
                                    {
                                       §§push(param1);
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§5!^§);
                                       if(!_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc2_ || _loc2_)
                                             {
                                                break loop6;
                                             }
                                             continue loop6;
                                          }
                                          addr55:
                                       }
                                    }
                                    else
                                    {
                                       addr97:
                                       while(true)
                                       {
                                          §§push(param1);
                                          continue loop0;
                                       }
                                       addr97:
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr97);
                                    }
                                    addr96:
                                 }
                                 §§goto(addr97);
                              }
                           }
                           continue;
                        }
                        §§goto(addr96);
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
   }
}
