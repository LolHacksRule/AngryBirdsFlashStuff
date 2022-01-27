package §;Z§
{
   import flash.events.Event;
   
   public class §0z§ extends Event
   {
      
      public static const §!I§:String = "fileLoaded";
       
      
      public var file:§>E§;
      
      public function §0z§(param1:String, param2:§>E§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §0z§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§<n§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
