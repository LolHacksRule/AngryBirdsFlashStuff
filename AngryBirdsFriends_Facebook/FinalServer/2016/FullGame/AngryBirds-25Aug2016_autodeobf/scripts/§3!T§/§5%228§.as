package §3!T§
{
   import flash.events.Event;
   
   public class §5"8§ extends Event
   {
      
      public static const §>#x§:String = "update_Frame";
       
      
      public var §8B§:int;
      
      public function §5"8§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§8B§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §5"8§(type,this.§8B§,bubbles,cancelable);
      }
   }
}
