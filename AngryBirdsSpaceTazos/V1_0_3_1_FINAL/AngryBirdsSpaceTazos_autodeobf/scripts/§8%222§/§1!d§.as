package §8"2§
{
   import flash.events.Event;
   
   public class §1!d§ extends Event
   {
      
      public static const §0"&§:String = "parseError";
       
      
      public var text:String;
      
      public function §1!d§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §1!d§(type,this.text,bubbles,cancelable);
      }
   }
}
