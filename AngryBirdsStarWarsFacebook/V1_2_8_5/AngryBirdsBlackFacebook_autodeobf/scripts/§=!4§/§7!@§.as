package §=!4§
{
   import flash.events.Event;
   
   public class §7!@§ extends Event
   {
      
      public static const §6,§:String = "update_Frame";
       
      
      public var §0"q§:int;
      
      public function §7!@§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§0"q§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §7!@§(type,this.§0"q§,bubbles,cancelable);
      }
   }
}
