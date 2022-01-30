package §4!O§
{
   import flash.events.Event;
   
   public class §3R§ extends Event
   {
      
      public static const §5g§:String = "fileLoaded";
       
      
      public var file:§'"&§;
      
      public function §3R§(param1:String, param2:§'"&§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §3R§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§6!S§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
