package §<#T§
{
   import flash.events.Event;
   
   public class §3#s§ extends Event
   {
      
      public static const §6"B§:String = "EventOK";
      
      public static const §2!U§:String = "EventCancel";
       
      
      public var data:Object;
      
      public function §3#s§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.data = param2;
      }
   }
}
