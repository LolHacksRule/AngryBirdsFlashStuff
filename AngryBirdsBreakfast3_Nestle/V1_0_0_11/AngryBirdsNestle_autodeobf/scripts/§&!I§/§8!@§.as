package §&!I§
{
   import flash.events.Event;
   
   public class §8!@§ extends Event
   {
      
      public static const §-!P§:String = "update_Frame";
       
      
      public var §^!'§:int;
      
      public function §8!@§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§^!'§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §8!@§(type,this.§^!'§,bubbles,cancelable);
      }
   }
}
