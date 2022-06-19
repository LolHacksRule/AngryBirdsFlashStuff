package §0b§
{
   import flash.events.Event;
   
   public class §^!L§ extends Event
   {
      
      public static const §0d§:String = "parseError";
       
      
      public var text:String;
      
      public function §^!L§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §^!L§(type,this.text,bubbles,cancelable);
      }
   }
}
