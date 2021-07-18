package §_-6v§
{
   import flash.events.Event;
   
   public class §_-In§ extends Event
   {
      
      public static const §_-QW§:String = "update";
      
      public static const §_-7E§:String = "stop";
      
      public static const COMPLETE:String = "complete";
      
      public static const §_-X2§:String = "play";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §_-In§)
         {
            §_-X2§ = "play";
            if(!_loc1_)
            {
               §_-7E§ = "stop";
               if(_loc2_ || _loc2_)
               {
                  §_-QW§ = "update";
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr58);
               }
            }
            COMPLETE = "complete";
         }
         addr58:
      }
      
      public function §_-In§(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super(param1,param2,param3);
         }
      }
   }
}
