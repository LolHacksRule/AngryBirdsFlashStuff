package §7"X§
{
   import flash.events.Event;
   
   public class §2"R§ extends Event
   {
      
      public static const §#"p§:String = "inviteFriendsClicked";
      
      public static const §##<§:String = "inviteFriendsRequested";
      
      public static const §&!1§:String = "shopRequested";
      
      public static const §+§:String = "fullscreenToggleRequested";
      
      public static const § !<§:String = "muteToggleRequested";
      
      public static const §>$ §:String = "tutorialRequested";
      
      public static const §6"R§:String = "infoRequested";
      
      public static const §=!]§:String = "avatarEditorRequested";
      
      public static const §0#Q§:String = "giftPopupRequested";
      
      public static const §!#b§:String = "sendGiftToUserClick";
      
      public static const §'"F§:String = "sendChallengeToUserClick";
      
      public static const BRAG:String = "brag";
      
      public static const §8"t§:String = "bragCancelled";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      public static const §&!S§:String = "inviteFriendsSent";
      
      public static const §?#R§:String = "leagueInfoSettingsRequested";
      
      public static const §%#<§:String = "friendsTabChanged";
       
      
      public var data:Object;
      
      public function §2"R§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §2"R§(type,this.data,bubbles,cancelable);
      }
   }
}
