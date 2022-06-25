package §!!9§
{
   import §`5§.§?g§;
   
   public class §4!'§
   {
      
      public static const NONE:String = "none";
      
      public static const §5!'§:String = "bilinear";
      
      public static const §<,§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            NONE = "none";
            while(true)
            {
               §5!'§ = "bilinear";
               while(!(_loc1_ && _loc1_))
               {
                  §<,§ = "trilinear";
                  if(!(_loc2_ || _loc1_))
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
      
      public function §4!'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         throw new §?g§();
      }
      
      public static function §%!3§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(NONE);
               addr108:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr109:
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
                              addr112:
                              while(true)
                              {
                                 §§push(param1);
                                 addr88:
                                 while(true)
                                 {
                                    §§push(§5!'§);
                                    addr89:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr111:
                        }
                        while(true)
                        {
                           addr91:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 continue loop3;
                              }
                              if(§§pop())
                              {
                                 break;
                              }
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    §§pop();
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       break;
                                    }
                                    §§push(param1);
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr88);
                                 }
                                 else
                                 {
                                    §§goto(addr111);
                                 }
                              }
                           }
                           addr82:
                           return §§pop();
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
   }
}
