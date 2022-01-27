package §#R§
{
   import flash.events.Event;
   
   public class §0<§ extends Event
   {
      
      public static const §?"8§:String = "update_Frame";
       
      
      public var §5"?§:int;
      
      public function §0<§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§5"?§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §0<§(type,this.§5"?§,bubbles,cancelable);
      }
   }
}
