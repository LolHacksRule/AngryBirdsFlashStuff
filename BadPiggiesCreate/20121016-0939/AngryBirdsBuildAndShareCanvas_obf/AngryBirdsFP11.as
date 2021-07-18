package
{
   import §""3§.§,"5§;
   import §""3§.§0Y§;
   import §"v§.§3!w§;
   import §%c§.§6!f§;
   import §%c§.§=!X§;
   import §&"'§.§7!E§;
   import §,a§.§<!m§;
   import §-!n§.§5!U§;
   import §0![§.§%!F§;
   import §0![§.§'"6§;
   import §0![§.§+"3§;
   import §0![§.§0!v§;
   import §0![§.§4g§;
   import §0![§.§7B§;
   import §0![§.§="§;
   import §0![§.§@!m§;
   import §0![§.StateCutScene;
   import §0![§.StatePlay;
   import §0![§.§]x§;
   import §0![§.§^!w§;
   import §0![§.§`t§;
   import §4!D§.§3!7§;
   import §5!V§.§!w§;
   import §5"-§.§5y§;
   import §6p§.§?%§;
   import §=!M§.§"o§;
   import §=!M§.§9!P§;
   import §=!M§.§?!1§;
   import §="6§.§;!a§;
   import §@!v§.§6!Q§;
   import §`!y§.§,!u§;
   import com.rovio.assets.§[!z§;
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
   
   public class AngryBirdsFP11 extends §0Y§
   {
      
      protected static var §;2§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §@R§:String;
      
      public static var §0!^§:String;
      
      public static const §^!N§:int = 1024;
      
      public static const §5!P§:int = 768;
      
      public static const §>3§:Boolean = false;
      
      public static const §39§:int = 2000;
      
      public static const §@!&§:Boolean = false;
      
      private static const §5Z§:int = 750;
      
      private static const §<!e§:int = 3;
      
      private static const §9^§:int = 15;
      
      protected static var §0l§:Class;
      
      protected static var §2!`§:Class;
      
      protected static var §9"3§:Class;
      
      protected static var §^!3§:Class;
      
      public static var §>" §:§,!u§ = null;
      
      public static var §8"&§:Boolean = true;
      
      private static var §>7§:AngryBirdsFP11 = null;
      
      public static var §[";§:Sprite = null;
      
      public static var §"!A§:§6!f§;
      
      public static var §,!v§:Boolean = false;
      
      protected static var §>6§:int = 0;
      
      protected static var §<!R§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;2§ = AngryBirdsFP11_mTextBinary;
            while(true)
            {
               VERSION = "0.0.1.({svn_version})";
               loop1:
               while(true)
               {
                  §^!N§ = 1024;
                  loop2:
                  while(true)
                  {
                     §5!P§ = 768;
                     loop3:
                     while(true)
                     {
                        §>3§ = false;
                        loop4:
                        while(true)
                        {
                           §39§ = 2000;
                           loop5:
                           while(true)
                           {
                              §@!&§ = false;
                              loop6:
                              while(true)
                              {
                                 §5Z§ = 750;
                                 loop7:
                                 while(_loc1_)
                                 {
                                    §<!e§ = 3;
                                    loop8:
                                    while(true)
                                    {
                                       §9^§ = 15;
                                       addr170:
                                       while(true)
                                       {
                                          §0l§ = AngryBirdsFP11_mViewLibraryBin;
                                          continue loop5;
                                       }
                                       addr52:
                                       if(_loc1_ || _loc2_)
                                       {
                                          §>6§ = 0;
                                          loop20:
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(_loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                loop18:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         §,!v§ = false;
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               §§goto(addr52);
                                                            }
                                                            continue loop20;
                                                         }
                                                         continue loop8;
                                                         addr50:
                                                      }
                                                      continue loop6;
                                                   }
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(_loc2_ && _loc1_)
                                                      {
                                                         while(!_loc2_)
                                                         {
                                                            §8"&§ = true;
                                                            continue loop16;
                                                         }
                                                         while(_loc1_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            while(true)
                                                            {
                                                               §>" § = null;
                                                               §§goto(addr111);
                                                            }
                                                         }
                                                         addr111:
                                                         continue loop4;
                                                         addr118:
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      §>7§ = null;
                                                   }
                                                   §§goto(addr170);
                                                   while(!_loc2_)
                                                   {
                                                      §[";§ = null;
                                                      continue loop18;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr50);
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §^!3§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
               §§goto(addr118);
            }
         }
         §§goto(addr122);
      }
      
      private var §[#§:§;!a§;
      
      private var §5`§:int;
      
      private var §-$§:Boolean;
      
      private var §7!2§:int;
      
      private var §="+§:int;
      
      protected var §-B§:Boolean;
      
      public function AngryBirdsFP11(param1:§,"5§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[#§ = new §;!a§();
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
                     loop3:
                     while(_loc2_)
                     {
                        §§push(stage.stageWidth == §>!U§);
                        if(_loc2_ || this)
                        {
                           §§push(!§§pop());
                           if(_loc2_ || _loc2_)
                           {
                              addr85:
                              if(!§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(stage.stageHeight == §>Y§);
                                       if(!_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop4;
                                          }
                                          §§push(!§§pop());
                                          while(true)
                                          {
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             break loop5;
                                          }
                                          if(!_loc2_)
                                          {
                                             break loop5;
                                          }
                                          addr64:
                                          if(_loc2_ || param1)
                                          {
                                             continue loop0;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    return;
                                 }
                                 addr87:
                              }
                              §§goto(addr33);
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr85);
                     }
                  }
               }
            }
         }
         this.onStageResize(null);
         §§goto(addr64);
      }
      
      public static function get stageWidth() : int
      {
         return §>6§;
      }
      
      public static function get stageHeight() : int
      {
         return §<!R§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §8"&§ = param1;
            do
            {
               §5!U§.§-X§(§8"&§);
            }
            while(!_loc2_);
            
         }
      }
      
      public static function getSoundsEnabled() : Boolean
      {
         return §8"&§;
      }
      
      public static function get §>!U§() : int
      {
         return §%d§.getAppWidth();
      }
      
      public static function get §>Y§() : int
      {
         return §%d§.getAppHeight();
      }
      
      public static function §<!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§5!U§.§`!;§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr84:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           §5!U§.playSound("ThemeMusic","Channel_Theme",999);
                        }
                        break;
                     }
                     return;
                     addr57:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public static function §@!1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && AngryBirdsFP11))
         {
            §5!U§.§+!7§("Channel_Theme");
         }
      }
      
      public static function get §%d§() : AngryBirdsFP11
      {
         return §>7§;
      }
      
      protected function getAssetMap() : XML
      {
         return §?!1§.§ !?§(§2!`§);
      }
      
      protected function getUIData() : XML
      {
         return §?!1§.§ !?§(§0l§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            §3!7§.§2=§.init(§6!Q§.§]!q§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§[#§,this.§["1§);
            while(true)
            {
               §>7§ = this;
               while(true)
               {
                  stage.scaleMode = StageScaleMode.NO_SCALE;
                  while(!(_loc3_ && _loc3_))
                  {
                     stage.align = StageAlign.TOP_LEFT;
                     while(true)
                     {
                        §?!,§ = §>!U§;
                        while(true)
                        {
                           §;!Z§ = §>Y§;
                           addr89:
                           loop5:
                           while(true)
                           {
                              §=!X§.init(this,§>!U§,§>Y§);
                              addr84:
                              while(true)
                              {
                                 this.initLevelMain();
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §=!X§.§!'§ = new §!w§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>" § = new §,!u§(§0!^§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,Y§(new §+"3§(false));
         }
         while(true)
         {
            §,Y§(new §0!v§(false));
            while(true)
            {
               §,Y§(new §]x§(false));
               while(_loc1_)
               {
                  §,Y§(new §="§(false));
                  loop3:
                  while(true)
                  {
                     §,Y§(new §7B§(false));
                     loop4:
                     while(true)
                     {
                        §,Y§(new StatePlay(false));
                        addr206:
                        while(true)
                        {
                           §,Y§(new §4g§(false));
                           addr199:
                           while(true)
                           {
                              §,Y§(new §`t§(false));
                              while(true)
                              {
                                 §,Y§(new §@!m§(false));
                                 continue loop4;
                                 addr65:
                                 if(_loc1_ || this)
                                 {
                                    continue loop3;
                                 }
                              }
                              addr84:
                              if(!(_loc2_ && this))
                              {
                                 addr19:
                                 return;
                              }
                           }
                        }
                     }
                  }
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  §§push(stage.stageHeight == §>Y§);
                  if(!_loc2_)
                  {
                     §§goto(addr30);
                  }
                  §§goto(addr38);
               }
            }
            while(_loc1_ || _loc2_)
            {
               §,Y§(new §^!w§(false));
               §§goto(addr157);
               §§goto(addr108);
            }
         }
      }
      
      protected function §["1§(param1:ByteArray) : void
      {
      }
      
      protected function §,!_§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §"o§.§9$§();
         }
      }
      
      protected function §2<§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §"o§.§'X§();
            if(_loc4_)
            {
               §§goto(addr27);
            }
            §§goto(addr121);
         }
         addr27:
         if(this.§-$§)
         {
            if(!_loc5_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§="+§);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(!_loc5_)
               {
                  _loc2_.§="+§ = _loc3_;
               }
               if(_loc4_ || this)
               {
                  §§push(this.§="+§);
                  loop1:
                  while(true)
                  {
                     §§push(§9^§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           loop3:
                           while(true)
                           {
                              this.§-$§ = false;
                              addr121:
                              while(true)
                              {
                                 §§push(this.§7!2§);
                                 if(_loc4_)
                                 {
                                    §§push(§<!e§);
                                    if(_loc4_ || this)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!(_loc4_ || this))
                                             {
                                                continue;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop3;
                                             }
                                             this.§4!s§(this.§5`§);
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                           addr118:
                        }
                        §§goto(addr71);
                     }
                  }
               }
               §§goto(addr118);
            }
            §§goto(addr99);
         }
         addr71:
      }
      
      public function §0K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
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
         if(!_loc6_)
         {
            §§push(this.§-B§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr48:
                     if(!(_loc7_ || this))
                     {
                        continue;
                     }
                     if(false)
                     {
                        while(true)
                        {
                           §§push(stage.stageWidth < 2);
                           if(!_loc6_)
                           {
                              continue loop0;
                           }
                           addr73:
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr74:
                              addr36:
                              for(; §§pop(); §§goto(addr74))
                              {
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    return;
                                 }
                                 if(!_loc7_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr48);
                              }
                              while(true)
                              {
                                 §§push(stage.stageHeight < 2);
                                 if(_loc7_ || _loc3_)
                                 {
                                    break;
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        continue loop0;
                        addr57:
                     }
                     §§push(stage.stageWidth / §>!U§);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     §§push(stage.stageHeight / §>Y§);
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     if(_loc7_)
                     {
                        addr252:
                        if(_loc2_ < _loc3_)
                        {
                           addr257:
                           _loc4_ = Number(stage.stageWidth);
                           addr258:
                           addr254:
                           §§push(stage.stageWidth * (§>Y§ / §>!U§));
                           if(_loc7_)
                           {
                              addr237:
                              _loc5_ = Number(§§pop());
                              addr238:
                              if(!_loc6_)
                              {
                                 addr172:
                                 §=!X§.§%" §(0,0,stage.stageWidth,stage.stageHeight);
                                 setViewSize(stage.stageWidth,stage.stageHeight);
                                 addr181:
                                 if(_loc7_ || _loc2_)
                                 {
                                    if(_loc7_ || _loc2_)
                                    {
                                       §>6§ = stage.stageWidth;
                                       addr147:
                                       if(!_loc6_)
                                       {
                                          §<!R§ = stage.stageHeight;
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             if(_loc7_ || _loc3_)
                                             {
                                                if(!(_loc7_ || this))
                                                {
                                                   §§goto(addr258);
                                                }
                                                return;
                                             }
                                             §§goto(addr181);
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr238);
                                 }
                                 if(!_loc6_)
                                 {
                                    §§goto(addr172);
                                 }
                                 §§push(Number(stage.stageHeight));
                                 if(_loc7_)
                                 {
                                    _loc5_ = §§pop();
                                    §§goto(addr172);
                                 }
                                 addr226:
                                 if(_loc7_ || this)
                                 {
                                    if(_loc7_ || _loc3_)
                                    {
                                       _loc4_ = §§pop();
                                       §§goto(addr226);
                                    }
                                    §§goto(addr252);
                                 }
                                 §§goto(addr258);
                              }
                              §§goto(addr254);
                           }
                           §§goto(addr257);
                        }
                        §§push(stage.stageHeight * (§>!U§ / §>Y§));
                        if(!_loc6_)
                        {
                           if(_loc7_ || _loc2_)
                           {
                              §§goto(addr226);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr237);
                        }
                        §§goto(addr226);
                     }
                     §§goto(addr257);
                  }
               }
               §§goto(addr57);
            }
         }
      }
      
      public function §9+§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = getTimer();
         if(_loc2_)
         {
            if(_loc1_ - this.§5`§ > §5Z§)
            {
               if(_loc2_)
               {
                  addr78:
                  if(stage.displayState != StageDisplayState.FULL_SCREEN)
                  {
                     if(stage.displayState == StageDisplayState.NORMAL)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              this.§+!X§(_loc1_);
                              addr52:
                              if(_loc2_ || this)
                              {
                                 §§goto(addr23);
                              }
                              else
                              {
                                 addr83:
                                 this.§4!s§(_loc1_);
                              }
                           }
                           §§goto(addr23);
                        }
                        §§goto(addr52);
                     }
                     §§goto(addr23);
                  }
               }
               §§goto(addr83);
            }
            addr23:
            return;
         }
         §§goto(addr78);
      }
      
      public function §!!#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§4!s§(0);
         }
      }
      
      public function §^!'§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(stage)
            {
               if(!_loc1_)
               {
                  addr33:
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr51:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr51);
         }
         §§goto(addr33);
      }
      
      private function §4!s§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-B§ = true;
            loop0:
            while(true)
            {
               stage.displayState = StageDisplayState.NORMAL;
               while(true)
               {
                  this.§5`§ = param1;
                  loop2:
                  while(!_loc3_)
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§-$§ = false;
                        if(_loc2_ || this)
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
         §§goto(addr58);
      }
      
      private function §+!X§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-B§ = true;
         }
         while(true)
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
            loop1:
            while(true)
            {
               this.§5`§ = param1;
               loop2:
               while(true)
               {
                  this.§7!2§ = 0;
                  while(!_loc3_)
                  {
                     this.§="+§ = 0;
                     continue loop2;
                     if(!(_loc3_ && param1))
                     {
                        return;
                     }
                  }
                  continue loop1;
               }
            }
            if(!(_loc2_ || param1))
            {
               continue;
            }
            §§goto(addr65);
         }
      }
      
      protected function §8!l§(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.keyCode;
         if(_loc3_ || this)
         {
            if(Keyboard.F === _loc2_)
            {
               addr45:
               §§push(0);
               if(_loc4_ && _loc2_)
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
         §§goto(addr45);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.setFirstGameState();
         }
         do
         {
            §3!7§.§2=§.§1b§();
            do
            {
               §3!w§.§'!9§(JSON.parse(this.§[#§.getFileAsString("Chapters.json")));
               do
               {
                  this.§`!K§();
               }
               while(_loc1_ && this);
               
            }
            while(!(_loc2_ || this));
            
         }
         while(_loc1_ && _loc2_);
         
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc5_ || _loc3_)
         {
            §§push(§=!X§.§29§);
            if(_loc5_)
            {
               if(§§pop() != null)
               {
                  addr38:
                  if(!_loc4_)
                  {
                     §§push(§=!X§.§29§);
                  }
                  §§push(super.updateState(param1));
                  if(!(_loc4_ && param1))
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc5_ || _loc3_)
                  {
                     if(!§&[§().isGenericState())
                     {
                        loop0:
                        while(true)
                        {
                           §§push(_loc2_);
                           addr91:
                           while(true)
                           {
                              if(§§pop() == §5y§.STATE_STATUS_COMPLETED)
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(§9!P§);
                                    §§push("AngryBirdSocial::run() state change is about to start. Old State = " + §&[§().mName);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() + " New State = ");
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() + §&[§().mNextState);
                                       }
                                    }
                                    §§pop().log(§§pop());
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc5_)
                        {
                           break;
                        }
                        §§goto(addr91);
                     }
                     return §§pop();
                  }
                  §§goto(addr128);
               }
               §§goto(addr38);
            }
            §§pop().update(param1);
         }
         §§goto(addr38);
      }
      
      override public function getAppWidth() : Number
      {
         return §^!N§;
      }
      
      override public function getAppHeight() : Number
      {
         return §5!P§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §39§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Client: " + VERSION.replace("{svn_version}","local dev build"));
         if(!_loc1_)
         {
            §§push(§§pop() + ", ");
            if(_loc2_)
            {
               §§push(§§pop() + "Server: ");
               if(_loc2_ || _loc2_)
               {
                  addr58:
                  return §§pop() + §@R§;
               }
            }
         }
         §§goto(addr58);
      }
      
      protected function §`!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=!X§.§0_§(this.getItemData(),this.getLevelBackgrounds());
            do
            {
               §=!X§.§2!2§(this.§[#§.§>"0§,§<!m§.§1C§(),this.§5!f§);
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §?!1§.§ !?§(§^!3§);
      }
      
      protected function getItemData() : XML
      {
         return §?!1§.§ !?§(§9"3§);
      }
      
      protected function §5!f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §,!v§ = true;
            do
            {
               if(!§@!&§)
               {
                  §1!b§(§]x§.§'=§);
                  if(!(_loc2_ && param1))
                  {
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     addr60:
                  }
                  else
                  {
                     addr80:
                  }
               }
               continue;
               return;
            }
            while(_loc2_);
            
            §1!b§(§+"3§.§'=§);
            §§goto(addr80);
         }
         §§goto(addr60);
      }
      
      public function §`!r§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            §§push(this.§-$§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc2_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§7!2§);
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_ || _loc3_)
                     {
                        _loc2_.§7!2§ = _loc3_;
                     }
                     if(_loc5_)
                     {
                        addr109:
                        §§push(§?%§.§]p§());
                        while(true)
                        {
                           if(!§§pop())
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              addr115:
                              while(true)
                              {
                              }
                              addr115:
                           }
                           while(true)
                           {
                              super.onEnterFrame(param1);
                              §§goto(addr108);
                           }
                        }
                        addr111:
                     }
                     return;
                  }
                  §§goto(addr115);
               }
               §§goto(addr109);
            }
            §§goto(addr111);
         }
         addr108:
         while(true)
         {
            §§push(this.§-B§);
            if(_loc5_)
            {
               if(!§§pop())
               {
                  break;
               }
               continue;
            }
            continue loop2;
         }
      }
      
      public function §#^§() : void
      {
      }
      
      public function §>!!§() : void
      {
      }
   }
}
