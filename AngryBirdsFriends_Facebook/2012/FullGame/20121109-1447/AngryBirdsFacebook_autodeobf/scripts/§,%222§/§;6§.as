package §,"2§
{
   import flash.events.Event;
   
   public class §;6§ extends Event
   {
      
      public static const §;"E§:String = "inviteFriendsRequested";
      
      public static const §-!&§:String = "shopRequested";
      
      public static const §%!>§:String = "fullscreenToggleRequested";
      
      public static const §!C§:String = "muteToggleRequested";
      
      public static const §;c§:String = "tutorialRequested";
      
      public static const §+u§:String = "infoRequested";
      
      public static const §>!B§:String = "avatarEditorRequested";
      
      public static const § !H§:String = "giftPopupRequested";
      
      public static const §2!"§:String = "sendGiftToUserClick";
      
      public static const §<!e§:String = "sendChallengeToUserClick";
      
      public static const §4! §:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
       
      
      public var data:Object;
      
      public function §;6§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §;6§(type,this.data,bubbles,cancelable);
      }
   }
}
