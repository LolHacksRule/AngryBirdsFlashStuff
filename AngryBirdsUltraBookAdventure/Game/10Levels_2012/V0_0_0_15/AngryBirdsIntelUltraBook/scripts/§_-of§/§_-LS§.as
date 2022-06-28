package §_-of§
{
   import flash.events.Event;
   
   public class §_-LS§ extends Event
   {
      
      public static const §_-FH§:String = "fileLoaded";
       
      
      public var file:§_-Ec§;
      
      public function §_-LS§(param1:String, param2:§_-Ec§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-LS§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§_-UM§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
