package §4!O§
{
   import flash.events.Event;
   
   public class §2!8§ extends Event
   {
      
      public static const §8N§:String = "parseError";
       
      
      public var text:String;
      
      public function §2!8§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §2!8§(type,this.text,bubbles,cancelable);
      }
   }
}
