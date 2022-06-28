package §6K§
{
   import flash.events.Event;
   
   public class §#J§ extends Event
   {
      
      public static const § Y§:String = "fileLoaded";
       
      
      public var file:§,$§;
      
      public function §#J§(param1:String, param2:§,$§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §#J§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§%;§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
