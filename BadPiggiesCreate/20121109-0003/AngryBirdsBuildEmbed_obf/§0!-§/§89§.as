package §0!-§
{
   import §6!@§.§;!%§;
   
   public class §89§
   {
      
      public static const NONE:String = "none";
      
      public static const §8!;§:String = "bilinear";
      
      public static const §7K§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §89§))
         {
            NONE = "none";
            if(!(_loc1_ && _loc1_))
            {
               §§goto(addr44);
            }
            §§goto(addr49);
         }
         addr44:
         if(!_loc1_)
         {
            addr49:
            §7K§ = "trilinear";
         }
      }
      
      public function §89§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         throw new §;!%§();
      }
      
      public static function isValid(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_ || §89§)
            {
               §§push(NONE);
               if(!_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop());
                     if(_loc3_ || §89§)
                     {
                        if(!§§pop())
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              if(!_loc2_)
                              {
                                 §§push(param1);
                                 if(_loc3_ || §89§)
                                 {
                                    §§push(§8!;§);
                                    if(!(_loc2_ && §89§))
                                    {
                                       addr88:
                                       §§push(§§pop() == §§pop());
                                       if(!_loc2_)
                                       {
                                          addr91:
                                          if(!§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                             }
                                          }
                                          §§goto(addr99);
                                       }
                                       §§pop();
                                       addr97:
                                       §§push(param1);
                                       §§push(§7K§);
                                    }
                                    addr99:
                                    return §§pop();
                                    §§push(§§pop() == §§pop());
                                 }
                              }
                              §§goto(addr97);
                           }
                        }
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr99);
               }
            }
         }
         §§goto(addr88);
      }
   }
}
