package §?!u§
{
   import flash.events.Event;
   
   public class §?b§ extends Event
   {
      
      public static const §6,§:String = "update_powerup";
      
      public static const §in §:String = "update_last_received";
       
      
      public var §8!#§:String;
      
      public var count:int;
      
      public function §?b§(param1:String, param2:String, param3:int, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§8!#§ = param2;
         this.count = param3;
      }
   }
}
