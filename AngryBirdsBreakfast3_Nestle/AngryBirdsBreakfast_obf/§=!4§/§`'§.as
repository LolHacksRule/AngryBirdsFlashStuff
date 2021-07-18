package §=!4§
{
   import §90§.§?!^§;
   
   public class §`'§
   {
      
      public static const NONE:String = "none";
      
      public static const §1!T§:String = "bilinear";
      
      public static const §&5§:String = "trilinear";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §`'§)
         {
            NONE = "none";
         }
         while(true)
         {
            §1!T§ = "bilinear";
            while(_loc1_ || §`'§)
            {
               §&5§ = "trilinear";
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      public function §`'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         throw new §?!^§();
      }
      
      public static function §`y§(param1:String) : Boolean
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
                                    if(_loc3_)
                                    {
                                       break;
                                       addr55:
                                    }
                                    §§push(§1!T§);
                                    while(_loc2_)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    continue loop1;
                                    addr90:
                                    loop11:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc3_ && §`'§)
                                       {
                                          continue loop6;
                                       }
                                       §§push(§&5§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc3_)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr59:
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
                                                         if(_loc2_ || param1)
                                                         {
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               §§pop();
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop5;
                                                      addr63:
                                                   }
                                                }
                                                continue loop3;
                                                addr59:
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr63);
                                       }
                                       else
                                       {
                                          §§goto(addr55);
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr59);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
   }
}
