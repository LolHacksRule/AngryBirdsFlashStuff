package §_-AZ§
{
   import §_-01E§.§_-M3§;
   import flash.events.Event;
   
   public class §_-07C§ extends Event
   {
      
      public static const §_-S1§:String = "inviteFriendsRequested";
      
      public static const §_-061§:String = "shopRequested";
      
      public static const §_-Yr§:String = "fullscreenToggleRequested";
      
      public static const §_-K8§:String = "muteToggleRequested";
      
      public static const §_-099§:String = "tutorialRequested";
      
      public static const §_-H7§:String = "infoRequested";
      
      public static const §_-MU§:String = "avatarEditorRequested";
      
      public static const §_-Uq§:String = "giftPopupRequested";
      
      public static const §_-zs§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §_-07C§))
         {
            §_-S1§ = "inviteFriendsRequested";
            while(true)
            {
               §_-061§ = "shopRequested";
               while(!(_loc1_ && _loc1_))
               {
                  §_-Yr§ = "fullscreenToggleRequested";
                  loop2:
                  for(; !(_loc1_ && §_-07C§); loop5:
                  while(!(_loc1_ && _loc1_))
                  {
                     §_-H7§ = "infoRequested";
                     while(true)
                     {
                        §_-MU§ = "avatarEditorRequested";
                        loop7:
                        while(!_loc1_)
                        {
                           §_-Uq§ = "giftPopupRequested";
                           loop8:
                           while(true)
                           {
                              §_-zs§ = "brag";
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop8;
                              }
                              continue loop7;
                           }
                        }
                        continue loop5;
                     }
                  })
                  {
                     while(true)
                     {
                        §_-K8§ = "muteToggleRequested";
                        addr102:
                        while(true)
                        {
                           §_-099§ = "tutorialRequested";
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      public var data:§_-M3§;
      
      public function §_-07C§(param1:String, param2:§_-M3§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param3,param4);
         }
         do
         {
            this.data = param2;
         }
         while(_loc6_);
         
      }
      
      override public function clone() : Event
      {
         return new §_-07C§(type,this.data,bubbles,cancelable);
      }
   }
}
