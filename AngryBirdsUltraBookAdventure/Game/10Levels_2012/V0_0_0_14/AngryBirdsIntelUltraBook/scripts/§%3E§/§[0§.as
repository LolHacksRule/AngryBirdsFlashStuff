package §>§
{
   import §4[§.§?O§;
   import flash.events.Event;
   
   public class §[0§ extends Event
   {
      
      public static const §3n§:String = "inviteFriendsRequested";
      
      public static const §'w§:String = "shopRequested";
      
      public static const §1!e§:String = "fullscreenToggleRequested";
      
      public static const §0&§:String = "muteToggleRequested";
      
      public static const §@=§:String = "tutorialRequested";
      
      public static const §&d§:String = "infoRequested";
      
      public static const §^!C§:String = "avatarEditorRequested";
      
      public static const §2!8§:String = "giftPopupRequested";
      
      public static const §1!=§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3n§ = "inviteFriendsRequested";
            loop0:
            while(true)
            {
               §'w§ = "shopRequested";
               loop1:
               while(true)
               {
                  §1!e§ = "fullscreenToggleRequested";
                  loop2:
                  while(true)
                  {
                     §0&§ = "muteToggleRequested";
                     loop3:
                     while(true)
                     {
                        §@=§ = "tutorialRequested";
                        while(true)
                        {
                           §&d§ = "infoRequested";
                           continue loop0;
                           addr36:
                           if(!(_loc2_ && _loc1_))
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §^!C§ = "avatarEditorRequested";
            while(true)
            {
               §2!8§ = "giftPopupRequested";
               loop8:
               while(!_loc2_)
               {
                  §1!=§ = "brag";
                  while(!_loc2_)
                  {
                     PLAY_LEVEL = "playLevel";
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        continue loop8;
                     }
                     §§goto(addr36);
                  }
                  §§goto(addr98);
               }
            }
         }
         §§goto(addr64);
      }
      
      public var data:§?O§;
      
      public function §[0§(param1:String, param2:§?O§ = null, param3:Boolean = false, param4:Boolean = false)
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
            while(_loc6_);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §[0§(type,this.data,bubbles,cancelable);
      }
   }
}
