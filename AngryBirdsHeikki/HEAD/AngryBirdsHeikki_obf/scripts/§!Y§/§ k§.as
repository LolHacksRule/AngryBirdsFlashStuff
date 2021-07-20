package §!Y§
{
   import flash.events.Event;
   
   public class § k§ extends Event
   {
      
      public static const §4D§:String = "parseError";
       
      
      public var text:String;
      
      public function § k§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new § k§(type,this.text,bubbles,cancelable);
      }
   }
}
