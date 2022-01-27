package §@?§
{
   import flash.events.Event;
   
   public class §+!I§ extends Event
   {
      
      public static const §2v§:String = "parseError";
       
      
      public var text:String;
      
      public function §+!I§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §+!I§(type,this.text,bubbles,cancelable);
      }
   }
}
