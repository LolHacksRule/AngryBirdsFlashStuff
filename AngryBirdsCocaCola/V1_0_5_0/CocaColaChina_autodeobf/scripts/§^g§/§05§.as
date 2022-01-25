package §^g§
{
   import flash.events.Event;
   
   public class §05§ extends Event
   {
      
      public static const §7!G§:String = "fileLoaded";
       
      
      public var file:§0!8§;
      
      public function §05§(param1:String, param2:§0!8§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §05§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§^9§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
