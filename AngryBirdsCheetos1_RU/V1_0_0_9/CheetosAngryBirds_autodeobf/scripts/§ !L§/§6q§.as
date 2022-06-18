package § !L§
{
   import flash.events.Event;
   
   public class §6q§ extends Event
   {
      
      public static const §8u§:String = "parseError";
       
      
      public var text:String;
      
      public function §6q§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §6q§(type,this.text,bubbles,cancelable);
      }
   }
}
