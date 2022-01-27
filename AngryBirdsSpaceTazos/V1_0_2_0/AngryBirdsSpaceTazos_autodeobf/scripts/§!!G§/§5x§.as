package §!!G§
{
   import flash.events.Event;
   
   public class §5x§ extends Event
   {
      
      public static const §?!S§:String = "parseError";
       
      
      public var text:String;
      
      public function §5x§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §5x§(type,this.text,bubbles,cancelable);
      }
   }
}
