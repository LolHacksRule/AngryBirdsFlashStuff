package §9!s§
{
   import flash.events.Event;
   
   public class §!#d§ extends Event
   {
      
      public static const §^h§:String = "inviteFriendsClicked";
      
      public static const §2!"§:String = "inviteFriendsRequested";
      
      public static const §,!1§:String = "shopRequested";
      
      public static const §>! §:String = "fullscreenToggleRequested";
      
      public static const §,#E§:String = "muteToggleRequested";
      
      public static const §[#=§:String = "tutorialRequested";
      
      public static const §=#x§:String = "infoRequested";
      
      public static const §7!l§:String = "avatarEditorRequested";
      
      public static const §]"<§:String = "giftPopupRequested";
      
      public static const §'#=§:String = "sendGiftToUserClick";
      
      public static const §9T§:String = "sendChallengeToUserClick";
      
      public static const BRAG:String = "brag";
      
      public static const §"#o§:String = "bragCancelled";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      public static const §0!&§:String = "inviteFriendsSent";
      
      public static const §3"9§:String = "leagueInfoSettingsRequested";
      
      public static const §3"J§:String = "friendsTabChanged";
       
      
      public var data:Object;
      
      public function §!#d§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §!#d§(type,this.data,bubbles,cancelable);
      }
   }
}
