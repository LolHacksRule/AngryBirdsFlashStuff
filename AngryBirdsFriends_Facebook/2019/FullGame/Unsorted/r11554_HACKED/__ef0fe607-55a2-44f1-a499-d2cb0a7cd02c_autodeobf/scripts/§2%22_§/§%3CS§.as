package §2"_§
{
   import flash.events.Event;
   
   public class §<S§ extends Event
   {
      
      public static const §,C§:String = "parseError";
       
      
      public var text:String;
      
      public function §<S§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §<S§(type,this.text,bubbles,cancelable);
      }
   }
}
