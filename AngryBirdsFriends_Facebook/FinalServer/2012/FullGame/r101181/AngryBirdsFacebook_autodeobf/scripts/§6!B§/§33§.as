package §6!B§
{
   import flash.events.Event;
   
   public class §33§ extends Event
   {
      
      public static const §>D§:String = "stream_start";
      
      public static const §%!F§:String = "stream_data_complete";
      
      public static const §=!C§:String = "all_channels_stop";
      
      public static const §<!B§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §>D§ = "stream_start";
            while(true)
            {
               §%!F§ = "stream_data_complete";
            }
            addr74:
         }
         while(true)
         {
            §=!C§ = "all_channels_stop";
            while(!_loc2_)
            {
               if(!_loc2_)
               {
                  §<!B§ = "channel_stop";
                  while(_loc1_)
                  {
                     SOUND_COMPLETE = "sound_effect_complete";
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
                  continue;
               }
               §§goto(addr74);
            }
         }
      }
      
      public var §"4§:String;
      
      public var §%!5§:String;
      
      public function §33§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§"4§ = param2;
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.§%!5§ = param3;
            if(_loc6_ || this)
            {
               if(!_loc7_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
