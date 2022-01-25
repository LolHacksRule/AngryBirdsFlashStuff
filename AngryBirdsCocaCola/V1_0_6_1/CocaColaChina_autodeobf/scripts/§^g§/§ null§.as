package §^g§
{
   import flash.events.Event;
   
   public class § null§ extends Event
   {
      
      public static const §'$§:String = "parseError";
       
      
      public var text:String;
      
      public function § null§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new § null§(type,this.text,bubbles,cancelable);
      }
   }
}
