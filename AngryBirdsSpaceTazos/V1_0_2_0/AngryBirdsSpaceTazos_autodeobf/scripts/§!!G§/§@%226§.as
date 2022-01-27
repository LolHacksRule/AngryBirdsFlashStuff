package §!!G§
{
   import flash.events.Event;
   
   public class §@"6§ extends Event
   {
      
      public static const §`![§:String = "fileLoaded";
       
      
      public var file:§`Z§;
      
      public function §@"6§(param1:String, param2:§`Z§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §@"6§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§7!$§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
