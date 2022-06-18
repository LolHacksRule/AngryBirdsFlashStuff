package §@!n§
{
   import flash.events.Event;
   
   public class §`$<§ extends Event
   {
      
      public static const §?$>§:String = "inviteFriendsClicked";
      
      public static const § V§:String = "inviteFriendsRequested";
      
      public static const §use §:String = "shopRequested";
      
      public static const §?n§:String = "fullscreenToggleRequested";
      
      public static const §4#G§:String = "muteToggleRequested";
      
      public static const §;!@§:String = "tutorialRequested";
      
      public static const §@"^§:String = "infoRequested";
      
      public static const §"#8§:String = "avatarEditorRequested";
      
      public static const §3"e§:String = "giftPopupRequested";
      
      public static const §?F§:String = "sendGiftToUserClick";
      
      public static const §'$2§:String = "sendChallengeToUserClick";
      
      public static const BRAG:String = "brag";
      
      public static const §&T§:String = "bragCancelled";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      public static const §^#$§:String = "inviteFriendsSent";
      
      public static const §`q§:String = "leagueInfoSettingsRequested";
      
      public static const §^"v§:String = "friendsTabChanged";
       
      
      public var data:Object;
      
      public function §`$<§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §`$<§(type,this.data,bubbles,cancelable);
      }
   }
}
