package §1T§
{
   import flash.events.Event;
   
   public class §-Z§ extends Event
   {
      
      public static const §[n§:String = "stream_start";
      
      public static const §%B§:String = "stream_data_complete";
      
      public static const §^o§:String = "all_channels_stop";
      
      public static const §^&§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §-Z§))
         {
            §[n§ = "stream_start";
            loop0:
            while(true)
            {
               §%B§ = "stream_data_complete";
               loop1:
               while(true)
               {
                  §^o§ = "all_channels_stop";
                  while(true)
                  {
                     §^&§ = "channel_stop";
                     loop3:
                     while(!(_loc2_ && _loc1_))
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
      
      public var §6a§:String;
      
      public var §use §:String;
      
      public function §-Z§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            super(param1,param4,param5);
         }
         do
         {
            this.§6a§ = param2;
            do
            {
               this.§use § = param3;
            }
            while(!(_loc6_ || param3));
            
         }
         while(!(_loc6_ || param1));
         
      }
   }
}
