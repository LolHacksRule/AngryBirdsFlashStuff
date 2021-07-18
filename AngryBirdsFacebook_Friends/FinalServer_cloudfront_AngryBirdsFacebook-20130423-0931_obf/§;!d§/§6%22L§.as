package §;!d§
{
   import flash.events.Event;
   
   public class §6"L§ extends Event
   {
      
      public static const § !1§:String = "inviteFriendsRequested";
      
      public static const §%!a§:String = "shopRequested";
      
      public static const §try§:String = "fullscreenToggleRequested";
      
      public static const §-d§:String = "muteToggleRequested";
      
      public static const § !2§:String = "tutorialRequested";
      
      public static const §3"9§:String = "infoRequested";
      
      public static const §?M§:String = "avatarEditorRequested";
      
      public static const §[!<§:String = "giftPopupRequested";
      
      public static const §&!'§:String = "sendGiftToUserClick";
      
      public static const §[!@§:String = "sendChallengeToUserClick";
      
      public static const §"!c§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            § !1§ = "inviteFriendsRequested";
            loop0:
            while(true)
            {
               §%!a§ = "shopRequested";
               while(true)
               {
                  §try§ = "fullscreenToggleRequested";
                  loop2:
                  while(true)
                  {
                     §-d§ = "muteToggleRequested";
                     while(true)
                     {
                        § !2§ = "tutorialRequested";
                        while(true)
                        {
                           §3"9§ = "infoRequested";
                           loop5:
                           while(true)
                           {
                              §?M§ = "avatarEditorRequested";
                              while(!_loc2_)
                              {
                                 §[!<§ = "giftPopupRequested";
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    §&!'§ = "sendGiftToUserClick";
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop5;
                                       }
                                       continue loop7;
                                       addr34:
                                       if(!(_loc2_ && §6"L§))
                                       {
                                          return;
                                          addr41:
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        loop9:
                        for(; _loc1_ || _loc2_; while(_loc1_ || _loc2_)
                        {
                           continue loop2;
                           PLAY_LEVEL = "playLevel";
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§goto(addr34);
                        })
                        {
                           while(true)
                           {
                              §"!c§ = "brag";
                              continue loop9;
                           }
                           §§goto(addr41);
                        }
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr70);
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public var data:Object;
      
      public function §6"L§(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param3,param4);
            do
            {
               this.data = param2;
            }
            while(!(_loc5_ || param1));
            
         }
      }
      
      override public function clone() : Event
      {
         return new §6"L§(type,this.data,bubbles,cancelable);
      }
   }
}
