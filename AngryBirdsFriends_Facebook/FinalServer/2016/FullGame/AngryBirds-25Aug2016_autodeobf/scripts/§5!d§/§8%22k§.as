package §5!d§
{
   import flash.events.Event;
   
   public class §8"k§ extends Event
   {
      
      public static const §"!<§:String = "EventOK";
      
      public static const §0$8§:String = "EventCancel";
       
      
      public var data:Object;
      
      public function §8"k§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
   }
}
