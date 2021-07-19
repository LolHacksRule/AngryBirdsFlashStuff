package §&^§
{
   import flash.events.Event;
   
   public class §extends§ extends Event
   {
      
      public static const §1!H§:String = "stream_start";
      
      public static const §<K§:String = "stream_data_complete";
      
      public static const §`!5§:String = "all_channels_stop";
      
      public static const §9!3§:String = "channel_stop";
      
      public static const SOUND_COMPLETE:String = "sound_effect_complete";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §1!H§ = "stream_start";
         }
         loop0:
         while(true)
         {
            §<K§ = "stream_data_complete";
            while(true)
            {
               §`!5§ = "all_channels_stop";
               continue loop0;
               addr61:
               if(!(_loc2_ && _loc1_))
               {
                  SOUND_COMPLETE = "sound_effect_complete";
                  addr68:
                  if(!_loc2_)
                  {
                     return;
                     addr59:
                  }
                  while(_loc1_)
                  {
                     §§goto(addr61);
                     §§goto(addr68);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public var §%z§:String;
      
      public var §%!D§:String;
      
      public function §extends§(param1:String, param2:String = "", param3:String = "", param4:Boolean = false, param5:Boolean = false)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param4,param5);
            while(true)
            {
               this.§%z§ = param2;
               loop1:
               while(_loc7_)
               {
                  while(true)
                  {
                     this.§%!D§ = param3;
                     if(_loc7_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
   }
}
