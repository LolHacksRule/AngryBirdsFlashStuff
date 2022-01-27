package §`!%§
{
   import flash.events.Event;
   
   public class §%W§ extends Event
   {
      
      public static const §=x§:String = "parseError";
       
      
      public var text:String;
      
      public function §%W§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §%W§(type,this.text,bubbles,cancelable);
      }
   }
}
