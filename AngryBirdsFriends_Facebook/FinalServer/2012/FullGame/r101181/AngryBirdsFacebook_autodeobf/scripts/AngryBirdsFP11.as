package
{
   import § "C§.§2"=§;
   import §#!e§.LevelManager;
   import §%Q§.§6G§;
   import §'6§.§"]§;
   import §-"6§.§3X§;
   import §-"6§.§5E§;
   import §0!G§.§1-§;
   import §6!B§.§>!E§;
   import §6o§.§+!k§;
   import §6o§.§5!C§;
   import §6o§.§="7§;
   import §7"@§.§!!7§;
   import §7"@§.§#;§;
   import §7"@§.§&!>§;
   import §7"@§.§5!v§;
   import §7"@§.§6"5§;
   import §7"@§.§7l§;
   import §7"@§.§8!u§;
   import §7"@§.§8"D§;
   import §7"@§.§9<§;
   import §7"@§.§<!z§;
   import §7"@§.§?'§;
   import §7"@§.StateCutScene;
   import §7"@§.StatePlay;
   import §8!v§.§>!+§;
   import §9"!§.§9"3§;
   import §=,§.§!!W§;
   import §?" §.§=!L§;
   import §]!>§.§1"%§;
   import §]!A§.;
   import §]!A§.§8!4§;
   import com.rovio.assets.§96§;
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
   
   public class AngryBirdsFP11 extends §3X§
   {
      
      protected static var §3h§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §&"D§:String;
      
      public static var §76§:String;
      
      public static const §;H§:int = 1024;
      
      public static const §+P§:int = 768;
      
      public static const §4x§:Boolean = false;
      
      public static const §6"<§:int = 2000;
      
      public static const §!!f§:Boolean = false;
      
      private static const §7!"§:int = 750;
      
      private static const §3+§:int = 3;
      
      private static const §!F§:int = 15;
      
      protected static var §<'§:Class;
      
      protected static var §7!9§:Class;
      
      protected static var §#!A§:Class;
      
      protected static var §;I§:Class;
      
      public static var sUserProgress:§!!W§ = null;
      
      public static var §9q§:Boolean = true;
      
      private static var §67§:AngryBirdsFP11 = null;
      
      public static var §,+§:Sprite = null;
      
      public static var §9!_§:§8!4§;
      
      public static var §4!8§:Boolean = false;
      
      protected static var §1M§:int = 0;
      
      protected static var §5K§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3h§ = AngryBirdsFP11_mTextBinary;
            loop0:
            while(true)
            {
               VERSION = "0.0.1.({svn_version})";
               loop1:
               while(true)
               {
                  §;H§ = 1024;
                  addr228:
                  while(true)
                  {
                     §+P§ = 768;
                     while(true)
                     {
                        §4x§ = false;
                        addr216:
                        while(_loc2_)
                        {
                           §6"<§ = 2000;
                           while(true)
                           {
                              §!!f§ = false;
                              addr206:
                              while(true)
                              {
                                 §7!"§ = 750;
                                 addr191:
                                 while(true)
                                 {
                                    §3+§ = 3;
                                    loop8:
                                    while(true)
                                    {
                                       §!F§ = 15;
                                       addr181:
                                       while(true)
                                       {
                                          §<'§ = AngryBirdsFP11_mViewLibraryBin;
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
                     §,+§ = null;
                     loop18:
                     while(true)
                     {
                        §4!8§ = false;
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
                           §1M§ = 0;
                           while(_loc2_)
                           {
                              §5K§ = 0;
                              if(_loc2_)
                              {
                                 continue loop19;
                              }
                           }
                           §§goto(addr191);
                        }
                        while(true)
                        {
                           §9q§ = true;
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
                                          §67§ = null;
                                          continue loop17;
                                       }
                                       §§goto(addr181);
                                    }
                                    break;
                                 }
                                 while(_loc2_)
                                 {
                                    §#!A§ = AngryBirdsFP11_mItemDataTableBin;
                                    §§goto(addr124);
                                 }
                                 §§goto(addr211);
                                 addr162:
                              }
                              while(true)
                              {
                                 §;I§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
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
            §7!9§ = AngryBirdsFP11_mAssetMapBin;
            §§goto(addr162);
         }
      }
      
      private var §[O§:§1"%§;
      
      private var §<!h§:int;
      
      private var §0"B§:Boolean;
      
      private var §0!a§:int;
      
      private var §7!s§:int;
      
      protected var §+!S§:Boolean;
      
      public function AngryBirdsFP11(param1:§5E§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[O§ = new §1"%§();
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
                     §§push(stage.stageHeight == §^!7§);
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
                                    this.onStageResize(null);
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
            §§push(stage.stageWidth == §=!u§);
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
         return §1M§;
      }
      
      public static function get stageHeight() : int
      {
         return §5K§;
      }
      
      public static function §@i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §9q§ = param1;
            do
            {
               §>!E§.§7X§(§9q§);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public static function §3>§() : Boolean
      {
         return §9q§;
      }
      
      public static function get §=!u§() : int
      {
         return §@<§.getAppWidth();
      }
      
      public static function get §^!7§() : int
      {
         return §@<§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§>!E§.§"h§("Channel_Theme"));
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
                              §>!E§.§7N§("ThemeMusic","Channel_Theme",999);
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
      
      public static function §`!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>!E§.§1!;§("Channel_Theme");
         }
      }
      
      public static function get §@<§() : AngryBirdsFP11
      {
         return §67§;
      }
      
      protected function getAssetMap() : XML
      {
         return §5!C§.§9G§(§7!9§);
      }
      
      protected function getUIData() : XML
      {
         return §5!C§.§9G§(§<'§);
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
            §=!L§.§;"§.init(§2"=§.§0!,§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§[O§,this.§8P§);
            loop0:
            while(true)
            {
               §67§ = this;
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
                        §9!"§ = §=!u§;
                        loop4:
                        while(true)
                        {
                           §4t§ = §^!7§;
                           loop5:
                           while(true)
                           {
                              §#6§.init(this,§=!u§,§^!7§);
                              loop6:
                              while(true)
                              {
                                 this.initLevelMain();
                                 while(_loc2_)
                                 {
                                    §#6§.§=_§.visible = false;
                                    while(!(_loc3_ && _loc1_))
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             while(true)
                                             {
                                                §+!k§.§5?§(§5!X§);
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
                     var _loc1_:XMLList = §5!C§.§9G§(§3h§).children();
                     if(_loc2_ || _loc3_)
                     {
                        §96§.init(_loc1_);
                        while(true)
                        {
                           §>!E§.§0I§("CHANNEL_THEME",1,1);
                           while(true)
                           {
                              §>!E§.§0I§("CHANNEL_AMBIENT",1,1);
                              loop14:
                              while(true)
                              {
                                 this.initUserProgress();
                                 addr269:
                                 while(true)
                                 {
                                    stage.addEventListener(Event.MOUSE_LEAVE,this.§<"'§);
                                    continue loop14;
                                 }
                              }
                           }
                           if(!(_loc2_ || _loc3_))
                           {
                              continue;
                           }
                           §9!_§ = new §8!4§(stage);
                           §§goto(addr189);
                        }
                     }
                     §§goto(addr200);
                  }
               }
            }
         }
         §§goto(addr34);
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#6§.§6!z§ = new §9"3§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            sUserProgress = new §!!W§(§76§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[3§(new §6"5§(false));
            while(true)
            {
               §[3§(new §!!7§(false));
               while(true)
               {
                  §[3§(new §#;§(false));
                  loop2:
                  while(true)
                  {
                     §[3§(new §?'§(false));
                     while(true)
                     {
                        §[3§(new §8"D§(false));
                        loop4:
                        while(!_loc1_)
                        {
                           §[3§(new StatePlay(false));
                           loop5:
                           while(true)
                           {
                              §[3§(new §7l§(false));
                              loop6:
                              while(true)
                              {
                                 §[3§(new §&!>§(false));
                                 while(true)
                                 {
                                    §[3§(new §<!z§(false));
                                    addr166:
                                    addr118:
                                    while(true)
                                    {
                                       §[3§(new §8!u§(false));
                                       addr159:
                                       while(true)
                                       {
                                          §[3§(new §5!v§(false));
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
                                    },this.onStageResize(null),§§goto(addr60))
                                    {
                                       if(!_loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             §[3§(new §9<§(false));
                                             loop13:
                                             while(true)
                                             {
                                                §§push(stage.stageWidth == §=!u§);
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
                                                                     §§push(stage.stageHeight == §^!7§);
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
                     §[3§(new StateCutScene(false));
                     §§goto(addr118);
                  }
               }
            }
         }
         §§goto(addr152);
      }
      
      protected function §8P§(param1:ByteArray) : void
      {
      }
      
      protected function §<"'§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §="7§.§+!j§();
         }
      }
      
      protected function §3[§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §="7§.§#"0§();
            if(!_loc5_)
            {
               if(this.§0"B§)
               {
                  if(!_loc5_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§7!s§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_)
                     {
                        _loc2_.§7!s§ = _loc3_;
                     }
                     if(!_loc5_)
                     {
                        §§push(this.§7!s§);
                        loop1:
                        while(true)
                        {
                           §§push(§!F§);
                           loop2:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 loop3:
                                 while(true)
                                 {
                                    this.§0"B§ = false;
                                    addr121:
                                    while(true)
                                    {
                                       §§push(this.§0!a§);
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(§3+§);
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
                                                         this.§]!^§(this.§<!h§);
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
      
      public function §0_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.onStageResize(null);
         }
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!(_loc6_ && param1))
         {
            §§push(this.§+!S§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(stage.stageWidth < 2);
                     if(!(_loc6_ && param1))
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              addr67:
                              while(!(_loc6_ && param1))
                              {
                                 if(!(_loc7_ || _loc2_))
                                 {
                                    §§goto(addr85);
                                 }
                                 while(true)
                                 {
                                    §§push(stage.stageHeight < 2);
                                    if(!(_loc7_ || _loc2_))
                                    {
                                       continue loop4;
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 continue loop4;
                              }
                              continue loop1;
                           }
                           addr66:
                        }
                        while(§§pop())
                        {
                           if(_loc6_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           if(_loc7_)
                           {
                              return;
                           }
                           §§goto(addr67);
                        }
                        §§push(stage.stageWidth / §=!u§);
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        §§push(stage.stageHeight / §^!7§);
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        if(_loc7_)
                        {
                           addr257:
                           if(_loc2_ < _loc3_)
                           {
                              addr262:
                              _loc4_ = Number(stage.stageWidth);
                              addr244:
                              addr263:
                              addr259:
                              §§push(stage.stageWidth * (§^!7§ / §=!u§));
                              if(_loc7_)
                              {
                                 addr247:
                                 §§push(Number(§§pop()));
                                 if(_loc7_ || _loc3_)
                                 {
                                    _loc5_ = §§pop();
                                    addr174:
                                    §#6§.§^9§(0,0,stage.stageWidth,stage.stageHeight);
                                    setViewSize(stage.stageWidth,stage.stageHeight);
                                    addr255:
                                    if(_loc7_ || _loc2_)
                                    {
                                       if(_loc7_ || _loc3_)
                                       {
                                          if(_loc7_)
                                          {
                                             §1M§ = stage.stageWidth;
                                             §5K§ = stage.stageHeight;
                                             addr149:
                                             if(_loc7_ || this)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc6_ && param1)
                                                      {
                                                         addr219:
                                                         if(_loc7_ || _loc2_)
                                                         {
                                                            §§push(Number(stage.stageHeight));
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     addr205:
                                                                     §§goto(addr174);
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                               addr215:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               §§goto(addr219);
                                                            }
                                                            §§goto(addr244);
                                                         }
                                                         §§goto(addr263);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§goto(addr174);
                                             }
                                             addr149:
                                             §§goto(addr149);
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr255);
                                    }
                                    addr183:
                                    §§goto(addr183);
                                 }
                                 §§goto(addr257);
                              }
                              §§goto(addr262);
                           }
                           §§goto(addr215);
                           §§push(stage.stageHeight * (§=!u§ / §^!7§));
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr66);
                  }
               }
               addr85:
               return;
            }
         }
         §§goto(addr81);
      }
      
      public function §'!+§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = getTimer();
         if(_loc3_ || _loc3_)
         {
            if(_loc1_ - this.§<!h§ > §7!"§)
            {
               if(_loc3_)
               {
                  if(stage.displayState != StageDisplayState.FULL_SCREEN)
                  {
                     if(stage.displayState == StageDisplayState.NORMAL)
                     {
                        if(!_loc2_)
                        {
                           this.§^"@§(_loc1_);
                        }
                        if(!_loc2_)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              §§goto(addr29);
                           }
                           else
                           {
                              addr89:
                              this.§]!^§(_loc1_);
                           }
                           §§goto(addr29);
                        }
                     }
                     §§goto(addr29);
                  }
                  §§goto(addr89);
               }
            }
            addr29:
            return;
         }
         §§goto(addr89);
      }
      
      public function §#m§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§]!^§(0);
         }
      }
      
      public function §-!P§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(stage)
            {
               if(!(_loc1_ && _loc2_))
               {
                  addr43:
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(_loc2_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr56:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr56);
         }
         §§goto(addr43);
      }
      
      private function §]!^§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+!S§ = true;
            loop0:
            while(true)
            {
               stage.displayState = StageDisplayState.NORMAL;
               while(true)
               {
                  this.§<!h§ = param1;
                  loop2:
                  while(!_loc2_)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§0"B§ = false;
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §^"@§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+!S§ = true;
            while(true)
            {
               stage.displayState = StageDisplayState.FULL_SCREEN;
               addr99:
               while(true)
               {
                  this.§<!h§ = param1;
                  addr35:
                  if(!(_loc2_ && this))
                  {
                     return;
                     addr52:
                  }
               }
               addr81:
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               this.§7!s§ = 0;
               while(!_loc2_)
               {
                  this.§0"B§ = true;
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr35);
               }
               loop3:
               while(true)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr81);
                  }
                  addr93:
                  while(true)
                  {
                     this.§0!a§ = 0;
                     continue loop3;
                  }
                  §§goto(addr52);
               }
               §§goto(addr99);
            }
         }
         §§goto(addr93);
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.keyCode;
         if(!_loc3_)
         {
            if(Keyboard.F === _loc2_)
            {
               addr41:
               §§push(0);
               if(_loc4_ || _loc3_)
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
         §§goto(addr41);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.setFirstGameState();
         }
         loop0:
         while(true)
         {
            §=!L§.§;"§.§-!`§();
            while(true)
            {
               LevelManager.§!"@§(JSON.parse(this.§[O§.getFileAsString("Chapters.json")));
               while(!(_loc1_ && this))
               {
                  continue loop0;
                  this.initializeGame();
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(!(_loc5_ && _loc3_))
         {
            §§push(§#6§.§=_§);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop() != null)
               {
                  if(!(_loc5_ && param1))
                  {
                     addr45:
                     §#6§.§=_§.update(param1);
                  }
               }
               §§push(super.updateState(param1));
               if(!_loc5_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc5_)
               {
                  if(!§>k§().isGenericState())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(_loc2_);
                        while(true)
                        {
                           if(§§pop() != §1-§.STATE_STATUS_COMPLETED)
                           {
                              continue;
                           }
                        }
                     }
                     loop1:
                     while(true)
                     {
                        §§push(§+!k§);
                        §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                        if(!_loc5_)
                        {
                           §§push(§§pop() + §>k§().mName);
                           if(_loc4_)
                           {
                              §§push(§§pop() + " New State = ");
                              if(_loc4_ || param1)
                              {
                              }
                              addr143:
                              §§pop().log(§§pop());
                              while(true)
                              {
                                 §=!w§(§>k§().mNextState);
                                 if(_loc5_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr67);
                              }
                              addr144:
                           }
                           §§push(§§pop() + §>k§().mNextState);
                        }
                        §§goto(addr143);
                     }
                  }
                  §§goto(addr67);
               }
               §§goto(addr144);
            }
         }
         §§goto(addr45);
      }
      
      override public function getAppWidth() : Number
      {
         return §;H§;
      }
      
      override public function getAppHeight() : Number
      {
         return §+P§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §6"<§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: ");
         if(_loc1_ || _loc1_)
         {
            §§push(VERSION);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() + §§pop().replace("{svn_version}","local dev build"));
               if(!(_loc2_ && this))
               {
                  addr63:
                  §§push(", ");
                  if(_loc1_)
                  {
                     §§goto(addr78);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc2_)
                  {
                  }
               }
               §§goto(addr78);
            }
            addr78:
            §§push(§§pop() + §§pop());
            if(!(_loc2_ && _loc1_))
            {
               §§push("Server: ");
            }
            return §§pop() + §&"D§;
         }
         §§goto(addr63);
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#6§.§%!e§(this.getItemData(),this.getLevelBackgrounds());
         }
         do
         {
            §#6§.§[!2§(this.§[O§.§1S§,§6G§.§=!b§(),this.onGraphicsInitialized);
         }
         while(_loc1_ && this);
         
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §5!C§.§9G§(§;I§);
      }
      
      protected function getItemData() : XML
      {
         return §5!C§.§9G§(§#!A§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §4!8§ = true;
            while(true)
            {
               if(!§!!f§)
               {
                  §=!w§(§#;§.STATE_NAME);
                  if(!_loc3_)
                  {
                     §§goto(addr19);
                  }
                  continue;
               }
               if(!(_loc2_ || param1))
               {
                  continue;
               }
            }
            addr19:
            return;
         }
         while(true)
         {
            §=!w§(§6"5§.STATE_NAME);
            §§goto(addr67);
         }
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§0"B§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§0!a§);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_ || _loc3_)
                     {
                        _loc2_.§0!a§ = _loc3_;
                     }
                     if(_loc5_ || this)
                     {
                        addr126:
                        §§push(§"]§.§+"E§());
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr114:
                              while(true)
                              {
                                 super.onEnterFrame(param1);
                                 addr118:
                                 while(true)
                                 {
                                    if(_loc5_ || this)
                                    {
                                    }
                                    §§goto(addr129);
                                 }
                              }
                              addr114:
                           }
                           §§goto(addr129);
                        }
                        addr128:
                     }
                  }
                  while(true)
                  {
                     §§push(this.§+!S§);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && this))
                           {
                              if(!_loc4_)
                              {
                                 this.§+!S§ = false;
                              }
                              else
                              {
                                 §§goto(addr114);
                              }
                           }
                           if(_loc4_ && _loc2_)
                           {
                              continue;
                           }
                        }
                        return;
                     }
                     §§goto(addr128);
                     §§goto(addr114);
                  }
                  §§goto(addr129);
               }
            }
            §§goto(addr126);
         }
         addr129:
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
