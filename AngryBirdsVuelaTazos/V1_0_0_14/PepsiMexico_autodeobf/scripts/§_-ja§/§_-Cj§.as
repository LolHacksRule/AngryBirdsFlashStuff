package §_-ja§
{
   import flash.events.Event;
   
   public class §_-Cj§ extends Event
   {
      
      public static const §_-K§:String = "parseError";
       
      
      public var text:String;
      
      public function §_-Cj§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-Cj§(type,this.text,bubbles,cancelable);
      }
   }
}
