package §#U§
{
   import flash.events.Event;
   
   public class §;!a§ extends Event
   {
      
      public static const §^6§:String = "fileLoaded";
       
      
      public var file:§ !`§;
      
      public function §;!a§(param1:String, param2:§ !`§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §;!a§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§;!F§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
