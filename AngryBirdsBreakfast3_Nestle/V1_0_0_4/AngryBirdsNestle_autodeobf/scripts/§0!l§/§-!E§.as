package §0!l§
{
   import flash.events.Event;
   
   public class §-!E§ extends Event
   {
      
      public static const §&!k§:String = "parseError";
       
      
      public var text:String;
      
      public function §-!E§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §-!E§(type,this.text,bubbles,cancelable);
      }
   }
}
