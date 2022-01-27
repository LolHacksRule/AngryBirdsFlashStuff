package § !W§
{
   import flash.events.Event;
   
   public class §!!5§ extends Event
   {
      
      public static const §;!N§:String = "parseError";
       
      
      public var text:String;
      
      public function §!!5§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §!!5§(type,this.text,bubbles,cancelable);
      }
   }
}
