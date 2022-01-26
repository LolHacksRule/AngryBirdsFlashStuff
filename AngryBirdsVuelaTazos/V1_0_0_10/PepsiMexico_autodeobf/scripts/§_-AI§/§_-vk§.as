package §_-AI§
{
   import flash.events.Event;
   
   public class §_-vk§ extends Event
   {
      
      public static const §_-8n§:String = "fileLoaded";
       
      
      public var file:§_-Ul§;
      
      public function §_-vk§(param1:String, param2:§_-Ul§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-vk§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§_-XE§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
