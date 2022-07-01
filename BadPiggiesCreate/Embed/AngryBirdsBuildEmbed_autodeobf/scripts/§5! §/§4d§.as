package §5! §
{
   import flash.events.Event;
   
   public class §4d§ extends Event
   {
      
      public static const §&!4§:String = "fileLoaded";
       
      
      public var file:§#!E§;
      
      public function §4d§(param1:String, param2:§#!E§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §4d§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§%n§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
