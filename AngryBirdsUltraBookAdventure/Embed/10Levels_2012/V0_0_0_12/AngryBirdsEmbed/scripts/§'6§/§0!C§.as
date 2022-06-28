package §'6§
{
   import flash.events.Event;
   
   public class §0!C§ extends Event
   {
      
      public static const § !,§:String = "fileLoaded";
       
      
      public var file:§7!>§;
      
      public function §0!C§(param1:String, param2:§7!>§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §0!C§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§`"§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
