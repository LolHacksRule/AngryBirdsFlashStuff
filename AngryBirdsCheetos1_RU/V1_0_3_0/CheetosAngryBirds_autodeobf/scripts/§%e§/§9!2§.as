package §%e§
{
   import flash.events.Event;
   
   public class §9!2§ extends Event
   {
      
      public static const §2Z§:String = "parseError";
       
      
      public var text:String;
      
      public function §9!2§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §9!2§(type,this.text,bubbles,cancelable);
      }
   }
}
