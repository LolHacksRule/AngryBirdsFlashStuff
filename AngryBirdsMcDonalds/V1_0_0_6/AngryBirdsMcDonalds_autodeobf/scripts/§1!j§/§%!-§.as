package §1!j§
{
   import flash.events.Event;
   
   public class §%!-§ extends Event
   {
      
      public static const §2I§:String = "fileLoaded";
       
      
      public var file:§&v§;
      
      public function §%!-§(param1:String, param2:§&v§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §%!-§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§5!O§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
