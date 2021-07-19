package §`"%§
{
   import flash.events.Event;
   
   public class §"!4§ extends Event
   {
      
      public static const RESTART_LEVEL:String = "restart_level";
      
      public static const §!#B§:String = "pause_level";
      
      public static const RESUME_LEVEL:String = "resume_level";
      
      public static const §@L§:String = "go_to_state";
      
      public static const § z§:String = "disable_complete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            RESTART_LEVEL = "restart_level";
            loop0:
            while(true)
            {
               §!#B§ = "pause_level";
               while(true)
               {
                  RESUME_LEVEL = "resume_level";
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        §@L§ = "go_to_state";
                        do
                        {
                           § z§ = "disable_complete";
                        }
                        while(_loc1_ && §"!4§);
                        
                        if(_loc2_ || _loc1_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public var §^"y§:String;
      
      public function §"!4§(param1:String, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param3,param4);
            do
            {
               this.§^"y§ = param2;
            }
            while(_loc5_);
            
         }
      }
   }
}
