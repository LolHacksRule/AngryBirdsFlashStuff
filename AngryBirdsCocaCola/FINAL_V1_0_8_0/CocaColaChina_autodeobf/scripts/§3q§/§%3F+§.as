package §3q§
{
   import flash.events.Event;
   
   public class §?+§ extends Event
   {
      
      public static const §5C§:String = "fileLoaded";
       
      
      public var file:§4!a§;
      
      public function §?+§(param1:String, param2:§4!a§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §?+§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§%![§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
