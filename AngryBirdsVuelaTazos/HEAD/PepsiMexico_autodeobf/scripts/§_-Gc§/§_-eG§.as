package §_-Gc§
{
   import flash.events.Event;
   
   public class §_-eG§ extends Event
   {
      
      public static const §_-Zb§:String = "parseError";
       
      
      public var text:String;
      
      public function §_-eG§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-eG§(type,this.text,bubbles,cancelable);
      }
   }
}
