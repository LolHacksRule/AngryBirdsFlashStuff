package §<e§
{
   import §6!M§.§9!d§;
   import flash.events.Event;
   
   public class § &§ extends Event
   {
      
      public static const §+!j§:String = "inviteFriendsRequested";
      
      public static const §2,§:String = "shopRequested";
      
      public static const §"3§:String = "fullscreenToggleRequested";
      
      public static const §52§:String = "muteToggleRequested";
      
      public static const §4H§:String = "tutorialRequested";
      
      public static const §]!r§:String = "infoRequested";
      
      public static const §0!W§:String = "avatarEditorRequested";
      
      public static const §5!Y§:String = "giftPopupRequested";
      
      public static const §7!n§:String = "brag";
      
      public static const PLAY_LEVEL:String = "playLevel";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+!j§ = "inviteFriendsRequested";
         }
         loop0:
         while(true)
         {
            §2,§ = "shopRequested";
            loop1:
            while(true)
            {
               §"3§ = "fullscreenToggleRequested";
               while(true)
               {
                  §52§ = "muteToggleRequested";
                  while(_loc2_ || § &§)
                  {
                     if(!_loc1_)
                     {
                        §4H§ = "tutorialRequested";
                        loop4:
                        while(_loc2_)
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           §]!r§ = "infoRequested";
                           loop5:
                           while(true)
                           {
                              §0!W§ = "avatarEditorRequested";
                              loop6:
                              while(_loc2_)
                              {
                                 §5!Y§ = "giftPopupRequested";
                                 loop7:
                                 while(_loc2_)
                                 {
                                    §7!n§ = "brag";
                                    while(!_loc1_)
                                    {
                                       PLAY_LEVEL = "playLevel";
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             return;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 continue loop5;
                              }
                              continue loop4;
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public var data:§9!d§;
      
      public function § &§(param1:String, param2:§9!d§ = null, param3:Boolean = false, param4:Boolean = false)
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
         while(_loc6_ && param2);
         
      }
      
      override public function clone() : Event
      {
         return new § &§(type,this.data,bubbles,cancelable);
      }
   }
}
