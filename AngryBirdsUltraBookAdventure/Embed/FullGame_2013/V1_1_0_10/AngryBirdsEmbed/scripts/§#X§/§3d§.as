package §#X§
{
   import flash.events.Event;
   
   public class §3d§ extends Event
   {
      
      public static const §&5§:String = "stream_start";
      
      public static const §;! §:String = "stream_data_complete";
      
      public static const §^C§:String = "all_channels_stop";
      
      public static const §2g§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §&5§ = "stream_start";
            if(_loc1_ || _loc2_)
            {
               §;! § = "stream_data_complete";
               if(!(_loc2_ && _loc1_))
               {
                  §§goto(addr58);
               }
               §§goto(addr73);
            }
         }
         addr58:
         if(_loc1_)
         {
            §2g§ = "channel_stop";
            if(!(_loc2_ && _loc2_))
            {
               addr73:
               SOUND_COMPLETE = "sound_effect_complete";
            }
         }
      }
      
      public var §0!J§:String;
      
      public var §[!!§:String;
      
      public function §3d§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            super(param1,param4,param5);
            if(!_loc7_)
            {
               this.§0!J§ = param2;
               if(_loc6_ || param3)
               {
                  addr50:
                  this.§[!!§ = param3;
               }
               return;
            }
         }
         §§goto(addr50);
      }
   }
}
