package §_-ja§
{
   import flash.events.Event;
   
   public class §in § extends Event
   {
      
      public static const §_-TW§:String = "fileLoaded";
       
      
      public var file:§_-GH§;
      
      public function §in §(param1:String, param2:§_-GH§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §in §(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§_-NK§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
