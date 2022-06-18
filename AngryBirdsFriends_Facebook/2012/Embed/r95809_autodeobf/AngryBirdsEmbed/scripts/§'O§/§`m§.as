package §'O§
{
   import flash.events.Event;
   
   public class §`m§ extends Event
   {
      
      public static const §9!2§:String = "fileLoaded";
       
      
      public var file:§]!D§;
      
      public function §`m§(param1:String, param2:§]!D§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §`m§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§%1§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
