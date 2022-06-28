package §=!i§
{
   import §"!i§.FriendListItemVO;
   import flash.events.Event;
   
   public class §>Z§ extends Event
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
       
      
      public var data:FriendListItemVO;
      
      public function §>Z§(type:String, data:FriendListItemVO = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.data = data;
      }
      
      override public function clone() : Event
      {
         return new §>Z§(type,this.data,bubbles,cancelable);
      }
   }
}
