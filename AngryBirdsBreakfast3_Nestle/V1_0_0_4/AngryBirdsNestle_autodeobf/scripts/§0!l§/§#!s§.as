package §0!l§
{
   import flash.events.Event;
   
   public class §#!s§ extends Event
   {
      
      public static const §%A§:String = "fileLoaded";
       
      
      public var file:§,H§;
      
      public function §#!s§(param1:String, param2:§,H§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §#!s§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§!O§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
