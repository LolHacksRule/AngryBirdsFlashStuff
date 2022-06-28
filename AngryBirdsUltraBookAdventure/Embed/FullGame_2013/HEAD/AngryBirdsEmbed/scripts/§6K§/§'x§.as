package §6K§
{
   import flash.events.Event;
   
   public class §'x§ extends Event
   {
      
      public static const §2L§:String = "parseError";
       
      
      public var text:String;
      
      public function §'x§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §'x§(type,this.text,bubbles,cancelable);
      }
   }
}
