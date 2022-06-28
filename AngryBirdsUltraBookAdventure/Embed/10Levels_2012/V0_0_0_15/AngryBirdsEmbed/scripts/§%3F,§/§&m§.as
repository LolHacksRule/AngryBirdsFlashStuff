package §?,§
{
   import flash.events.Event;
   
   public class §&m§ extends Event
   {
      
      public static const §@!§:String = "fileLoaded";
       
      
      public var file:§9b§;
      
      public function §&m§(param1:String, param2:§9b§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §&m§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§1§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
