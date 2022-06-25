package §?]§
{
   import §[z§.§@F§;
   
   public class §7l§
   {
      
      public static const NONE:String = "none";
      
      public static const §6!%§:String = "bilinear";
      
      public static const §`!,§:String = "trilinear";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            NONE = "none";
            do
            {
               §6!%§ = "bilinear";
               do
               {
                  §`!,§ = "trilinear";
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §7l§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
         }
         throw new §@F§();
      }
      
      public static function §7"#§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            while(true)
            {
               §§push(NONE);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr106:
                           while(true)
                           {
                              §§pop();
                              addr107:
                              while(true)
                              {
                                 §§push(param1);
                                 addr66:
                                 while(true)
                                 {
                                    §§push(§6!%§);
                                    addr67:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                    }
                                 }
                              }
                           }
                           addr106:
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr106);
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§push(§`!,§);
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr38);
               }
               §§goto(addr67);
            }
         }
         §§goto(addr98);
      }
   }
}
