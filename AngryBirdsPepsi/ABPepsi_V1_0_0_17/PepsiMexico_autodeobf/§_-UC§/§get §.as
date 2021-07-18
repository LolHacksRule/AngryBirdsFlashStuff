package §_-UC§
{
   import flash.events.Event;
   
   public class §get § extends Event
   {
      
      public static const §_-Vm§:String = "parseError";
       
      
      public var text:String;
      
      public function §get §(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §get §(type,this.text,bubbles,cancelable);
      }
   }
}
