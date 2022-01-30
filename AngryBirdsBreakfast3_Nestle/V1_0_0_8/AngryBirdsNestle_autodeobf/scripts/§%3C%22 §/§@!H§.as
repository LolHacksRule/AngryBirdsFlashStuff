package §<" §
{
   import flash.events.Event;
   
   public class §@!H§ extends Event
   {
      
      public static const §;I§:String = "update_Frame";
       
      
      public var §7%§:int;
      
      public function §@!H§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§7%§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §@!H§(type,this.§7%§,bubbles,cancelable);
      }
   }
}
