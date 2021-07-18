package §-!Q§
{
   import flash.events.Event;
   
   public class §-=§ extends Event
   {
      
      public static const §>!'§:String = "stream_start";
      
      public static const §=!N§:String = "stream_data_complete";
      
      public static const §6E§:String = "all_channels_stop";
      
      public static const §90§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §>!'§ = "stream_start";
            loop0:
            while(true)
            {
               §=!N§ = "stream_data_complete";
               loop1:
               while(true)
               {
                  §6E§ = "all_channels_stop";
                  while(true)
                  {
                     §90§ = "channel_stop";
                     loop3:
                     while(_loc1_ || §-=§)
                     {
                        continue loop1;
                        while(true)
                        {
                           SOUND_COMPLETE = "sound_effect_complete";
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public var §%%§:String;
      
      public var §!l§:String;
      
      public function §-=§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            super(param1,param4,param5);
            do
            {
               this.§%%§ = param2;
               do
               {
                  this.§!l§ = param3;
               }
               while(_loc6_);
               
            }
            while(!_loc7_);
            
         }
      }
   }
}
