package §-n§
{
   import flash.events.Event;
   
   public class §!h§ extends Event
   {
      
      public static const §>!0§:String = "inviteFriendsRequested";
      
      public static const §3!g§:String = "shopRequested";
      
      public static const §"![§:String = "fullscreenToggleRequested";
      
      public static const §,"§:String = "muteToggleRequested";
      
      public static const §59§:String = "tutorialRequested";
      
      public static const §;"8§:String = "infoRequested";
      
      public static const §15§:String = "avatarEditorRequested";
      
      public static const §3!q§:String = "giftPopupRequested";
      
      public static const § H§:String = "sendGiftToUserClick";
      
      public static const §=>§:String = "sendChallengeToUserClick";
      
      public static const §>e§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
       
      
      public var data:Object;
      
      public function §!h§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §!h§(type,this.data,bubbles,cancelable);
      }
   }
}
