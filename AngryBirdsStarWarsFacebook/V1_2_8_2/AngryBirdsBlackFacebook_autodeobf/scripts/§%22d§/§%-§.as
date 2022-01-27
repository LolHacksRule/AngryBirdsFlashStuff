package §"d§
{
   import flash.events.Event;
   
   public class §%-§ extends Event
   {
      
      public static const §>!Z§:String = "invite";
      
      public static const FULL_SCREEN:String = "fullscreen";
      
      public static const §9!l§:String = "toggleSound";
      
      public static const §5#&§:String = "info";
      
      public static const §-7§:String = "tutorial";
      
      public static const INBOX:String = "inbox";
      
      public static const SHOP:String = "shop";
      
      public static const §7"c§:String = "achievements";
      
      public static const §!"k§:String = "starcoins";
      
      public static const §""n§:String = "energy";
      
      public static const §5"§:String = "brag";
      
      public static const §-q§:String = "sendGift";
      
      public static const CHALLENGE:String = "challenge";
      
      public static const §!!Q§:String = "inviteOne";
      
      public static const §<R§:String = "removeItem";
       
      
      public var data:Object;
      
      public function §%-§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §%-§(type,bubbles,cancelable);
      }
   }
}
