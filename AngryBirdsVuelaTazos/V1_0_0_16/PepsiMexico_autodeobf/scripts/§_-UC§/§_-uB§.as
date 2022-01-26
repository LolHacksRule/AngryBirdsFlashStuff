package §_-UC§
{
   import flash.events.Event;
   
   public class §_-uB§ extends Event
   {
      
      public static const §_-Qs§:String = "fileLoaded";
       
      
      public var file:§_-o§;
      
      public function §_-uB§(param1:String, param2:§_-o§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-uB§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§_-3K§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
