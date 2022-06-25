package §0! §
{
   import §<t§.§ !'§;
   
   public class § case§
   {
      
      public static const NONE:String = "none";
      
      public static const §@§:String = "bilinear";
      
      public static const § 6§:String = "trilinear";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            NONE = "none";
            if(_loc1_ || _loc2_)
            {
               §§goto(addr38);
            }
            §§goto(addr48);
         }
         addr38:
         if(_loc1_ || § case§)
         {
            addr48:
            § 6§ = "trilinear";
         }
      }
      
      public function § case§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         throw new § !'§();
      }
      
      public static function isValid(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc2_ || _loc2_)
            {
               §§push(NONE);
               if(_loc2_ || param1)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     §§push(§§pop());
                     if(_loc2_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           if(_loc2_)
                           {
                              addr63:
                              §§pop();
                              if(!(_loc3_ && param1))
                              {
                                 addr81:
                                 §§push(param1);
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(§@§);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc3_ && param1))
                                       {
                                          addr100:
                                          if(!§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                §§pop();
                                                addr107:
                                                §§push(param1 == § 6§);
                                             }
                                          }
                                       }
                                       return §§pop();
                                    }
                                 }
                              }
                              §§goto(addr107);
                           }
                        }
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr63);
               }
            }
            §§goto(addr107);
         }
         §§goto(addr81);
      }
   }
}
