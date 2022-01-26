package §_-2N§
{
   import flash.events.Event;
   
   public class §_-Md§ extends Event
   {
      
      public static const §_-ap§:String = "parseError";
       
      
      public var text:String;
      
      public function §_-Md§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-Md§(type,this.text,bubbles,cancelable);
      }
   }
}
