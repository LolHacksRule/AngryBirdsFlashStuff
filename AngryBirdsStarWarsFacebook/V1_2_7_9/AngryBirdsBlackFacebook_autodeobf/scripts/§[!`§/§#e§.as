package §[!`§
{
   import flash.events.Event;
   
   public class §#e§ extends Event
   {
      
      public static const §-!O§:String = "invite";
      
      public static const FULL_SCREEN:String = "fullscreen";
      
      public static const §8"`§:String = "toggleSound";
      
      public static const §9!@§:String = "info";
      
      public static const §&!e§:String = "tutorial";
      
      public static const INBOX:String = "inbox";
      
      public static const SHOP:String = "shop";
      
      public static const §<"4§:String = "achievements";
      
      public static const §;"F§:String = "starcoins";
      
      public static const §"l§:String = "energy";
      
      public static const § -§:String = "brag";
      
      public static const §<!r§:String = "sendGift";
      
      public static const CHALLENGE:String = "challenge";
      
      public static const §%!-§:String = "inviteOne";
      
      public static const §'Z§:String = "removeItem";
       
      
      public var data:Object;
      
      public function §#e§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new §#e§(type,bubbles,cancelable);
      }
   }
}
