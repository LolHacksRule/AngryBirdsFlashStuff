package §@D§
{
   import flash.events.Event;
   
   public class §?y§ extends Event
   {
      
      public static const §`v§:String = "parseError";
       
      
      public var text:String;
      
      public function §?y§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         this.text = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new §?y§(type,this.text,bubbles,cancelable);
      }
   }
}
