package §1!j§
{
   import flash.events.Event;
   
   public class §2F§ extends Event
   {
      
      public static const §=!i§:String = "parseError";
       
      
      public var text:String;
      
      public function §2F§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §2F§(type,this.text,bubbles,cancelable);
      }
   }
}
