package §_-4g§
{
   import §_-HT§.§_-rU§;
   
   public class §_-Jq§
   {
      
      public static const NONE:String = "none";
      
      public static const §_-mg§:String = "bilinear";
      
      public static const §_-3q§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            NONE = "none";
            if(!(_loc1_ && _loc2_))
            {
               §_-mg§ = "bilinear";
               if(!_loc1_)
               {
                  addr45:
                  §_-3q§ = "trilinear";
               }
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §_-Jq§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
         throw new §_-rU§();
      }
      
      public static function §_-Bk§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §_-Jq§))
         {
            §§push(param1);
            if(_loc3_ || §_-Jq§)
            {
               §§push(NONE);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc2_ && §_-Jq§))
                           {
                              §§pop();
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(param1);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr104:
                                    §§push(§_-mg§);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr97:
                                          if(!§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                             }
                                          }
                                          §§goto(addr105);
                                       }
                                       §§pop();
                                       addr102:
                                       §§push(param1);
                                    }
                                    addr105:
                                    return §§pop();
                                    §§push(§§pop() == §§pop());
                                 }
                                 §§goto(addr104);
                                 §§push(§_-3q§);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr105);
                        }
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr105);
               }
            }
            §§goto(addr104);
         }
         §§goto(addr102);
      }
   }
}
