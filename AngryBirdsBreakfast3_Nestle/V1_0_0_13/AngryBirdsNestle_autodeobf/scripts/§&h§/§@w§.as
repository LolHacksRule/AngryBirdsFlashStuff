package §&h§
{
   import flash.events.Event;
   
   public class §@w§ extends Event
   {
      
      public static const §,!2§:String = "parseError";
       
      
      public var text:String;
      
      public function §@w§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §@w§(type,this.text,bubbles,cancelable);
      }
   }
}
