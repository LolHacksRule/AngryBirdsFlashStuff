package each
{
   import flash.events.Event;
   
   public class § '§ extends Event
   {
      
      public static const § K§:String = "fileLoaded";
       
      
      public var file:§]>§;
      
      public function § '§(param1:String, param2:§]>§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new § '§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§case § + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
