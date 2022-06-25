package §7!=§
{
   import §8E§.§6g§;
   
   public class §<V§
   {
      
      public static const NONE:String = "none";
      
      public static const §4s§:String = "bilinear";
      
      public static const §2'§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            NONE = "none";
            if(_loc2_ || _loc1_)
            {
               §4s§ = "bilinear";
               if(!_loc1_)
               {
                  §2'§ = "trilinear";
               }
            }
         }
      }
      
      public function §<V§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
         throw new §6g§();
      }
      
      public static function isValid(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            if(_loc3_ || §<V§)
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
                                    §§push(§4s§);
                                    if(_loc3_ || §<V§)
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
                           §§push(param1 == §2'§);
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
