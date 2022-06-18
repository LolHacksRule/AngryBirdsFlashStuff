package §8#^§
{
   import flash.events.Event;
   
   public class §-B§ extends Event
   {
      
      public static const §+!l§:String = "inviteFriendsClicked";
      
      public static const §9#2§:String = "inviteFriendsRequested";
      
      public static const §,#"§:String = "shopRequested";
      
      public static const §%!>§:String = "fullscreenToggleRequested";
      
      public static const §&,§:String = "muteToggleRequested";
      
      public static const §2#R§:String = "tutorialRequested";
      
      public static const §+n§:String = "infoRequested";
      
      public static const §1!=§:String = "avatarEditorRequested";
      
      public static const §]";§:String = "giftPopupRequested";
      
      public static const §'#%§:String = "sendGiftToUserClick";
      
      public static const §!# §:String = "sendChallengeToUserClick";
      
      public static const BRAG:String = "brag";
      
      public static const §#"2§:String = "bragCancelled";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      public static const §5J§:String = "inviteFriendsSent";
      
      public static const §3#g§:String = "leagueInfoSettingsRequested";
      
      public static const §5!C§:String = "friendsTabChanged";
       
      
      public var data:Object;
      
      public function §-B§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §-B§(type,this.data,bubbles,cancelable);
      }
   }
}
