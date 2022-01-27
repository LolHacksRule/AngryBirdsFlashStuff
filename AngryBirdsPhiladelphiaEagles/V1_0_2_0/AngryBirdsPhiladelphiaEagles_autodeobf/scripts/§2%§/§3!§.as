package §2%§
{
   import flash.events.Event;
   
   public class §3!§ extends Event
   {
      
      public static const §^C§:String = "fileLoaded";
       
      
      public var file:§&i§;
      
      public function §3!§(param1:String, param2:§&i§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §3!§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§1p§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
