package §7@§
{
   import §#&§.§`S§;
   import flash.events.Event;
   
   public class §4C§ extends Event
   {
      
      public static const §,>§:String = "inviteFriendsRequested";
      
      public static const §[!$§:String = "shopRequested";
      
      public static const §=!L§:String = "fullscreenToggleRequested";
      
      public static const §`!c§:String = "muteToggleRequested";
      
      public static const §9P§:String = "tutorialRequested";
      
      public static const §1j§:String = "infoRequested";
      
      public static const §!s§:String = "avatarEditorRequested";
      
      public static const §'#§:String = "giftPopupRequested";
      
      public static const §5!h§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §,>§ = "inviteFriendsRequested";
            loop0:
            while(true)
            {
               §[!$§ = "shopRequested";
               loop1:
               while(true)
               {
                  §=!L§ = "fullscreenToggleRequested";
                  loop2:
                  while(true)
                  {
                     §`!c§ = "muteToggleRequested";
                     loop3:
                     while(true)
                     {
                        §9P§ = "tutorialRequested";
                        while(true)
                        {
                           §1j§ = "infoRequested";
                           continue loop0;
                           addr36:
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §!s§ = "avatarEditorRequested";
            while(true)
            {
               §'#§ = "giftPopupRequested";
               loop8:
               while(!_loc2_)
               {
                  §5!h§ = "brag";
                  while(!_loc2_)
                  {
                     PLAY_LEVEL = "playLevel";
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        continue loop8;
                     }
                     §§goto(addr36);
                  }
                  §§goto(addr98);
               }
            }
         }
         §§goto(addr64);
      }
      
      public var data:§`S§;
      
      public function §4C§(param1:String, param2:§`S§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4);
            do
            {
               this.data = param2;
            }
            while(_loc6_);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §4C§(type,this.data,bubbles,cancelable);
      }
   }
}
