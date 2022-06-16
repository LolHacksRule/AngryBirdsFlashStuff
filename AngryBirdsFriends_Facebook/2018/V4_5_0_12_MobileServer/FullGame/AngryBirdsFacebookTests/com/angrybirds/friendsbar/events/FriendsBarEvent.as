package com.angrybirds.friendsbar.events
{
   import flash.events.Event;
   
   public class FriendsBarEvent extends Event
   {
      
      public static const INVITE_FRIENDS_CLICKED:String = "inviteFriendsClicked";
      
      public static const INVITE_FRIENDS_REQUESTED:String = "inviteFriendsRequested";
      
      public static const SHOP_REQUESTED:String = "shopRequested";
      
      public static const FULLSCREEN_TOGGLE_REQUESTED:String = "fullscreenToggleRequested";
      
      public static const MUTE_TOGGLE_REQUESTED:String = "muteToggleRequested";
      
      public static const TUTORIAL_REQUESTED:String = "tutorialRequested";
      
      public static const INFO_REQUESTED:String = "infoRequested";
      
      public static const AVATAR_EDITOR_REQUESTED:String = "avatarEditorRequested";
      
      public static const GIFT_POPUP_REQUESTED:String = "giftPopupRequested";
      
      public static const SEND_GIFT_TO_USER_CLICKED:String = "sendGiftToUserClick";
      
      public static const SEND_CHALLENGE_TO_USER_CLICKED:String = "sendChallengeToUserClick";
      
      public static const BRAG:String = "brag";
      
      public static const BRAG_CANCELLED:String = "bragCancelled";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      public static const INVITE_FRIENDS_SENT:String = "inviteFriendsSent";
      
      public static const LEAGUE_INFO_SETTINGS_REQUESTED:String = "leagueInfoSettingsRequested";
      
      public static const FRIENDS_BAR_SCORE_LIST_TYPE_CHANGED:String = "friendsTabChanged";
       
      
      public var data:Object;
      
      public function FriendsBarEvent(type:String, data:Object = null, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.data = data;
      }
      
      override public function clone() : Event
      {
         return new FriendsBarEvent(type,this.data,bubbles,cancelable);
      }
   }
}
