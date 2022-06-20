package §2"_§
{
   import flash.events.Event;
   
   public class §?W§ extends Event
   {
      
      public static const § "_§:String = "fileLoaded";
       
      
      public var file:§3#8§;
      
      public function §?W§(param1:String, param2:§3#8§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §?W§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.filename + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
