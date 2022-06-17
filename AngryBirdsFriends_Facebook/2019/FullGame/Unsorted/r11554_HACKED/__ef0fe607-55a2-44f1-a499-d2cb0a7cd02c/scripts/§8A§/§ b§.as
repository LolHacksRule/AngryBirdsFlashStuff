package §8A§
{
   import flash.events.Event;
   
   public class § b§ extends Event
   {
      
      public static const §9$4§:String = "claimGiftAndSend";
      
      public static const §5O§:String = "claimGiftOnly";
      
      public static const §8"u§:String = "serverGift";
      
      public static const § !B§:String = "sendBackGift";
      
      public static const §%!j§:String = "removeRequest";
      
      public static const §4A§:String = "playBraggedLevel";
      
      public static const §0"C§:String = "claimAllGiftAndSend";
      
      public static const §1#o§:String = "claimAllGiftOnly";
      
      public static const § !-§:String = "InboxContentAmountChecked";
       
      
      public var data:Object;
      
      public function § b§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new § b§(type,this.data,bubbles,cancelable);
      }
   }
}
