package §_-j3§
{
   import flash.events.Event;
   
   public class §_-P1§ extends Event
   {
      
      public static const §_-ZO§:String = "parseError";
       
      
      public var text:String;
      
      public function §_-P1§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-P1§(type,this.text,bubbles,cancelable);
      }
   }
}
