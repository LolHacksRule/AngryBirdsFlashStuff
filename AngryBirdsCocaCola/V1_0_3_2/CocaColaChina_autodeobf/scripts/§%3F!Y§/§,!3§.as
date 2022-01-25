package §?!Y§
{
   import flash.events.Event;
   
   public class §,!3§ extends Event
   {
      
      public static const §7h§:String = "parseError";
       
      
      public var text:String;
      
      public function §,!3§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §,!3§(type,this.text,bubbles,cancelable);
      }
   }
}
