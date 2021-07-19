package §-!;§
{
   import flash.events.Event;
   
   public class §[!F§ extends Event
   {
      
      public static const §'Z§:String = "engine_pause";
      
      public static const §%n§:String = "engine_resume";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §'Z§ = "engine_pause";
            do
            {
               §%n§ = "engine_resume";
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function §[!F§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super(param1,param2,param3);
         }
      }
   }
}
