package §8"2§
{
   import flash.events.Event;
   
   public class §@"7§ extends Event
   {
      
      public static const §;"-§:String = "fileLoaded";
       
      
      public var file:§[!T§;
      
      public function §@"7§(param1:String, param2:§[!T§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §@"7§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§2"-§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
