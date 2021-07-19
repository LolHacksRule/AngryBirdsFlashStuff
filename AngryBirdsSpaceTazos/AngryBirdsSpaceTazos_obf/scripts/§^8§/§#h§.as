package §^8§
{
   import flash.events.Event;
   
   public class §#h§ extends Event
   {
      
      public static const RESTART_LEVEL:String = "restart_level";
      
      public static const §0"1§:String = "pause_level";
      
      public static const RESUME_LEVEL:String = "resume_level";
      
      public static const §&C§:String = "go_to_state";
      
      public static const § C§:String = "disable_complete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            RESTART_LEVEL = "restart_level";
         }
         while(true)
         {
            §0"1§ = "pause_level";
            loop1:
            while(!(_loc2_ && §#h§))
            {
               RESUME_LEVEL = "resume_level";
               loop2:
               while(true)
               {
                  §&C§ = "go_to_state";
                  while(true)
                  {
                     if(_loc1_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public var §1s§:String;
      
      public function §#h§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param3,param4);
            do
            {
               this.§1s§ = param2;
            }
            while(!(_loc5_ || param1));
            
         }
      }
   }
}
