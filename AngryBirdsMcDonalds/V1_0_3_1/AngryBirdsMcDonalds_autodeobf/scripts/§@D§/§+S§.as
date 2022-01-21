package §@D§
{
   import flash.events.Event;
   
   public class §+S§ extends Event
   {
      
      public static const §-9§:String = "fileLoaded";
       
      
      public var file:§+y§;
      
      public function §+S§(param1:String, param2:§+y§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.file = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §+S§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return "[FZipEvent type=\"" + type + "\" filename=\"" + this.file.§@!X§ + "\" bubbles=" + bubbles + " cancelable=" + cancelable + " eventPhase=" + eventPhase + "]";
      }
   }
}
