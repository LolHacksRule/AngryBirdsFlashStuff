package §5_§
{
   import flash.events.Event;
   
   public class §+0§ extends Event
   {
      
      public static const §!K§:String = "fileLoaded";
       
      
      public var file:§2w§;
      
      public function §+0§(param1:String, param2:§2w§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §+0§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§ !P§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
