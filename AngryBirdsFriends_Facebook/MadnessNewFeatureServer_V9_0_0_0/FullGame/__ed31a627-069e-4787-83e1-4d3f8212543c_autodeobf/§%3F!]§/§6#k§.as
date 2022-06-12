package §?!]§
{
   import flash.events.Event;
   
   public class §6#k§ extends Event
   {
      
      public static const §^"$§:String = "inviteFriendsClicked";
      
      public static const §"N§:String = "inviteFriendsRequested";
      
      public static const §<"c§:String = "shopRequested";
      
      public static const §;[§:String = "fullscreenToggleRequested";
      
      public static const §3>§:String = "muteToggleRequested";
      
      public static const §#"H§:String = "tutorialRequested";
      
      public static const §%!;§:String = "infoRequested";
      
      public static const §4i§:String = "avatarEditorRequested";
      
      public static const §[$"§:String = "giftPopupRequested";
      
      public static const §=#n§:String = "sendGiftToUserClick";
      
      public static const §4!x§:String = "sendChallengeToUserClick";
      
      public static const BRAG:String = "brag";
      
      public static const §>"C§:String = "bragCancelled";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      public static const §]"!§:String = "inviteFriendsSent";
      
      public static const §[!O§:String = "leagueInfoSettingsRequested";
      
      public static const §!!&§:String = "friendsTabChanged";
       
      
      public var data:Object;
      
      public function §6#k§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §6#k§(type,this.data,bubbles,cancelable);
      }
   }
}
