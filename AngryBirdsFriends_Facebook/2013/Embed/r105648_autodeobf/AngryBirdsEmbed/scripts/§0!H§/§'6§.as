package §0!H§
{
   import flash.events.Event;
   
   public class §'6§ extends Event
   {
      
      public static const § try§:String = "fileLoaded";
       
      
      public var file:§>&§;
      
      public function §'6§(param1:String, param2:§>&§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §'6§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§[u§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
