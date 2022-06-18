package §2&§
{
   import flash.events.Event;
   
   public class §,T§ extends Event
   {
      
      public static const §#l§:String = "fileLoaded";
       
      
      public var file:§?o§;
      
      public function §,T§(param1:String, param2:§?o§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §,T§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§else§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
