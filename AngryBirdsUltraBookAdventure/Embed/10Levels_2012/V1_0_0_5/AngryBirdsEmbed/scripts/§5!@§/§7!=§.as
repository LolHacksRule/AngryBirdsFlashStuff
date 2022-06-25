package §5!@§
{
   import §8k§.§@B§;
   
   public class §7!=§
   {
      
      public static const NONE:String = "none";
      
      public static const §1%§:String = "bilinear";
      
      public static const §"V§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            NONE = "none";
            if(_loc2_ || _loc1_)
            {
               §1%§ = "bilinear";
               if(!_loc1_)
               {
                  §"V§ = "trilinear";
               }
            }
         }
      }
      
      public function §7!=§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
         throw new §@B§();
      }
      
      public static function isValid(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_ || §7!=§)
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
                                    §§push(§1%§);
                                    if(_loc3_ || §7!=§)
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
                           §§push(param1 == §"V§);
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
