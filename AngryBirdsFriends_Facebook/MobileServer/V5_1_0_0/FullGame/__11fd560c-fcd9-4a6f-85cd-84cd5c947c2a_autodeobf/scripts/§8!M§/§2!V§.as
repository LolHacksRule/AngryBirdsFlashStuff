package §8!M§
{
   import flash.events.Event;
   
   public class §2!V§ extends Event
   {
      
      public static const §5g§:String = "EventOK";
      
      public static const §,6§:String = "EventCancel";
       
      
      public var data:Object;
      
      public function §2!V§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
   }
}
