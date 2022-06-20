package §,X§
{
   import flash.events.Event;
   
   public class §2"q§ extends Event
   {
      
      public static const §5!f§:String = "claimGiftAndSend";
      
      public static const §&#C§:String = "claimGiftOnly";
      
      public static const §"#8§:String = "serverGift";
      
      public static const §4!Z§:String = "sendBackGift";
      
      public static const §9$8§:String = "removeRequest";
      
      public static const §1!D§:String = "playBraggedLevel";
      
      public static const §'K§:String = "claimAllGiftAndSend";
      
      public static const §1$<§:String = "claimAllGiftOnly";
      
      public static const §2%§:String = "InboxContentAmountChecked";
       
      
      public var data:Object;
      
      public function §2"q§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §2"q§(type,this.data,bubbles,cancelable);
      }
   }
}
