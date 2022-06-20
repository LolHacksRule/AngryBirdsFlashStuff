package §8t§
{
   import flash.events.Event;
   
   public class §=#U§ extends Event
   {
      
      public static const §2#N§:String = "EventOK";
      
      public static const §`2§:String = "EventCancel";
       
      
      public var data:Object;
      
      public function §=#U§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
   }
}
