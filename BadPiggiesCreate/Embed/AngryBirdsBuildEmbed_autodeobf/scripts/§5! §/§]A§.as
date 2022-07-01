package §5! §
{
   import flash.events.Event;
   
   public class §]A§ extends Event
   {
      
      public static const §&!3§:String = "parseError";
       
      
      public var text:String;
      
      public function §]A§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §]A§(type,this.text,bubbles,cancelable);
      }
   }
}
