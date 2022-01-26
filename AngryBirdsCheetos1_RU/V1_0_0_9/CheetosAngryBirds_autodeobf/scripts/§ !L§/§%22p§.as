package § !L§
{
   import flash.events.Event;
   
   public class §"p§ extends Event
   {
      
      public static const §1z§:String = "fileLoaded";
       
      
      public var file:§"a§;
      
      public function §"p§(param1:String, param2:§"a§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §"p§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§+!N§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
