package §^![§
{
   import flash.events.Event;
   
   public class §%!l§ extends Event
   {
      
      public static const §>!0§:String = "fileLoaded";
       
      
      public var file:§2p§;
      
      public function §%!l§(param1:String, param2:§2p§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §%!l§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§]!+§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
