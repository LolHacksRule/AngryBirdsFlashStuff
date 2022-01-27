package §;Z§
{
   import flash.events.Event;
   
   public class §]D§ extends Event
   {
      
      public static const § c§:String = "parseError";
       
      
      public var text:String;
      
      public function §]D§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §]D§(type,this.text,bubbles,cancelable);
      }
   }
}
