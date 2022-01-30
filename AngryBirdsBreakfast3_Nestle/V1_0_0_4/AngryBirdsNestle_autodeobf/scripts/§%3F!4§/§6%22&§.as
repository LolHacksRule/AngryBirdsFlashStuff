package §?!4§
{
   import flash.events.Event;
   
   public class §6"&§ extends Event
   {
      
      public static const §"!w§:String = "update_Frame";
       
      
      public var §'!f§:int;
      
      public function §6"&§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§'!f§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §6"&§(type,this.§'!f§,bubbles,cancelable);
      }
   }
}
