package §!Y§
{
   import flash.events.Event;
   
   public class §46§ extends Event
   {
      
      public static const §extends§:String = "fileLoaded";
       
      
      public var file:§<S§;
      
      public function §46§(param1:String, param2:§<S§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §46§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§5'§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
