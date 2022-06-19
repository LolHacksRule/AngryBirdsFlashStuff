package § !§
{
   import flash.events.Event;
   
   public class §?N§ extends Event
   {
      
      public static const §,7§:String = "inviteFriendsRequested";
      
      public static const §%!M§:String = "shopRequested";
      
      public static const §[!y§:String = "fullscreenToggleRequested";
      
      public static const §="7§:String = "muteToggleRequested";
      
      public static const §3!i§:String = "tutorialRequested";
      
      public static const §-"5§:String = "infoRequested";
      
      public static const §@!=§:String = "avatarEditorRequested";
      
      public static const §9o§:String = "giftPopupRequested";
      
      public static const §>!5§:String = "sendGiftToUserClick";
      
      public static const §`"<§:String = "sendChallengeToUserClick";
      
      public static const §2!c§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
       
      
      public var data:Object;
      
      public function §?N§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §?N§(type,this.data,bubbles,cancelable);
      }
   }
}
