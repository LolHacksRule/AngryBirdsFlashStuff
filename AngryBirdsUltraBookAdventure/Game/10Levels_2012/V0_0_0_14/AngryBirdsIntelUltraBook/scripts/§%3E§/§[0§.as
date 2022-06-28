package §>§
{
   import §4[§.§?O§;
   import flash.events.Event;
   
   public class §[0§ extends Event
   {
      
      public static const §3n§:String = "inviteFriendsRequested";
      
      public static const §'w§:String = "shopRequested";
      
      public static const §1!e§:String = "fullscreenToggleRequested";
      
      public static const §0&§:String = "muteToggleRequested";
      
      public static const §@=§:String = "tutorialRequested";
      
      public static const §&d§:String = "infoRequested";
      
      public static const §^!C§:String = "avatarEditorRequested";
      
      public static const §2!8§:String = "giftPopupRequested";
      
      public static const §1!=§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
       
      
      public var data:§?O§;
      
      public function §[0§(param1:String, param2:§?O§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §[0§(type,this.data,bubbles,cancelable);
      }
   }
}
