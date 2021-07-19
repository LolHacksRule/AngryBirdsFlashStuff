package §2!-§
{
   import §"! §.§4p§;
   
   public class §]!=§
   {
      
      public static const NONE:String = "none";
      
      public static const §8]§:String = "bilinear";
      
      public static const §=_§:String = "trilinear";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            NONE = "none";
            while(true)
            {
               §8]§ = "bilinear";
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            §=_§ = "trilinear";
            if(_loc1_)
            {
               if(_loc1_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §]!=§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
         throw new §4p§();
      }
      
      public static function §2!6§(param1:String) : Boolean
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
                                    §§push(§8]§);
                                    addr67:
                                    addr91:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
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
                                       §§push(§=_§);
                                       if(_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop1;
                                          }
                                          addr31:
                                          §§push(§§pop() == §§pop());
                                          if(_loc3_ || _loc2_)
                                          {
                                             addr39:
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             else
                                             {
                                                addr69:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(!(_loc3_ || §]!=§))
                                                         {
                                                            break;
                                                         }
                                                         continue loop11;
                                                         §§goto(addr31);
                                                      }
                                                      continue loop5;
                                                      addr73:
                                                   }
                                                   §§goto(addr39);
                                                }
                                                continue loop3;
                                                addr69:
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr73);
                                       }
                                       else
                                       {
                                          §§goto(addr67);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr69);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
   }
}
