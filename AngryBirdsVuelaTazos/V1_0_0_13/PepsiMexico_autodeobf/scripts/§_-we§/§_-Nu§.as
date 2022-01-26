package §_-we§
{
   import flash.events.Event;
   
   public class §_-Nu§ extends Event
   {
      
      public static const §_-na§:String = "parseError";
       
      
      public var text:String;
      
      public function §_-Nu§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §_-Nu§(type,this.text,bubbles,cancelable);
      }
   }
}
