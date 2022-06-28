package §0!H§
{
   import flash.events.Event;
   
   public class §&!5§ extends Event
   {
      
      public static const §7!i§:String = "fileLoaded";
       
      
      public var file:§^!?§;
      
      public function §&!5§(param1:String, param2:§^!?§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §&!5§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§1L§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
