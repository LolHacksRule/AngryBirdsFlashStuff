package §[!b§
{
   import flash.events.Event;
   
   public class §-!4§ extends Event
   {
      
      public static const §]!5§:String = "stream_start";
      
      public static const §3!3§:String = "stream_data_complete";
      
      public static const §=G§:String = "all_channels_stop";
      
      public static const §,5§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §]!5§ = "stream_start";
            while(true)
            {
               §3!3§ = "stream_data_complete";
               while(!_loc2_)
               {
                  §=G§ = "all_channels_stop";
                  addr61:
                  if(!(_loc2_ && _loc1_))
                  {
                     SOUND_COMPLETE = "sound_effect_complete";
                     addr68:
                     if(_loc2_)
                     {
                        while(_loc1_)
                        {
                           §§goto(addr61);
                           §§goto(addr68);
                        }
                        while(true)
                        {
                           §,5§ = "channel_stop";
                           §§goto(addr59);
                        }
                        addr59:
                        addr73:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public var §3!N§:String;
      
      public var §8!f§:String;
      
      public function §-!4§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§3!N§ = param2;
               while(!(_loc6_ && param1))
               {
                  this.§8!f§ = param3;
                  if(!(_loc7_ || this))
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
   }
}
