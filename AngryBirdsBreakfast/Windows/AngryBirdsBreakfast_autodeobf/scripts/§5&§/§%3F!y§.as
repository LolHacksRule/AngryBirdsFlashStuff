package §5&§
{
   import flash.events.Event;
   
   public class §?!y§ extends Event
   {
      
      public static const §0!4§:String = "fileLoaded";
       
      
      public var file:§ B§;
      
      public function §?!y§(param1:String, param2:§ B§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §?!y§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§!! § + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
