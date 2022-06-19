package §_-3z§
{
   import flash.events.Event;
   
   public class §_-0E§ extends Event
   {
      
      public static const §_-PI§:String = "fileLoaded";
       
      
      public var file:§_-E1§;
      
      public function §_-0E§(param1:String, param2:§_-E1§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-0E§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§_-fQ§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
