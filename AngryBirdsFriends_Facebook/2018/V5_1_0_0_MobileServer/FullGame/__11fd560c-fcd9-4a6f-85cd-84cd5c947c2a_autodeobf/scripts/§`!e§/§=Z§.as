package §`!e§
{
   import flash.events.Event;
   
   public class §=Z§ extends Event
   {
      
      public static const §3#V§:String = "inviteFriendsClicked";
      
      public static const §[V§:String = "inviteFriendsRequested";
      
      public static const §@#m§:String = "shopRequested";
      
      public static const §#!B§:String = "fullscreenToggleRequested";
      
      public static const §4#=§:String = "muteToggleRequested";
      
      public static const §?q§:String = "tutorialRequested";
      
      public static const §0#-§:String = "infoRequested";
      
      public static const §>#T§:String = "avatarEditorRequested";
      
      public static const §#k§:String = "giftPopupRequested";
      
      public static const §"N§:String = "sendGiftToUserClick";
      
      public static const §1d§:String = "sendChallengeToUserClick";
      
      public static const BRAG:String = "brag";
      
      public static const §6$A§:String = "bragCancelled";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      public static const §%#g§:String = "inviteFriendsSent";
      
      public static const §&$0§:String = "leagueInfoSettingsRequested";
      
      public static const §;$"§:String = "friendsTabChanged";
       
      
      public var data:Object;
      
      public function §=Z§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §=Z§(type,this.data,bubbles,cancelable);
      }
   }
}
