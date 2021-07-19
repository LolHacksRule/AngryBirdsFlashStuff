package §<w§
{
   import flash.events.Event;
   
   public class §^!q§ extends Event
   {
      
      public static const §1c§:String = "update_Frame";
       
      
      public var §3+§:int;
      
      public function §^!q§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§3+§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §^!q§(type,this.§3+§,bubbles,cancelable);
      }
   }
}
