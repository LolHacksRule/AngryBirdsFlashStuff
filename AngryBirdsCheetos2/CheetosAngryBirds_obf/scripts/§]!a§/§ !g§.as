package §]!a§
{
   import §]u§.§<=§;
   
   public class § !g§
   {
      
      public static const NONE:String = "none";
      
      public static const §5!8§:String = "bilinear";
      
      public static const §62§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            NONE = "none";
            do
            {
               §5!8§ = "bilinear";
               do
               {
                  §62§ = "trilinear";
               }
               while(!_loc2_);
               
            }
            while(_loc1_);
            
         }
      }
      
      public function § !g§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         throw new §<=§();
      }
      
      public static function §0! §(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
                                    §§push(§5!8§);
                                    addr70:
                                    while(_loc3_)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr96:
                                    continue loop1;
                                    loop11:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(!_loc3_)
                                       {
                                          continue loop6;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§62§);
                                       if(_loc3_)
                                       {
                                          addr29:
                                          §§push(§§pop() == §§pop());
                                          if(_loc3_ || § !g§)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc2_ && param1)
                                                {
                                                   continue loop4;
                                                }
                                                if(_loc2_ && param1)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             else
                                             {
                                                addr74:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc3_ || § !g§))
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
                                                            break;
                                                         }
                                                         continue loop11;
                                                         §§goto(addr29);
                                                      }
                                                      continue loop5;
                                                      addr83:
                                                   }
                                                }
                                                continue loop3;
                                                addr74:
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr83);
                                       }
                                       else
                                       {
                                          §§goto(addr70);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr74);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
   }
}
