package §;"j§
{
   import flash.events.Event;
   
   public class §1X§ extends Event
   {
      
      public static const §="`§:String = "parseError";
       
      
      public var text:String;
      
      public function §1X§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §1X§(type,this.text,bubbles,cancelable);
      }
   }
}
