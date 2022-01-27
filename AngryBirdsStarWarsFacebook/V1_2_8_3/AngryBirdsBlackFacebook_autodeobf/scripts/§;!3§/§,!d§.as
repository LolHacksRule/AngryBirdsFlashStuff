package §;!3§
{
   import flash.events.Event;
   
   public class §,!d§ extends Event
   {
      
      public static const §#L§:String = "selectionChanged";
       
      
      public var data:Object;
      
      public function §,!d§(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §,!d§(type,bubbles,cancelable);
      }
   }
}
