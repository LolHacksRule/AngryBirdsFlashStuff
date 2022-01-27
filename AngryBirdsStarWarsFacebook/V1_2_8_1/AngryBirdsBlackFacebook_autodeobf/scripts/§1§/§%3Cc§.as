package §1§#2
{
   import flash.events.Event;
   
   public class §<c§ extends Event
   {
      
      public static const §,D§:String = "fileLoaded";
       
      
      public var file:§%"e§;
      
      public function §<c§(param1:String, param2:§%"e§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §<c§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§0!q§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
