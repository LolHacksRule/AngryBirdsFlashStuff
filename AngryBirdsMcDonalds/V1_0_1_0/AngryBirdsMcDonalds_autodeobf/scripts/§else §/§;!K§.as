package §else §
{
   import flash.events.Event;
   
   public class §;!K§ extends Event
   {
      
      public static const §&!d§:String = "parseError";
       
      
      public var text:String;
      
      public function §;!K§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §;!K§(type,this.text,bubbles,cancelable);
      }
   }
}
