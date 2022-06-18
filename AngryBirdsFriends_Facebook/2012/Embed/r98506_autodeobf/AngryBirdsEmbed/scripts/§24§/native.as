package §24§
{
   import flash.events.Event;
   
   public class native extends Event
   {
      
      public static const §?2§:String = "fileLoaded";
       
      
      public var file:§3s§;
      
      public function native(param1:String, param2:§3s§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new native(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§,!2§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
