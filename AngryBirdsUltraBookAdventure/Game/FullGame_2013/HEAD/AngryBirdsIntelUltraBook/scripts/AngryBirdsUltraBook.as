package
{
   import § 3§.FacebookUserProgress;
   import §"!i§.InitDataLoader;
   import §"!i§.UserLevelScoreVO;
   import §#_§.CachedFacebookFriends;
   import §#_§.HighScoreListManager;
   import §&"§.ExternalInterfaceHandler;
   import §'8§.FacebookLevelManager;
   import §1N§.StateLoad;
   import §5=§.§#m§;
   import §5=§.§9F§;
   import §5=§.GoogleAnalyticsTracker;
   import §6v§.§,!f§;
   import §6v§.§5!D§;
   import §7t§.StateChapterSelection;
   import §7t§.StateCreditsNew;
   import §7t§.StateCutScene;
   import §7t§.StateLevelSelection;
   import §7t§.StatePlay;
   import §;!1§.§9u§;
   import §;+§.FacebookLeveLMain;
   import §<_§.AvatarRenderer;
   import §<u§.§<y§;
   import §=!i§.§>Z§;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import §[!$§.§5!E§;
   import §[!$§.§7I§;
   import §[!$§.§<E§;
   import §[!$§.StateFacebookCredits;
   import §[!$§.StateFacebookEpisodeSelection;
   import §[!$§.StateFacebookLevelEnd;
   import §[!$§.StateFacebookLevelEndFail;
   import §[!$§.StateFacebookLevelSelection;
   import §[!$§.StateFacebookLoad;
   import §[!$§.StateFacebookPause;
   import §[!$§.StateFacebookPlay;
   import §`y§.§4!g§;
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
      
      public static const AB_FACEBOOK_VERSION:String = "1.0.0.4 r97391)";
      
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
               AB_FACEBOOK_VERSION = "1.0.0.4 r97391)";
               while(true)
               {
                  continue loop0;
                  loop8:
                  for(; AB_FACEBOOK_VERSION || AngryBirdsUltraBook; if(LOCAL_STORAGE && AB_FACEBOOK_VERSION)
                  {
                     continue;
                  },§§goto(addr60))
                  {
                     mFacebookLevelBackgroundsBin = §%D§;
                     loop9:
                     do
                     {
                        loop10:
                        while(true)
                        {
                           mFacebookItemDataTableBin = §66§;
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
                                    mFacebookViewLibraryBin = §1!H§;
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
                                    mFacebookAssetMapBin = §0O§;
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
      
      protected var §@r§:FriendsBar;
      
      private var §!>§:String = null;
      
      private var §@7§:String = "";
      
      private var §'p§:§#m§;
      
      private var §5"§:Sprite;
      
      private var §^m§:Boolean = false;
      
      public function AngryBirdsUltraBook(canvas:§4!g§)
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
      
      public static function §]!h§() : String
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
      
      public static function §=[§(dataObject:Object) : void
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
                           §§pop().§"!9§(dataObject);
                           continue loop4;
                        }
                        §§push(§§pop().§2!g§);
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
                                 §9F§.§7u§(count);
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
      
      private function §62§(users:Array) : void
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
      
      private function § each§(path:String) : void
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
                     if(!this.§^m§)
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
         return §<y§.§1P§(mFacebookAssetMapBin);
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
                     var facebookUIData:XML = §<y§.§1P§(mFacebookViewLibraryBin);
                     if(_loc3_ && facebookUIData)
                     {
                     }
                     do
                     {
                        this.§5Z§(facebookUIData,vanillaUIData,["Views","Components"],true);
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
            var facebookItemData:XML = §<y§.§1P§(mFacebookItemDataTableBin);
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
                  this.§5Z§(facebookItemData,vanillaItemData,treesToCopy);
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
         var facebookLevelBackgrounds:XML = §<y§.§1P§(mFacebookLevelBackgroundsBin);
         if(!(_loc3_ && this))
         {
            while(true)
            {
               this.§5Z§(facebookLevelBackgrounds,vanillaLevelBackgrounds,["Backgrounds"]);
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
      
      protected function §"!F§() : void
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
                                    §9F§.§<0§("userId");
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
                                                   §9F§.§<0§("tokenExpiresIn");
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
                                    §9F§.§<0§("accessToken");
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
                     this.§!>§ = stage.loaderInfo.parameters.levelId;
                     continue loop2;
                     addr102:
                     loop5:
                     while(_loc5_ || this)
                     {
                        sPauseManager.addEventListener(Event.INIT,this.§2&§);
                        loop6:
                        while(true)
                        {
                           while(true)
                           {
                              sPauseManager.addEventListener(Event.COMPLETE,this.§9!g§);
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
                                       this.§"!F§();
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
                                          mySO = SharedObject.getLocal(LOCAL_STORAGE,"/ab_in_adventure");
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
                                                                     §0!§(soundsEnabled);
                                                                     if(_loc5_ || mySO)
                                                                     {
                                                                        ExternalInterfaceHandler.addCallback("giftsSentToUsers",this.§62§);
                                                                        addr322:
                                                                        addr337:
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              ExternalInterfaceHandler.addCallback("onUrl",this.§ each§);
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
      
      protected function get() : void
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
               this.§@r§ = new FriendsBar(sHighScoreListManager,SERVER_ROOT,(sUserProgress as FacebookUserProgress).userID);
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
                           §§push(this.§@r§);
                           if(_loc2_)
                           {
                              addr57:
                              if(_loc2_ || this)
                              {
                                 §§pop().§8w§();
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
                                             §§push(this.§@r§);
                                             loop23:
                                             for(; _loc2_ || this; while(!(_loc1_ && _loc2_))
                                             {
                                                §§goto(addr208);
                                                §§push(§>Z§.MUTE_TOGGLE_REQUESTED);
                                                §§goto(addr57);
                                             })
                                             {
                                                §§push(§>Z§.TUTORIAL_REQUESTED);
                                                loop24:
                                                while(true)
                                                {
                                                   §§pop().addEventListener(§§pop(),this.§^0§);
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
                                                            §§push(this.§@r§);
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
                                                                        §§push(this.§@r§);
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 §§push(§>Z§.BRAG);
                                                                                 loop32:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§pop().addEventListener(§§pop(),this.§&!6§);
                                                                                          do
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§@r§);
                                                                                                addr105:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      §§push(§>Z§.PLAY_LEVEL);
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
                                                                                       §§pop().addEventListener(§§pop(),this.§,G§);
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop30;
                                                                                          §§goto(addr87);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().addEventListener(§§pop(),this.set);
                                                                                       break loop38;
                                                                                       §§goto(addr208);
                                                                                    }
                                                                                    addr208:
                                                                                 }
                                                                                 loop20:
                                                                                 while(!_loc1_)
                                                                                 {
                                                                                    §§pop().addEventListener(§§pop(),this.§,!i§);
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
                                                                                             §§push(this.§@r§);
                                                                                             break loop23;
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                       §§goto(addr178);
                                                                                    }
                                                                                    while(_loc2_ || _loc2_)
                                                                                    {
                                                                                       §§push(this.§@r§);
                                                                                       while(_loc2_ || _loc2_)
                                                                                       {
                                                                                          §§push(§>Z§.INFO_REQUESTED);
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
                                                                                    §§pop().addEventListener(§§pop(),this.§6n§);
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
                                                                           §§push(§>Z§.INVITE_FRIENDS_REQUESTED);
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
                                                                           this.§5"§.addChild(this.§@r§);
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
      
      protected function §2&§(e:Event) : void
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
               §5!D§.§6h§(false);
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
      
      protected function §9!g§(e:Event) : void
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
               §5!D§.§6h§(true);
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
      
      public function §,!@§(level:String, scores:CachedFacebookFriends = null, isTournament:Boolean = false) : void
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
                        §§push(this.§@r§);
                        if(!_loc5_)
                        {
                           §§push(level);
                           if(_loc4_ || scores)
                           {
                              if(§§pop())
                              {
                                 addr62:
                                 §§push(LevelManager.§6X§(level).name);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_ || scores)
                                    {
                                    }
                                    §§pop().§^!;§(§§pop(),level,scores,isTournament);
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
      
      public function §`<§(buttonState:String) : void
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
                  this.§@r§.§5!;§(buttonState);
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
               §`S§.§[o§ = new FacebookLeveLMain(stage);
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
               §,u§(new §7I§(false));
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §,u§(new §<E§(false));
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
                                 §,u§(new §5!E§(false));
                                 while(_loc2_)
                                 {
                                    while(!_loc1_)
                                    {
                                       §,u§(new StateFacebookCredits(false));
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
                        §,u§(new StateFacebookLevelEnd(false));
                        continue loop11;
                     }
                  }
               }
               while(_loc2_ || this)
               {
                  §,u§(new StateFacebookLevelEndFail(false));
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
                                    §9F§.§<0§("assetsUrl");
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
                        this.§!>§ = null;
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
                                             this.§;!"§(levelId);
                                          }
                                          else
                                          {
                                             loop12:
                                             while(true)
                                             {
                                                §9F§.§+!d§(this.§!>§);
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
                                                                  §&!<§(StateChapterSelection.STATE_NAME);
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
                                                         §§push(LevelManager.§'!^§(this.§!>§));
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
                                                   §§push(this.§!>§);
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
                                                      if(§§pop() == this.§!>§)
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
      
      public function §;!"§(levelId:String) : void
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
                  §§push(LevelManager.§'!^§(levelId));
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
               §&!<§(StateCutScene.STATE_NAME);
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
                  LevelManager.§?h§(levelId);
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
                     §,!f§.sAvatarRenderer = new AvatarRenderer();
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
                     this.get();
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
                              §,!f§.sAvatarRenderer.§!Q§();
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
      
      public function §8!=§(width:Number, height:Number) : void
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
                     §9u§.setViewSize(width,height);
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
      
      protected function §5Z§(sourceXML:XML, destinationXML:XML, treesToCopy:Array, deleteSameName:Boolean = false) : void
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
      
      protected function set(e:§>Z§) : void
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
                  §?]§();
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
                        §9F§.§?1§();
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
                           §§pop().§`F§(§§pop(),Boolean(§§pop()) ? e.data.userId : null);
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
      
      protected function §6n§(e:Event) : void
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
                  §0-§();
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
      
      protected function §,!i§(e:§>Z§) : void
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
                           §+!%§.uiInteractionHandler(0,"showCredits",null);
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
      
      protected function §^0§(e:§>Z§) : void
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
                  §+!%§.uiInteractionHandler(0,"showTutorial",null);
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
      
      protected function §&!6§(e:§>Z§) : void
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
                        §?]§();
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
               §9F§.§"N§(position.toString());
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
                     §§push(LevelManager.§1m§);
                     if(_loc4_ && this)
                     {
                     }
                     §§push(LevelManager.§!]§().writtenName + "-");
                     if(!(_loc4_ && position))
                     {
                        §§push(§§pop() + FacebookLevelManager.§5j§(LevelManager.§1m§));
                     }
                     §§pop().§`F§(§§pop(),§§pop(),§§pop(),§§pop());
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
      
      protected function §>!V§(e:§>Z§) : void
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
                  §§push(LevelManager.§'!^§(targetLevelId));
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
                                 §9F§.§+!d§(targetLevelId);
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
                           LevelManager.§?h§(levelId);
                           loop9:
                           while(true)
                           {
                              while(true)
                              {
                                 §&!<§(StateCutScene.STATE_NAME);
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
      
      protected function §,G§(e:§>Z§) : void
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
                        §§push(this.§9#§(score,stars,mEagle));
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
                                    (AngryBirdsFP11.sUserProgress as FacebookUserProgress).§!!F§(level,rankAfterUpdate);
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
      
      private function §9#§(score:int, stars:int, mEagle:int = 0, isTournament:Boolean = false) : int
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
                  §§push(this.§7X§);
                  if(_loc12_)
                  {
                  }
                  §§push(LevelManager.§1m§);
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
                  §§push(§§pop().§[!Y§(§§pop(),§§pop(),§§pop(),§§pop(),beatenUsers,isTournament));
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
                           §9F§.§6!I§(position.toString());
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
      
      public function get §7X§() : FriendsBar
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§@r§;
      }
      
      public function get §^!c§() : §#m§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return this.§'p§;
      }
      
      public function §1!$§() : void
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
               for(§§push(this.§'p§); §§pop(); )
               {
                  if(_loc1_ && _loc1_)
                  {
                  }
                  §§push(this.§'p§);
                  continue loop0;
                  if(!_loc1_)
                  {
                     addr80:
                     §§pop().§&J§();
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
                  §9F§.§&k§(GoogleAnalyticsTracker.§4Q§,time.toString(),time);
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
                                 this.§^m§ = true;
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
                  §§push(this.§@7§);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(!_loc3_)
                        {
                        }
                        while(true)
                        {
                           this.§@7§ = String.fromCharCode(event.keyCode);
                           loop6:
                           while(true)
                           {
                              while(true)
                              {
                                 this.§@7§ = this.§@7§.toLowerCase();
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
                        this.§@7§ += String.fromCharCode(event.keyCode);
                     }
                     while(true)
                     {
                        §§goto(addr114);
                     }
                     addr104:
                     §§push(this.§@7§);
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
                                 this.§@7§ = this.§@7§.substr(1);
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
               §9F§.§25§();
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
               §9F§.§3!N§();
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
