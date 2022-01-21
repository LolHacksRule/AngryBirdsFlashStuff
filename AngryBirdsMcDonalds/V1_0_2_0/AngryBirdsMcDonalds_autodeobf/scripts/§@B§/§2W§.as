package §@B§
{
   import flash.events.Event;
   
   public class §2W§ extends Event
   {
      
      public static const §#§:String = "parseError";
       
      
      public var text:String;
      
      public function §2W§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §2W§(type,this.text,bubbles,cancelable);
      }
   }
}
