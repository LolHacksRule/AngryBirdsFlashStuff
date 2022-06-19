package §@!X§
{
   import flash.events.Event;
   
   public class §++§ extends Event
   {
      
      public static const §?!Y§:String = "parseError";
       
      
      public var text:String;
      
      public function §++§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §++§(type,this.text,bubbles,cancelable);
      }
   }
}
