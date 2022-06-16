package §"!z§
{
   import flash.events.Event;
   
   public class § "K§ extends Event
   {
      
      public static const §#!'§:String = "fileLoaded";
       
      
      public var file:§^a§;
      
      public function § "K§(param1:String, param2:§^a§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new § "K§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.filename + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
