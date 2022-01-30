package §6g§
{
   import flash.events.Event;
   
   public class §0g§ extends Event
   {
      
      public static const §%!Q§:String = "fileLoaded";
       
      
      public var file:§7k§;
      
      public function §0g§(param1:String, param2:§7k§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §0g§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§"!n§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
