package §+=§
{
   import flash.events.Event;
   
   public class §5h§ extends Event
   {
      
      public static const § P§:String = "update_Frame";
       
      
      public var §%!G§:int;
      
      public function §5h§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§%!G§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §5h§(type,this.§%!G§,bubbles,cancelable);
      }
   }
}
