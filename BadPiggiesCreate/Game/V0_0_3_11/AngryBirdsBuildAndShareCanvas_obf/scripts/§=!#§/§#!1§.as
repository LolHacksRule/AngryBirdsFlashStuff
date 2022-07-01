package §=!#§
{
   import flash.events.Event;
   
   public class §#!1§ extends Event
   {
      
      public static const §[%§:String = "fileLoaded";
       
      
      public var file:§-!W§;
      
      public function §#!1§(param1:String, param2:§-!W§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §#!1§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§<i§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
