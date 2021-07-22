package §!"'§
{
   import flash.events.Event;
   
   public class §2"?§ extends Event
   {
      
      public static const §?#Y§:String = "update_Frame";
       
      
      public var § #N§:int;
      
      public function §2"?§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§ #N§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §2"?§(type,this.§ #N§,bubbles,cancelable);
      }
   }
}
