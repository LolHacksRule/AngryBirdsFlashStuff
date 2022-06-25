package
{
   import § $§.Server;
   import §"!!§.§&G§;
   import §"!!§.BasicGame;
   import §"$§.Starling;
   import §#!X§.LevelManager;
   import §%L§.PackageManager;
   import §'N§.§'!6§;
   import §'N§.§0d§;
   import §'N§.Log;
   import §-!>§.§4!T§;
   import §-!>§.§7U§;
   import §3!j§.SoundEngine;
   import §9c§.StateChapterSelection;
   import §9c§.StateCreditsNew;
   import §9c§.StateCutScene;
   import §9c§.StateFeed;
   import §9c§.StateFlashGoes11;
   import §9c§.StateLevelEndEagle;
   import §9c§.StateLevelEndFailRio;
   import §9c§.StateLevelEndRio;
   import §9c§.StateLevelLoadClassic;
   import §9c§.StateLevelSelection;
   import §9c§.StatePause;
   import §9c§.StatePlay;
   import §9c§.StateStart;
   import §<!G§.TweenManager;
   import §?A§.LevelMain;
   import §[!>§.StateBase;
   import §^!i§.UserProgress;
   import §^L§.LevelItemManager;
   import §`M§.LoadManager;
   import com.rovio.assets.TextManager;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class AngryBirdsFP11 extends BasicGame
   {
      
      protected static var mTextBinary:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var SERVER_VERSION:String;
      
      public static var SERVER_ROOT:String;
      
      public static const SCREEN_WIDTH:int = 1024;
      
      public static const SCREEN_HEIGHT:int = 768;
      
      public static const DEBUG_MODE_ENABLED:Boolean = true;
      
      public static const LOADING_SCEEN_MINIMUM_TIME:int = 2000;
      
      public static const DISPLAY_FLASH_GOES_11:Boolean = false;
      
      private static const FULL_SCREEN_TOGGLE_INTERVAL:int = 750;
      
      private static const FULL_SCREEN_FRAME_UPDATE_LIMIT:int = 3;
      
      private static const FULL_SCREEN_MOUSE_UPDATE_LIMIT:int = 15;
      
      protected static var mViewLibraryBin:Class;
      
      protected static var mAssetMapBin:Class;
      
      protected static var mItemDataTableBin:Class;
      
      protected static var mLevelBackgroundsTableBin:Class;
      
      public static var sUserProgress:UserProgress = null;
      
      public static var sSoundsEnabled:Boolean = true;
      
      private static var sSingleton:AngryBirdsFP11 = null;
      
      public static var mAppMask:Sprite = null;
      
      public static var sPauseManager:§7U§;
      
      public static var sInitComplete:Boolean = false;
      
      protected static var sStageWidth:int = 0;
      
      protected static var sStageHeight:int = 0;
      
      {
         var mTextBinary:Boolean = true;
         var VERSION:Boolean = false;
         if(mTextBinary)
         {
            while(true)
            {
               mTextBinary = AngryBirdsFP11_mTextBinary;
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     VERSION = "0.0.1.({svn_version})";
                     while(true)
                     {
                        addr349:
                        loop12:
                        while(!(VERSION && mTextBinary))
                        {
                           LOADING_SCEEN_MINIMUM_TIME = 2000;
                           loop13:
                           while(true)
                           {
                              loop14:
                              while(true)
                              {
                                 DISPLAY_FLASH_GOES_11 = false;
                                 loop15:
                                 while(true)
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       FULL_SCREEN_TOGGLE_INTERVAL = 750;
                                       loop17:
                                       for(; !VERSION; while(mTextBinary || mTextBinary)
                                       {
                                          §§goto(addr48);
                                       })
                                       {
                                          loop18:
                                          for(; !(VERSION && AngryBirdsFP11); while(mTextBinary || AngryBirdsFP11)
                                          {
                                             §§goto(addr172);
                                          })
                                          {
                                             FULL_SCREEN_FRAME_UPDATE_LIMIT = 3;
                                             loop19:
                                             while(true)
                                             {
                                                loop20:
                                                while(true)
                                                {
                                                   FULL_SCREEN_MOUSE_UPDATE_LIMIT = 15;
                                                   loop21:
                                                   while(!VERSION)
                                                   {
                                                      continue loop19;
                                                      addr160:
                                                      if(!(mTextBinary || AngryBirdsFP11))
                                                      {
                                                         continue;
                                                      }
                                                      mAppMask = null;
                                                      loop37:
                                                      while(true)
                                                      {
                                                         if(!(VERSION && AngryBirdsFP11))
                                                         {
                                                            if(!VERSION)
                                                            {
                                                               if(mTextBinary)
                                                               {
                                                                  loop38:
                                                                  while(mTextBinary)
                                                                  {
                                                                     loop39:
                                                                     while(true)
                                                                     {
                                                                        if(!VERSION)
                                                                        {
                                                                           addr127:
                                                                           if(!(VERSION && AngryBirdsFP11))
                                                                           {
                                                                              sInitComplete = false;
                                                                              loop40:
                                                                              while(true)
                                                                              {
                                                                                 if(!VERSION)
                                                                                 {
                                                                                    addr108:
                                                                                    if(!(VERSION && AngryBirdsFP11))
                                                                                    {
                                                                                       addr115:
                                                                                       if(!(mTextBinary || mTextBinary))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(mTextBinary)
                                                                                          {
                                                                                             if(mTextBinary)
                                                                                             {
                                                                                                if(!VERSION)
                                                                                                {
                                                                                                   addr94:
                                                                                                   if(mTextBinary || VERSION)
                                                                                                   {
                                                                                                      sStageWidth = 0;
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   addr397:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      SCREEN_WIDTH = 1024;
                                                                                                      break loop37;
                                                                                                      §§goto(addr94);
                                                                                                   }
                                                                                                   addr397:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                          addr201:
                                                                                          while(true)
                                                                                          {
                                                                                             addr182:
                                                                                             while(true)
                                                                                             {
                                                                                                if(mTextBinary)
                                                                                                {
                                                                                                   if(!mTextBinary)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   sSingleton = null;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(VERSION && AngryBirdsFP11))
                                                                                                      {
                                                                                                         break loop39;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   while(mTextBinary || VERSION)
                                                                                                   {
                                                                                                      mAssetMapBin = AngryBirdsFP11_mAssetMapBin;
                                                                                                      while(mTextBinary)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            mItemDataTableBin = AngryBirdsFP11_mItemDataTableBin;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                      §§goto(addr172);
                                                                                                   }
                                                                                                   addr172:
                                                                                                   while(!(VERSION && AngryBirdsFP11))
                                                                                                   {
                                                                                                      §§goto(addr397);
                                                                                                      §§goto(addr268);
                                                                                                   }
                                                                                                   addr268:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr400);
                                                                                                   }
                                                                                                   addr400:
                                                                                                }
                                                                                                while(!VERSION)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!VERSION)
                                                                                                      {
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue loop2;
                                                                                                }
                                                                                                continue loop14;
                                                                                                §§goto(addr108);
                                                                                             }
                                                                                             continue loop20;
                                                                                          }
                                                                                          addr55:
                                                                                          §§goto(addr397);
                                                                                          if(mTextBinary || AngryBirdsFP11)
                                                                                          {
                                                                                             if(mTextBinary)
                                                                                             {
                                                                                                continue loop37;
                                                                                             }
                                                                                             continue loop40;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          SCREEN_HEIGHT = 768;
                                                                                          break loop38;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr182);
                                                                                 }
                                                                                 §§goto(addr172);
                                                                              }
                                                                              while(!(VERSION && VERSION))
                                                                              {
                                                                                 sSoundsEnabled = true;
                                                                                 §§goto(addr201);
                                                                                 §§goto(addr115);
                                                                              }
                                                                              loop30:
                                                                              for(; !VERSION; §§goto(addr204))
                                                                              {
                                                                                 sUserProgress = null;
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                              }
                                                                              addr204:
                                                                              §§goto(addr230);
                                                                              addr219:
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop38;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!VERSION)
                                                                        {
                                                                           §§goto(addr160);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr263);
                                                                        }
                                                                     }
                                                                     continue loop21;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     break loop18;
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            continue loop12;
                                                         }
                                                         §§goto(addr216);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr379);
                                                      }
                                                   }
                                                   continue loop16;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             DEBUG_MODE_ENABLED = true;
                                             break loop17;
                                             §§goto(addr316);
                                          }
                                          addr316:
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(VERSION && VERSION))
               {
                  return;
               }
            }
         }
         §§goto(addr410);
      }
      
      private var §!W§:PackageManager;
      
      private var §%w§:int;
      
      private var §<6§:Boolean;
      
      private var §07§:int;
      
      private var §^U§:int;
      
      protected var §7y§:Boolean;
      
      public function AngryBirdsFP11(canvas:§&G§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && canvas)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               addr241:
               while(true)
               {
               }
               loop5:
               while(true)
               {
                  if(!(_loc2_ || canvas))
                  {
                     continue loop0;
                  }
                  loop6:
                  while(true)
                  {
                     this.initialize();
                     loop7:
                     while(true)
                     {
                        loop8:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              this.initStates();
                              while(true)
                              {
                                 loop10:
                                 while(!_loc3_)
                                 {
                                    §§push(stage.stageWidth == §8!Z§);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(!§§pop());
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc2_ || _loc2_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(§§pop())
                                             {
                                                do
                                                {
                                                   if(!§§pop())
                                                   {
                                                      §§goto(addr28);
                                                   }
                                                   while(!_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            this.onStageResize(null);
                                                            continue;
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop7;
                                                   }
                                                   §§goto(addr241);
                                                }
                                                while(!_loc3_);
                                                
                                                continue;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop6;
                                    }
                                 }
                                 addr222:
                                 addr238:
                                 while(_loc2_ || this)
                                 {
                                    super(canvas,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
                                    continue loop5;
                                 }
                                 while(true)
                                 {
                                    this.§!W§ = new PackageManager();
                                    break loop8;
                                    §§goto(addr222);
                                 }
                                 if(_loc3_ && this)
                                 {
                                    continue;
                                 }
                                 §§goto(addr77);
                              }
                           }
                           break;
                           if(!(_loc3_ && this))
                           {
                              addr28:
                              return;
                           }
                        }
                        while(true)
                        {
                           §§goto(addr222);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr238);
      }
      
      public static function get stageWidth() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         return sStageWidth;
      }
      
      public static function get stageHeight() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && AngryBirdsFP11)
         {
         }
         return sStageHeight;
      }
      
      public static function § !@§(value:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!(_loc3_ && AngryBirdsFP11))
         {
            while(true)
            {
               addr78:
               if(_loc3_ && AngryBirdsFP11)
               {
                  continue;
               }
               addr85:
               if(_loc2_)
               {
                  addr36:
                  if(_loc3_ && AngryBirdsFP11)
                  {
                     while(true)
                     {
                        sSoundsEnabled = value;
                        while(true)
                        {
                           while(_loc2_ || AngryBirdsFP11)
                           {
                              SoundEngine.§-!'§(sSoundsEnabled);
                              while(!(_loc3_ && _loc3_))
                              {
                                 §§goto(addr78);
                                 §§goto(addr85);
                              }
                           }
                        }
                        §§goto(addr36);
                     }
                     addr103:
                  }
                  return;
               }
               §§goto(addr61);
            }
         }
         §§goto(addr103);
      }
      
      public static function §%!D§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         return sSoundsEnabled;
      }
      
      public static function get §8!Z§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc2_ || AngryBirdsFP11)
         {
         }
         return §8R§.getAppWidth();
      }
      
      public static function get include() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc1_)
         {
         }
         return §8R§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               §§push(SoundEngine.§while§("Channel_Theme"));
               addr139:
               loop1:
               while(true)
               {
                  §§push(§§pop() == null);
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr142:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_ || _loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(§§pop())
                           {
                              loop7:
                              while(_loc2_)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    SoundEngine.§`B§("ThemeMusic","Channel_Theme",999);
                                    while(true)
                                    {
                                       if(_loc1_ && _loc1_)
                                       {
                                          continue loop8;
                                       }
                                       if(_loc1_ && AngryBirdsFP11)
                                       {
                                          break;
                                       }
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(!_loc1_)
                                          {
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       addr153:
                                       while(true)
                                       {
                                          break loop7;
                                       }
                                    }
                                    continue loop7;
                                 }
                              }
                              continue loop1;
                              if(_loc2_ || _loc2_)
                              {
                                 continue;
                              }
                              continue loop2;
                           }
                           return;
                        }
                        while(true)
                        {
                           §§pop();
                        }
                        §§goto(addr153);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(SoundEngine.§while§("Channel_Theme"));
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop().§9X§());
               if(!(_loc1_ && _loc1_))
               {
                  §§push(!§§pop());
                  if(_loc2_)
                  {
                     addr103:
                     if(_loc2_)
                     {
                        addr106:
                        §§push(Boolean(§§pop()));
                        if(_loc2_)
                        {
                           §§goto(addr108);
                        }
                        §§goto(addr152);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr106);
               }
               §§goto(addr103);
            }
            §§goto(addr139);
         }
      }
      
      public static function §@!9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               SoundEngine.§5v§("Channel_Theme");
               while(_loc1_)
               {
                  if(_loc1_ || AngryBirdsFP11)
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      public static function get §8R§() : AngryBirdsFP11
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc2_ && AngryBirdsFP11)
         {
         }
         return sSingleton;
      }
      
      protected function getAssetMap() : XML
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         return §0d§.§@A§(mAssetMapBin);
      }
      
      protected function getUIData() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return §0d§.§@A§(mViewLibraryBin);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr40:
            }
            var loadingScreen:Sprite = new Sprite();
            if(_loc3_ && _loc3_)
            {
            }
            return loadingScreen;
         }
         §§goto(addr40);
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(LoadManager.§&!'§);
                  if(_loc2_)
                  {
                  }
                  §§pop().init(Server.§ !T§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§!W§,this.§1!A§);
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        sSingleton = this;
                        addr236:
                        while(true)
                        {
                           continue loop0;
                        }
                        addr114:
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        Log.§]!B§(§"B§);
                        loop20:
                        while(!(_loc2_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              loop21:
                              while(_loc3_)
                              {
                                 loop22:
                                 while(true)
                                 {
                                    Log.§6!D§(true);
                                    loop23:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop21;
                                       }
                                       addr57:
                                       if(_loc3_ || this)
                                       {
                                          addr64:
                                          if(_loc3_ || textData)
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             if(!(_loc2_ && this))
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop22;
                                                }
                                                continue loop20;
                                             }
                                             continue;
                                          }
                                          loop18:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(_loc3_ || this)
                                                   {
                                                      addr105:
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr114);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            addr154:
                                                            while(_loc3_ || textData)
                                                            {
                                                               this.initLevelMain();
                                                               break loop23;
                                                            }
                                                            continue loop0;
                                                            §§goto(addr105);
                                                         }
                                                         addr172:
                                                      }
                                                   }
                                                   addr135:
                                                   addr181:
                                                   while(!_loc2_)
                                                   {
                                                      §4!T§.§!!]§.visible = false;
                                                      continue loop18;
                                                   }
                                                   while(!_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         §4!T§.init(this,§8!Z§,include);
                                                         §§goto(addr172);
                                                         break loop23;
                                                      }
                                                   }
                                                   §§goto(addr236);
                                                   §§goto(addr57);
                                                }
                                                while(true)
                                                {
                                                   stage.align = StageAlign.TOP_LEFT;
                                                   break loop22;
                                                }
                                             }
                                             §§goto(addr154);
                                          }
                                          while(true)
                                          {
                                             break loop20;
                                          }
                                          addr192:
                                       }
                                       §§goto(addr98);
                                    }
                                    while(true)
                                    {
                                       if(_loc3_ || textData)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          §§goto(addr135);
                                       }
                                       §§goto(addr175);
                                    }
                                    addr221:
                                    while(true)
                                    {
                                       §§goto(addr213);
                                    }
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           addr195:
                           while(true)
                           {
                              §]t§ = §8!Z§;
                           }
                           §§goto(addr192);
                        }
                        while(true)
                        {
                           §,-§ = include;
                           §§goto(addr181);
                           §§goto(addr86);
                        }
                        addr86:
                     }
                  }
               }
            }
         }
         §§goto(addr195);
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               §4!T§.§1t§ = new LevelMain(stage);
               while(_loc1_ || _loc1_)
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr56:
               }
            }
         }
         §§goto(addr56);
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || _loc1_)
         {
            while(true)
            {
               sUserProgress = new UserProgress(SERVER_ROOT);
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            if(!(_loc1_ && _loc2_))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!_loc1_)
         {
            loop0:
            while(true)
            {
               §&=§(new StateFlashGoes11(false));
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §&=§(new StateLevelLoadClassic(false));
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           §&=§(new StateStart(false));
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 §&=§(new StateChapterSelection(false));
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §&=§(new StateLevelSelection(false));
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(!_loc1_)
                                          {
                                             §&=§(new StatePlay(false));
                                             loop11:
                                             while(true)
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   §&=§(new StatePause(false));
                                                   while(true)
                                                   {
                                                      loop14:
                                                      while(!(_loc1_ && this))
                                                      {
                                                         §&=§(new StateLevelEndRio(false));
                                                         loop15:
                                                         while(true)
                                                         {
                                                            loop16:
                                                            while(!_loc1_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §&=§(new StateLevelEndEagle(false));
                                                               while(true)
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §&=§(new StateLevelEndFailRio(false));
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §&=§(new StateFeed(false));
                                                                           continue loop12;
                                                                           addr44:
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                        }
                                                                        addr240:
                                                                        while(_loc2_ || this)
                                                                        {
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §&=§(new StateCreditsNew(false));
                                                                              continue loop5;
                                                                              addr200:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ || _loc1_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop24;
                                                                                 addr37:
                                                                                 if(!(_loc2_ || _loc2_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr44);
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           addr135:
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    this.onStageResize(null);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          addr72:
                                                                                          if(!(_loc1_ && _loc1_))
                                                                                          {
                                                                                             if(!(_loc2_ || this))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             addr176:
                                                                                             addr24:
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          addr120:
                                                                                          addr250:
                                                                                          while(!(_loc1_ && _loc1_))
                                                                                          {
                                                                                             §§goto(addr72);
                                                                                          }
                                                                                          while(!(_loc1_ && this))
                                                                                          {
                                                                                             continue loop0;
                                                                                             §§goto(addr120);
                                                                                          }
                                                                                          addr120:
                                                                                          continue loop12;
                                                                                       }
                                                                                       addr128:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc1_ && this)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§goto(addr135);
                                                                                       }
                                                                                       addr95:
                                                                                       continue loop16;
                                                                                       if(_loc1_ && _loc2_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr37);
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr301);
      }
      
      protected function §1!A§(data:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            while(_loc3_ && data)
            {
            }
         }
      }
      
      protected function §&!I§(e:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(true)
            {
               loop1:
               for(; _loc3_ || this; while(!(_loc2_ && _loc2_))
               {
                  if(_loc3_ || _loc2_)
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     §'!6§.§8!F§();
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      protected function §,!$§(e:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && this)
         {
         }
         if(!_loc5_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     §'!6§.§^[§();
                     if(!(_loc5_ && _loc2_))
                     {
                        while(!(_loc5_ && e))
                        {
                           if(this.§<6§)
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(true)
                                       {
                                          var _loc2_:*;
                                          §§push((_loc2_ = this).§^U§);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          var _loc3_:* = §§pop();
                                          if(!_loc5_)
                                          {
                                             _loc2_.§^U§ = _loc3_;
                                          }
                                       }
                                       continue;
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    this.§<6§ = false;
                                    loop5:
                                    while(_loc4_)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(this.§07§);
                                             if(_loc4_ || e)
                                             {
                                                §§push(FULL_SCREEN_FRAME_UPDATE_LIMIT);
                                                if(_loc4_)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                      }
                                                      loop7:
                                                      while(true)
                                                      {
                                                         this.§%![§(this.§%w§);
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && e))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop7;
                                                         }
                                                         addr198:
                                                         while(true)
                                                         {
                                                            §§push(this.§^U§);
                                                            break loop6;
                                                         }
                                                      }
                                                   }
                                                   addr110:
                                                   return;
                                                   addr109:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      addr195:
                                                      while(true)
                                                      {
                                                         break loop5;
                                                      }
                                                      addr195:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr109);
                                                   }
                                                }
                                                addr194:
                                             }
                                             break;
                                          }
                                          continue loop5;
                                          if(!(_loc4_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          if(!_loc5_)
                                          {
                                             break loop1;
                                          }
                                          §§goto(addr195);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr194);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr198);
                        addr108:
                     }
                     break;
                  }
                  continue loop0;
               }
               §§goto(addr110);
            }
         }
         §§goto(addr108);
      }
      
      public function §^!%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            while(true)
            {
               this.onStageResize(null);
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            if(!_loc2_)
            {
               if(_loc1_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function onStageResize(e:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && this)
         {
         }
         var width:* = NaN;
         var height:* = NaN;
         if(_loc7_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        do
                        {
                           loop5:
                           for(§§push(this.§7y§); !§§pop(); if(!(_loc7_ || e))
                           {
                              continue;
                           },§§goto(addr117),§§push(Boolean(§§pop())))
                           {
                              §§push(stage.stageWidth < 2);
                              if(!(_loc6_ && heightScale))
                              {
                                 continue;
                              }
                              loop6:
                              while(true)
                              {
                                 §§pop();
                                 addr128:
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       break loop5;
                                    }
                                    §§push(stage.stageHeight < 2);
                                    if(!_loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop6;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!(_loc7_ || this))
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!§§pop())
                                          {
                                             continue loop6;
                                          }
                                       }
                                       addr117:
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             break loop7;
                                          }
                                          continue loop3;
                                       }
                                       §§push(stage.stageWidth / §8!Z§);
                                       if(_loc7_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var widthScale:* = §§pop();
                                       if(!_loc7_)
                                       {
                                       }
                                       §§push(stage.stageHeight / include);
                                       if(_loc7_ || e)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var heightScale:* = §§pop();
                                       if(!(_loc6_ && this))
                                       {
                                          addr460:
                                          if(widthScale < heightScale)
                                          {
                                             addr451:
                                             width = Number(stage.stageWidth);
                                             addr457:
                                             addr445:
                                             addr452:
                                             addr458:
                                             §§push(Number(stage.stageWidth * (include / §8!Z§)));
                                             if(!(_loc6_ && this))
                                             {
                                                height = §§pop();
                                                addr435:
                                                if(!(_loc6_ && this))
                                                {
                                                   addr334:
                                                   §4!T§.§[Y§(0,0,stage.stageWidth,stage.stageHeight);
                                                   addr347:
                                                   if(!(_loc6_ && heightScale))
                                                   {
                                                      setViewSize(stage.stageWidth,stage.stageHeight);
                                                      addr316:
                                                      if(_loc7_ || e)
                                                      {
                                                         addr291:
                                                         if(_loc7_ || this)
                                                         {
                                                            if(!(_loc6_ && this))
                                                            {
                                                               sStageWidth = stage.stageWidth;
                                                               addr286:
                                                               if(!_loc6_)
                                                               {
                                                                  sStageHeight = stage.stageHeight;
                                                                  addr279:
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     if(!(_loc6_ && e))
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(!(_loc6_ && heightScale))
                                                                           {
                                                                              if(_loc7_ || e)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc7_ || heightScale)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§goto(addr457);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 §§goto(addr316);
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           §§goto(addr286);
                                                                        }
                                                                     }
                                                                     §§goto(addr279);
                                                                  }
                                                                  addr350:
                                                                  if(!(_loc6_ && e))
                                                                  {
                                                                     §§goto(addr334);
                                                                  }
                                                                  addr371:
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(Number(stage.stageHeight));
                                                                     if(_loc7_ || heightScale)
                                                                     {
                                                                        height = §§pop();
                                                                        §§goto(addr371);
                                                                     }
                                                                     addr395:
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc7_ || heightScale)
                                                                        {
                                                                           width = §§pop();
                                                                           addr405:
                                                                           §§goto(addr371);
                                                                           addr405:
                                                                        }
                                                                     }
                                                                     §§goto(addr457);
                                                                  }
                                                                  §§goto(addr460);
                                                               }
                                                               §§goto(addr435);
                                                            }
                                                            §§goto(addr445);
                                                         }
                                                         §§goto(addr405);
                                                      }
                                                      §§goto(addr452);
                                                   }
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr458);
                                             }
                                             §§goto(addr460);
                                          }
                                          §§push(stage.stageHeight * (§8!Z§ / include));
                                          if(!_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                §§goto(addr395);
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr451);
                                          }
                                          §§goto(addr395);
                                       }
                                       §§goto(addr405);
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                        while(!(_loc7_ || e));
                        
                        if(!_loc6_)
                        {
                           return;
                        }
                        continue loop0;
                     }
                     if(_loc7_ || this)
                     {
                        return;
                        addr94:
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §,!f§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            if(!_loc2_)
            {
            }
         }
         var time:int = getTimer();
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
               if(time - this.§%w§ > FULL_SCREEN_TOGGLE_INTERVAL)
               {
                  while(true)
                  {
                     do
                     {
                        if(stage.displayState != StageDisplayState.FULL_SCREEN)
                        {
                           if(stage.displayState == StageDisplayState.NORMAL)
                           {
                              loop3:
                              while(true)
                              {
                                 addr109:
                                 while(true)
                                 {
                                    this.§'§(time);
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr38);
                        }
                     }
                     while(!(_loc2_ || _loc3_));
                     
                     §§goto(addr142);
                  }
               }
               §§goto(addr38);
            }
         }
         §§goto(addr142);
      }
      
      public function §!!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc2_ && this)
         {
         }
         do
         {
            this.§%![§(0);
            while(_loc2_ && _loc1_)
            {
            }
         }
         while(!_loc1_);
         
      }
      
      public function §7g§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            §§push(Boolean(stage));
            while(true)
            {
               if(!§§pop())
               {
                  §§push(false);
                  if(_loc1_ && this)
                  {
                     break;
                  }
                  continue;
               }
            }
            §§goto(addr72);
         }
         addr72:
         stage.displayState == StageDisplayState.FULL_SCREEN;
         return §§pop();
      }
      
      private function §%![§(time:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§7y§ = true;
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        stage.displayState = StageDisplayState.NORMAL;
                        loop4:
                        while(true)
                        {
                           addr107:
                           while(_loc3_)
                           {
                              this.§%w§ = time;
                              while(true)
                              {
                              }
                              if(_loc3_ || _loc2_)
                              {
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                        if(!(_loc2_ && this))
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§<6§ = false;
            §§goto(addr46);
         }
         §§goto(addr41);
      }
      
      private function §'§(time:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               addr77:
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               this.§<6§ = true;
               loop12:
               while(!_loc2_)
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  addr37:
                  if(!(_loc2_ && this))
                  {
                     addr44:
                     if(_loc3_ || time)
                     {
                        return;
                     }
                     loop6:
                     for(; _loc3_ || _loc3_; §§goto(addr44))
                     {
                        loop7:
                        while(!(_loc2_ && _loc2_))
                        {
                           this.§07§ = 0;
                           while(true)
                           {
                              addr94:
                              while(_loc3_)
                              {
                                 this.§^U§ = 0;
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       break loop12;
                                    }
                                    break;
                                    §§goto(addr37);
                                 }
                                 continue loop7;
                              }
                              addr136:
                              while(true)
                              {
                                 this.§%w§ = time;
                                 continue loop6;
                              }
                           }
                        }
                        loop3:
                        while(true)
                        {
                           stage.displayState = StageDisplayState.FULL_SCREEN;
                           addr144:
                           addr159:
                           while(_loc3_ || this)
                           {
                              §§goto(addr136);
                              if(_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr77);
                           }
                           while(true)
                           {
                              continue loop3;
                              §§goto(addr144);
                           }
                        }
                        addr104:
                     }
                     while(true)
                     {
                        this.§7y§ = true;
                        §§goto(addr159);
                        §§goto(addr116);
                     }
                     addr116:
                     addr162:
                  }
                  §§goto(addr89);
               }
               while(true)
               {
                  if(_loc3_)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr65);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr94);
               }
               §§goto(addr144);
            }
         }
         §§goto(addr162);
      }
      
      protected function onKeyDown(event:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
         }
         if(_loc4_ || _loc3_)
         {
         }
         var _loc2_:* = event.keyCode;
         if(!(_loc3_ && _loc2_))
         {
            if(_loc4_ || _loc3_)
            {
               addr79:
               if(Keyboard.F !== _loc2_)
               {
                  if(false)
                  {
                     §§goto(addr97);
                  }
                  else
                  {
                     §§push(1);
                  }
                  addr102:
                  switch(§§pop())
                  {
                     case 0:
                  }
                  return;
               }
               if(!(_loc3_ && _loc2_))
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     addr100:
                  }
               }
               else
               {
                  addr97:
                  §§push(1);
                  if(_loc4_)
                  {
                     §§goto(addr100);
                  }
               }
               §§goto(addr102);
            }
            §§goto(addr97);
         }
         §§goto(addr79);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               super.setFirstGameState();
               loop1:
               for(; !_loc2_; if(!(_loc1_ || this))
               {
                  continue;
               },§§goto(addr74))
               {
                  while(true)
                  {
                     LoadManager.§&!'§.§-!h§();
                     loop5:
                     for(; _loc1_ || _loc2_; if(!(_loc2_ && this))
                     {
                        return;
                     })
                     {
                        loop6:
                        while(!_loc2_)
                        {
                           this.initializeGame();
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 addr50:
                                 if(_loc2_ && this)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop6;
                              addr74:
                              if(_loc1_ || _loc2_)
                              {
                                 continue loop5;
                              }
                           }
                           while(true)
                           {
                              §§push(LevelManager);
                              if(!_loc1_)
                              {
                              }
                              §§pop().§9>§(JSON.parse(this.§!W§.getFileAsString("Chapters.json")));
                              continue loop5;
                              §§goto(addr50);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr115);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      override public function updateState(deltaTime:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || nextStateHint)
         {
         }
         var nextStateHint:int = 0;
         if(!(_loc4_ && returnValue))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     continue loop1;
                     addr65:
                     while(!(_loc4_ && deltaTime))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      override public function getAppWidth() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return SCREEN_WIDTH;
      }
      
      override public function getAppHeight() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         return SCREEN_HEIGHT;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc1_ && _loc2_)
         {
         }
         return LOADING_SCEEN_MINIMUM_TIME;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         §§push("Client: ");
         if(_loc2_ || _loc1_)
         {
            if(_loc2_)
            {
               §§push(VERSION);
               if(_loc2_)
               {
                  §§push(§§pop() + §§pop().replace("{svn_version}","local dev build"));
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(", ");
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc1_)
                        {
                           addr78:
                           §§push("Server: ");
                           if(!_loc1_)
                           {
                              addr82:
                              §§push(§§pop() + §§pop());
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr90:
                                 §§push(§§pop() + SERVER_VERSION);
                              }
                           }
                           §§goto(addr82);
                        }
                        return §§pop();
                     }
                     §§goto(addr82);
                  }
               }
               §§goto(addr90);
            }
         }
         §§goto(addr78);
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               §4!T§.§&a§(this.getItemData(),this.getLevelBackgrounds());
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     §4!T§.§'!>§(this.§!W§.§`F§,LevelItemManager.§#!E§(),this.onGraphicsInitialized);
                     while(!(_loc1_ || _loc2_))
                     {
                     }
                     if(!(_loc2_ && _loc1_))
                     {
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr87);
      }
      
      protected function getLevelBackgrounds() : XML
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_)
         {
         }
         return §0d§.§@A§(mLevelBackgroundsTableBin);
      }
      
      protected function getItemData() : XML
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return §0d§.§@A§(mItemDataTableBin);
      }
      
      protected function onGraphicsInitialized(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  sInitComplete = true;
                  loop2:
                  while(_loc2_ || e)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        do
                        {
                           if(DISPLAY_FLASH_GOES_11)
                           {
                              continue;
                           }
                           §0!f§(StateStart.STATE_NAME);
                           while(!_loc3_)
                           {
                              if(_loc3_ && _loc2_)
                              {
                                 §0!f§(StateFlashGoes11.STATE_NAME);
                                 break;
                              }
                              addr103:
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§goto(addr23);
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           if(_loc2_)
                           {
                              break loop3;
                           }
                           continue loop0;
                        }
                        while(_loc3_);
                        
                        §§goto(addr103);
                     }
                     addr23:
                     return;
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      public function newUserScore(level:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && level)
         {
         }
         if(!_loc3_)
         {
         }
      }
      
      override public function onEnterFrame(e:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
         }
         if(_loc4_ || _loc3_)
         {
            if(!(_loc5_ && _loc3_))
            {
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§<6§);
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_ || this)
                           {
                              if(_loc5_)
                              {
                                 continue;
                              }
                              if(!(_loc5_ && this))
                              {
                                 if(false)
                                 {
                                    continue loop0;
                                 }
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§07§);
                                 if(_loc4_ || e)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(_loc4_)
                                 {
                                    _loc2_.§07§ = _loc3_;
                                 }
                                 if(!(_loc5_ && this))
                                 {
                                    while(true)
                                    {
                                       addr210:
                                       while(true)
                                       {
                                          §§push(Starling.§]c§());
                                          if(_loc4_)
                                          {
                                             §§push(!§§pop());
                                             break loop1;
                                          }
                                          break loop1;
                                       }
                                    }
                                    addr220:
                                 }
                              }
                              return;
                              addr217:
                              addr218:
                           }
                           do
                           {
                              this.§7y§ = false;
                              loop7:
                              for(; !_loc5_; if(_loc5_)
                              {
                                 continue;
                              },if(!(_loc5_ && e))
                              {
                                 addr113:
                                 return;
                              },§§goto(addr217))
                              {
                                 if(_loc4_ || this)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       continue;
                                    }
                                    addr200:
                                    while(true)
                                    {
                                       super.onEnterFrame(e);
                                       addr205:
                                       while(true)
                                       {
                                          addr198:
                                          while(true)
                                          {
                                             §§push(this.§7y§);
                                             if(_loc4_ || this)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         break loop7;
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   break loop7;
                                                }
                                                §§goto(addr113);
                                             }
                                             break loop1;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr205);
                              }
                              while(!(_loc4_ || _loc3_))
                              {
                                 §§goto(addr198);
                              }
                           }
                           while(!(_loc5_ && e));
                           
                           §§goto(addr218);
                        }
                        §§goto(addr210);
                     }
                     break;
                  }
                  while(!§§pop())
                  {
                     §§goto(addr200);
                  }
                  §§goto(addr217);
               }
            }
            §§goto(addr217);
         }
         §§goto(addr205);
      }
      
      public function externalPause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
      }
      
      public function externalResume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
      }
   }
}
