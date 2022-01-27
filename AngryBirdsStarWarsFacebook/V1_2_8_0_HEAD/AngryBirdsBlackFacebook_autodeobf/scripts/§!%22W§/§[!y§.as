package §!"W§
{
   import flash.events.Event;
   
   public class §[!y§ extends Event
   {
      
      public static const §1c§:String = "update_subscription";
       
      
      public var §9!E§:String;
      
      public var daysLeft:int;
      
      public function §[!y§(param1:String, param2:String, param3:int, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§9!E§ = param2;
         this.daysLeft = param3;
      }
   }
}
