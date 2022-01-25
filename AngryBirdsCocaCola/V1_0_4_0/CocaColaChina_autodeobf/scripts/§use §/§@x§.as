package §use §
{
   import flash.events.Event;
   
   public class §@x§ extends Event
   {
      
      public static const §throw§:String = "fileLoaded";
       
      
      public var file:§"!X§;
      
      public function §@x§(param1:String, param2:§"!X§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §@x§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§<8§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
