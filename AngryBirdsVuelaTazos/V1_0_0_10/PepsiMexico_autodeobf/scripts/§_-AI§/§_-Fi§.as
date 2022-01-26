package §_-AI§
{
   import flash.events.Event;
   
   public class §_-Fi§ extends Event
   {
      
      public static const §_-E§:String = "parseError";
       
      
      public var text:String;
      
      public function §_-Fi§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-Fi§(type,this.text,bubbles,cancelable);
      }
   }
}
