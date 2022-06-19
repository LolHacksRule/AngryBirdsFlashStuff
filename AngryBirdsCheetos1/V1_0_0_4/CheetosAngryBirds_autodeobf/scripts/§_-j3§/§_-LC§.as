package §_-j3§
{
   import flash.events.Event;
   
   public class §_-LC§ extends Event
   {
      
      public static const §_-2l§:String = "fileLoaded";
       
      
      public var file:§_-Tg§;
      
      public function §_-LC§(param1:String, param2:§_-Tg§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-LC§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§_-00P§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
