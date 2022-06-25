package
{
   import § D§.§]!B§;
   import §![§.FacebookLeveLMain;
   import §"L§.LevelManager;
   import §%!4§.§]!e§;
   import §'b§.ExternalInterfaceHandler;
   import §+p§.§&!>§;
   import §,!O§.§3![§;
   import §3w§.AvatarRenderer;
   import §4H§.StateLoad;
   import §5!'§.§ !Q§;
   import §5!'§.§>Y§;
   import §6b§.§^9§;
   import §7p§.§#s§;
   import §7p§.§+!N§;
   import §7p§.GoogleAnalyticsTracker;
   import §9R§.CachedFacebookFriends;
   import §9R§.HighScoreListManager;
   import §9r§.FacebookLevelManager;
   import §<!S§.StateChapterSelection;
   import §<!S§.StateCreditsNew;
   import §<!S§.StateCutScene;
   import §<!S§.StateLevelSelection;
   import §<!S§.StatePlay;
   import §?j§.FacebookUserProgress;
   import §@!`§.InitDataLoader;
   import §@!`§.UserLevelScoreVO;
   import §@z§.§,Y§;
   import §@z§.§5n§;
   import §@z§.§<?§;
   import §@z§.StateFacebookCredits;
   import §@z§.StateFacebookEpisodeSelection;
   import §@z§.StateFacebookLevelEnd;
   import §@z§.StateFacebookLevelSelection;
   import §@z§.StateFacebookLoad;
   import §@z§.StateFacebookPause;
   import §@z§.StateFacebookPlay;
   import §@z§.§`!`§;
   import com.angrybirds.friendsbar.FriendsBar;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class AngryBirdsUltraBook extends AngryBirdsFP11
   {
      
      public static const AB_FACEBOOK_VERSION:String = "0.0.0.13 r97183)";
      
      private static const LOCAL_STORAGE:String = "AngryBirdsFacebookSettings";
      
      protected static var mFacebookAssetMapBin:Class;
      
      protected static var mFacebookViewLibraryBin:Class;
      
      protected static var mFacebookLevelBackgroundsBin:Class;
      
      protected static var mFacebookItemDataTableBin:Class;
      
      public static var sHighScoreListManager:HighScoreListManager;
      
      public static var sSingleton:AngryBirdsUltraBook;
      
      {
         var AB_FACEBOOK_VERSION:Boolean = true;
         var LOCAL_STORAGE:Boolean = false;
         if(!LOCAL_STORAGE)
         {
            loop0:
            while(true)
            {
               AB_FACEBOOK_VERSION = "0.0.0.13 r97183)";
               while(true)
               {
                  continue loop0;
                  loop8:
                  for(; AB_FACEBOOK_VERSION || AngryBirdsUltraBook; if(LOCAL_STORAGE && AB_FACEBOOK_VERSION)
                  {
                     continue;
                  },§§goto(addr60))
                  {
                     mFacebookLevelBackgroundsBin = §5!b§;
                     loop9:
                     do
                     {
                        loop10:
                        while(true)
                        {
                           mFacebookItemDataTableBin = §8!4§;
                           addr66:
                           addr118:
                           loop11:
                           while(!(LOCAL_STORAGE && LOCAL_STORAGE))
                           {
                              while(true)
                              {
                                 if(AB_FACEBOOK_VERSION)
                                 {
                                    continue loop10;
                                 }
                                 continue loop11;
                                 addr60:
                                 if(AB_FACEBOOK_VERSION || AB_FACEBOOK_VERSION)
                                 {
                                    continue loop9;
                                 }
                              }
                              continue loop8;
                           }
                           loop6:
                           while(true)
                           {
                              if(AB_FACEBOOK_VERSION || AB_FACEBOOK_VERSION)
                              {
                                 addr125:
                                 if(!(LOCAL_STORAGE && AngryBirdsUltraBook))
                                 {
                                    if(!AB_FACEBOOK_VERSION)
                                    {
                                       continue loop0;
                                    }
                                    mFacebookViewLibraryBin = §?!2§;
                                    loop7:
                                    while(true)
                                    {
                                       if(!(LOCAL_STORAGE && LOCAL_STORAGE))
                                       {
                                          continue loop8;
                                       }
                                       addr158:
                                       while(true)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    addr132:
                                 }
                                 while(true)
                                 {
                                    mFacebookAssetMapBin = §7q§;
                                    break loop6;
                                    §§goto(addr125);
                                 }
                              }
                              break;
                              §§goto(addr66);
                           }
                           while(true)
                           {
                              §§goto(addr118);
                           }
                        }
                     }
                     while(!AB_FACEBOOK_VERSION);
                     
                     if(AB_FACEBOOK_VERSION || LOCAL_STORAGE)
                     {
                        return;
                     }
                     §§goto(addr108);
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      protected var §=!>§:FriendsBar;
      
      private var § !H§:String = null;
      
      private var §#"§:String = "";
      
      private var §]`§:§#s§;
      
      private var §,!A§:Sprite;
      
      private var §4!L§:Boolean = false;
      
      public function AngryBirdsUltraBook(canvas:§3![§)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
         }
         var stage3D:Stage3D = null;
         if(_loc7_ || canvas)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               addr86:
               while(true)
               {
                  while(true)
                  {
                     addr73:
                     while(_loc7_ || this)
                     {
                        while(!_loc8_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public static function §9!N§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               §§push((sUserProgress as FacebookUserProgress).userID);
               §§goto(addr98);
            }
         }
         while(true)
         {
            §§push(LOCAL_STORAGE);
            if(_loc1_)
            {
               break;
            }
            addr98:
            while(§§pop())
            {
               if(!_loc2_)
               {
                  continue;
               }
               continue loop0;
            }
            return null;
         }
         §§push(§§pop() + "-");
         if(_loc1_ || _loc1_)
         {
            return §§pop() + (sUserProgress as FacebookUserProgress).userID;
         }
      }
      
      public static function §7r§(dataObject:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_ || _loc3_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               loop2:
               while(_loc4_)
               {
                  §§push(§§findproperty(sHighScoreListManager));
                  §§push(§§findproperty(HighScoreListManager));
                  if(_loc3_)
                  {
                  }
                  §§pop().sHighScoreListManager = new §§pop().HighScoreListManager(SERVER_ROOT,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userID,(AngryBirdsFP11.sUserProgress as FacebookUserProgress).userName);
                  loop3:
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           continue loop3;
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(sHighScoreListManager);
                           if(!(_loc4_ || dataObject))
                           {
                              break;
                           }
                           §§pop().§2!$§(dataObject);
                           continue loop4;
                        }
                        §§push(§§pop().§"!J§);
                        if(_loc4_)
                        {
                           §§push(int(§§pop()));
                        }
                        var count:* = §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           addr191:
                           if(count >= 0)
                           {
                              addr181:
                              if(!(_loc3_ && _loc3_))
                              {
                                 §+!N§.§]w§(count);
                                 addr189:
                                 if(!(_loc3_ && dataObject))
                                 {
                                    if(_loc4_ || dataObject)
                                    {
                                       if(_loc3_)
                                       {
                                          §§goto(addr189);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr191);
                           }
                           addr137:
                           return;
                        }
                        §§goto(addr189);
                     }
                     continue loop2;
                  }
               }
               continue loop0;
               if(_loc3_ && count)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr42);
               }
               §§goto(addr124);
               §§push(sHighScoreListManager);
            }
         }
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            if(_loc3_)
            {
            }
         }
         var loadingScreen:Sprite = new LoadingScreen();
         if(!_loc2_)
         {
         }
         return loadingScreen;
      }
      
      private function §import§(users:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var user:String = null;
         if(_loc6_)
         {
         }
         loop0:
         while(true)
         {
            addr42:
            addr59:
            while(true)
            {
               continue loop0;
            }
            addr71:
            for each(user in users)
            {
            }
            if(_loc5_ || user)
            {
            }
            return;
         }
      }
      
      private function §"!j§(path:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc3_)
         {
         }
         loop0:
         while(true)
         {
            while(this.§4!L§)
            {
               if(!_loc3_)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
               }
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      override protected function getAssetMap() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return §^9§.§1<§(mFacebookAssetMapBin);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || vanillaUIData)
         {
            loop0:
            while(true)
            {
               addr36:
               while(true)
               {
                  continue loop0;
               }
            }
            addr40:
         }
         while(true)
         {
            if(_loc4_)
            {
               continue;
            }
            if(!_loc4_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr40);
            }
            §§goto(addr36);
         }
         var vanillaUIData:XML = super.getUIData();
         if(_loc3_ || facebookUIData)
         {
         }
         var facebookUIData:XML = §^9§.§1<§(mFacebookViewLibraryBin);
         if(_loc4_ && vanillaUIData)
         {
         }
         while(true)
         {
            this.§6^§(facebookUIData,vanillaUIData,["Views","Components"],true);
            while(!(_loc4_ && vanillaUIData))
            {
               if(_loc3_)
               {
                  return vanillaUIData;
               }
            }
         }
      }
      
      override protected function getItemData() : XML
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!_loc4_)
         {
         }
         while(true)
         {
            loop1:
            for(; !_loc5_; while(!(_loc5_ && this))
            {
               if(!(_loc4_ || facebookItemData))
               {
                  continue;
               }
               §§goto(addr32);
            })
            {
               do
               {
                  continue loop1;
               }
               while(false);
               
               var vanillaItemData:XML = super.getItemData();
               if(_loc5_)
               {
               }
               var facebookItemData:XML = §^9§.§1<§(mFacebookItemDataTableBin);
               §§push("Item_Materials");
               §§push("Item_Shapes");
               §§push("Item_Resources_Sounds");
               §§push("SoundChannels");
               §§push("Items");
               §§push("Material_Damage_Multipliers");
               §§push("Material_Velocity_Multipliers");
               if(_loc4_ || vanillaItemData)
               {
               }
               var treesToCopy:Array = null;
               if(!_loc5_)
               {
                  while(true)
                  {
                     this.§6^§(facebookItemData,vanillaItemData,treesToCopy);
                     loop5:
                     while(_loc4_)
                     {
                        while(!_loc4_)
                        {
                           continue loop5;
                        }
                        return vanillaItemData;
                     }
                  }
               }
               §§goto(addr125);
            }
         }
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || vanillaLevelBackgrounds)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               addr56:
               while(true)
               {
                  continue loop0;
               }
            }
            addr60:
         }
         while(true)
         {
            if(!(_loc3_ || this))
            {
               continue;
            }
            if(!(_loc4_ && vanillaLevelBackgrounds))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr60);
            }
            §§goto(addr56);
         }
         var vanillaLevelBackgrounds:XML = super.getLevelBackgrounds();
         if(_loc4_)
         {
         }
         var facebookLevelBackgrounds:XML = §^9§.§1<§(mFacebookLevelBackgroundsBin);
         if(_loc3_ || _loc3_)
         {
            while(true)
            {
               this.§6^§(facebookLevelBackgrounds,vanillaLevelBackgrounds,["Backgrounds"]);
               §§goto(addr118);
            }
         }
         addr118:
         while(true)
         {
            if(!_loc4_)
            {
               if(_loc3_ || vanillaLevelBackgrounds)
               {
                  break;
               }
               continue loop3;
            }
         }
         return vanillaLevelBackgrounds;
      }
      
      protected function §%!+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc2_ || this)
         {
            loop0:
            while(true)
            {
               §§push(!DEBUG_MODE_ENABLED);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop20:
                     while(true)
                     {
                        InitDataLoader.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
                        loop21:
                        for(; !_loc1_; if(!_loc2_)
                        {
                           continue;
                        },if(!_loc1_)
                        {
                           addr44:
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr53);
                              }
                              else
                              {
                                 while(!_loc1_)
                                 {
                                    while(true)
                                    {
                                       §+!N§.§>"§("tokenExpiresIn");
                                       addr119:
                                       while(!(_loc1_ && this))
                                       {
                                          while(_loc2_ || _loc2_)
                                          {
                                             continue loop20;
                                          }
                                          §§goto(addr222);
                                          §§goto(addr44);
                                       }
                                    }
                                 }
                                 §§goto(addr183);
                                 addr149:
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr119);
                        },§§goto(addr95))
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           loop11:
                           while(true)
                           {
                              addr183:
                              while(true)
                              {
                                 §+!N§.§>"§("accessToken");
                                 loop13:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       break loop21;
                                    }
                                    break;
                                    addr53:
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    addr60:
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       break loop20;
                                    }
                                    addr230:
                                    loop8:
                                    for(; !_loc1_; §§goto(addr60))
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(!stage.loaderInfo.parameters.accessToken);
                                          addr174:
                                          addr220:
                                          loop10:
                                          while(!(_loc1_ && _loc1_))
                                          {
                                             if(§§pop())
                                             {
                                                continue loop11;
                                             }
                                             while(true)
                                             {
                                                §§push(!stage.loaderInfo.parameters.tokenExpiresIn);
                                                if(!(_loc1_ && this))
                                                {
                                                   continue loop1;
                                                }
                                                continue loop10;
                                             }
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue loop9;
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                addr222:
                                                while(_loc2_)
                                                {
                                                   §+!N§.§>"§("userId");
                                                   while(!(_loc1_ && this))
                                                   {
                                                      continue loop8;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr174);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       break loop13;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr220);
                                 }
                              }
                           }
                        }
                        while(_loc2_)
                        {
                           §§goto(addr127);
                        }
                        §§goto(addr205);
                     }
                     return;
                     addr68:
                     addr67:
                  }
                  §§goto(addr230);
               }
            }
         }
         §§goto(addr67);
      }
      
      override protected function initialize() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         var mySO:SharedObject = null;
         if(_loc4_ || _loc3_)
         {
            if(_loc4_ || soundsEnabled)
            {
               if(_loc4_)
               {
                  loop0:
                  while(true)
                  {
                     super.initialize();
                     if(!_loc5_)
                     {
                        if(_loc4_ || mySO)
                        {
                           if(false)
                           {
                              continue;
                           }
                           addr125:
                           this.§ !H§ = stage.loaderInfo.parameters.levelId;
                           if(!_loc5_)
                           {
                              while(true)
                              {
                                 sPauseManager.addEventListener(Event.INIT,this.§8R§);
                                 addr136:
                                 while(true)
                                 {
                                 }
                              }
                              addr138:
                              addr77:
                           }
                           while(true)
                           {
                              sPauseManager.addEventListener(Event.COMPLETE,this.§<!]§);
                              break loop0;
                           }
                        }
                        §§goto(addr136);
                     }
                     break;
                  }
                  loop3:
                  while(true)
                  {
                     addr111:
                     while(true)
                     {
                        addr95:
                        while(true)
                        {
                           this.§%!+§();
                           continue loop3;
                        }
                     }
                  }
               }
               §§goto(addr77);
            }
            §§goto(addr93);
         }
         §§goto(addr108);
      }
      
      protected function §`Y§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            if(_loc3_ || this)
            {
               this.§=!>§ = new FriendsBar(sHighScoreListManager,SERVER_ROOT,(sUserProgress as FacebookUserProgress).userID);
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     loop0:
                     while(true)
                     {
                        this.§,!A§.addChild(this.§=!>§);
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              §§push(this.§=!>§);
                              if(!_loc2_)
                              {
                                 §§pop().height = stage.stageHeight;
                                 if(!_loc2_)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(this.§=!>§);
                                       if(_loc3_)
                                       {
                                          §§pop().x = stage.stageWidth - 180;
                                          if(_loc3_ || this)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§=!>§);
                                                addr395:
                                                while(true)
                                                {
                                                   §§push(§&!>§.INVITE_FRIENDS_REQUESTED);
                                                   addr398:
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.§!!h§);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         addr391:
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(this.§=!>§);
                                                            addr374:
                                                            while(true)
                                                            {
                                                               §§push(§&!>§.FULLSCREEN_TOGGLE_REQUESTED);
                                                               addr377:
                                                               while(true)
                                                               {
                                                                  §§pop().addEventListener(§§pop(),this.§1!O§);
                                                                  addr381:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ || this))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§=!>§);
                                                                        addr343:
                                                                        while(true)
                                                                        {
                                                                           §§push(§&!>§.INFO_REQUESTED);
                                                                           addr346:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 §§pop().addEventListener(§§pop(),this.§=M§);
                                                                                 break loop0;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop12;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr404:
                                             addr118:
                                          }
                                          loop16:
                                          while(true)
                                          {
                                             §§push(this.§=!>§);
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§pop().§>!E§();
                                                      loop29:
                                                      for(; !(_loc2_ && _loc1_); while(true)
                                                      {
                                                         if(!(_loc3_ || _loc1_))
                                                         {
                                                            continue loop29;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         addr279:
                                                         loop4:
                                                         while(!(_loc2_ && this))
                                                         {
                                                            while(true)
                                                            {
                                                               addr231:
                                                               addr233:
                                                               addr179:
                                                               while(!_loc3_)
                                                               {
                                                                  break loop0;
                                                               }
                                                               §§push(this.§=!>§);
                                                               while(true)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr181:
                                                                     §§push(§&!>§.PLAY_LEVEL);
                                                                     if(_loc3_ || _loc1_)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           §§pop().addEventListener(§§pop(),this.§,!V§);
                                                                           while(_loc3_ || _loc2_)
                                                                           {
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break loop29;
                                                                                 }
                                                                                 §§goto(addr360);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§=!>§);
                                                                                 addr315:
                                                                                 while(_loc2_ && _loc1_)
                                                                                 {
                                                                                    §§goto(addr395);
                                                                                 }
                                                                                 §§push(§&!>§.TUTORIAL_REQUESTED);
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().addEventListener(§§pop(),this.§+A§);
                                                                                    addr329:
                                                                                    loop6:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc2_ && _loc3_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(this.§=!>§);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§push(§&!>§.MUTE_TOGGLE_REQUESTED);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               break loop6;
                                                                                                            }
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         continue loop20;
                                                                                                         addr295:
                                                                                                      }
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr315);
                                                                                                   }
                                                                                                }
                                                                                                addr283:
                                                                                             }
                                                                                             §§goto(addr381);
                                                                                          }
                                                                                          addr309:
                                                                                       }
                                                                                       §§goto(addr391);
                                                                                       continue loop20;
                                                                                    }
                                                                                    addr306:
                                                                                    §§pop().addEventListener(§§pop(),this.§2!F§);
                                                                                    while(true)
                                                                                    {
                                                                                       break loop4;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break loop29;
                                                                           }
                                                                           §§goto(addr231);
                                                                           addr212:
                                                                        }
                                                                        §§goto(addr295);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              §§pop().addEventListener(§§pop(),this.§`!R§);
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr377);
                                                                        }
                                                                        break;
                                                                        §§goto(addr181);
                                                                     }
                                                                     §§goto(addr346);
                                                                     addr242:
                                                                  }
                                                                  addr237:
                                                                  while(_loc3_)
                                                                  {
                                                                     §§goto(addr242);
                                                                     §§push(§&!>§.BRAG);
                                                                  }
                                                                  §§goto(addr343);
                                                                  §§goto(addr233);
                                                               }
                                                               continue loop16;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr329);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr237);
                                                            §§goto(addr272);
                                                         }
                                                      },return)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr404);
                                                      }
                                                      while(true)
                                                      {
                                                         if(_loc3_ || this)
                                                         {
                                                            continue loop16;
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                   }
                                                   addr147:
                                                }
                                                §§goto(addr283);
                                             }
                                             §§goto(addr179);
                                          }
                                       }
                                       §§goto(addr343);
                                    }
                                    §§goto(addr391);
                                 }
                                 §§goto(addr118);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr279);
                        }
                        break;
                     }
                     while(true)
                     {
                     }
                  }
                  §§goto(addr339);
               }
               §§goto(addr360);
            }
            §§goto(addr158);
         }
         §§goto(addr262);
      }
      
      protected function §8R§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               loop1:
               while(!_loc3_)
               {
                  while(true)
                  {
                     §>Y§.§1e§(false);
                     while(_loc3_ && _loc3_)
                     {
                     }
                     if(!(_loc3_ && e))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function §<!]§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               while(_loc2_ || this)
               {
                  §>Y§.§1e§(true);
                  while(!(_loc3_ && e))
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §81§(level:String, scores:CachedFacebookFriends = null, isTournament:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || isTournament)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               addr123:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr98);
      }
      
      public function §8$§(buttonState:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || buttonState)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     this.§=!>§.§+x§(buttonState);
                     while(_loc2_ && _loc3_)
                     {
                     }
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr86);
      }
      
      override protected function initLevelMain() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && this))
         {
            if(_loc3_ || _loc2_)
            {
               §]!B§.§>F§ = new FacebookLeveLMain(stage);
               if(_loc3_ || _loc2_)
               {
               }
            }
         }
      }
      
      override protected function initUserProgress() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(!_loc3_)
         {
            if(!(_loc3_ && _loc1_))
            {
               sUserProgress = new FacebookUserProgress(SERVER_ROOT);
               if(!_loc2_)
               {
               }
            }
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               §<!g§(new §,Y§(false));
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §<!g§(new §`!`§(false));
                     while(true)
                     {
                        continue loop2;
                        addr96:
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        §<!g§(new §5n§(false));
                        while(_loc1_ || _loc2_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §§goto(addr145);
                        }
                        addr82:
                     }
                  }
               }
            }
         }
         addr145:
         loop14:
         do
         {
            §<!g§(new §<?§(false));
            addr111:
            addr183:
            loop10:
            while(_loc1_ || _loc1_)
            {
               §<!g§(new StateFacebookPause(false));
               while(_loc1_)
               {
                  while(_loc1_ || this)
                  {
                     §§goto(addr163);
                     while(!(_loc2_ && _loc1_))
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        if(_loc2_ && _loc2_)
                        {
                           continue loop0;
                        }
                        if(!_loc1_)
                        {
                           continue loop13;
                        }
                        if(!_loc2_)
                        {
                           continue loop14;
                        }
                        addr92:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr111);
                              continue loop10;
                           }
                           if(!_loc1_)
                           {
                              break;
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr198);
                     }
                  }
               }
               continue loop2;
            }
            addr237:
            while(!(_loc2_ && this))
            {
               addr128:
               if(!(_loc2_ && _loc1_))
               {
                  continue loop1;
               }
               addr219:
               while(true)
               {
                  §<!g§(new StateFacebookLevelSelection(false));
                  loop7:
                  while(true)
                  {
                     while(true)
                     {
                        §<!g§(new StateFacebookPlay(false));
                        continue loop7;
                        addr163:
                        if(!(_loc2_ && this))
                        {
                           §<!g§(new StateFacebookLevelEnd(false));
                           continue loop13;
                        }
                     }
                  }
                  §§goto(addr128);
               }
            }
            while(true)
            {
               §§goto(addr219);
               §§goto(addr183);
            }
         }
         while(_loc2_);
         
      }
      
      override protected function initStateLoad() : StateLoad
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               §§push(!DEBUG_MODE_ENABLED);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(!stage.loaderInfo.parameters.assetsUrl);
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(!stage.loaderInfo.parameters.buildNumber);
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!§§pop())
                                          {
                                             break;
                                          }
                                          if(_loc1_)
                                          {
                                          }
                                          if(!_loc1_)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                if(_loc2_ || _loc1_)
                                                {
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                             addr164:
                                             addr164:
                                             while(true)
                                             {
                                                §+!N§.§>"§("assetsUrl");
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          do
                                          {
                                             if(!_loc2_)
                                             {
                                                continue;
                                             }
                                          }
                                          while(!(_loc2_ || _loc1_));
                                          
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    continue loop4;
                                 }
                                 addr34:
                                 §§push(§§findproperty(StateFacebookLoad));
                                 if(_loc1_)
                                 {
                                 }
                                 return new §§pop().StateFacebookLoad(true,StateLoad.STATE_NAME,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
                                 addr85:
                              }
                              while(_loc2_)
                              {
                                 §§goto(addr164);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr34);
               }
            }
         }
         §§goto(addr164);
      }
      
      override protected function onGraphicsInitialized(e:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         var levelId:* = null;
         if(_loc5_)
         {
            if(_loc5_)
            {
               if(_loc5_ || levelId)
               {
                  §§push(sInitComplete = true);
                  if(!_loc4_)
                  {
                     §§pop();
                     if(!(_loc4_ && levelId))
                     {
                        if(!(_loc4_ && levelId))
                        {
                           §§push(this.§ !H§);
                           loop0:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr145:
                              loop6:
                              for(; §§pop(); continue loop0)
                              {
                                 if(_loc5_ || levelId)
                                 {
                                    loop7:
                                    for(; !_loc4_; loop10:
                                    while(true)
                                    {
                                       if(!(_loc4_ && e))
                                       {
                                          if(!_loc4_)
                                          {
                                             while(true)
                                             {
                                                §§push(levelId);
                                                if(_loc5_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(§§pop() != this.§ !H§)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            while(true)
                                                            {
                                                               addr75:
                                                               while(true)
                                                               {
                                                                  §+!N§.§!m§(this.§ !H§);
                                                                  if(!(_loc4_ && e))
                                                                  {
                                                                     if(_loc4_ && _loc3_)
                                                                     {
                                                                        this.§;!6§(levelId);
                                                                        break loop10;
                                                                     }
                                                                     addr255:
                                                                     if(!_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  addr228:
                                                                  addr228:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr206);
                                                                  }
                                                               }
                                                            }
                                                            addr102:
                                                         }
                                                         break loop7;
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr124);
                                                }
                                                §§goto(addr125);
                                             }
                                             addr164:
                                             this.§ !H§ = null;
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                addr257:
                                                loop12:
                                                while(true)
                                                {
                                                   if(!AngryBirdsFP11.sUserProgress.isLevelOpen(levelId))
                                                   {
                                                      addr206:
                                                      §§goto(addr231);
                                                   }
                                                   addr252:
                                                   while(true)
                                                   {
                                                      addr253:
                                                      while(!_loc5_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                                addr179:
                                                addr257:
                                             }
                                             §§goto(addr255);
                                             addr107:
                                          }
                                          break;
                                       }
                                       continue loop7;
                                    },while(true)
                                    {
                                       §§goto(addr231);
                                    })
                                    {
                                       §§push(LevelManager.§"%§(this.§ !H§));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr125:
                                          while(_loc5_)
                                          {
                                             levelId = §§pop();
                                             continue loop7;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    loop14:
                                    while(true)
                                    {
                                       if(_loc5_ || this)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_ || e)
                                             {
                                                if(_loc5_)
                                                {
                                                   return;
                                                }
                                                §§goto(addr252);
                                             }
                                             §§goto(addr253);
                                          }
                                          addr231:
                                          while(true)
                                          {
                                             break loop6;
                                          }
                                          while(_loc4_ && e)
                                          {
                                             break loop10;
                                          }
                                          return;
                                       }
                                       addr213:
                                       while(_loc5_)
                                       {
                                          continue loop14;
                                       }
                                       §§goto(addr228);
                                    }
                                 }
                                 §§goto(addr179);
                              }
                              while(true)
                              {
                                 §,!&§(StateChapterSelection.STATE_NAME);
                                 §§goto(addr213);
                              }
                           }
                        }
                        §§goto(addr228);
                     }
                     §§goto(addr257);
                  }
                  §§goto(addr145);
               }
               §§goto(addr257);
            }
            §§goto(addr107);
         }
         §§goto(addr102);
      }
      
      public function §;!6§(levelId:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
         }
         if(_loc4_)
         {
            if(!_loc3_)
            {
               if(!(_loc3_ && levelId))
               {
                  §§push(LevelManager.§"%§(levelId));
                  if(!(_loc3_ && _loc2_))
                  {
                     var _loc2_:*;
                     §§push(_loc2_ = §§pop());
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && this))
                        {
                           levelId = §§pop();
                           §§push(_loc2_);
                        }
                     }
                  }
                  §§pop();
                  if(!_loc3_)
                  {
                     addr78:
                  }
                  loop0:
                  while(true)
                  {
                     LevelManager.§]!R§(levelId);
                     loop1:
                     while(true)
                     {
                        addr114:
                        loop2:
                        while(true)
                        {
                           §,!&§(StateCutScene.STATE_NAME);
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            §§goto(addr78);
         }
         §§goto(addr114);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc1_)
         {
         }
         if(!_loc2_)
         {
            if(!(_loc2_ && _loc3_))
            {
               loop0:
               while(true)
               {
                  super.setFirstGameState();
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     if(false)
                     {
                        continue;
                     }
                     § !Q§.sAvatarRenderer = new AvatarRenderer();
                     if(_loc3_)
                     {
                        loop1:
                        while(true)
                        {
                           § !Q§.sAvatarRenderer.§'I§();
                           addr185:
                           while(true)
                           {
                              addr178:
                              while(true)
                              {
                                 this.§`Y§();
                                 continue loop1;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              break loop0;
                           }
                           break;
                           addr89:
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr64);
                           }
                        }
                        §§goto(addr168);
                     }
                  }
                  break;
               }
               while((sUserProgress as FacebookUserProgress).hasTutorialBeenSeen(FacebookUserProgress.TOURNAMENT_TUTORIAL) == false)
               {
                  loop8:
                  while(true)
                  {
                     addr129:
                     while(_loc3_ || _loc1_)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           (sUserProgress as FacebookUserProgress).saveTutorialSeen(FacebookUserProgress.TOURNAMENT_TUTORIAL);
                           continue loop8;
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr178);
                  }
               }
               addr64:
               return;
               addr163:
            }
            §§goto(addr185);
         }
         §§goto(addr163);
      }
      
      override protected function onStageResize(e:Event) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc9_)
         {
         }
         if(_loc8_)
         {
            while(true)
            {
               while(_loc8_)
               {
                  while(_loc8_)
                  {
                  }
               }
            }
         }
         loop3:
         while(true)
         {
            while(true)
            {
               loop5:
               while(true)
               {
                  while(_loc8_)
                  {
                     if(_loc9_ && e)
                     {
                        continue;
                     }
                     if(_loc9_)
                     {
                        break loop5;
                     }
                     if(_loc8_)
                     {
                        if(false)
                        {
                           continue loop5;
                        }
                        var width:int = Math.round(stage.stageWidth);
                        if(_loc8_ || width)
                        {
                        }
                        var height:int = Math.round(stage.stageHeight);
                        if(_loc8_ || width)
                        {
                           if(!(_loc9_ && height))
                           {
                              addr122:
                              §§push(width);
                              §§push(20);
                              if(_loc8_)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(_loc8_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc8_ || width)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ || height)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!_loc9_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc8_ || e)
                                                {
                                                   §§pop();
                                                   if(!_loc9_)
                                                   {
                                                      §§push(height);
                                                      if(!_loc9_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            §§push(20);
                                                            if(!_loc9_)
                                                            {
                                                               §§push(§§pop() < §§pop());
                                                               if(_loc8_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc9_)
                                                                  {
                                                                     addr108:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc9_ && width))
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr122);
                                                                              }
                                                                              width = sStageWidth;
                                                                              if(!(_loc9_ && e))
                                                                              {
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    height = sStageHeight;
                                                                                    if(!(_loc9_ && e))
                                                                                    {
                                                                                       addr313:
                                                                                       §§push(width < 2);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          addr317:
                                                                                          §§push(Boolean(§§pop()));
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr321:
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                addr322:
                                                                                                §§pop();
                                                                                                addr323:
                                                                                                §§push(height);
                                                                                                if(!(_loc9_ && e))
                                                                                                {
                                                                                                   if(!(_loc9_ && e))
                                                                                                   {
                                                                                                      addr274:
                                                                                                      §§push(2);
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                         addr291:
                                                                                                         §§push(§§pop() < §§pop());
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               addr296:
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                            §§goto(addr322);
                                                                                                         }
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr300:
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               addr212:
                                                                                                               §§push(width);
                                                                                                               if(_loc8_ || height)
                                                                                                               {
                                                                                                                  §§push(height);
                                                                                                                  if(_loc8_ || width)
                                                                                                                  {
                                                                                                                     addr229:
                                                                                                                     if(§§pop() / §§pop() > 25 / 12)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ && height))
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr323);
                                                                                                                                 }
                                                                                                                                 addr248:
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr250);
                                                                                                                                 }
                                                                                                                                 width = Math.round(height * (25 / 12));
                                                                                                                                 if(_loc8_ || width)
                                                                                                                                 {
                                                                                                                                    addr349:
                                                                                                                                    §§push(180);
                                                                                                                                    if(!(_loc9_ && height))
                                                                                                                                    {
                                                                                                                                       addr358:
                                                                                                                                       var friendsBarWidth:int = §§pop();
                                                                                                                                       addr357:
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       §§push(62);
                                                                                                                                       if(!(_loc9_ && width))
                                                                                                                                       {
                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                       }
                                                                                                                                       var intelAdjust:* = §§pop();
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       §§push(width);
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(int(§§pop() - (friendsBarWidth - intelAdjust)));
                                                                                                                                       }
                                                                                                                                       var resulWidth:* = §§pop();
                                                                                                                                       if(!(_loc9_ && e))
                                                                                                                                       {
                                                                                                                                          if(_loc8_ || height)
                                                                                                                                          {
                                                                                                                                             §]!B§.§%e§(0,0,resulWidth,height);
                                                                                                                                             if(_loc8_ || this)
                                                                                                                                             {
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   setViewSize(resulWidth,height);
                                                                                                                                                   addr443:
                                                                                                                                                   if(!(_loc9_ && height))
                                                                                                                                                   {
                                                                                                                                                      this.§7d§(width,height);
                                                                                                                                                      addr415:
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§=!>§);
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc9_ && height))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           if(false)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr415);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(this.§=!>§);
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(width);
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(friendsBarWidth);
                                                                                                                                                                                 if(_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop() - §§pop();
                                                                                                                                                                                    if(_loc8_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc8_ || width)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr506:
                                                                                                                                                                                          var _loc7_:*;
                                                                                                                                                                                          this.§=!>§.height = _loc7_ = height;
                                                                                                                                                                                          if(_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   if(_loc8_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr524:
                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr527:
                                                                                                                                                                                                         sStageWidth = _loc7_ = resulWidth;
                                                                                                                                                                                                         if(!(_loc9_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr539:
                                                                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                                                                            if(_loc8_ || width)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc9_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr568:
                                                                                                                                                                                                                     if(_loc8_ || height)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr576:
                                                                                                                                                                                                                        sStageHeight = _loc7_ = height;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr587);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr586);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr583);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr582);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr582:
                                                                                                                                                                                                         addr583:
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr586:
                                                                                                                                                                                                            §§goto(addr587);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr587:
                                                                                                                                                                                                         return;
                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr587);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr568);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr583);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr582);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr539);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr576);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr524);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr506);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr443);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr415);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr568);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr586);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr527);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr506);
                                                                                                                                                      }
                                                                                                                                                      addr426:
                                                                                                                                                      §§goto(addr426);
                                                                                                                                                      addr436:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr568);
                                                                                                                                                }
                                                                                                                                                §§goto(addr524);
                                                                                                                                             }
                                                                                                                                             §§goto(addr586);
                                                                                                                                          }
                                                                                                                                          §§goto(addr568);
                                                                                                                                       }
                                                                                                                                       §§goto(addr436);
                                                                                                                                    }
                                                                                                                                    §§goto(addr358);
                                                                                                                                    addr348:
                                                                                                                                 }
                                                                                                                                 §§goto(addr349);
                                                                                                                              }
                                                                                                                              §§goto(addr309);
                                                                                                                           }
                                                                                                                           §§goto(addr348);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr349);
                                                                                                                  }
                                                                                                                  §§goto(addr274);
                                                                                                               }
                                                                                                               §§goto(addr357);
                                                                                                            }
                                                                                                            if(!(_loc9_ && width))
                                                                                                            {
                                                                                                               §§goto(addr308);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr349);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr317);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr313);
                                                                                                }
                                                                                                §§goto(addr358);
                                                                                             }
                                                                                             §§goto(addr299);
                                                                                          }
                                                                                          §§goto(addr321);
                                                                                       }
                                                                                       §§goto(addr322);
                                                                                       addr210:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr256:
                                                                                    }
                                                                                    §§goto(addr212);
                                                                                 }
                                                                                 §§goto(addr349);
                                                                              }
                                                                              §§goto(addr308);
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                        §§goto(addr248);
                                                                     }
                                                                     §§goto(addr313);
                                                                  }
                                                               }
                                                               §§goto(addr317);
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         §§goto(addr122);
                                                      }
                                                      §§goto(addr358);
                                                   }
                                                   §§goto(addr210);
                                                }
                                                §§goto(addr300);
                                             }
                                             §§goto(addr108);
                                          }
                                       }
                                       §§goto(addr321);
                                    }
                                    §§goto(addr317);
                                 }
                                 §§goto(addr296);
                              }
                              §§goto(addr291);
                           }
                           addr308:
                           addr309:
                           addr250:
                           return;
                        }
                        §§goto(addr256);
                     }
                     else
                     {
                        §§goto(addr51);
                     }
                  }
                  continue loop3;
               }
            }
         }
      }
      
      public function §7d§(width:Number, height:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc3_ || width)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               while(!(_loc4_ && height))
               {
                  §]!e§.setViewSize(width,height);
                  continue loop0;
                  if(_loc3_ || width)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected function §6^§(sourceXML:XML, destinationXML:XML, treesToCopy:Array, deleteSameName:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || treesToCopy)
         {
         }
         var treeName:String = null;
         var childNode:XML = null;
         if(!(_loc13_ && treesToCopy))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr74:
                  while(_loc12_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr57);
         }
      }
      
      protected function §!!h§(e:§&!>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!(_loc2_ && e))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §"§();
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        if(e.data != null)
                        {
                           continue loop1;
                        }
                        §+!N§.§?!W§();
                        loop4:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 §+!N§.§3!0§();
                                 loop6:
                                 while(_loc3_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(ExternalInterfaceHandler);
                                       §§push("flashInviteFriendsHandler");
                                       if(!_loc2_)
                                       {
                                          §§push(e.data);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§pop().§>!2§(§§pop(),Boolean(§§pop()) ? e.data.userId : null);
                                             while(_loc3_ || this)
                                             {
                                                continue loop4;
                                                if(!_loc2_)
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         return;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop6;
                                                   continue loop6;
                                                }
                                             }
                                             continue;
                                          }
                                       }
                                       §§goto(addr66);
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                              addr157:
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr100);
         }
      }
      
      protected function §1!O§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               addr56:
               while(_loc2_)
               {
               }
            }
         }
         while(true)
         {
            §>J§();
            while(_loc2_)
            {
               if(_loc2_ || e)
               {
                  return;
               }
            }
            §§goto(addr56);
         }
      }
      
      protected function §=M§(e:§&!>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  trace("Should go to credits screen.");
                  loop2:
                  while(_loc3_ || this)
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        §-v§.uiInteractionHandler(0,"showCredits",null);
                        while(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 return;
                                 addr49:
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      protected function §+A§(e:§&!>§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               while(true)
               {
                  §-v§.uiInteractionHandler(0,"showTutorial",null);
                  §§goto(addr69);
               }
            }
         }
         addr69:
         while(true)
         {
            if(_loc2_)
            {
               if(_loc2_ || e)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      protected function §`!R§(e:§&!>§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc4_ && position)
         {
         }
         while(true)
         {
            loop1:
            for(; _loc3_; while(!(_loc4_ && this))
            {
               if(_loc4_ && position)
               {
                  continue;
               }
               §§goto(addr37);
            })
            {
               while(true)
               {
                  addr46:
                  addr37:
                  while(true)
                  {
                     §"§();
                     continue loop1;
                  }
                  if(_loc4_ && position)
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr46);
                  }
                  else
                  {
                     var position:int = (e.data as UserLevelScoreVO).rank - 1;
                     if(_loc4_ && _loc3_)
                     {
                     }
                     §+!N§.§6q§(position.toString());
                     addr158:
                     addr177:
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && this))
                        {
                           §§push(ExternalInterfaceHandler);
                           §§push("flashBrag");
                           if(_loc4_)
                           {
                           }
                           §§push(e.data.userId);
                           §§push(LevelManager.§var§);
                           if(_loc3_ || this)
                           {
                           }
                           §§push(LevelManager.§&!e§().writtenName + "-");
                           if(_loc3_)
                           {
                              §§push(§§pop() + FacebookLevelManager.§%!P§(LevelManager.§var§));
                           }
                           §§pop().§>!2§(§§pop(),§§pop(),§§pop(),§§pop());
                           if(_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr158);
                              }
                              return;
                           }
                           addr155:
                           §§goto(addr155);
                        }
                        §§goto(addr177);
                     }
                     addr175:
                     §§goto(addr175);
                  }
               }
            }
         }
      }
      
      protected function §,!V§(e:§&!>§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
         }
         if(_loc4_ || levelId)
         {
            while(true)
            {
               addr53:
               loop1:
               while(true)
               {
                  addr48:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
            addr55:
         }
         while(true)
         {
            if(!_loc4_)
            {
               continue;
            }
            if(!(_loc5_ && targetLevelId))
            {
               if(!_loc5_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr55);
               }
               §§goto(addr48);
            }
            §§goto(addr53);
         }
         var targetLevelId:String = e.target.data.lvl;
         if(_loc5_)
         {
         }
         §§push(LevelManager.§"%§(targetLevelId));
         if(_loc4_ || targetLevelId)
         {
            §§push(§§pop());
         }
         var levelId:* = §§pop();
         if(!_loc5_)
         {
            loop4:
            while(true)
            {
               if(levelId != targetLevelId)
               {
                  while(true)
                  {
                     §+!N§.§!m§(targetLevelId);
                     addr185:
                     while(true)
                     {
                     }
                     addr147:
                     §,!&§(StateCutScene.STATE_NAME);
                     if(_loc4_ || targetLevelId)
                     {
                        addr140:
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              LevelManager.§]!R§(levelId);
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(_loc5_)
                              {
                                 continue loop4;
                              }
                              §§goto(addr147);
                              §§goto(addr140);
                           }
                           §§goto(addr185);
                           addr175:
                        }
                        return;
                     }
                  }
               }
               while(AngryBirdsFP11.sUserProgress.isLevelOpen(levelId))
               {
                  if(!_loc4_)
                  {
                  }
                  §§goto(addr175);
                  §§goto(addr185);
               }
               return;
            }
         }
         §§goto(addr185);
      }
      
      protected function §2!F§(e:§&!>§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(_loc5_ || e)
         {
         }
         §§push(§§newactivation());
         if(_loc5_ || onMuteToggleRequested$0)
         {
            §§pop().§§slot[2] = null;
            if(_loc5_)
            {
               §§push(§§newactivation());
               if(_loc5_)
               {
                  §§pop().§§slot[1] = e;
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           §72§(!§+i§());
                           if(_loc5_)
                           {
                              if(_loc5_ || this)
                              {
                                 if(§+i§())
                                 {
                                    if(!(_loc5_ || this))
                                    {
                                       continue;
                                    }
                                    if(_loc5_ || _loc3_)
                                    {
                                       continue;
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop12;
                                          }
                                          if(!_loc5_)
                                          {
                                             break;
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             trace("Storing sound settings: " + sSoundsEnabled);
                                             loop15:
                                             while(!_loc4_)
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc5_ || _loc3_))
                                                   {
                                                      continue loop15;
                                                   }
                                                   while(true)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop1;
                                                      }
                                                      continue loop14;
                                                   }
                                                }
                                             }
                                             continue loop13;
                                          }
                                       }
                                       addr358:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          §§goto(addr353);
                                       }
                                    }
                                    addr356:
                                 }
                                 else
                                 {
                                    try
                                    {
                                       addr276:
                                       §§push(§§newactivation());
                                       if(!(_loc4_ && e))
                                       {
                                          addr284:
                                          §§pop().§§slot[2] = SharedObject.getLocal(LOCAL_STORAGE);
                                          if(_loc5_ || this)
                                          {
                                             if(_loc5_ || onMuteToggleRequested$0)
                                             {
                                                addr306:
                                                §§push(§§newactivation());
                                                if(_loc4_)
                                                {
                                                }
                                                addr353:
                                                §§goto(addr400);
                                             }
                                             §§goto(addr343);
                                          }
                                          §§goto(addr331);
                                       }
                                       §§pop().§§slot[2].data.useSounds = sSoundsEnabled;
                                       if(_loc5_)
                                       {
                                          §§goto(addr358);
                                          addr321:
                                       }
                                       §§goto(addr356);
                                    }
                                    catch(e:Error)
                                    {
                                    }
                                    §§goto(addr400);
                                 }
                                 var _loc3_:* = e;
                                 e = §§pop();
                                 if(!_loc4_)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr391:
                                       trace("Unable to get local storage aborting");
                                    }
                                    if(_loc4_)
                                    {
                                    }
                                    §§goto(addr400);
                                 }
                                 §§goto(addr391);
                              }
                              §§goto(addr331);
                           }
                           §§goto(addr343);
                        }
                        §§goto(addr350);
                     }
                     addr400:
                     while(true)
                     {
                        §§pop().§§slot[2].flush();
                        continue loop12;
                     }
                     return;
                  }
               }
               §§goto(addr353);
            }
            §§goto(addr306);
         }
         §§goto(addr284);
      }
      
      override public function newUserScore(level:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         if(!(_loc7_ && level))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     addr37:
                     if(_loc6_ || level)
                     {
                        if(false)
                        {
                           loop4:
                           while(true)
                           {
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    if(!_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc7_ && score)
                                    {
                                       continue;
                                    }
                                    §§goto(addr37);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop4;
                                    }
                                    addr57:
                                 }
                              }
                              continue loop1;
                           }
                        }
                        var score:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(level);
                        if(_loc7_)
                        {
                        }
                        var stars:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(level);
                        if(!_loc6_)
                        {
                        }
                        var mEagle:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(level);
                        if(_loc7_ && score)
                        {
                        }
                        §§push(this.§?,§(score,stars,mEagle));
                        if(!_loc7_)
                        {
                           §§push(int(§§pop()));
                        }
                        var rankAfterUpdate:* = §§pop();
                        if(_loc6_ || stars)
                        {
                        }
                        loop6:
                        while(rankAfterUpdate)
                        {
                           loop7:
                           while(true)
                           {
                              loop8:
                              while(true)
                              {
                                 (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§5Q§(level,rankAfterUpdate);
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop7;
                                    }
                                    continue loop8;
                                 }
                                 continue loop6;
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §?,§(score:int, stars:int, mEagle:int = 0, isTournament:Boolean = false) : int
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc12_)
         {
         }
         var beatenUser:UserLevelScoreVO = null;
         var position:int = 0;
         if(_loc13_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     while(_loc13_ || score)
                     {
                        if(!_loc13_)
                        {
                           continue loop1;
                        }
                        while(true)
                        {
                           addr56:
                           while(!(_loc12_ && stars))
                           {
                              while(true)
                              {
                                 continue loop0;
                              }
                           }
                        }
                        if(!(_loc13_ || stars))
                        {
                           continue;
                        }
                        if(true)
                        {
                           §§goto(addr87);
                        }
                        §§goto(addr44);
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(_loc13_)
            {
               if(_loc13_)
               {
                  §§goto(addr35);
               }
               §§goto(addr56);
            }
            §§goto(addr46);
         }
         addr87:
         var beatenUsers:Array = [];
         if(_loc12_)
         {
         }
         §§push(this.§8^§);
         if(_loc12_ && score)
         {
         }
         §§push(LevelManager.§var§);
         if(_loc12_ && mEagle)
         {
         }
         §§push(score);
         if(_loc12_ && stars)
         {
         }
         §§push(stars);
         if(_loc13_ || stars)
         {
         }
         §§push(mEagle);
         if(_loc12_)
         {
         }
         §§push(§§pop().§-!E§(§§pop(),§§pop(),§§pop(),§§pop(),beatenUsers,isTournament));
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var rankAfterUpdate:* = §§pop();
         if(_loc12_)
         {
         }
         loop9:
         for each(var _loc11_ in beatenUsers)
         {
            beatenUser = _loc11_;
            _loc11_;
            if(!(_loc12_ && score))
            {
               while(true)
               {
               }
               addr249:
            }
            loop11:
            while(true)
            {
               position = beatenUser.rank - 1;
               loop12:
               while(true)
               {
                  if(!(_loc13_ || this))
                  {
                     continue loop11;
                  }
                  loop13:
                  while(_loc13_)
                  {
                     do
                     {
                        §+!N§.§^!j§(position.toString());
                        while(true)
                        {
                           if(!(_loc12_ && stars))
                           {
                              continue loop12;
                           }
                           continue loop13;
                        }
                        continue loop12;
                     }
                     while(false);
                     
                     continue loop9;
                  }
                  §§goto(addr249);
               }
            }
         }
         if(_loc12_ && stars)
         {
         }
         return rankAfterUpdate;
      }
      
      public function get §8^§() : FriendsBar
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
         }
         return this.§=!>§;
      }
      
      public function get §56§() : §#s§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§]`§;
      }
      
      public function §+k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               §§push(this.§]`§);
               loop1:
               while(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§push(this.§]`§);
                     if(_loc2_)
                     {
                        break;
                     }
                     §§pop().§,x§();
                     while(_loc1_ || _loc2_)
                     {
                        if(_loc1_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              if(_loc1_)
                              {
                                 break loop1;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        continue loop3;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr81);
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         §§push("Client: ");
         if(!(_loc1_ && _loc2_))
         {
            if(_loc2_)
            {
               §§push(§§pop() + AB_FACEBOOK_VERSION.replace("{svn_version}","local dev build"));
               if(_loc2_)
               {
                  §§push("Server: ");
                  if(_loc2_ || this)
                  {
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     addr77:
                     return §§pop() + SERVER_VERSION;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      override protected function initializeGame() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
         }
         if(_loc4_ || _loc2_)
         {
            if(!_loc4_)
            {
            }
         }
         var time:int = Math.round(getTimer() / 1000);
         if(_loc4_)
         {
            if(!_loc3_)
            {
               loop0:
               while(true)
               {
                  §+!N§.§1`§(GoogleAnalyticsTracker.§`!B§,time.toString(),time);
                  if(!(_loc3_ && _loc3_))
                  {
                     while(true)
                     {
                        if(_loc4_ || time)
                        {
                           if(true)
                           {
                              this.§4!L§ = true;
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    super.initializeGame();
                                    break loop0;
                                 }
                                 addr131:
                                 addr113:
                              }
                           }
                           continue loop0;
                           break loop0;
                        }
                        §§goto(addr124);
                     }
                     addr88:
                  }
                  break;
               }
               while(true)
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr131);
               }
               addr124:
               return;
            }
            §§goto(addr113);
         }
         §§goto(addr88);
      }
      
      override protected function onKeyDown(event:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
         }
         if(!(_loc3_ && this))
         {
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  super.onKeyDown(event);
                  if(_loc4_ || event)
                  {
                     while(_loc4_ || _loc3_)
                     {
                        §§push(this.§#"§);
                        if(_loc4_)
                        {
                           if(!§§pop())
                           {
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    addr151:
                                    this.§#"§ = String.fromCharCode(event.keyCode);
                                    if(_loc3_)
                                    {
                                    }
                                    addr151:
                                    if(this.§#"§.length > 15)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             addr171:
                                             this.§#"§ = this.§#"§.substr(1);
                                             if(_loc4_ || this)
                                             {
                                                addr190:
                                                return;
                                                addr189:
                                             }
                                          }
                                          §§goto(addr190);
                                       }
                                       §§goto(addr189);
                                    }
                                    §§goto(addr190);
                                 }
                                 break;
                              }
                              §§goto(addr190);
                           }
                           else
                           {
                              this.§#"§ = this.§#"§ + String.fromCharCode(event.keyCode);
                              if(_loc4_ || _loc2_)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    break;
                                 }
                                 addr148:
                                 if(_loc4_)
                                 {
                                    §§goto(addr151);
                                 }
                                 §§goto(addr190);
                              }
                           }
                        }
                        §§goto(addr151);
                     }
                     this.§#"§ = this.§#"§.toLowerCase();
                     if(_loc4_)
                     {
                        §§goto(addr148);
                     }
                     §§goto(addr151);
                  }
               }
               §§goto(addr171);
            }
            §§goto(addr190);
         }
         §§goto(addr171);
      }
      
      override public function externalPause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         while(true)
         {
            §+!N§.§[!A§();
            while(!(_loc1_ && _loc1_))
            {
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      override public function externalResume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         while(true)
         {
            §+!N§.§@!%§();
            while(_loc2_)
            {
               if(_loc2_ || this)
               {
                  return;
               }
            }
         }
      }
   }
}
