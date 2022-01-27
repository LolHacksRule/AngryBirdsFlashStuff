package §1§#2
{
   import flash.events.Event;
   
   public class §9§ extends Event
   {
      
      public static const §^!+§:String = "parseError";
       
      
      public var text:String;
      
      public function §9§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §9§(type,this.text,bubbles,cancelable);
      }
   }
}
