package §!"W§
{
   import flash.events.Event;
   
   public class §[!y§ extends Event
   {
      
      public static const §1c§:String = "update_subscription";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1c§ = "update_subscription";
         }
      }
      
      public var §9!E§:String;
      
      public var daysLeft:int;
      
      public function §[!y§(param1:String, param2:String, param3:int, param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§9!E§ = param2;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.daysLeft = param3;
            if(_loc7_)
            {
               if(_loc7_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
