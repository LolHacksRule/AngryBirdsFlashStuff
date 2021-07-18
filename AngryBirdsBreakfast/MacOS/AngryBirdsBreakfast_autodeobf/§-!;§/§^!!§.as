package §-!;§
{
   import flash.events.Event;
   
   public class §^!!§ extends Event
   {
      
      public static const §&o§:String = "update_Frame";
       
      
      public var §%!b§:int;
      
      public function §^!!§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§%!b§ = param2;
      }
      
      override public function clone() : Event
      {
         return new §^!!§(type,this.§%!b§,bubbles,cancelable);
      }
   }
}
