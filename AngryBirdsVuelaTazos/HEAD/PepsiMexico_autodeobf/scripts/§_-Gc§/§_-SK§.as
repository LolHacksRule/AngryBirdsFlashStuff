package §_-Gc§
{
   import flash.events.Event;
   
   public class §_-SK§ extends Event
   {
      
      public static const §_-Rl§:String = "fileLoaded";
       
      
      public var file:§_-rQ§;
      
      public function §_-SK§(param1:String, param2:§_-rQ§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-SK§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§_-7L§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
