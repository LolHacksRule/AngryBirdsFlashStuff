package §#"5§
{
   import flash.events.Event;
   
   public class §=x§ extends Event
   {
      
      public static const §6"=§:String = "fileLoaded";
       
      
      public var file:§'!S§;
      
      public function §=x§(param1:String, param2:§'!S§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §=x§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§&"§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
