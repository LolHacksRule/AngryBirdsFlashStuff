package §_-2N§
{
   import flash.events.Event;
   
   public class §_-l8§ extends Event
   {
      
      public static const §_-S0§:String = "fileLoaded";
       
      
      public var file:§_-T9§;
      
      public function §_-l8§(param1:String, param2:§_-T9§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-l8§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§_-7k§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
