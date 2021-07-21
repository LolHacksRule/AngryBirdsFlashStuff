package §#";§
{
   import flash.events.Event;
   
   public class §+J§ extends Event
   {
      
      public static const §&#§:String = "stream_start";
      
      public static const §"[§:String = "stream_data_complete";
      
      public static const §0!0§:String = "all_channels_stop";
      
      public static const §'E§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&#§ = "stream_start";
         }
         loop0:
         while(true)
         {
            §"[§ = "stream_data_complete";
            loop1:
            while(true)
            {
               §0!0§ = "all_channels_stop";
               while(_loc2_)
               {
                  §'E§ = "channel_stop";
                  while(!(_loc1_ && §+J§))
                  {
                     if(!_loc1_)
                     {
                        SOUND_COMPLETE = "sound_effect_complete";
                        if(!_loc1_)
                        {
                           return;
                        }
                        continue;
                        continue;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
         }
      }
      
      public var §!"5§:String;
      
      public var §#7§:String;
      
      public function §+J§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            super(param1,param4,param5);
         }
         do
         {
            this.§!"5§ = param2;
            do
            {
               this.§#7§ = param3;
            }
            while(_loc7_ && param3);
            
         }
         while(!(_loc6_ || param2));
         
      }
   }
}
