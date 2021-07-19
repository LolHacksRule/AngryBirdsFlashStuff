package §[P§
{
   import §5d§.§`!=§;
   
   public class §@!$§
   {
      
      public static const NONE:String = "none";
      
      public static const §]!$§:String = "bilinear";
      
      public static const §-b§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            NONE = "none";
            while(true)
            {
               §]!$§ = "bilinear";
               while(!(_loc1_ && _loc1_))
               {
                  §-b§ = "trilinear";
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §@!$§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
         throw new §`!=§();
      }
      
      public static function isValid(param1:String) : Boolean
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
                              addr107:
                              loop9:
                              while(true)
                              {
                                 §§push(param1);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§]!$§);
                                    addr60:
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc2_ || _loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc2_ || _loc3_)
                                             {
                                                if(!§§pop())
                                                {
                                                   break loop7;
                                                }
                                                §§goto(addr53);
                                             }
                                             break;
                                          }
                                          continue loop3;
                                          addr80:
                                       }
                                       continue loop4;
                                    }
                                    while(!_loc3_)
                                    {
                                       §§pop();
                                       if(_loc2_ || §@!$§)
                                       {
                                          §§push(param1);
                                          if(_loc3_)
                                          {
                                             continue loop8;
                                          }
                                          if(!_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(§-b§);
                                       }
                                       continue loop9;
                                       if(_loc2_ || _loc3_)
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
                                          §§goto(addr60);
                                       }
                                       addr53:
                                       return §§pop();
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        §§goto(addr80);
                     }
                  }
               }
            }
         }
         §§goto(addr107);
      }
   }
}
