package §#!k§
{
   import flash.events.Event;
   
   public class §`L§ extends Event
   {
      
      public static const §4f§:String = "update_Frame";
       
      
      public var §<!V§:int;
      
      public function §`L§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§<!V§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §`L§(type,this.§<!V§,bubbles,cancelable);
      }
   }
}
