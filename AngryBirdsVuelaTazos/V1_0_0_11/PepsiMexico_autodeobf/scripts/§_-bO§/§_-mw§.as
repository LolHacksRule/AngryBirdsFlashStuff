package §_-bO§
{
   import flash.events.Event;
   
   public class §_-mw§ extends Event
   {
      
      public static const §_-0k§:String = "parseError";
       
      
      public var text:String;
      
      public function §_-mw§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-mw§(type,this.text,bubbles,cancelable);
      }
   }
}
