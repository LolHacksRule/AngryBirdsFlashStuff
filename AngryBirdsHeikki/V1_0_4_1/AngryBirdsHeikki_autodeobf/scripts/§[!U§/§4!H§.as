package §[!U§
{
   import flash.events.Event;
   
   public class §4!H§ extends Event
   {
      
      public static const §5P§:String = "fileLoaded";
       
      
      public var file:§<O§;
      
      public function §4!H§(param1:String, param2:§<O§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §4!H§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§"!N§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
