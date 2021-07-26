package §9!N§
{
   import flash.events.Event;
   
   public class §""E§ extends Event
   {
      
      public static const §%"T§:String = "fileLoaded";
       
      
      public var file:§1" §;
      
      public function §""E§(param1:String, param2:§1" § = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §""E§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.filename + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
