package §_-zg§
{
   import flash.events.Event;
   
   public class §_-CH§ extends Event
   {
      
      public static const §_-CW§:String = "fileLoaded";
       
      
      public var file:§_-8u§;
      
      public function §_-CH§(param1:String, param2:§_-8u§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-CH§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§_-8c§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
