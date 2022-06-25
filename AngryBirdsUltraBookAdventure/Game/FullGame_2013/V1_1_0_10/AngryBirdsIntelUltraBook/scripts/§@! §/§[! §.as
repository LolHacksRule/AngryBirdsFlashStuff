package §@! §
{
   import §4H§.§4!R§;
   import flash.events.Event;
   
   public class §[! § extends Event
   {
      
      public static const §4!&§:String = "inviteFriendsRequested";
      
      public static const §?"$§:String = "shopRequested";
      
      public static const §6!f§:String = "fullscreenToggleRequested";
      
      public static const §@Q§:String = "muteToggleRequested";
      
      public static const §2R§:String = "tutorialRequested";
      
      public static const §^!;§:String = "infoRequested";
      
      public static const §,U§:String = "avatarEditorRequested";
      
      public static const §]!]§:String = "giftPopupRequested";
      
      public static const §6y§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §4!&§ = "inviteFriendsRequested";
            loop0:
            while(true)
            {
               §?"$§ = "shopRequested";
               loop1:
               while(true)
               {
                  §6!f§ = "fullscreenToggleRequested";
                  while(true)
                  {
                     §@Q§ = "muteToggleRequested";
                     continue loop0;
                     loop8:
                     while(!(_loc1_ && §[! §))
                     {
                        while(true)
                        {
                           PLAY_LEVEL = "playLevel";
                           if(!(_loc2_ || _loc1_))
                           {
                              continue loop8;
                           }
                           if(!_loc1_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              loop6:
                              while(!(_loc1_ && _loc1_))
                              {
                                 if(_loc2_)
                                 {
                                    §]!]§ = "giftPopupRequested";
                                    addr71:
                                    while(_loc2_ || _loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          §6y§ = "brag";
                                          continue loop8;
                                       }
                                       continue loop1;
                                    }
                                    continue loop0;
                                    addr71:
                                 }
                                 else
                                 {
                                    addr114:
                                 }
                                 while(true)
                                 {
                                    §^!;§ = "infoRequested";
                                    break loop6;
                                 }
                              }
                              while(true)
                              {
                                 §,U§ = "avatarEditorRequested";
                                 §§goto(addr85);
                              }
                              addr85:
                           }
                           §§goto(addr71);
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      public var data:§4!R§;
      
      public function §[! §(param1:String, param2:§4!R§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            super(param1,param3,param4);
         }
         do
         {
            this.data = param2;
         }
         while(_loc5_ && this);
         
      }
      
      override public function clone() : Event
      {
         return new §[! §(type,this.data,bubbles,cancelable);
      }
   }
}
