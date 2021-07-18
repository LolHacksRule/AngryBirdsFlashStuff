package §<a§
{
   import flash.events.Event;
   
   public class §7p§ extends Event
   {
      
      public static const § "S§:String = "fileLoaded";
       
      
      public var file:§;L§;
      
      public function §7p§(param1:String, param2:§;L§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §7p§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§@"2§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
