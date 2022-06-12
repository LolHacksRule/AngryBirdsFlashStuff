package §,"2§
{
   import flash.events.Event;
   
   public class §;6§ extends Event
   {
      
      public static const §;"E§:String = "inviteFriendsRequested";
      
      public static const §-!&§:String = "shopRequested";
      
      public static const §%!>§:String = "fullscreenToggleRequested";
      
      public static const §!C§:String = "muteToggleRequested";
      
      public static const §;c§:String = "tutorialRequested";
      
      public static const §+u§:String = "infoRequested";
      
      public static const §>!B§:String = "avatarEditorRequested";
      
      public static const § !H§:String = "giftPopupRequested";
      
      public static const §2!"§:String = "sendGiftToUserClick";
      
      public static const §<!e§:String = "sendChallengeToUserClick";
      
      public static const §4! §:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;"E§ = "inviteFriendsRequested";
            loop0:
            while(true)
            {
               §-!&§ = "shopRequested";
               addr159:
               while(true)
               {
                  §%!>§ = "fullscreenToggleRequested";
                  addr48:
                  if(_loc1_ || _loc2_)
                  {
                     return;
                  }
               }
               loop6:
               while(true)
               {
                  if(_loc2_ && _loc1_)
                  {
                     continue loop0;
                  }
                  § !H§ = "giftPopupRequested";
                  loop7:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        addr103:
                        if(_loc1_ || §;6§)
                        {
                           §2!"§ = "sendGiftToUserClick";
                           loop8:
                           while(true)
                           {
                              §<!e§ = "sendChallengeToUserClick";
                              while(true)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr84:
                                    if(_loc2_ && _loc2_)
                                    {
                                       break;
                                    }
                                    §4! § = "brag";
                                    while(_loc1_)
                                    {
                                       PLAY_LEVEL = "playLevel";
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          continue loop7;
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop8;
                              }
                              addr154:
                              while(true)
                              {
                                 §!C§ = "muteToggleRequested";
                                 addr149:
                                 while(true)
                                 {
                                    §;c§ = "tutorialRequested";
                                    break loop7;
                                 }
                                 §§goto(addr84);
                              }
                           }
                        }
                        break;
                     }
                     continue loop6;
                  }
                  while(_loc1_)
                  {
                     §+u§ = "infoRequested";
                     §§goto(addr137);
                     §§goto(addr103);
                  }
                  §§goto(addr149);
               }
               §§goto(addr159);
            }
         }
         §§goto(addr154);
      }
      
      public var data:Object;
      
      public function §;6§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            super(param1,param3,param4);
         }
         do
         {
            this.data = param2;
         }
         while(_loc6_ && param2);
         
      }
      
      override public function clone() : Event
      {
         return new §;6§(type,this.data,bubbles,cancelable);
      }
   }
}
