package §@!G§
{
   import flash.events.Event;
   
   public class §4"4§ extends Event
   {
      
      public static const §7!2§:String = "fileLoaded";
       
      
      public var file:§]b§;
      
      public function §4"4§(param1:String, param2:§]b§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §4"4§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§@z§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
