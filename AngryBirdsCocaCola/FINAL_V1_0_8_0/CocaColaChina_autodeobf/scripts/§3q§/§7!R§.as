package §3q§
{
   import flash.events.Event;
   
   public class §7!R§ extends Event
   {
      
      public static const §+U§:String = "parseError";
       
      
      public var text:String;
      
      public function §7!R§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §7!R§(type,this.text,bubbles,cancelable);
      }
   }
}
