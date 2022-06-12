package §!O§
{
   import flash.events.Event;
   
   public class §?!7§ extends Event
   {
      
      public static const §?"Z§:String = "claimGiftAndSend";
      
      public static const §]!i§:String = "claimGiftOnly";
      
      public static const §!2§:String = "serverGift";
      
      public static const §>"]§:String = "sendBackGift";
      
      public static const §9!J§:String = "removeRequest";
      
      public static const §5!>§:String = "playBraggedLevel";
      
      public static const §2"_§:String = "claimAllGiftAndSend";
      
      public static const §'"n§:String = "claimAllGiftOnly";
      
      public static const §9#3§:String = "InboxContentAmountChecked";
       
      
      public var data:Object;
      
      public function §?!7§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §?!7§(type,this.data,bubbles,cancelable);
      }
   }
}
