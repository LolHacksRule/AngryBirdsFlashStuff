package §=!-§
{
   import flash.events.Event;
   
   public class §;o§ extends Event
   {
      
      public static const §-t§:String = "fileLoaded";
       
      
      public var file:§@m§;
      
      public function §;o§(param1:String, param2:§@m§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §;o§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§0k§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
