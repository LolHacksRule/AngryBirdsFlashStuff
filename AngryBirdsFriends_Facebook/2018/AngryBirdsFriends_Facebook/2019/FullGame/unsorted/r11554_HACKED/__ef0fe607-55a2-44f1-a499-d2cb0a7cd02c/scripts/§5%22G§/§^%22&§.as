package §5"G§
{
   import flash.events.Event;
   
   public class §^"&§ extends Event
   {
      
      public static const §>"q§:String = "update_Frame";
       
      
      public var §-"S§:int;
      
      public function §^"&§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§-"S§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §^"&§(type,this.§-"S§,bubbles,cancelable);
      }
   }
}
