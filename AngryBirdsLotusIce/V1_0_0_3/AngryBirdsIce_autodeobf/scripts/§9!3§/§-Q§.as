package §9!3§
{
   import flash.events.Event;
   
   public class §-Q§ extends Event
   {
      
      public static const §=!>§:String = "parseError";
       
      
      public var text:String;
      
      public function §-Q§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §-Q§(type,this.text,bubbles,cancelable);
      }
   }
}
