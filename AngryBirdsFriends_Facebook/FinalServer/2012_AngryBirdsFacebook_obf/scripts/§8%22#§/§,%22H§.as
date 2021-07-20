package §8"#§
{
   import flash.events.Event;
   
   public class §,"H§ extends Event
   {
      
      public static const §>!!§:String = "claimGift";
      
      public static const §@!M§:String = "sendBackGift";
      
      public static const §%"!§:String = "removeRequest";
      
      public static const §2!5§:String = "playBraggedLevel";
       
      
      public var data:Object;
      
      public function §,"H§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §,"H§(type,this.data,bubbles,cancelable);
      }
   }
}
