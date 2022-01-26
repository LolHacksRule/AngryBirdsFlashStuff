package §,$§
{
   import flash.events.Event;
   
   public class §3M§ extends Event
   {
      
      public static const §#!1§:String = "fileLoaded";
       
      
      public var file:§5^§;
      
      public function §3M§(param1:String, param2:§5^§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §3M§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§[v§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
