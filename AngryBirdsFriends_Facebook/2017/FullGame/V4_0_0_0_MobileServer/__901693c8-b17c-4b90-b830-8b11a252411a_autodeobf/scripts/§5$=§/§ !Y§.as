package §5$=§
{
   import flash.events.Event;
   
   public class § !Y§ extends Event
   {
      
      public static const §"!j§:String = "parseError";
       
      
      public var text:String;
      
      public function § !Y§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new § !Y§(type,this.text,bubbles,cancelable);
      }
   }
}
