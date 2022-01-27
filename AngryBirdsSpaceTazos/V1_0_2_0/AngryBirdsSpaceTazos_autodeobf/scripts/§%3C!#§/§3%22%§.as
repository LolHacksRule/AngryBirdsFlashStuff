package §<!#§
{
   import flash.events.Event;
   
   public class §3"%§ extends Event
   {
      
      public static const §9!w§:String = "update_Frame";
       
      
      public var § !F§:int;
      
      public function §3"%§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§ !F§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §3"%§(type,this.§ !F§,bubbles,cancelable);
      }
   }
}
