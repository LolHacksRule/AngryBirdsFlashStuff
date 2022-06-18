package §5$=§
{
   import flash.events.Event;
   
   public class §5#B§ extends Event
   {
      
      public static const §+$-§:String = "fileLoaded";
       
      
      public var file:§+!P§;
      
      public function §5#B§(param1:String, param2:§+!P§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §5#B§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.filename + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
