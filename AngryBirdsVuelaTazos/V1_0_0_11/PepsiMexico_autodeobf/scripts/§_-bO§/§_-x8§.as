package §_-bO§
{
   import flash.events.Event;
   
   public class §_-x8§ extends Event
   {
      
      public static const §_-P1§:String = "fileLoaded";
       
      
      public var file:§_-pe§;
      
      public function §_-x8§(param1:String, param2:§_-pe§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-x8§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§_-sk§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
