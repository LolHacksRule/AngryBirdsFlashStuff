package §7!#§
{
   import flash.events.Event;
   
   public class §;#§ extends Event
   {
      
      public static const §;!-§:String = "fileLoaded";
       
      
      public var file:§"!8§;
      
      public function §;#§(param1:String, param2:§"!8§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §;#§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§;!]§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
