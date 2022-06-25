package each
{
   import §]c§.§^!"§;
   
   public class §1"§
   {
      
      public static const NONE:String = "none";
      
      public static const §3&§:String = "bilinear";
      
      public static const §2!<§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            NONE = "none";
            if(_loc2_ || _loc1_)
            {
               §3&§ = "bilinear";
               if(!_loc1_)
               {
                  §2!<§ = "trilinear";
               }
            }
         }
      }
      
      public function §1"§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
         throw new §^!"§();
      }
      
      public static function isValid(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_ || §1"§)
            {
               §§push(NONE);
               if(_loc3_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     if(!_loc2_)
                     {
                        if(!§§pop())
                        {
                           if(_loc3_ || _loc2_)
                           {
                              addr59:
                              §§pop();
                              if(_loc3_ || param1)
                              {
                                 §§push(param1);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(§3&§);
                                    if(_loc3_ || §1"§)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§goto(addr101);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr101);
                     }
                     addr101:
                     if(!§§pop())
                     {
                        if(_loc3_)
                        {
                           addr105:
                           §§pop();
                           addr108:
                           §§push(param1 == §2!<§);
                        }
                     }
                     return §§pop();
                  }
                  §§goto(addr59);
               }
            }
         }
         §§goto(addr105);
      }
   }
}
