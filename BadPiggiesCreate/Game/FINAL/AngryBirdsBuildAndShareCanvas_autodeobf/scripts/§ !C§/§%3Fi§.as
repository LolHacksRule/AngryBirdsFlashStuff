package § !C§
{
   import flash.events.Event;
   
   public class §?i§ extends Event
   {
      
      public static const §?";§:String = "parseError";
       
      
      public var text:String;
      
      public function §?i§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §?i§(type,this.text,bubbles,cancelable);
      }
   }
}
