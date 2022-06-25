package §+p§
{
   import §@!`§.FriendListItemVO;
   import flash.events.Event;
   
   public class §&!>§ extends Event
   {
      
      public static const INVITE_FRIENDS_REQUESTED:String = "inviteFriendsRequested";
      
      public static const SHOP_REQUESTED:String = "shopRequested";
      
      public static const FULLSCREEN_TOGGLE_REQUESTED:String = "fullscreenToggleRequested";
      
      public static const MUTE_TOGGLE_REQUESTED:String = "muteToggleRequested";
      
      public static const TUTORIAL_REQUESTED:String = "tutorialRequested";
      
      public static const INFO_REQUESTED:String = "infoRequested";
      
      public static const AVATAR_EDITOR_REQUESTED:String = "avatarEditorRequested";
      
      public static const GIFT_POPUP_REQUESTED:String = "giftPopupRequested";
      
      public static const BRAG:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      {
         var INVITE_FRIENDS_REQUESTED:Boolean = false;
         var SHOP_REQUESTED:Boolean = true;
         if(!INVITE_FRIENDS_REQUESTED)
         {
            loop0:
            while(true)
            {
               INVITE_FRIENDS_REQUESTED = "inviteFriendsRequested";
               while(true)
               {
                  while(true)
                  {
                     SHOP_REQUESTED = "shopRequested";
                     while(true)
                     {
                        while(true)
                        {
                           FULLSCREEN_TOGGLE_REQUESTED = "fullscreenToggleRequested";
                           loop5:
                           while(true)
                           {
                              addr192:
                              while(true)
                              {
                                 MUTE_TOGGLE_REQUESTED = "muteToggleRequested";
                                 continue loop5;
                              }
                           }
                           while(SHOP_REQUESTED || SHOP_REQUESTED)
                           {
                              §§goto(addr133);
                           }
                        }
                     }
                     if(!(INVITE_FRIENDS_REQUESTED && INVITE_FRIENDS_REQUESTED))
                     {
                        return;
                        addr48:
                     }
                  }
                  if(SHOP_REQUESTED || INVITE_FRIENDS_REQUESTED)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public var data:FriendListItemVO;
      
      public function §&!>§(type:String, data:FriendListItemVO = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(_loc6_ || bubbles)
         {
            while(true)
            {
            }
            addr110:
         }
         loop1:
         while(true)
         {
            addr103:
            while(_loc6_)
            {
               continue loop1;
            }
            §§goto(addr110);
         }
      }
      
      override public function clone() : Event
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return new §&!>§(type,this.data,bubbles,cancelable);
      }
   }
}
