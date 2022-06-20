package §=X§
{
   import flash.events.Event;
   
   public class §`#x§ extends Event
   {
      
      public static const §2"F§:String = "update_Frame";
       
      
      public var §`!w§:int;
      
      public function §`#x§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§`!w§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §`#x§(type,this.§`!w§,bubbles,cancelable);
      }
   }
}
