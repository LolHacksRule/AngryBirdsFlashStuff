package §`O§
{
   import flash.events.Event;
   
   public class §[f§ extends Event
   {
      
      public static const §@=§:String = "claimGiftAndSend";
      
      public static const §!"L§:String = "claimGiftOnly";
      
      public static const §0!'§:String = "serverGift";
      
      public static const §@$A§:String = "sendBackGift";
      
      public static const §+!k§:String = "removeRequest";
      
      public static const §5!"§:String = "playBraggedLevel";
      
      public static const §@8§:String = "claimAllGiftAndSend";
      
      public static const §@f§:String = "claimAllGiftOnly";
      
      public static const §+$%§:String = "InboxContentAmountChecked";
       
      
      public var data:Object;
      
      public function §[f§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §[f§(type,this.data,bubbles,cancelable);
      }
   }
}
