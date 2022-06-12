package §;!d§
{
   import flash.events.Event;
   
   public class §6"L§ extends Event
   {
      
      public static const § !1§:String = "inviteFriendsRequested";
      
      public static const §%!a§:String = "shopRequested";
      
      public static const §try§:String = "fullscreenToggleRequested";
      
      public static const §-d§:String = "muteToggleRequested";
      
      public static const § !2§:String = "tutorialRequested";
      
      public static const §3"9§:String = "infoRequested";
      
      public static const §?M§:String = "avatarEditorRequested";
      
      public static const §[!<§:String = "giftPopupRequested";
      
      public static const §&!'§:String = "sendGiftToUserClick";
      
      public static const §[!@§:String = "sendChallengeToUserClick";
      
      public static const §"!c§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
       
      
      public var data:Object;
      
      public function §6"L§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §6"L§(type,this.data,bubbles,cancelable);
      }
   }
}
