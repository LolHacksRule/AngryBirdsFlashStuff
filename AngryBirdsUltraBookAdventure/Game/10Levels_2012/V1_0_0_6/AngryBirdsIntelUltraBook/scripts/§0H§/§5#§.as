package §0H§
{
   import flash.events.Event;
   
   public class §5#§ extends Event
   {
      
      public static const §0!t§:String = "fileLoaded";
       
      
      public var file:§?K§;
      
      public function §5#§(param1:String, param2:§?K§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §5#§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§-F§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
