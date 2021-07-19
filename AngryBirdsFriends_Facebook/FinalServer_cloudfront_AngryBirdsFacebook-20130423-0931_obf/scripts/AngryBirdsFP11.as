package
{
   import §"a§.§!"J§;
   import §#"A§.§'"U§;
   import §%"J§.§!`§;
   import §%"J§.§3!O§;
   import §+!c§.§&!0§;
   import §+!c§.§9"H§;
   import §+!c§.§;!=§;
   import §,l§.§0z§;
   import §-f§.§8!<§;
   import §2"'§.§0W§;
   import §2<§.§8M§;
   import §4!<§.§'!S§;
   import §4D§.§"H§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §;u§.§ if§;
   import §;u§.§%Z§;
   import §;u§.§&"[§;
   import §;u§.§-!v§;
   import §;u§.§4!Q§;
   import §;u§.§5!+§;
   import §;u§.§9!V§;
   import §;u§.§9"@§;
   import §;u§.§>!w§;
   import §;u§.StateCutScene;
   import §;u§.StatePlay;
   import §;u§.§]S§;
   import §;u§.§`!7§;
   import §@!"§.§!!C§;
   import §@!"§.§?l§;
   import com.rovio.assets.§3!?§;
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
   
   public class AngryBirdsFP11 extends §3!O§
   {
      
      protected static var §'"X§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §@!x§:String;
      
      public static var §?8§:String;
      
      public static const §7!H§:int = 1024;
      
      public static const §<"P§:int = 768;
      
      public static const §#V§:Boolean = false;
      
      public static const §-%§:int = 2000;
      
      public static const §!">§:Boolean = false;
      
      private static const §!!y§:int = 750;
      
      private static const §?!]§:int = 3;
      
      private static const §,!u§:int = 15;
      
      protected static var §9!0§:Class;
      
      protected static var §>!?§:Class;
      
      protected static var §8!>§:Class;
      
      protected static var §]!#§:Class;
      
      public static var sUserProgress:§"H§ = null;
      
      public static var §["J§:Boolean = true;
      
      private static var §!C§:AngryBirdsFP11 = null;
      
      public static var §`!J§:Sprite = null;
      
      public static var §8!v§:§!!C§;
      
      public static var §`!5§:Boolean = false;
      
      protected static var §7E§:int = 0;
      
      protected static var §^"J§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'"X§ = AngryBirdsFP11_mTextBinary;
            loop0:
            while(true)
            {
               VERSION = "0.0.1.({svn_version})";
               loop1:
               while(true)
               {
                  §7!H§ = 1024;
                  addr228:
                  while(true)
                  {
                     §<"P§ = 768;
                     while(true)
                     {
                        §#V§ = false;
                        addr216:
                        while(_loc2_)
                        {
                           §-%§ = 2000;
                           while(true)
                           {
                              §!">§ = false;
                              addr206:
                              while(true)
                              {
                                 §!!y§ = 750;
                                 addr191:
                                 while(true)
                                 {
                                    §?!]§ = 3;
                                    loop8:
                                    while(true)
                                    {
                                       §,!u§ = 15;
                                       addr181:
                                       while(true)
                                       {
                                          §9!0§ = AngryBirdsFP11_mViewLibraryBin;
                                          continue loop8;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr57:
                     if(_loc2_ || AngryBirdsFP11)
                     {
                        return;
                     }
                  }
                  loop17:
                  while(true)
                  {
                     if(!(_loc2_ || _loc2_))
                     {
                        continue loop1;
                     }
                     §`!J§ = null;
                     loop18:
                     while(true)
                     {
                        §`!5§ = false;
                        addr76:
                        addr140:
                        loop19:
                        for(; !(_loc1_ && _loc2_); if(_loc2_ || _loc2_)
                        {
                           if(!_loc1_)
                           {
                              continue loop17;
                           }
                           continue loop18;
                        })
                        {
                           §7E§ = 0;
                           while(_loc2_)
                           {
                              §^"J§ = 0;
                              if(_loc2_)
                              {
                                 continue loop19;
                              }
                           }
                           §§goto(addr191);
                        }
                        while(true)
                        {
                           §["J§ = true;
                           addr115:
                           while(true)
                           {
                              if(!(_loc2_ || _loc1_))
                              {
                                 continue loop0;
                              }
                              if(!_loc1_)
                              {
                                 addr124:
                                 if(_loc2_ || _loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          §!C§ = null;
                                          continue loop17;
                                       }
                                       §§goto(addr181);
                                    }
                                    break;
                                 }
                                 while(_loc2_)
                                 {
                                    §8!>§ = AngryBirdsFP11_mItemDataTableBin;
                                    §§goto(addr124);
                                 }
                                 §§goto(addr211);
                                 addr162:
                              }
                              while(true)
                              {
                                 §]!#§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
                                 continue loop0;
                              }
                              addr46:
                              if(!(_loc2_ || AngryBirdsFP11))
                              {
                                 continue;
                              }
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr57);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr169);
                           §§goto(addr76);
                        }
                     }
                  }
                  §§goto(addr228);
               }
            }
         }
         while(true)
         {
            §>!?§ = AngryBirdsFP11_mAssetMapBin;
            §§goto(addr162);
         }
      }
      
      private var §0?§:§0z§;
      
      private var §7$§:int;
      
      private var §+!N§:Boolean;
      
      private var §'"§:int;
      
      private var §2§:int;
      
      protected var §@!4§:Boolean;
      
      public function AngryBirdsFP11(param1:§!`§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0?§ = new §0z§();
            loop0:
            while(true)
            {
               super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
               loop1:
               while(true)
               {
                  this.initialize();
                  while(true)
                  {
                     this.initStates();
                     continue loop1;
                     addr91:
                     if(_loc2_ && param1)
                     {
                        continue;
                     }
                     §§push(stage.stageHeight == §?s§);
                     if(!(_loc2_ && param1))
                     {
                        if(!_loc2_)
                        {
                           addr38:
                           §§push(!§§pop());
                           while(true)
                           {
                              addr40:
                              while(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    this.§?!O§(null);
                                 }
                                 if(_loc3_ || _loc2_)
                                 {
                                    break;
                                 }
                                 addr84:
                                 loop7:
                                 while(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr91);
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop7;
                                    }
                                 }
                                 continue loop1;
                              }
                              return;
                              §§goto(addr38);
                           }
                           addr39:
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr40);
                  }
               }
            }
         }
         while(true)
         {
            §§push(stage.stageWidth == §'!m§);
            if(!(_loc2_ && this))
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr83);
                  }
                  §§goto(addr39);
               }
            }
            §§goto(addr83);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §7E§;
      }
      
      public static function get stageHeight() : int
      {
         return §^"J§;
      }
      
      public static function §]"H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §["J§ = param1;
            do
            {
               §@"M§.§'!v§(§["J§);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public static function §6!,§() : Boolean
      {
         return §["J§;
      }
      
      public static function get §'!m§() : int
      {
         return §>m§.getAppWidth();
      }
      
      public static function get §?s§() : int
      {
         return §>m§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§@"M§.§^!5§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc1_ || _loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        addr51:
                        while(§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              §@"M§.§3"C§("ThemeMusic","Channel_Theme",999);
                           }
                           if(_loc1_ || AngryBirdsFP11)
                           {
                              addr81:
                              break;
                           }
                           continue loop0;
                        }
                        return;
                        addr49:
                     }
                  }
               }
               addr96:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr81);
      }
      
      public static function §4!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@"M§.§]!n§("Channel_Theme");
         }
      }
      
      public static function get §>m§() : AngryBirdsFP11
      {
         return §!C§;
      }
      
      protected function getAssetMap() : XML
      {
         return §9"H§.§5!h§(§>!?§);
      }
      
      protected function getUIData() : XML
      {
         return §9"H§.§5!h§(§9!0§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §'"U§.§&"5§.init(§8M§.§+!y§(),this.getUrlAsset() || "",stage.loaderInfo.parameters.buildNumber || "",this.§0?§,this.§3&§);
            loop0:
            while(true)
            {
               §!C§ = this;
               while(true)
               {
                  stage.scaleMode = StageScaleMode.NO_SCALE;
                  while(!_loc3_)
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     stage.align = StageAlign.TOP_LEFT;
                     loop3:
                     while(true)
                     {
                        §7!i§ = §'!m§;
                        loop4:
                        while(true)
                        {
                           §9A§ = §?s§;
                           loop5:
                           while(true)
                           {
                              §?l§.init(this,§'!m§,§?s§);
                              loop6:
                              while(true)
                              {
                                 this.initLevelMain();
                                 while(_loc2_)
                                 {
                                    §?l§.§#"$§.visible = false;
                                    while(!(_loc3_ && _loc1_))
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             while(true)
                                             {
                                                §;!=§.§"y§(§%3§);
                                                continue loop3;
                                             }
                                             continue;
                                             addr36:
                                          }
                                          continue loop5;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     while(false)
                     {
                        §§goto(addr36);
                     }
                     var _loc1_:XMLList = §9"H§.§5!h§(§'"X§).children();
                     if(_loc2_ || _loc3_)
                     {
                        §3!?§.init(_loc1_);
                        while(true)
                        {
                           §@"M§.§set §("CHANNEL_THEME",1,1);
                           while(true)
                           {
                              §@"M§.§set §("CHANNEL_AMBIENT",1,1);
                              loop14:
                              while(true)
                              {
                                 this.initUserProgress();
                                 addr267:
                                 while(true)
                                 {
                                    stage.addEventListener(Event.MOUSE_LEAVE,this.§[!&§);
                                    continue loop14;
                                 }
                              }
                           }
                           if(!(_loc2_ || _loc3_))
                           {
                              continue;
                           }
                           §8!v§ = new §!!C§(stage);
                           §§goto(addr187);
                        }
                     }
                     §§goto(addr198);
                  }
               }
            }
         }
         §§goto(addr34);
      }
      
      protected function getUrlAsset() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?l§.§'h§ = new §'!S§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            sUserProgress = new §"H§(§?8§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%1§(new §`!7§(false));
            while(true)
            {
               §%1§(new §-!v§(false));
               while(true)
               {
                  §%1§(new §5!+§(false));
                  loop2:
                  while(true)
                  {
                     §%1§(new §9!V§(false));
                     while(true)
                     {
                        §%1§(new §9"@§(false));
                        loop4:
                        while(!_loc1_)
                        {
                           §%1§(new StatePlay(false));
                           loop5:
                           while(true)
                           {
                              §%1§(new §4!Q§(false));
                              loop6:
                              while(true)
                              {
                                 §%1§(new § if§(false));
                                 while(true)
                                 {
                                    §%1§(new §>!w§(false));
                                    addr166:
                                    addr118:
                                    while(true)
                                    {
                                       §%1§(new §]S§(false));
                                       addr159:
                                       while(true)
                                       {
                                          §%1§(new §%Z§(false));
                                          addr136:
                                          while(!_loc1_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    loop12:
                                    for(; _loc2_ || _loc2_; if(!(_loc2_ || this))
                                    {
                                       continue;
                                    },this.§?!O§(null),§§goto(addr60))
                                    {
                                       if(!_loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             §%1§(new §&"[§(false));
                                             loop13:
                                             while(true)
                                             {
                                                §§push(stage.stageWidth == §'!m§);
                                                if(_loc2_ || this)
                                                {
                                                   §§push(!§§pop());
                                                   if(!_loc1_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop16:
                                                            for(; !_loc1_; continue loop17)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(stage.stageHeight == §?s§);
                                                                     if(!(_loc1_ && _loc1_))
                                                                     {
                                                                        if(_loc1_ && this)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        addr43:
                                                                        §§push(!§§pop());
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr43);
                                                                        }
                                                                     }
                                                                     while(§§pop())
                                                                     {
                                                                        if(!_loc1_)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     addr20:
                                                                     return;
                                                                  }
                                                                  §§goto(addr166);
                                                               }
                                                               §§goto(addr159);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         addr87:
                                                      }
                                                      §§goto(addr44);
                                                   }
                                                }
                                                §§goto(addr87);
                                             }
                                             continue;
                                          }
                                          continue loop4;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §%1§(new StateCutScene(false));
                     §§goto(addr118);
                  }
               }
            }
         }
         §§goto(addr152);
      }
      
      protected function §3&§(param1:ByteArray) : void
      {
      }
      
      protected function §[!&§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §&!0§.§!%§();
         }
      }
      
      protected function §6!`§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §&!0§.§@!R§();
            if(!_loc5_)
            {
               if(this.§+!N§)
               {
                  if(!_loc5_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§2§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_)
                     {
                        _loc2_.§2§ = _loc3_;
                     }
                     if(!_loc5_)
                     {
                        §§push(this.§2§);
                        loop1:
                        while(true)
                        {
                           §§push(§,!u§);
                           loop2:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    this.§+!N§ = false;
                                    addr121:
                                    while(true)
                                    {
                                       §§push(this.§'"§);
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(§?!]§);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         this.§1Z§(this.§7$§);
                                                         addr113:
                                                         break;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr113);
                                             }
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              §§goto(addr61);
                           }
                        }
                        addr59:
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr113);
               }
               addr61:
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr113);
      }
      
      public function §9!_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§?!O§(null);
         }
      }
      
      protected function §?!O§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§@!4§ = true;
         }
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = int(Math.round(stage.stageWidth));
         var _loc3_:* = int(Math.round(stage.stageHeight));
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(20);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    §§push(20);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                       addr372:
                                       addr317:
                                       while(true)
                                       {
                                          addr373:
                                          loop44:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop45:
                                                while(true)
                                                {
                                                   §§push(§7E§);
                                                   addr375:
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      loop8:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(§^"J§);
                                                            if(_loc4_ || param1)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(int(§§pop()));
                                                            }
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr365:
                                                               while(true)
                                                               {
                                                               }
                                                               addr276:
                                                               if(_loc5_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc3_);
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  if(§§pop() / §§pop() > 25 / 12)
                                                                  {
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        §§push(int(Math.round(_loc3_ * (25 / 12))));
                                                                        loop41:
                                                                        while(!_loc5_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           _loc2_ = §§pop();
                                                                           loop42:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          loop28:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop29:
                                                                                             while(_loc4_ || this)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      loop31:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§7E§);
                                                                                                         loop32:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            addr162:
                                                                                                            while(_loc4_)
                                                                                                            {
                                                                                                               if(_loc4_ || this)
                                                                                                               {
                                                                                                                  if(!(_loc5_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     if(_loc4_ || param1)
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc4_ || _loc3_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    loop37:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          loop38:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §7E§ = _loc2_;
                                                                                                                                             loop39:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc5_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      continue loop38;
                                                                                                                                                   }
                                                                                                                                                   continue loop45;
                                                                                                                                                }
                                                                                                                                                if(_loc5_ && _loc3_)
                                                                                                                                                {
                                                                                                                                                   continue loop31;
                                                                                                                                                }
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue loop25;
                                                                                                                                                }
                                                                                                                                                §^"J§ = _loc3_;
                                                                                                                                                while(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   this.resizeViews(§7E§,§^"J§);
                                                                                                                                                   if(!(_loc5_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         continue loop39;
                                                                                                                                                      }
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         addr73:
                                                                                                                                                         if(!(_loc4_ || param1))
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc5_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc5_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop32;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop9;
                                                                                                                                                               }
                                                                                                                                                               continue loop42;
                                                                                                                                                               §§goto(addr73);
                                                                                                                                                            }
                                                                                                                                                            continue loop42;
                                                                                                                                                            addr231:
                                                                                                                                                         }
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            §§push(true);
                                                                                                                                                            if(!(_loc4_ || param1))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr155);
                                                                                                                                                            }
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               addr47:
                                                                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  return §§pop();
                                                                                                                                                               }
                                                                                                                                                               continue loop30;
                                                                                                                                                            }
                                                                                                                                                            addr138:
                                                                                                                                                            loop47:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  continue loop37;
                                                                                                                                                               }
                                                                                                                                                               addr326:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr328:
                                                                                                                                                                     §§push(false);
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           return §§pop();
                                                                                                                                                                        }
                                                                                                                                                                        continue loop4;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop44;
                                                                                                                                                                  }
                                                                                                                                                                  addr260:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc2_);
                                                                                                                                                                     if(!(_loc4_ || _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop41;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc5_ && _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr276);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop47;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr365);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(2);
                                                                                                                                                            addr337:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                               addr338:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  break loop29;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr154:
                                                                                                                                                         §§push(false);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                   addr155:
                                                                                                                                                   return §§pop();
                                                                                                                                                }
                                                                                                                                                §§goto(addr260);
                                                                                                                                             }
                                                                                                                                             continue loop45;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr154);
                                                                                                                                    }
                                                                                                                                    continue loop41;
                                                                                                                                 }
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              continue loop29;
                                                                                                                              addr205:
                                                                                                                           }
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               §§goto(addr337);
                                                                                                            }
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr205);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§goto(addr340);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr326);
                                                                                                   }
                                                                                                   addr325:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr246:
                                                                                 }
                                                                                 §§goto(addr341);
                                                                              }
                                                                              §§goto(addr328);
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                            }
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr336);
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc5_ && this)
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr325);
                                          §§push(§§pop() < §§pop());
                                          §§goto(addr130);
                                       }
                                       §§goto(addr373);
                                    }
                                 }
                                 §§goto(addr375);
                              }
                           }
                        }
                        §§goto(addr372);
                     }
                  }
               }
            }
         }
         §§goto(addr245);
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §?l§.§4!c§(0,0,param1,param2);
         }
         do
         {
            setViewSize(param1,param2);
         }
         while(_loc3_);
         
      }
      
      public function §=-§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = getTimer();
         if(_loc2_)
         {
            if(_loc1_ - this.§7$§ > §!!y§)
            {
               if(!(_loc3_ && _loc1_))
               {
                  if(stage.displayState != StageDisplayState.FULL_SCREEN)
                  {
                     if(stage.displayState == StageDisplayState.NORMAL)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           if(_loc2_)
                           {
                              addr64:
                              this.§;!§(_loc1_);
                           }
                           addr23:
                           return;
                           addr91:
                        }
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr23);
                  }
                  this.§1Z§(_loc1_);
               }
               §§goto(addr91);
            }
            §§goto(addr23);
         }
         §§goto(addr64);
      }
      
      public function §^X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1Z§(0);
         }
      }
      
      public function §4!'§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(stage)
            {
               if(_loc1_)
               {
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(!(_loc2_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr50:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr50);
      }
      
      private function §1Z§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§@!4§ = true;
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  this.§7$§ = param1;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§+!N§ = false;
            if(!_loc3_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr38);
            }
            §§goto(addr52);
         }
         try
         {
            stage.displayState = StageDisplayState.NORMAL;
         }
         catch(e:Error)
         {
         }
      }
      
      private function §;!§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§@!4§ = true;
            while(true)
            {
               this.§7$§ = param1;
               loop1:
               while(!(_loc4_ && param1))
               {
                  while(true)
                  {
                     this.§'"§ = 0;
                     loop3:
                     while(_loc3_)
                     {
                        do
                        {
                           this.§2§ = 0;
                           while(_loc3_ || param1)
                           {
                              this.§+!N§ = true;
                              if(!_loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr25);
                           }
                           continue loop3;
                        }
                        while(false);
                        
                        try
                        {
                           stage.displayState = StageDisplayState.FULL_SCREEN;
                        }
                        catch(e:Error)
                        {
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.keyCode;
         if(_loc3_)
         {
            if(Keyboard.F === _loc2_)
            {
               addr40:
               §§push(0);
               if(_loc4_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.setFirstGameState();
            while(true)
            {
               §'"U§.§&"5§.§2"?§();
            }
            addr76:
         }
         loop1:
         do
         {
            LevelManager.§@@§(JSON.parse(this.§0?§.getFileAsString("Chapters.json")));
            while(_loc2_)
            {
               this.initializeGame();
               if(_loc2_ || this)
               {
                  continue loop1;
               }
            }
            §§goto(addr76);
         }
         while(!_loc2_);
         
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(!(_loc4_ && param1))
         {
            §§push(§?l§.§#"$§);
            if(_loc5_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc4_ && this))
                  {
                     addr41:
                     §?l§.§#"$§.update(param1);
                  }
               }
               §§push(super.updateState(param1));
               if(!(_loc4_ && param1))
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc4_)
               {
                  if(!§2!d§().isGenericState())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(_loc2_);
                        while(true)
                        {
                           if(§§pop() != §+d§.STATE_STATUS_COMPLETED)
                           {
                              continue;
                           }
                           while(true)
                           {
                              §§push(§;!=§);
                              §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§§pop() + §2!d§().mName);
                                 if(_loc4_ && param1)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() + " New State = ");
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    continue;
                                 }
                              }
                           }
                        }
                        addr108:
                     }
                     §§goto(addr111);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc5_ || param1)
                     {
                        break;
                     }
                     §§goto(addr108);
                  }
                  return §§pop();
               }
               §§goto(addr111);
            }
         }
         §§goto(addr41);
      }
      
      override public function getAppWidth() : Number
      {
         return §7!H§;
      }
      
      override public function getAppHeight() : Number
      {
         return §<"P§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §-%§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Client: ");
         if(_loc2_ || this)
         {
            §§push(VERSION);
            if(_loc2_)
            {
               §§push(§§pop() + §§pop().replace("{svn_version}","local dev build"));
               if(!(_loc1_ && _loc2_))
               {
                  addr59:
                  §§push(", ");
                  if(_loc2_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc1_)
                     {
                        addr66:
                        §§push(§§pop() + "Server: ");
                        if(_loc2_ || _loc1_)
                        {
                           addr74:
                           return §§pop() + §@!x§;
                        }
                     }
                  }
                  §§goto(addr66);
               }
            }
            §§goto(addr74);
         }
         §§goto(addr59);
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §?l§.§`!I§(this.getItemData(),this.getLevelBackgrounds());
            do
            {
               §?l§.§&!_§(this.§0?§.§#!y§,§8!<§.§-!Z§(),this.onGraphicsInitialized);
            }
            while(_loc2_ && this);
            
         }
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §9"H§.§5!h§(§]!#§);
      }
      
      protected function getItemData() : XML
      {
         return §9"H§.§5!h§(§8!>§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §`!5§ = true;
            while(!§!">§)
            {
               §`H§(§5!+§.STATE_NAME);
               if(_loc2_ && param1)
               {
                  return;
               }
               addr35:
               addr75:
               if(!_loc3_)
               {
                  break;
               }
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr35);
            }
         }
         §`H§(§`!7§.STATE_NAME);
         §§goto(addr75);
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            §§push(this.§+!N§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§'"§);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && _loc2_))
                     {
                        _loc2_.§'"§ = _loc3_;
                     }
                     if(!_loc4_)
                     {
                        addr122:
                        §§push(§!"J§.§+",§());
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(this.§@!4§);
                                 if(!(_loc5_ || this))
                                 {
                                    continue loop6;
                                 }
                                 if(§§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       this.resize();
                                       loop3:
                                       while(true)
                                       {
                                          this.§@!4§ = false;
                                          loop4:
                                          while(_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                break loop1;
                                             }
                                             while(true)
                                             {
                                                super.onEnterFrame(param1);
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop4;
                                             }
                                             return;
                                          }
                                          addr126:
                                          while(true)
                                          {
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr73);
                              }
                           }
                           return;
                        }
                        addr124:
                        addr68:
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr126);
               }
               §§goto(addr122);
            }
            §§goto(addr124);
         }
         §§goto(addr68);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
