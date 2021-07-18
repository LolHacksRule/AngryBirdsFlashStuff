package §]Q§
{
   import flash.events.Event;
   
   public class §&#P§ extends Event
   {
      
      public static const §<B§:String = "invite";
      
      public static const FULL_SCREEN:String = "fullscreen";
      
      public static const §#!a§:String = "toggleSound";
      
      public static const INFO:String = "info";
      
      public static const §;!n§:String = "tutorial";
      
      public static const INBOX:String = "inbox";
      
      public static const SHOP:String = "shop";
      
      public static const §?#+§:String = "achievements";
      
      public static const §>"n§:String = "starcoins";
      
      public static const §;o§:String = "energy";
      
      public static const §10§:String = "brag";
      
      public static const §%"n§:String = "sendGift";
      
      public static const CHALLENGE:String = "challenge";
      
      public static const §,"=§:String = "inviteOne";
      
      public static const §-"&§:String = "removeItem";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<B§ = "invite";
            loop0:
            while(true)
            {
               FULL_SCREEN = "fullscreen";
               addr196:
               while(true)
               {
                  §#!a§ = "toggleSound";
                  continue loop0;
               }
            }
         }
         §§goto(addr120);
      }
      
      public var data:Object;
      
      public function §&#P§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function clone() : Event
      {
         return new §&#P§(type,bubbles,cancelable);
      }
   }
}
