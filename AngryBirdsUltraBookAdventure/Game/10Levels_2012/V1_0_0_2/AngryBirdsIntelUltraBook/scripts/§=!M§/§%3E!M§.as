package §=!M§
{
   import flash.events.Event;
   
   public class §>!M§ extends Event
   {
      
      public static const §4!Q§:String = "fileLoaded";
       
      
      public var file:§"T§;
      
      public function §>!M§(param1:String, param2:§"T§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §>!M§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§,,§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
