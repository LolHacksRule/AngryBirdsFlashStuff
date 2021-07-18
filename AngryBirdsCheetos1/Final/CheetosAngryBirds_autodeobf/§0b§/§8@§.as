package §0b§
{
   import flash.events.Event;
   
   public class §8@§ extends Event
   {
      
      public static const §`9§:String = "fileLoaded";
       
      
      public var file:§2!#§;
      
      public function §8@§(param1:String, param2:§2!#§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §8@§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§``§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
