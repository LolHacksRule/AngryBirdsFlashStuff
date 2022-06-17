package §"!>§
{
   import flash.events.Event;
   
   public class §'!x§ extends Event
   {
      
      public static const §^!F§:String = "inviteFriendsClicked";
      
      public static const §!!_§:String = "inviteFriendsRequested";
      
      public static const §&!R§:String = "shopRequested";
      
      public static const §9#l§:String = "fullscreenToggleRequested";
      
      public static const §2#o§:String = "muteToggleRequested";
      
      public static const §%!b§:String = "tutorialRequested";
      
      public static const §<#O§:String = "infoRequested";
      
      public static const §;n§:String = "avatarEditorRequested";
      
      public static const §"^§:String = "giftPopupRequested";
      
      public static const §;$#§:String = "sendGiftToUserClick";
      
      public static const §[R§:String = "sendChallengeToUserClick";
      
      public static const BRAG:String = "brag";
      
      public static const §0$#§:String = "bragCancelled";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      public static const §2!E§:String = "inviteFriendsSent";
      
      public static const §-"l§:String = "leagueInfoSettingsRequested";
      
      public static const § #n§:String = "friendsTabChanged";
       
      
      public var data:Object;
      
      public function §'!x§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §'!x§(type,this.data,bubbles,cancelable);
      }
   }
}
