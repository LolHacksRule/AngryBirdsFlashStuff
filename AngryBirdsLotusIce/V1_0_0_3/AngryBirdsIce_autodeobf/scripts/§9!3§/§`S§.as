package §9!3§
{
   import flash.events.Event;
   
   public class §`S§ extends Event
   {
      
      public static const §>"§:String = "fileLoaded";
       
      
      public var file:§;G§;
      
      public function §`S§(param1:String, param2:§;G§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §`S§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§;V§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
