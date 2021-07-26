package §`!P§
{
   import flash.events.Event;
   
   public class §>!m§ extends Event
   {
      
      public static const §84§:String = "parseError";
       
      
      public var text:String;
      
      public function §>!m§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §>!m§(type,this.text,bubbles,cancelable);
      }
   }
}
