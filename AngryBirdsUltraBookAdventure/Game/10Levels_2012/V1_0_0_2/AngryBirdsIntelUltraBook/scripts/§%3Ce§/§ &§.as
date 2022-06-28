package §<e§
{
   import §6!M§.§9!d§;
   import flash.events.Event;
   
   public class § &§ extends Event
   {
      
      public static const §+!j§:String = "inviteFriendsRequested";
      
      public static const §2,§:String = "shopRequested";
      
      public static const §"3§:String = "fullscreenToggleRequested";
      
      public static const §52§:String = "muteToggleRequested";
      
      public static const §4H§:String = "tutorialRequested";
      
      public static const §]!r§:String = "infoRequested";
      
      public static const §0!W§:String = "avatarEditorRequested";
      
      public static const §5!Y§:String = "giftPopupRequested";
      
      public static const §7!n§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
       
      
      public var data:§9!d§;
      
      public function § &§(param1:String, param2:§9!d§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new § &§(type,this.data,bubbles,cancelable);
      }
   }
}
