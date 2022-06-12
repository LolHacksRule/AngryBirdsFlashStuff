package §=v§
{
   import flash.events.Event;
   
   public class §#!r§ extends Event
   {
      
      public static const §0!Q§:String = "parseError";
       
      
      public var text:String;
      
      public function §#!r§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §#!r§(type,this.text,bubbles,cancelable);
      }
   }
}
