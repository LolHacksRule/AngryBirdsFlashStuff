package §2`§
{
   import flash.events.Event;
   
   public class §`"'§ extends Event
   {
      
      public static const §^!z§:String = "claimGift";
      
      public static const §!T§:String = "sendBackGift";
      
      public static const §+x§:String = "removeRequest";
      
      public static const §<#§:String = "playBraggedLevel";
       
      
      public var data:Object;
      
      public function §`"'§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §`"'§(type,this.data,bubbles,cancelable);
      }
   }
}
