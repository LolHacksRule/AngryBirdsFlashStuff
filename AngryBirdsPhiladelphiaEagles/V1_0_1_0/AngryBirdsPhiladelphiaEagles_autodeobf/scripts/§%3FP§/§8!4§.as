package §?P§
{
   import flash.events.Event;
   
   public class §8!4§ extends Event
   {
      
      public static const §^!7§:String = "fileLoaded";
       
      
      public var file:§,!Q§;
      
      public function §8!4§(param1:String, param2:§,!Q§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §8!4§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§<!K§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
