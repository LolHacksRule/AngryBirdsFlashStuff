package §@!G§
{
   import flash.events.Event;
   
   public class §%e§ extends Event
   {
      
      public static const §@!f§:String = "parseError";
       
      
      public var text:String;
      
      public function §%e§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §%e§(type,this.text,bubbles,cancelable);
      }
   }
}
