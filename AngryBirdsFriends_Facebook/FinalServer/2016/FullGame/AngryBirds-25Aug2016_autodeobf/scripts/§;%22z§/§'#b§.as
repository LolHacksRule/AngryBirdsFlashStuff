package §;"z§
{
   import flash.events.Event;
   
   public class §'#b§ extends Event
   {
      
      public static const §5#^§:String = "claimGiftAndSend";
      
      public static const §?"§:String = "claimGiftOnly";
      
      public static const §4#u§:String = "serverGift";
      
      public static const §!>§:String = "sendBackGift";
      
      public static const §+P§:String = "removeRequest";
      
      public static const §&!O§:String = "playBraggedLevel";
      
      public static const §#!`§:String = "claimAllGiftAndSend";
      
      public static const §##2§:String = "claimAllGiftOnly";
      
      public static const §<!$§:String = "InboxContentAmountChecked";
       
      
      public var data:Object;
      
      public function §'#b§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §'#b§(type,this.data,bubbles,cancelable);
      }
   }
}
