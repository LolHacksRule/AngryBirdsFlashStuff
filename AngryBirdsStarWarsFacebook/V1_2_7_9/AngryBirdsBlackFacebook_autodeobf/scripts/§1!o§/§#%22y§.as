package §1!o§
{
   import flash.events.Event;
   
   public class §#"y§ extends Event
   {
      
      public static const §4f§:String = "update_powerup";
      
      public static const §!!Q§:String = "update_last_received";
       
      
      public var §9u§:String;
      
      public var count:int;
      
      public function §#"y§(param1:String, param2:String, param3:int, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§9u§ = param2;
         this.count = param3;
      }
   }
}
