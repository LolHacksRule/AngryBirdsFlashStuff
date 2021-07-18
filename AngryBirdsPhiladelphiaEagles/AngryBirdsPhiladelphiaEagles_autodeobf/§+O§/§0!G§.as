package §+O§
{
   import flash.events.Event;
   
   public class §0!G§ extends Event
   {
      
      public static const §,K§:String = "fileLoaded";
       
      
      public var file:§=F§;
      
      public function §0!G§(param1:String, param2:§=F§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §0!G§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§26§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
