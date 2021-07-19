package §[!Z§
{
   import flash.events.Event;
   
   public class §4<§ extends Event
   {
      
      public static const §1!N§:String = "stream_start";
      
      public static const §1!`§:String = "stream_data_complete";
      
      public static const §7![§:String = "all_channels_stop";
      
      public static const §>[§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1!N§ = "stream_start";
            while(true)
            {
               §1!`§ = "stream_data_complete";
               while(true)
               {
                  §7![§ = "all_channels_stop";
                  §§goto(addr80);
               }
            }
         }
         addr80:
         while(true)
         {
            §>[§ = "channel_stop";
            do
            {
               SOUND_COMPLETE = "sound_effect_complete";
            }
            while(!(_loc1_ || _loc2_));
            
            if(!(_loc2_ && §4<§))
            {
               if(!(_loc2_ && _loc1_))
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      public var §@!z§:String;
      
      public var §,"-§:String;
      
      public function §4<§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§@!z§ = param2;
               while(!(_loc7_ && param2))
               {
                  this.§,"-§ = param3;
                  if(_loc7_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
   }
}
