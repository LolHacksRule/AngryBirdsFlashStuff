package §12§
{
   import flash.events.Event;
   
   public class §25§ extends Event
   {
      
      public static const §&g§:String = "CreditsInventoryEvent.OnCreditCountUpdateComplete";
      
      public static const § -§:String = "CreditsInventoryEvent.OnCreditCountUpdateError";
      
      public static const §]5§:String = "CreditsInventoryEvent.OnCreditUseComplete";
      
      public static const §3M§:String = "CreditsInventoryEvent.OnCreditUseError";
      
      public static const §case §:String = "CreditsInventoryEvent.OnCreditUseForPowerupComplete";
      
      public static const §^!9§:String = "CreditsInventoryEvent.OnCreditUseForPowerupError";
      
      public static const §&a§:String = "CreditsInventoryEvent.OnCreditUseForLevelStartComplete";
      
      public static const §?n§:String = "CreditsInventoryEvent.OnCreditUseForLevelStartError";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §&g§ = "CreditsInventoryEvent.OnCreditCountUpdateComplete";
            while(true)
            {
               § -§ = "CreditsInventoryEvent.OnCreditCountUpdateError";
               addr58:
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §?n§ = "CreditsInventoryEvent.OnCreditUseForLevelStartError";
               addr65:
               if(!(_loc2_ && _loc1_))
               {
                  addr39:
                  if(!_loc1_)
                  {
                     while(true)
                     {
                        §]5§ = "CreditsInventoryEvent.OnCreditUseComplete";
                        while(true)
                        {
                           §3M§ = "CreditsInventoryEvent.OnCreditUseError";
                           while(!_loc2_)
                           {
                              §case § = "CreditsInventoryEvent.OnCreditUseForPowerupComplete";
                              while(!_loc2_)
                              {
                                 §^!9§ = "CreditsInventoryEvent.OnCreditUseForPowerupError";
                                 while(!_loc2_)
                                 {
                                    §&a§ = "CreditsInventoryEvent.OnCreditUseForLevelStartComplete";
                                    while(_loc1_)
                                    {
                                       §§goto(addr58);
                                       §§goto(addr65);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr39);
                     }
                     addr106:
                  }
                  return;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr106);
      }
      
      public function §25§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1);
         }
      }
   }
}
