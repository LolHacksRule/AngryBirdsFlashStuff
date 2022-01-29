package §9#J§
{
   import flash.events.Event;
   
   public class §&b§ extends Event
   {
      
      public static const §,#o§:String = "claimGiftAndSend";
      
      public static const §5"1§:String = "claimGiftOnly";
      
      public static const §]!r§:String = "serverGift";
      
      public static const § null§:String = "sendBackGift";
      
      public static const §6!h§:String = "removeRequest";
      
      public static const §!L§:String = "playBraggedLevel";
      
      public static const §"#$§:String = "claimAllGiftAndSend";
      
      public static const §6#n§:String = "claimAllGiftOnly";
      
      public static const §#!E§:String = "InboxContentAmountChecked";
       
      
      public var data:Object;
      
      public function §&b§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §&b§(type,this.data,bubbles,cancelable);
      }
   }
}
