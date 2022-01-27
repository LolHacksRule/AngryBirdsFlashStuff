package §@! §
{
   import §4H§.§4!R§;
   import flash.events.Event;
   
   public class §[! § extends Event
   {
      
      public static const §4!&§:String = "inviteFriendsRequested";
      
      public static const §?"$§:String = "shopRequested";
      
      public static const §6!f§:String = "fullscreenToggleRequested";
      
      public static const §@Q§:String = "muteToggleRequested";
      
      public static const §2R§:String = "tutorialRequested";
      
      public static const §^!;§:String = "infoRequested";
      
      public static const §,U§:String = "avatarEditorRequested";
      
      public static const §]!]§:String = "giftPopupRequested";
      
      public static const §6y§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
       
      
      public var data:§4!R§;
      
      public function §[! §(param1:String, param2:§4!R§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §[! §(type,this.data,bubbles,cancelable);
      }
   }
}
