package §^!0§
{
   import flash.events.Event;
   
   public class §^0§ extends Event
   {
      
      public static const §]t§:String = "stream_start";
      
      public static const §7j§:String = "stream_data_complete";
      
      public static const §#]§:String = "all_channels_stop";
      
      public static const §?!1§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §]t§ = "stream_start";
         }
         loop0:
         while(true)
         {
            §7j§ = "stream_data_complete";
            while(true)
            {
               §#]§ = "all_channels_stop";
               while(_loc2_)
               {
                  if(!_loc1_)
                  {
                     §?!1§ = "channel_stop";
                     do
                     {
                        SOUND_COMPLETE = "sound_effect_complete";
                     }
                     while(!_loc2_);
                     
                     if(_loc2_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public var §5=§:String;
      
      public var §return§:String;
      
      public function §^0§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§5=§ = param2;
               while(!_loc6_)
               {
                  this.§return§ = param3;
                  if(_loc7_ || param3)
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
   }
}
