package
{
   import §2i§.§'u§;
   
   public class §#!P§
   {
      
      public static const NONE:String = "none";
      
      public static const §?!T§:String = "bilinear";
      
      public static const §,!3§:String = "trilinear";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            NONE = "none";
            do
            {
               §?!T§ = "bilinear";
               do
               {
                  §,!3§ = "trilinear";
               }
               while(_loc2_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      public function §#!P§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         throw new §'u§();
      }
      
      public static function §<w§(param1:String) : Boolean
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
                              addr107:
                              while(true)
                              {
                                 §§push(param1);
                                 addr59:
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§?!T§);
                                    addr60:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          break loop8;
                                       }
                                       §§push(§§pop() == §§pop());
                                       while(_loc3_ && _loc2_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc2_ || §#!P§))
                           {
                              continue loop3;
                           }
                           if(§§pop())
                           {
                              break;
                           }
                           while(true)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    §§push(param1);
                                    if(!_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§,!3§);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          continue;
                                       }
                                       §§goto(addr60);
                                    }
                                    §§goto(addr59);
                                 }
                                 break;
                              }
                              continue loop2;
                           }
                        }
                        return §§pop();
                     }
                  }
               }
            }
         }
         §§goto(addr107);
      }
   }
}
