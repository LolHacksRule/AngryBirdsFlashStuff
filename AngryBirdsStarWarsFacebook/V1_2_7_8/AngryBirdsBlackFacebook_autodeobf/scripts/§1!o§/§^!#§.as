package §1!o§
{
   import flash.events.Event;
   
   public class §^!#§ extends Event
   {
      
      public static const §<!F§:String = "add_energy";
      
      public static const § !]§:String = "remove_energy";
      
      public static const §4f§:String = "update_energy";
       
      
      public var §%!T§:int;
      
      public function §^!#§(param1:String, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.§%!T§ = param2;
      }
   }
}
