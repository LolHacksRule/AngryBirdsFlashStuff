package §1!o§
{
   import flash.events.Event;
   
   public class §?!f§ extends Event
   {
      
      public static const §4f§:String = "update_subscription";
       
      
      public var §3!v§:String;
      
      public var daysLeft:int;
      
      public function §?!f§(param1:String, param2:String, param3:int, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.§3!v§ = param2;
         this.daysLeft = param3;
      }
   }
}
