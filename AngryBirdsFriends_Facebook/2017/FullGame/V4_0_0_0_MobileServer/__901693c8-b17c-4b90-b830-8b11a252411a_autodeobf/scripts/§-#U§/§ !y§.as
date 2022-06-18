package §-#U§
{
   import flash.events.Event;
   
   public class § !y§ extends Event
   {
      
      public static const §#!,§:String = "claimGiftAndSend";
      
      public static const §8$&§:String = "claimGiftOnly";
      
      public static const §@#,§:String = "serverGift";
      
      public static const §]#'§:String = "sendBackGift";
      
      public static const §&"v§:String = "removeRequest";
      
      public static const §&o§:String = "playBraggedLevel";
      
      public static const §[#d§:String = "claimAllGiftAndSend";
      
      public static const §]#G§:String = "claimAllGiftOnly";
      
      public static const §=5§:String = "InboxContentAmountChecked";
       
      
      public var data:Object;
      
      public function § !y§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new § !y§(type,this.data,bubbles,cancelable);
      }
   }
}
