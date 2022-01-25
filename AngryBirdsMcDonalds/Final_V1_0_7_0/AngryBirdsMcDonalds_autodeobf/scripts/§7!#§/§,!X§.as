package §7!#§
{
   import flash.events.Event;
   
   public class §,!X§ extends Event
   {
      
      public static const §^H§:String = "parseError";
       
      
      public var text:String;
      
      public function §,!X§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §,!X§(type,this.text,bubbles,cancelable);
      }
   }
}
