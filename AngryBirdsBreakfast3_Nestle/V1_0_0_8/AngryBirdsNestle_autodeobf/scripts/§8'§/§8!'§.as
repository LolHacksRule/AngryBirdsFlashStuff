package §8'§
{
   import flash.events.Event;
   
   public class §8!'§ extends Event
   {
      
      public static const §1!`§:String = "fileLoaded";
       
      
      public var file:§]!"§;
      
      public function §8!'§(param1:String, param2:§]!"§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §8!'§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§">§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
