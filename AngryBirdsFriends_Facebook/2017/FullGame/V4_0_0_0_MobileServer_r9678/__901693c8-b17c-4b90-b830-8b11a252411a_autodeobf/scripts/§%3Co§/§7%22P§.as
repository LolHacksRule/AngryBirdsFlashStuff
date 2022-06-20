package §<o§
{
   import flash.events.Event;
   
   public class §7"P§ extends Event
   {
      
      public static const §,"!§:String = "update_Frame";
       
      
      public var §+$;§:int;
      
      public function §7"P§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§+$;§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §7"P§(type,this.§+$;§,bubbles,cancelable);
      }
   }
}
