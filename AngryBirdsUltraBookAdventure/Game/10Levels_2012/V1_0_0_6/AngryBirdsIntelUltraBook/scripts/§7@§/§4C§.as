package §7@§
{
   import §#&§.§`S§;
   import flash.events.Event;
   
   public class §4C§ extends Event
   {
      
      public static const §,>§:String = "inviteFriendsRequested";
      
      public static const §[!$§:String = "shopRequested";
      
      public static const §=!L§:String = "fullscreenToggleRequested";
      
      public static const §`!c§:String = "muteToggleRequested";
      
      public static const §9P§:String = "tutorialRequested";
      
      public static const §1j§:String = "infoRequested";
      
      public static const §!s§:String = "avatarEditorRequested";
      
      public static const §'#§:String = "giftPopupRequested";
      
      public static const §5!h§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
       
      
      public var data:§`S§;
      
      public function §4C§(param1:String, param2:§`S§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §4C§(type,this.data,bubbles,cancelable);
      }
   }
}
