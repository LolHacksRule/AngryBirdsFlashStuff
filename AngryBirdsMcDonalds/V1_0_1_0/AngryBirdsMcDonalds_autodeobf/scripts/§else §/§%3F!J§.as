package §else §
{
   import flash.events.Event;
   
   public class §?!J§ extends Event
   {
      
      public static const §^!j§:String = "fileLoaded";
       
      
      public var file:§#!I§;
      
      public function §?!J§(param1:String, param2:§#!I§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §?!J§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§^!R§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
