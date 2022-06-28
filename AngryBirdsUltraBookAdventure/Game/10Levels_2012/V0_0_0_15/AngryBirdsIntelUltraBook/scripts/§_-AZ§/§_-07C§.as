package §_-AZ§
{
   import §_-01E§.§_-M3§;
   import flash.events.Event;
   
   public class §_-07C§ extends Event
   {
      
      public static const §_-S1§:String = "inviteFriendsRequested";
      
      public static const §_-061§:String = "shopRequested";
      
      public static const §_-Yr§:String = "fullscreenToggleRequested";
      
      public static const §_-K8§:String = "muteToggleRequested";
      
      public static const §_-099§:String = "tutorialRequested";
      
      public static const §_-H7§:String = "infoRequested";
      
      public static const §_-MU§:String = "avatarEditorRequested";
      
      public static const §_-Uq§:String = "giftPopupRequested";
      
      public static const §_-zs§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
       
      
      public var data:§_-M3§;
      
      public function §_-07C§(param1:String, param2:§_-M3§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
      
      override public function clone() : Event
      {
         return new §_-07C§(type,this.data,bubbles,cancelable);
      }
   }
}
