package §_-3z§
{
   import flash.events.Event;
   
   public class §_-zB§ extends Event
   {
      
      public static const §_-R2§:String = "parseError";
       
      
      public var text:String;
      
      public function §_-zB§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-zB§(type,this.text,bubbles,cancelable);
      }
   }
}
