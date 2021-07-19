package §8m§
{
   import flash.events.Event;
   
   public class §&!e§ extends Event
   {
      
      public static const §%!<§:String = "stream_start";
      
      public static const §2-§:String = "stream_data_complete";
      
      public static const §2!w§:String = "all_channels_stop";
      
      public static const §=A§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §%!<§ = "stream_start";
            loop0:
            while(true)
            {
               §2-§ = "stream_data_complete";
               addr85:
               while(true)
               {
                  §2!w§ = "all_channels_stop";
                  continue loop0;
               }
            }
         }
         §§goto(addr68);
      }
      
      public var §+h§:String;
      
      public var §0!e§:String;
      
      public function §&!e§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            super(param1,param4,param5);
         }
         do
         {
            this.§+h§ = param2;
            do
            {
               this.§0!e§ = param3;
            }
            while(_loc6_ && param2);
            
         }
         while(!(_loc7_ || param1));
         
      }
   }
}
