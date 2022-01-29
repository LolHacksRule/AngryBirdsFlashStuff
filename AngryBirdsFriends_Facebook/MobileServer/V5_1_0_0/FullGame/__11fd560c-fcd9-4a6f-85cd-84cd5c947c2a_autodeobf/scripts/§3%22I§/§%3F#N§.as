package §3"I§
{
   import flash.events.Event;
   
   public class §?#N§ extends Event
   {
      
      public static const §1!I§:String = "update_Frame";
       
      
      public var §8!^§:int;
      
      public function §?#N§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§8!^§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §?#N§(type,this.§8!^§,bubbles,cancelable);
      }
   }
}
