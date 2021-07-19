package §-!n§
{
   import flash.events.Event;
   
   public class §+![§ extends Event
   {
      
      public static const §2-§:String = "stream_start";
      
      public static const §-c§:String = "stream_data_complete";
      
      public static const §4?§:String = "all_channels_stop";
      
      public static const §1!$§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2-§ = "stream_start";
            loop0:
            do
            {
               §-c§ = "stream_data_complete";
               while(true)
               {
                  §4?§ = "all_channels_stop";
                  while(!_loc1_)
                  {
                     §1!$§ = "channel_stop";
                     while(!(_loc1_ && _loc1_))
                     {
                        SOUND_COMPLETE = "sound_effect_complete";
                        if(_loc2_ || _loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(!(_loc2_ || §+![§));
            
         }
      }
      
      public var §9O§:String;
      
      public var native:String;
      
      public function §+![§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§9O§ = param2;
               loop1:
               while(_loc6_)
               {
                  while(true)
                  {
                     this.native = param3;
                     if(!_loc7_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
   }
}
