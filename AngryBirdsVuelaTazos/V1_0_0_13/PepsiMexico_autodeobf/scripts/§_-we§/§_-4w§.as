package §_-we§
{
   import flash.events.Event;
   
   public class §_-4w§ extends Event
   {
      
      public static const §_-gq§:String = "fileLoaded";
       
      
      public var file:§_-Se§;
      
      public function §_-4w§(param1:String, param2:§_-Se§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-4w§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§_-MM§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
