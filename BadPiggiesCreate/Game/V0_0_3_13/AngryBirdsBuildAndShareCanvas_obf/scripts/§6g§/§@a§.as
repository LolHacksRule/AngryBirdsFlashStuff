package §6g§
{
   import flash.events.Event;
   
   public class §@a§ extends Event
   {
      
      public static const §?!O§:String = "parseError";
       
      
      public var text:String;
      
      public function §@a§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §@a§(type,this.text,bubbles,cancelable);
      }
   }
}
