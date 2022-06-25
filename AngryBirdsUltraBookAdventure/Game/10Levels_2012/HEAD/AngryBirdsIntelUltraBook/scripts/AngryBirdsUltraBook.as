package
{
   import §"!!§.§&G§;
   import §#!2§.§%!8§;
   import §#!2§.§0!<§;
   import §#!2§.§5s§;
   import §#!2§.StateFacebookCredits;
   import §#!2§.StateFacebookEpisodeSelection;
   import §#!2§.StateFacebookLevelEnd;
   import §#!2§.StateFacebookLevelSelection;
   import §#!2§.StateFacebookLoad;
   import §#!2§.StateFacebookPause;
   import §#!2§.StateFacebookPlay;
   import §#!2§.§^!`§;
   import §#!X§.LevelManager;
   import §'!%§.CachedFacebookFriends;
   import §'!%§.HighScoreListManager;
   import §'N§.§0d§;
   import §+R§.§3!1§;
   import §+R§.§9!S§;
   import §,!#§.ExternalInterfaceHandler;
   import §-!>§.§4!T§;
   import §2S§.§<!U§;
   import §8T§.FacebookUserProgress;
   import §9!!§.§->§;
   import §9!!§.§85§;
   import §9!!§.GoogleAnalyticsTracker;
   import §9c§.StateChapterSelection;
   import §9c§.StateCreditsNew;
   import §9c§.StateCutScene;
   import §9c§.StateLevelSelection;
   import §9c§.StatePlay;
   import §9v§.§4!c§;
   import §<!=§.InitDataLoader;
   import §<!=§.UserLevelScoreVO;
   import §@Q§.FacebookLeveLMain;
   import §[!>§.StateLoad;
   import §[c§.AvatarRenderer;
   import §[g§.FacebookLevelManager;
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
      
      public static const AB_FACEBOOK_VERSION:String = "1.0.0.2 r97324)";
      
      private static const LOCAL_STORAGE:String = "AngryBirdsIntelUltrabookSettings";
      
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
               AB_FACEBOOK_VERSION = "1.0.0.2 r97324)";
               while(true)
               {
                  continue loop0;
                  loop8:
                  for(; AB_FACEBOOK_VERSION || AngryBirdsUltraBook; if(LOCAL_STORAGE && AB_FACEBOOK_VERSION)
                  {
                     continue;
                  },§§goto(addr60))
                  {
                     mFacebookLevelBackgroundsBin = §7r§;
                     loop9:
                     do
                     {
                        loop10:
                        while(true)
                        {
                           mFacebookItemDataTableBin = §!!M§;
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
                                    mFacebookViewLibraryBin = §22§;
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
                                    mFacebookAssetMapBin = §?!6§;
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
      
      protected var §-!J§:FriendsBar;
      
      private var §']§:String = null;
      
      private var §3R§:String = "";
      
      private var §0-§:§->§;
      
      private var §implements§:Sprite;
      
      private var §[!P§:Boolean = false;
      
      public function AngryBirdsUltraBook(canvas:§&G§)
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
      
      public static function §!!E§() : String
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
      
      public static function §<8§(dataObject:Object) : void
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
                           §§pop().§]k§(dataObject);
                           continue loop4;
                        }
                        §§push(§§pop().§>R§);
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
                                 §85§.§%>§(count);
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
      
      private function §+!`§(users:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            while(_loc3_)
            {
            }
         }
      }
      
      private function §[!H§(path:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || path)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  if(!_loc2_)
                  {
                     if(!this.§[!P§)
                     {
                        break;
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     addr67:
                     continue;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr67);
      }
      
      override protected function getAssetMap() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         return §0d§.§@A§(mFacebookAssetMapBin);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_ || _loc3_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc3_)
                  {
                  }
                  if(_loc4_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var vanillaUIData:XML = super.getUIData();
                     if(_loc3_)
                     {
                     }
                     var facebookUIData:XML = §0d§.§@A§(mFacebookViewLibraryBin);
                     if(_loc3_ && facebookUIData)
                     {
                     }
                     do
                     {
                        this.§;!O§(facebookUIData,vanillaUIData,["Views","Components"],true);
                        while(_loc3_)
                        {
                        }
                     }
                     while(_loc3_);
                     
                     return vanillaUIData;
                     addr35:
                  }
                  break;
               }
            }
         }
         §§goto(addr35);
      }
      
      override protected function getItemData() : XML
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(_loc4_)
         {
            while(true)
            {
            }
            addr45:
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               while(!_loc5_)
               {
                  if(!(_loc5_ && vanillaItemData))
                  {
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
               §§goto(addr45);
            }
            var vanillaItemData:XML = super.getItemData();
            if(_loc5_ && this)
            {
            }
            var facebookItemData:XML = §0d§.§@A§(mFacebookItemDataTableBin);
            §§push("Item_Materials");
            §§push("Item_Shapes");
            §§push("Item_Resources_Sounds");
            §§push("SoundChannels");
            §§push("Items");
            §§push("Material_Damage_Multipliers");
            §§push("Material_Velocity_Multipliers");
            if(_loc4_ || facebookItemData)
            {
            }
            var treesToCopy:Array = null;
            if(!_loc5_)
            {
               while(true)
               {
                  this.§;!O§(facebookItemData,vanillaItemData,treesToCopy);
                  loop5:
                  while(_loc4_ || vanillaItemData)
                  {
                     while(_loc5_)
                     {
                        continue loop5;
                     }
                     return vanillaItemData;
                  }
               }
            }
            §§goto(addr130);
         }
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || vanillaLevelBackgrounds)
         {
         }
         if(_loc4_ || facebookLevelBackgrounds)
         {
            loop0:
            while(true)
            {
               addr40:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         while(true)
         {
            if(!_loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr40);
            }
            §§goto(addr42);
         }
         var vanillaLevelBackgrounds:XML = super.getLevelBackgrounds();
         if(_loc3_)
         {
         }
         var facebookLevelBackgrounds:XML = §0d§.§@A§(mFacebookLevelBackgroundsBin);
         if(!(_loc3_ && this))
         {
            while(true)
            {
               this.§;!O§(facebookLevelBackgrounds,vanillaLevelBackgrounds,["Backgrounds"]);
               loop5:
               while(_loc4_)
               {
                  while(_loc3_ && _loc3_)
                  {
                     continue loop5;
                  }
                  return vanillaLevelBackgrounds;
               }
            }
         }
         §§goto(addr114);
      }
      
      protected function §%X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
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
                  if(!§§pop())
                  {
                     loop15:
                     while(true)
                     {
                        InitDataLoader.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
                        addr72:
                        loop16:
                        for(; !(_loc1_ && this); if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        },if(_loc2_)
                        {
                           if(!(_loc1_ && this))
                           {
                              break loop15;
                           }
                           §§goto(addr199);
                        }
                        else
                        {
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 §§goto(addr189);
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr209);
                           addr186:
                        },§§goto(addr208))
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 addr209:
                                 while(true)
                                 {
                                    §85§.§"!V§("userId");
                                    addr199:
                                    while(true)
                                    {
                                       addr192:
                                       while(true)
                                       {
                                          addr159:
                                          while(true)
                                          {
                                             §§push(!stage.loaderInfo.parameters.accessToken);
                                             addr166:
                                             while(_loc2_)
                                             {
                                                continue loop1;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr209:
                              }
                              else
                              {
                                 while(!(_loc1_ && _loc2_))
                                 {
                                    if(!_loc1_)
                                    {
                                       loop10:
                                       while(_loc2_ || _loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§push(!stage.loaderInfo.parameters.tokenExpiresIn);
                                             if(_loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop15;
                                                }
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      continue loop10;
                                                   }
                                                }
                                                while(_loc2_)
                                                {
                                                   §85§.§"!V§("tokenExpiresIn");
                                                   while(true)
                                                   {
                                                      break loop16;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(!stage.loaderInfo.parameters.userId);
                                                   addr207:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr208:
                                                         while(true)
                                                         {
                                                            §§goto(addr209);
                                                         }
                                                         addr208:
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr192);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr215:
                                    }
                                    §§goto(addr216);
                                 }
                                 while(true)
                                 {
                                    §85§.§"!V§("accessToken");
                                    §§goto(addr149);
                                 }
                                 addr149:
                                 addr189:
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr107);
                        }
                        while(!_loc1_)
                        {
                           continue loop15;
                           §§goto(addr72);
                        }
                        §§goto(addr128);
                     }
                     return;
                  }
                  §§goto(addr215);
               }
            }
         }
         §§goto(addr208);
      }
      
      override protected function initialize() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         var mySO:SharedObject = null;
         if(_loc5_)
         {
            while(true)
            {
               loop2:
               for(; _loc5_ || _loc3_; while(!(_loc4_ && soundsEnabled))
               {
                  §§goto(addr102);
               })
               {
                  while(true)
                  {
                     this.§']§ = stage.loaderInfo.parameters.levelId;
                     continue loop2;
                     addr102:
                     loop5:
                     while(_loc5_ || this)
                     {
                        sPauseManager.addEventListener(Event.INIT,this.§1!@§);
                        loop6:
                        while(true)
                        {
                           while(true)
                           {
                              sPauseManager.addEventListener(Event.COMPLETE,this.§&Z§);
                              while(_loc5_ || soundsEnabled)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop6;
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop5;
                                    }
                                    if(!_loc5_)
                                    {
                                       continue loop2;
                                    }
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    do
                                    {
                                       this.§%X§();
                                       continue loop9;
                                    }
                                    while(false);
                                    
                                    §§push(true);
                                    if(_loc5_ || this)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    var soundsEnabled:* = §§pop();
                                    if(_loc5_)
                                    {
                                       if(_loc5_ || mySO)
                                       {
                                          addr176:
                                       }
                                       try
                                       {
                                          mySO = SharedObject.getLocal(LOCAL_STORAGE,"/ultrabook");
                                          if(!(_loc4_ && soundsEnabled))
                                          {
                                             if(!_loc4_)
                                             {
                                                if(mySO.data.useSounds == undefined)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         mySO.data.useSounds = true;
                                                         if(!(_loc4_ && soundsEnabled))
                                                         {
                                                            addr204:
                                                            soundsEnabled = Boolean(mySO.data.useSounds);
                                                            addr217:
                                                            if(_loc5_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr204);
                                                                     }
                                                                     addr268:
                                                                     § !@§(soundsEnabled);
                                                                     if(_loc5_ || mySO)
                                                                     {
                                                                        ExternalInterfaceHandler.addCallback("giftsSentToUsers",this.§+!`§);
                                                                        addr322:
                                                                        addr337:
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              ExternalInterfaceHandler.addCallback("onUrl",this.§[!H§);
                                                                              addr312:
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 if(!(_loc5_ || _loc3_))
                                                                                 {
                                                                                    §§goto(addr312);
                                                                                 }
                                                                                 return;
                                                                                 addr293:
                                                                                 addr319:
                                                                              }
                                                                              §§goto(addr322);
                                                                              addr326:
                                                                           }
                                                                           §§goto(addr337);
                                                                        }
                                                                        addr335:
                                                                        §§goto(addr335);
                                                                        addr279:
                                                                     }
                                                                     §§goto(addr293);
                                                                  }
                                                                  §§goto(addr322);
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            §§goto(addr322);
                                                         }
                                                         §§goto(addr279);
                                                      }
                                                      §§goto(addr293);
                                                   }
                                                   §§goto(addr326);
                                                }
                                                §§goto(addr204);
                                             }
                                             §§goto(addr319);
                                          }
                                          §§goto(addr322);
                                       }
                                       catch(e:Error)
                                       {
                                          var _loc3_:* = e;
                                          if(!_loc5_)
                                          {
                                          }
                                          §§goto(addr268);
                                       }
                                       §§goto(addr293);
                                    }
                                    §§goto(addr176);
                                 }
                                 while(true)
                                 {
                                    super.initialize();
                                    continue loop2;
                                 }
                                 if(_loc4_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc5_ || soundsEnabled)
                                 {
                                    §§goto(addr36);
                                 }
                                 §§goto(addr42);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr143);
      }
      
      protected function §9!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               this.§-!J§ = new FriendsBar(sHighScoreListManager,SERVER_ROOT,(sUserProgress as FacebookUserProgress).userID);
               addr134:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               loop37:
               while(true)
               {
                  if(_loc2_)
                  {
                     addr87:
                     if(!(_loc1_ && _loc2_))
                     {
                        addr94:
                        if(!(_loc1_ && this))
                        {
                           addr101:
                           §§push(this.§-!J§);
                           if(_loc2_)
                           {
                              addr57:
                              if(_loc2_ || this)
                              {
                                 §§pop().§7V§();
                                 loop38:
                                 while(true)
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       addr73:
                                       loop22:
                                       for(; !(_loc1_ && _loc2_); §§goto(addr73))
                                       {
                                          if(_loc2_)
                                          {
                                             §§push(this.§-!J§);
                                             loop23:
                                             for(; _loc2_ || this; while(!(_loc1_ && _loc2_))
                                             {
                                                §§goto(addr208);
                                                §§push(§<!U§.MUTE_TOGGLE_REQUESTED);
                                                §§goto(addr57);
                                             })
                                             {
                                                §§push(§<!U§.TUTORIAL_REQUESTED);
                                                loop24:
                                                while(true)
                                                {
                                                   §§pop().addEventListener(§§pop(),this.§=K§);
                                                   addr240:
                                                   loop25:
                                                   while(true)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         if(!(_loc2_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         loop26:
                                                         while(true)
                                                         {
                                                            §§push(this.§-!J§);
                                                            continue loop23;
                                                            addr171:
                                                            loop30:
                                                            while(true)
                                                            {
                                                               if(!(_loc2_ || this))
                                                               {
                                                                  continue loop26;
                                                               }
                                                               addr178:
                                                               if(_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        addr313:
                                                                        §§push(this.§-!J§);
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 §§push(§<!U§.BRAG);
                                                                                 loop32:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§pop().addEventListener(§§pop(),this.§]F§);
                                                                                          do
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§-!J§);
                                                                                                addr105:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      §§push(§<!U§.PLAY_LEVEL);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      continue loop32;
                                                                                                   }
                                                                                                   continue loop31;
                                                                                                   §§goto(addr101);
                                                                                                }
                                                                                                continue loop24;
                                                                                             }
                                                                                          }
                                                                                          while(!_loc2_);
                                                                                          
                                                                                          return;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr208:
                                                                                    addr323:
                                                                                    while(!(_loc1_ && this))
                                                                                    {
                                                                                       §§pop().addEventListener(§§pop(),this.§#7§);
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop30;
                                                                                          §§goto(addr87);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().addEventListener(§§pop(),this.§null§);
                                                                                       break loop38;
                                                                                       §§goto(addr208);
                                                                                    }
                                                                                    addr208:
                                                                                 }
                                                                                 loop20:
                                                                                 while(!_loc1_)
                                                                                 {
                                                                                    §§pop().addEventListener(§§pop(),this.§5!D§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          addr309:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§-!J§);
                                                                                             break loop23;
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                       §§goto(addr178);
                                                                                    }
                                                                                    while(_loc2_ || _loc2_)
                                                                                    {
                                                                                       §§push(this.§-!J§);
                                                                                       while(_loc2_ || _loc2_)
                                                                                       {
                                                                                          §§push(§<!U§.INFO_REQUESTED);
                                                                                          continue loop20;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().height = stage.stageHeight;
                                                                                          break loop22;
                                                                                          §§goto(addr265);
                                                                                       }
                                                                                       addr265:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr347);
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    addr288:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().addEventListener(§§pop(),this.§6>§);
                                                                                    addr306:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                 }
                                                                                 addr302:
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr265);
                                                                        }
                                                                        while(!(_loc1_ && _loc2_))
                                                                        {
                                                                           §§goto(addr323);
                                                                           §§push(§<!U§.INVITE_FRIENDS_REQUESTED);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = stage.stageWidth - 180;
                                                                           break loop25;
                                                                           §§goto(addr313);
                                                                        }
                                                                        addr313:
                                                                        addr334:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§implements§.addChild(this.§-!J§);
                                                                           break loop37;
                                                                        }
                                                                        addr375:
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                            addr330:
                                                            while(true)
                                                            {
                                                               §§goto(addr313);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr330);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr302);
                                                §§goto(addr226);
                                             }
                                             addr226:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr391:
                                          }
                                          §§goto(addr375);
                                       }
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr343);
                                       }
                                    }
                                    §§goto(addr123);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr309);
                                 }
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr105);
                        }
                        break;
                     }
                     §§goto(addr219);
                  }
                  §§goto(addr171);
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr49);
               }
               while(true)
               {
                  §§goto(addr364);
                  §§goto(addr94);
               }
            }
         }
         §§goto(addr391);
      }
      
      protected function §1!@§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && this)
         {
         }
         if(!_loc3_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               §3!1§.§<]§(false);
               while(_loc3_ || _loc3_)
               {
                  if(!_loc2_)
                  {
                     if(_loc3_ || e)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      protected function §&Z§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc2_ && _loc3_)
         {
         }
         while(true)
         {
            while(!_loc2_)
            {
               §3!1§.§<]§(true);
               while(!(_loc3_ || e))
               {
               }
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §1!-§(level:String, scores:CachedFacebookFriends = null, isTournament:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_)
         {
         }
         if(!(_loc5_ && isTournament))
         {
            while(true)
            {
               loop1:
               while(!(_loc5_ && isTournament))
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(_loc4_)
                     {
                        §§push(this.§-!J§);
                        if(!_loc5_)
                        {
                           §§push(level);
                           if(_loc4_ || scores)
                           {
                              if(§§pop())
                              {
                                 addr62:
                                 §§push(LevelManager.§'!7§(level).name);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_ || scores)
                                    {
                                    }
                                    §§pop().§-!e§(§§pop(),level,scores,isTournament);
                                    addr80:
                                    do
                                    {
                                       if(!_loc5_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    while(_loc5_);
                                    
                                    return;
                                    addr36:
                                 }
                              }
                              else
                              {
                                 §§push("");
                              }
                           }
                           §§goto(addr80);
                        }
                        §§goto(addr62);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public function §"!S§(buttonState:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               addr75:
               while(true)
               {
                  this.§-!J§.§]!§(buttonState);
                  continue loop0;
               }
            }
         }
         §§goto(addr72);
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(!_loc1_)
         {
            while(true)
            {
               §4!T§.§1t§ = new FacebookLeveLMain(stage);
               loop1:
               while(_loc2_)
               {
                  while(_loc1_)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr58);
      }
      
      override protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            while(true)
            {
               sUserProgress = new FacebookUserProgress(SERVER_ROOT);
               while(_loc2_ || this)
               {
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr62:
               }
            }
         }
         §§goto(addr62);
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(!(_loc1_ && _loc2_))
         {
            loop0:
            while(true)
            {
               §&=§(new §^!`§(false));
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §&=§(new §0!<§(false));
                     addr256:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  loop11:
                  for(; _loc2_ || _loc2_; while(_loc2_ || _loc2_)
                  {
                     continue loop0;
                     addr132:
                     if(_loc1_ && _loc1_)
                     {
                        continue;
                     }
                     loop16:
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 §&=§(new §%!8§(false));
                                 while(_loc2_)
                                 {
                                    while(!_loc1_)
                                    {
                                       §&=§(new StateFacebookCredits(false));
                                       loop19:
                                       while(_loc2_ || this)
                                       {
                                          while(true)
                                          {
                                             if(!(_loc1_ && this))
                                             {
                                                continue loop16;
                                             }
                                             continue loop19;
                                          }
                                          §§goto(addr68);
                                       }
                                    }
                                 }
                                 §§goto(addr256);
                              }
                              break;
                           }
                           §§goto(addr200);
                        }
                        else
                        {
                           §§goto(addr167);
                        }
                     }
                     §§goto(addr238);
                  })
                  {
                     while(true)
                     {
                        §&=§(new StateFacebookLevelEnd(false));
                        continue loop11;
                     }
                  }
               }
               while(_loc2_ || this)
               {
                  §&=§(new §5s§(false));
                  §§goto(addr115);
               }
            }
         }
         §§goto(addr83);
      }
      
      override protected function initStateLoad() : StateLoad
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc1_)
         {
         }
         if(_loc1_ || _loc2_)
         {
            loop0:
            while(true)
            {
               §§push(!DEBUG_MODE_ENABLED);
               loop1:
               while(§§pop())
               {
                  while(true)
                  {
                     addr168:
                     while(!_loc2_)
                     {
                     }
                     continue loop0;
                  }
                  addr93:
                  if(!(_loc2_ && this))
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr108:
                           if(_loc1_ || _loc1_)
                           {
                              addr116:
                              if(_loc2_ && _loc2_)
                              {
                                 loop7:
                                 while(!_loc2_)
                                 {
                                    §85§.§"!V§("assetsUrl");
                                    loop8:
                                    while(true)
                                    {
                                       addr126:
                                       while(true)
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop8;
                                          }
                                          if(_loc1_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                §§push(!stage.loaderInfo.parameters.buildNumber);
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr93);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   addr157:
                                                }
                                             }
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             continue loop7;
                                          }
                                          §§goto(addr108);
                                       }
                                       §§goto(addr168);
                                    }
                                 }
                                 §§goto(addr167);
                              }
                              break;
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr116);
                     }
                     break;
                  }
               }
               §§push(§§findproperty(StateFacebookLoad));
               if(!_loc1_)
               {
               }
               return new §§pop().StateFacebookLoad(true,StateLoad.STATE_NAME,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
            }
         }
         while(true)
         {
            §§goto(addr157);
         }
      }
      
      override protected function onGraphicsInitialized(e:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
         }
         var levelId:* = null;
         if(!(_loc4_ && e))
         {
            loop0:
            while(true)
            {
               addr274:
               loop1:
               while(true)
               {
                  sInitComplete = true;
                  while(true)
                  {
                     addr175:
                     if(_loc4_ && e)
                     {
                        continue;
                     }
                     loop15:
                     while(true)
                     {
                        this.§']§ = null;
                        while(true)
                        {
                           loop17:
                           for(; _loc3_; if(!(_loc3_ || _loc3_))
                           {
                              continue;
                           },§§goto(addr95))
                           {
                              if(AngryBirdsFP11.sUserProgress.isLevelOpen(levelId))
                              {
                                 loop20:
                                 while(!(_loc4_ && levelId))
                                 {
                                    if(!_loc4_)
                                    {
                                       loop22:
                                       while(true)
                                       {
                                          if(_loc3_ || levelId)
                                          {
                                             this.§<!M§(levelId);
                                          }
                                          else
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §85§.§<!d§(this.§']§);
                                                loop13:
                                                while(true)
                                                {
                                                   if(_loc3_ || levelId)
                                                   {
                                                      addr197:
                                                      if(_loc3_ || this)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         while(_loc3_)
                                                         {
                                                            §§goto(addr175);
                                                            if(_loc3_ || e)
                                                            {
                                                               addr102:
                                                               while(true)
                                                               {
                                                                  §0!f§(StateChapterSelection.STATE_NAME);
                                                                  addr65:
                                                                  addr135:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr105:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  §§goto(addr102);
                                                               }
                                                               return;
                                                               addr56:
                                                               addr58:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(LevelManager.§[!U§(this.§']§));
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop());
                                                         }
                                                         addr245:
                                                         while(true)
                                                         {
                                                            levelId = §§pop();
                                                            addr246:
                                                            while(true)
                                                            {
                                                               break loop15;
                                                            }
                                                            break loop15;
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                   }
                                                   addr221:
                                                   while(true)
                                                   {
                                                      continue loop12;
                                                   }
                                                }
                                                addr266:
                                                while(true)
                                                {
                                                   §§push(this.§']§);
                                                   addr253:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr58);
                                                      addr211:
                                                      if(!(_loc3_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      if(§§pop() == this.§']§)
                                                      {
                                                         continue loop15;
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr135);
                                       }
                                    }
                                    §§goto(addr246);
                                 }
                                 break loop15;
                                 addr143:
                              }
                              §§goto(addr56);
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(levelId);
                        if(!_loc4_)
                        {
                           §§goto(addr211);
                        }
                        §§goto(addr245);
                        §§goto(addr143);
                     }
                     §§goto(addr253);
                  }
               }
            }
         }
         §§goto(addr266);
      }
      
      public function §<!M§(levelId:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               addr122:
               while(true)
               {
                  §§push(LevelManager.§[!U§(levelId));
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop());
                  }
                  levelId = §§pop();
               }
               addr82:
               if(_loc3_)
               {
                  continue;
               }
               §0!f§(StateCutScene.STATE_NAME);
               loop6:
               while(!_loc3_)
               {
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  addr46:
                  if(!_loc3_)
                  {
                     addr58:
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           addr73:
                           while(true)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr82);
                              }
                              addr119:
                              while(true)
                              {
                                 break loop6;
                              }
                              §§goto(addr46);
                           }
                           §§goto(addr122);
                           §§goto(addr58);
                        }
                        addr101:
                     }
                     return;
                  }
                  §§goto(addr73);
               }
               while(true)
               {
                  LevelManager.§%<§(levelId);
                  §§goto(addr101);
               }
            }
         }
         §§goto(addr119);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               super.setFirstGameState();
               while(true)
               {
                  addr158:
                  while(_loc1_)
                  {
                     §9!S§.sAvatarRenderer = new AvatarRenderer();
                  }
               }
               loop5:
               while(true)
               {
                  if(_loc2_ && _loc2_)
                  {
                     continue loop0;
                  }
                  while(!_loc2_)
                  {
                     this.§9!P§();
                     while(true)
                     {
                        §§goto(addr111);
                     }
                     addr59:
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     addr66:
                     if(!(_loc2_ && _loc2_))
                     {
                        addr83:
                        if(_loc2_)
                        {
                           addr148:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop5;
                              }
                              if(_loc1_)
                              {
                                 §§goto(addr59);
                              }
                              else
                              {
                                 addr111:
                                 §§goto(addr33);
                              }
                           }
                           while(true)
                           {
                              §9!S§.sAvatarRenderer.§ else§();
                              continue loop5;
                              §§goto(addr66);
                           }
                           addr148:
                           addr55:
                        }
                        if(!_loc1_)
                        {
                           §§goto(addr96);
                        }
                        addr33:
                        while((sUserProgress as FacebookUserProgress).hasTutorialBeenSeen(FacebookUserProgress.TOURNAMENT_TUTORIAL) == false)
                        {
                           while(_loc1_)
                           {
                              continue loop5;
                           }
                           continue loop7;
                        }
                        return;
                     }
                     §§goto(addr148);
                  }
                  while(true)
                  {
                     §§goto(addr148);
                  }
               }
            }
         }
         §§goto(addr155);
      }
      
      override protected function onStageResize(e:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc8_ && e)
         {
         }
         if(_loc7_ || height)
         {
            while(true)
            {
               loop1:
               while(_loc7_)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        addr60:
                        loop4:
                        while(_loc7_)
                        {
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                        continue loop1;
                        addr39:
                        if(_loc7_ || this)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(_loc8_)
            {
               continue;
            }
            if(_loc7_)
            {
               §§goto(addr39);
            }
            §§goto(addr60);
         }
         §§goto(addr76);
      }
      
      public function §>!%§(width:Number, height:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || height)
         {
         }
         if(_loc3_ || height)
         {
            loop0:
            do
            {
               loop1:
               while(true)
               {
                  loop2:
                  do
                  {
                     §4!c§.setViewSize(width,height);
                     while(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc4_);
                  
                  continue loop0;
               }
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      protected function §;!O§(sourceXML:XML, destinationXML:XML, treesToCopy:Array, deleteSameName:Boolean = false) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(_loc11_ && destinationXML)
         {
         }
         var treeName:String = null;
         var childNode:XML = null;
         if(!_loc11_)
         {
            while(true)
            {
               loop1:
               for(; !_loc11_; if(_loc11_ && sourceXML)
               {
                  continue;
               })
               {
                  while(true)
                  {
                     while(!(_loc11_ && this))
                     {
                        continue loop1;
                        while(true)
                        {
                           while(_loc11_)
                           {
                           }
                           if(_loc12_)
                           {
                              if(true)
                              {
                                 loop7:
                                 for each(treeName in treesToCopy)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       addr97:
                                       addr251:
                                       while(true)
                                       {
                                          if(_loc12_ || treesToCopy)
                                          {
                                             if(!(_loc12_ || destinationXML))
                                             {
                                                break;
                                             }
                                             continue loop8;
                                          }
                                          continue loop7;
                                       }
                                       continue loop7;
                                    }
                                 }
                                 if(_loc12_ || this)
                                 {
                                 }
                              }
                              continue;
                              return;
                           }
                           break;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr43);
         }
      }
      
      protected function §null§(e:§<!U§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && e)
         {
         }
         if(!(_loc3_ && e))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  §!!'§();
                  addr174:
                  while(true)
                  {
                     while(true)
                     {
                        if(e.data != null)
                        {
                           while(_loc2_)
                           {
                           }
                           continue;
                           addr163:
                        }
                        §85§.§'!&§();
                        continue loop1;
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               loop5:
               for(; _loc2_; for(; _loc2_ || _loc2_; if(_loc3_ && _loc2_)
               {
                  continue;
               },if(!_loc3_)
               {
                  return;
               },§§goto(addr174))
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr163);
               })
               {
                  if(_loc3_ && e)
                  {
                     while(true)
                     {
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        addr157:
                     }
                  }
                  while(true)
                  {
                     §§push(ExternalInterfaceHandler);
                     §§push("flashInviteFriendsHandler");
                     if(_loc2_ || _loc3_)
                     {
                        §§push(e.data);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§pop().§!!@§(§§pop(),Boolean(§§pop()) ? e.data.userId : null);
                           continue loop5;
                        }
                     }
                     §§goto(addr83);
                     §§goto(addr157);
                  }
               }
               §§goto(addr120);
            }
         }
         while(true)
         {
            §§goto(addr166);
         }
      }
      
      protected function §6>§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || e)
         {
         }
         if(_loc2_ || e)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §,!f§();
                  loop2:
                  while(_loc2_ || _loc3_)
                  {
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      protected function §5!D§(e:§<!U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc3_ || _loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  trace("Should go to credits screen.");
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           §5?§.uiInteractionHandler(0,"showCredits",null);
                           while(_loc2_)
                           {
                           }
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      protected function §=K§(e:§<!U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               while(true)
               {
                  §5?§.uiInteractionHandler(0,"showTutorial",null);
                  §§goto(addr85);
               }
            }
         }
         addr85:
         while(true)
         {
            if(!(_loc2_ && _loc2_))
            {
               if(_loc3_ || _loc3_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr76:
      }
      
      protected function §]F§(e:§<!U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!(_loc4_ && this))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(!_loc4_)
                  {
                     loop3:
                     while(true)
                     {
                        §!!'§();
                        while(!_loc4_)
                        {
                           if(_loc4_ && position)
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              break loop3;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr41);
         }
         var position:int = (e.data as UserLevelScoreVO).rank - 1;
         if(!_loc4_)
         {
            loop6:
            while(true)
            {
               §85§.§&!0§(position.toString());
               loop7:
               while(true)
               {
                  addr157:
                  while(true)
                  {
                     §§push(ExternalInterfaceHandler);
                     §§push("flashBrag");
                     if(!_loc3_)
                     {
                     }
                     §§push(e.data.userId);
                     §§push(LevelManager.§!=§);
                     if(_loc4_ && this)
                     {
                     }
                     §§push(LevelManager.§7+§().writtenName + "-");
                     if(!(_loc4_ && position))
                     {
                        §§push(§§pop() + FacebookLevelManager.§else§(LevelManager.§!=§));
                     }
                     §§pop().§!!@§(§§pop(),§§pop(),§§pop(),§§pop());
                     addr150:
                     while(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           continue;
                        }
                        continue loop6;
                     }
                     continue loop7;
                  }
               }
            }
         }
         while(true)
         {
            if(_loc3_ || e)
            {
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr157);
            }
            §§goto(addr150);
         }
      }
      
      protected function §8D§(e:§<!U§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr42:
                  addr33:
                  while(true)
                  {
                     continue loop0;
                  }
                  if(!(_loc5_ || targetLevelId))
                  {
                     continue;
                  }
                  while(false)
                  {
                     §§goto(addr42);
                  }
                  var targetLevelId:String = e.target.data.lvl;
                  if(_loc5_ || this)
                  {
                  }
                  §§push(LevelManager.§[!U§(targetLevelId));
                  if(_loc5_)
                  {
                     §§push(§§pop());
                  }
                  var levelId:* = §§pop();
                  if(!(_loc4_ && levelId))
                  {
                     loop5:
                     while(true)
                     {
                        if(levelId != targetLevelId)
                        {
                           loop6:
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §85§.§<!d§(targetLevelId);
                                 addr196:
                                 while(true)
                                 {
                                    addr185:
                                    addr189:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop6;
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                        }
                        while(AngryBirdsFP11.sUserProgress.isLevelOpen(levelId))
                        {
                           if(!_loc5_)
                           {
                              continue loop5;
                           }
                           LevelManager.§%<§(levelId);
                           loop9:
                           while(true)
                           {
                              while(true)
                              {
                                 §0!f§(StateCutScene.STATE_NAME);
                                 if(!(_loc4_ && this))
                                 {
                                    if(!(_loc4_ && e))
                                    {
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr196);
                                    }
                                    break;
                                 }
                                 continue loop9;
                              }
                              §§goto(addr185);
                           }
                           §§goto(addr189);
                        }
                        return;
                     }
                  }
                  §§goto(addr196);
               }
            }
         }
         §§goto(addr40);
      }
      
      protected function §#7§(e:§<!U§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && _loc3_)
         {
         }
         if(!_loc5_)
         {
         }
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[2] = null;
            addr283:
            while(true)
            {
               §§push(§§newactivation());
               if(!_loc4_)
               {
                  continue loop0;
               }
               addr327:
               §§pop().§§slot[2].flush();
               if(_loc5_)
               {
                  addr332:
                  if(!(_loc4_ && e))
                  {
                     if(_loc5_ || _loc3_)
                     {
                        addr389:
                        if(false)
                        {
                           addr323:
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              §§goto(addr327);
                           }
                           addr338:
                           §§pop().§§slot[2].data.useSounds = sSoundsEnabled;
                           if(_loc5_)
                           {
                              addr335:
                              §§goto(addr323);
                              addr345:
                           }
                           §§goto(addr338);
                           §§push(§§newactivation());
                           addr347:
                        }
                        return;
                     }
                     §§goto(addr335);
                  }
                  §§goto(addr327);
                  addr332:
               }
               §§goto(addr323);
            }
         }
      }
      
      override public function newUserScore(level:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && level)
         {
         }
         if(_loc7_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        addr40:
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                     if(!(_loc7_ || stars))
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        continue loop1;
                     }
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                     if(!(_loc6_ && stars))
                     {
                        while(false)
                        {
                           §§goto(addr40);
                        }
                        var score:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(level);
                        if(!_loc7_)
                        {
                        }
                        var stars:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(level);
                        if(_loc6_ && this)
                        {
                        }
                        var mEagle:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(level);
                        if(!_loc7_)
                        {
                        }
                        §§push(this.§4!1§(score,stars,mEagle));
                        if(!(_loc6_ && score))
                        {
                           §§push(int(§§pop()));
                        }
                        var rankAfterUpdate:* = §§pop();
                        if(_loc7_ || level)
                        {
                           loop7:
                           while(rankAfterUpdate)
                           {
                              if(_loc6_)
                              {
                              }
                              loop8:
                              while(_loc7_)
                              {
                                 while(true)
                                 {
                                    (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§38§(level,rankAfterUpdate);
                                    while(!(_loc7_ || this))
                                    {
                                    }
                                    if(!(_loc6_ && level))
                                    {
                                       break loop7;
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr191);
                        addr38:
                     }
                     §§goto(addr42);
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      private function §4!1§(score:int, stars:int, mEagle:int = 0, isTournament:Boolean = false) : int
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_ || score)
         {
         }
         var beatenUser:UserLevelScoreVO = null;
         var position:int = 0;
         if(!_loc11_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               loop2:
               while(true)
               {
                  while(true)
                  {
                     addr82:
                     while(!(_loc12_ && stars))
                     {
                        continue loop2;
                        if(_loc11_ || score)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               if(!(_loc12_ && score))
               {
                  do
                  {
                     while(true)
                     {
                        if(_loc11_)
                        {
                           §§goto(addr48);
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr82);
                  }
                  while(false);
                  
                  var beatenUsers:Array = [];
                  if(_loc12_ && this)
                  {
                  }
                  §§push(this.§9=§);
                  if(_loc12_)
                  {
                  }
                  §§push(LevelManager.§!=§);
                  if(_loc11_ || stars)
                  {
                  }
                  §§push(score);
                  if(_loc12_ && score)
                  {
                  }
                  §§push(stars);
                  if(_loc12_)
                  {
                  }
                  §§push(mEagle);
                  if(_loc12_ && mEagle)
                  {
                  }
                  §§push(§§pop().§6,§(§§pop(),§§pop(),§§pop(),§§pop(),beatenUsers,isTournament));
                  if(!_loc12_)
                  {
                     §§push(int(§§pop()));
                  }
                  var rankAfterUpdate:* = §§pop();
                  if(_loc11_ || mEagle)
                  {
                  }
                  var _loc9_:int = 0;
                  var _loc10_:* = beatenUsers;
                  addr259:
                  for each(beatenUser in _loc10_)
                  {
                     if(!(_loc12_ && mEagle))
                     {
                        addr249:
                        if(_loc11_ || this)
                        {
                           position = beatenUser.rank - 1;
                           addr211:
                           §85§.§8!0§(position.toString());
                           addr246:
                           addr228:
                           if(!(_loc12_ && this))
                           {
                              if(_loc11_)
                              {
                                 if(!(_loc12_ && stars))
                                 {
                                    if(!_loc12_)
                                    {
                                       addr209:
                                       if(false)
                                       {
                                          §§goto(addr211);
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr246);
                                 }
                                 §§goto(addr228);
                              }
                              §§goto(addr211);
                           }
                           §§goto(addr249);
                        }
                        addr258:
                        §§goto(addr258);
                     }
                     §§goto(addr209);
                  }
                  if(_loc11_ || mEagle)
                  {
                  }
                  return rankAfterUpdate;
               }
            }
         }
      }
      
      public function get §9=§() : FriendsBar
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§-!J§;
      }
      
      public function get §=s§() : §->§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return this.§0-§;
      }
      
      public function §+m§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            loop0:
            while(true)
            {
               for(§§push(this.§0-§); §§pop(); )
               {
                  if(_loc1_ && _loc1_)
                  {
                  }
                  §§push(this.§0-§);
                  continue loop0;
                  if(!_loc1_)
                  {
                     addr80:
                     §§pop().§<R§();
                     while(!(_loc2_ || this))
                     {
                     }
                     if(!(_loc1_ && this))
                     {
                        addr64:
                        break;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr64);
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         §§push("Client: ");
         if(!_loc2_)
         {
            if(_loc1_)
            {
               addr51:
               §§push(§§pop() + AB_FACEBOOK_VERSION.replace("{svn_version}","local dev build"));
               if(!_loc2_)
               {
                  §§goto(addr59);
               }
               §§goto(addr71);
            }
            addr59:
            §§push("Server: ");
            if(!_loc1_)
            {
            }
            §§push(§§pop() + §§pop());
            if(!(_loc2_ && _loc1_))
            {
               addr71:
               return §§pop() + SERVER_VERSION;
            }
         }
         §§goto(addr51);
      }
      
      override protected function initializeGame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || time)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            if(!_loc2_)
            {
               addr36:
            }
            var time:int = Math.round(getTimer() / 1000);
            if(_loc3_ || _loc3_)
            {
               while(true)
               {
                  §85§.§,!=§(GoogleAnalyticsTracker.§>!A§,time.toString(),time);
                  loop5:
                  while(!(_loc2_ && _loc2_))
                  {
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     addr77:
                     if(_loc3_ || _loc2_)
                     {
                        addr84:
                        if(_loc3_ || this)
                        {
                           addr91:
                           if(!(_loc3_ || _loc3_))
                           {
                              loop2:
                              while(true)
                              {
                                 this.§[!P§ = true;
                                 addr128:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          super.initializeGame();
                                          continue loop5;
                                          §§goto(addr77);
                                       }
                                       continue;
                                       addr123:
                                    }
                                    else
                                    {
                                       addr145:
                                    }
                                    while(true)
                                    {
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr123);
                  }
               }
            }
            §§goto(addr145);
         }
         §§goto(addr36);
      }
      
      override protected function onKeyDown(event:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || this)
         {
            while(true)
            {
            }
            addr189:
         }
         loop1:
         while(true)
         {
            super.onKeyDown(event);
            while(!_loc2_)
            {
               loop3:
               for(; !_loc2_; if(!(_loc3_ || _loc2_))
               {
                  continue;
               },§§goto(addr104))
               {
                  §§push(this.§3R§);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                        }
                        while(true)
                        {
                           this.§3R§ = String.fromCharCode(event.keyCode);
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 this.§3R§ = this.§3R§.toLowerCase();
                                 loop8:
                                 while(true)
                                 {
                                    addr76:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop8;
                                       }
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc3_ || _loc2_)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop6;
                                 }
                                 addr128:
                              }
                           }
                        }
                        addr171:
                     }
                     else
                     {
                        this.§3R§ += String.fromCharCode(event.keyCode);
                     }
                     while(true)
                     {
                        §§goto(addr114);
                     }
                     addr104:
                     §§push(this.§3R§);
                     if(_loc3_)
                     {
                        if(§§pop().length > 15)
                        {
                           loop10:
                           while(true)
                           {
                              loop11:
                              while(!_loc2_)
                              {
                                 this.§3R§ = this.§3R§.substr(1);
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop10;
                                    }
                                    continue loop11;
                                 }
                                 §§goto(addr76);
                              }
                              §§goto(addr171);
                           }
                        }
                        return;
                     }
                  }
               }
               continue loop1;
               if(_loc2_ && event)
               {
                  continue;
               }
               §§goto(addr128);
            }
            §§goto(addr189);
         }
      }
      
      override public function externalPause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               §85§.§^!R§();
               loop1:
               while(_loc2_)
               {
                  while(!(_loc2_ || _loc2_))
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      override public function externalResume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || this)
         {
            while(true)
            {
               §85§.§;e§();
               loop1:
               while(!_loc2_)
               {
                  while(!_loc1_)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
      }
   }
}
