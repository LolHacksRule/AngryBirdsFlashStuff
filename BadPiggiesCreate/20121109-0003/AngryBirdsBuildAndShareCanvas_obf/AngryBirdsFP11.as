package
{
   import §#";§.§0"#§;
   import §%!0§.§,4§;
   import §%!K§.§ i§;
   import §%!j§.§%K§;
   import §'V§.§7I§;
   import §'j§.§##§;
   import §,P§.§'_§;
   import §,P§.§1T§;
   import §5u§.§-!h§;
   import §6!k§.§@!L§;
   import §6!k§.§@B§;
   import §6]§.§+!T§;
   import §6]§.§,"0§;
   import §6]§.§8!W§;
   import §;<§.§'B§;
   import §<i§.§`!r§;
   import §]";§.§!<§;
   import §^!m§.§6§;
   import §^U§.§+"!§;
   import §^U§.§,!M§;
   import §^U§.§1!i§;
   import §^U§.§2u§;
   import §^U§.§7!X§;
   import §^U§.§7A§;
   import §^U§.§8!N§;
   import §^U§.§9k§;
   import §^U§.§<K§;
   import §^U§.§@!y§;
   import §^U§.StateCutScene;
   import §^U§.StatePlay;
   import §^U§.§`!;§;
   import com.rovio.assets.§8!o§;
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
   
   public class AngryBirdsFP11 extends §@!L§
   {
      
      protected static var §-8§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §["5§:String;
      
      public static var § !i§:String;
      
      public static const §["3§:int = 1024;
      
      public static const §7$§:int = 768;
      
      public static const §^q§:Boolean = false;
      
      public static const § "6§:int = 2000;
      
      public static const §["$§:Boolean = false;
      
      private static const §6"&§:int = 750;
      
      private static const §]N§:int = 3;
      
      private static const §]!"§:int = 15;
      
      protected static var §%!%§:Class;
      
      protected static var §&L§:Class;
      
      protected static var §7!t§:Class;
      
      protected static var §<!=§:Class;
      
      public static var §>!7§:§##§ = null;
      
      public static var §2B§:Boolean = true;
      
      private static var §%"1§:AngryBirdsFP11 = null;
      
      public static var §,">§:Sprite = null;
      
      public static var §+W§:§1T§;
      
      public static var §["!§:Boolean = false;
      
      protected static var §7!u§:int = 0;
      
      protected static var §1"?§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §-8§ = AngryBirdsFP11_mTextBinary;
            loop0:
            while(true)
            {
               VERSION = "0.0.1.({svn_version})";
               while(true)
               {
                  §["3§ = 1024;
                  loop2:
                  while(true)
                  {
                     §7$§ = 768;
                     loop3:
                     while(true)
                     {
                        §^q§ = false;
                        loop4:
                        while(true)
                        {
                           § "6§ = 2000;
                           loop5:
                           while(true)
                           {
                              §["$§ = false;
                              while(true)
                              {
                                 §6"&§ = 750;
                                 loop7:
                                 while(_loc2_)
                                 {
                                    §]N§ = 3;
                                    while(!_loc1_)
                                    {
                                       §]!"§ = 15;
                                       while(_loc2_)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop4;
                                    addr91:
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    §%"1§ = null;
                                    while(true)
                                    {
                                       §,">§ = null;
                                       loop17:
                                       while(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             §["!§ = false;
                                             loop18:
                                             while(true)
                                             {
                                                §7!u§ = 0;
                                                loop19:
                                                while(_loc2_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      while(true)
                                                      {
                                                         §1"?§ = 0;
                                                         if(!_loc1_)
                                                         {
                                                            continue loop18;
                                                         }
                                                         continue loop19;
                                                      }
                                                      return;
                                                      continue;
                                                   }
                                                   addr84:
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         §§goto(addr91);
                                                      }
                                                      else
                                                      {
                                                         while(!_loc1_)
                                                         {
                                                            §&L§ = AngryBirdsFP11_mAssetMapBin;
                                                            continue loop15;
                                                         }
                                                         §§goto(addr160);
                                                         addr153:
                                                      }
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop17;
                                             }
                                          }
                                          while(_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  while(!(_loc1_ && _loc2_))
                  {
                     §2B§ = true;
                     §§goto(addr84);
                     §§goto(addr42);
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      private var §2!1§:§-!h§;
      
      private var §;§:int;
      
      private var §9""§:Boolean;
      
      private var §^p§:int;
      
      private var §'!I§:int;
      
      protected var §`"1§:Boolean;
      
      public function AngryBirdsFP11(param1:§@B§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§2!1§ = new §-!h§();
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
                     while(!(_loc3_ && this))
                     {
                        continue loop1;
                        if(!(_loc3_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              this.onStageResize(null);
                              addr24:
                              return;
                              addr85:
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      public static function get stageWidth() : int
      {
         return §7!u§;
      }
      
      public static function get stageHeight() : int
      {
         return §1"?§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §2B§ = param1;
            do
            {
               §0"#§.§5#§(§2B§);
            }
            while(_loc2_);
            
         }
      }
      
      public static function getSoundsEnabled() : Boolean
      {
         return §2B§;
      }
      
      public static function get §6j§() : int
      {
         return §@"7§.getAppWidth();
      }
      
      public static function get §+#§() : int
      {
         return §@"7§.getAppHeight();
      }
      
      public static function §do §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || AngryBirdsFP11)
         {
            §§push(§0"#§.§9!$§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr100:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc1_ && AngryBirdsFP11))
                        {
                           if(_loc2_ || _loc2_)
                           {
                              §0"#§.§9"2§("ThemeMusic","Channel_Theme",999);
                              addr84:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr84);
                     }
                     return;
                     addr63:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public static function §4"2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0"#§.§<"0§("Channel_Theme");
         }
      }
      
      public static function get §@"7§() : AngryBirdsFP11
      {
         return §%"1§;
      }
      
      protected function getAssetMap() : XML
      {
         return §+!T§.§`x§(§&L§);
      }
      
      protected function getUIData() : XML
      {
         return §+!T§.§`x§(§%!%§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            § i§.§[E§.init(§6§.§25§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§2!1§,this.§8!I§);
            while(true)
            {
               §%"1§ = this;
               loop1:
               while(true)
               {
                  stage.scaleMode = StageScaleMode.NO_SCALE;
                  addr103:
                  while(true)
                  {
                     stage.align = StageAlign.TOP_LEFT;
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §'_§.init(this,§6j§,§+#§);
            §§goto(addr63);
         }
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'_§.§=M§ = new §,4§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>!7§ = new §##§(§ !i§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §&p§(new §8!N§(false));
            loop0:
            while(true)
            {
               §&p§(new §`!;§(false));
               loop1:
               while(true)
               {
                  §&p§(new §7!X§(false));
                  while(true)
                  {
                     §&p§(new §2u§(false));
                     addr217:
                     addr94:
                     while(true)
                     {
                        §&p§(new §1!i§(false));
                        continue loop0;
                     }
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(stage.stageHeight == §+#§);
                     if(_loc1_)
                     {
                        §§push(!§§pop());
                     }
                     if(!(_loc2_ && this))
                     {
                        if(!_loc2_)
                        {
                           loop16:
                           while(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 this.onStageResize(null);
                              }
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(_loc1_)
                                 {
                                    break;
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    §&p§(new §9k§(false));
                                    loop9:
                                    for(; _loc1_; if(_loc2_ && this)
                                    {
                                       continue;
                                    },§§goto(addr94))
                                    {
                                       if(_loc1_)
                                       {
                                          §&p§(new §,!M§(false));
                                          loop10:
                                          while(true)
                                          {
                                             §&p§(new StateCutScene(false));
                                             addr143:
                                             addr189:
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                §&p§(new §<K§(false));
                                                continue loop10;
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                §&p§(new §7A§(false));
                                                addr182:
                                                while(true)
                                                {
                                                   §&p§(new §+"!§(false));
                                                   continue loop8;
                                                   addr125:
                                                   if(_loc2_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(stage.stageWidth == §6j§);
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         continue loop16;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr78:
                                                         while(true)
                                                         {
                                                            if(_loc1_ || _loc1_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr157:
                                       }
                                       else
                                       {
                                          §§goto(addr217);
                                       }
                                    }
                                    addr196:
                                    while(true)
                                    {
                                       §&p§(new §@!y§(false));
                                       §§goto(addr189);
                                    }
                                 }
                              }
                              §§goto(addr78);
                           }
                           return;
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr77);
                  }
               }
            }
         }
         §§goto(addr157);
      }
      
      protected function §8!I§(param1:ByteArray) : void
      {
      }
      
      protected function §%!3§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §8!W§.§?!G§();
         }
      }
      
      protected function §8x§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            §8!W§.§1"'§();
            if(_loc4_ || this)
            {
               if(this.§9""§)
               {
                  if(!_loc5_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§'!I§);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_ || _loc2_)
                     {
                        _loc2_.§'!I§ = _loc3_;
                     }
                     if(!_loc5_)
                     {
                        §§push(this.§'!I§);
                        while(true)
                        {
                           §§push(§]!"§);
                           addr122:
                           §§goto(addr75);
                        }
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr102);
               }
               addr75:
               while(§§pop() > §§pop())
               {
                  while(true)
                  {
                     this.§9""§ = false;
                     continue loop0;
                  }
               }
               addr75:
               return;
            }
            §§goto(addr118);
         }
         §§goto(addr123);
      }
      
      public function §>M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.onStageResize(null);
         }
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_)
         {
            §§push(this.§`"1§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(stage.stageWidth < 2);
                     if(_loc6_)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(!_loc7_)
                           {
                              addr67:
                              §§pop();
                              while(_loc6_ || this)
                              {
                                 §§push(stage.stageHeight < 2);
                                 if(!(_loc6_ || this))
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr67);
                              }
                              return;
                           }
                           continue loop0;
                           addr65:
                        }
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc6_ || _loc2_)
                              {
                                 if(!_loc7_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                              if(_loc6_ || this)
                              {
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       break loop2;
                                    }
                                    continue loop1;
                                 }
                                 addr54:
                              }
                              else
                              {
                                 §§goto(addr68);
                              }
                           }
                           break;
                           §§goto(addr75);
                        }
                        §§push(stage.stageWidth / §6j§);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        §§push(stage.stageHeight / §+#§);
                        if(_loc6_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        if(_loc6_)
                        {
                           §§push(_loc2_);
                           loop5:
                           while(true)
                           {
                              if(§§pop() >= _loc3_)
                              {
                                 §§push(stage.stageHeight * (§6j§ / §+#§));
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          _loc4_ = §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §§push(Number(stage.stageHeight));
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §'_§.§=!R§(0,0,stage.stageWidth,stage.stageHeight);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         setViewSize(stage.stageWidth,stage.stageHeight);
                                                         while(_loc6_ || _loc2_)
                                                         {
                                                            §7!u§ = stage.stageWidth;
                                                            while(_loc6_)
                                                            {
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §1"?§ = stage.stageHeight;
                                                                        if(!_loc7_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        continue;
                                                                        continue;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop11;
                                                            }
                                                         }
                                                         addr262:
                                                         §§push(stage.stageWidth * (§+#§ / §6j§));
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            addr227:
                                                            §§push(Number(§§pop()));
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop9;
                                                               }
                                                            }
                                                            continue loop5;
                                                            addr227:
                                                         }
                                                         §§goto(addr227);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(Number(stage.stageWidth));
                                                   }
                                                   addr258:
                                                }
                                                while(true)
                                                {
                                                   _loc4_ = §§pop();
                                                   §§goto(addr262);
                                                   §§goto(addr227);
                                                }
                                             }
                                          }
                                          continue;
                                       }
                                       §§goto(addr227);
                                    }
                                 }
                              }
                              §§goto(addr258);
                           }
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr65);
                  }
                  return;
               }
               §§goto(addr79);
            }
         }
         §§goto(addr54);
      }
      
      public function §>!5§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = getTimer();
         if(_loc2_ || this)
         {
            if(_loc1_ - this.§;§ > §6"&§)
            {
               while(true)
               {
                  if(stage.displayState != StageDisplayState.FULL_SCREEN)
                  {
                     if(stage.displayState == StageDisplayState.NORMAL)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           this.§1,§(_loc1_);
                        }
                        if(!(_loc3_ && _loc1_))
                        {
                           break;
                        }
                     }
                     break;
                  }
                  if(_loc2_)
                  {
                     addr93:
                     this.§&!E§(_loc1_);
                  }
                  break;
               }
            }
            return;
         }
         §§goto(addr93);
      }
      
      public function §>!A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§&!E§(0);
         }
      }
      
      public function §&!6§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(stage)
            {
               if(!_loc1_)
               {
                  addr38:
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr61:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr61);
         }
         §§goto(addr38);
      }
      
      private function §&!E§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§`"1§ = true;
         }
         loop0:
         do
         {
            stage.displayState = StageDisplayState.NORMAL;
            while(true)
            {
               this.§;§ = param1;
               while(_loc2_ || this)
               {
                  this.§9""§ = false;
                  if(_loc2_ || this)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc3_);
         
      }
      
      private function §1,§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§`"1§ = true;
            loop0:
            while(true)
            {
               stage.displayState = StageDisplayState.FULL_SCREEN;
               while(true)
               {
                  this.§;§ = param1;
                  while(_loc2_ || param1)
                  {
                     this.§^p§ = 0;
                     while(_loc2_ || this)
                     {
                        while(true)
                        {
                           this.§'!I§ = 0;
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      protected function §[H§(param1:KeyboardEvent) : void
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
               if(_loc4_ && param1)
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
         if(!_loc1_)
         {
            super.setFirstGameState();
            while(true)
            {
               § i§.§[E§.§?M§();
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            §`!r§.§?D§(JSON.parse(this.§2!1§.getFileAsString("Chapters.json")));
            do
            {
               this.§<C§();
            }
            while(!_loc2_);
            
            if(!(_loc1_ && this))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc4_)
         {
            §§push(§'_§.§5k§);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  addr37:
                  if(_loc4_)
                  {
                     §§push(§'_§.§5k§);
                  }
                  §§push(super.updateState(param1));
                  if(_loc4_ || this)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!(_loc5_ && _loc2_))
                  {
                     if(!§<"%§().isGenericState())
                     {
                        if(_loc4_)
                        {
                           §§push(_loc2_);
                           loop0:
                           while(true)
                           {
                              if(§§pop() != §'B§.STATE_STATUS_COMPLETED)
                              {
                                 continue;
                              }
                              if(_loc4_ || param1)
                              {
                                 while(true)
                                 {
                                    §§push(§,"0§);
                                    §§push("AngryBirdSocial::run() state change is about to start. Old State = " + §<"%§().mName);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + " New State = ");
                                       if(_loc4_)
                                       {
                                          addr127:
                                          §§push(§§pop() + §<"%§().mNextState);
                                       }
                                       §§pop().log(§§pop());
                                       do
                                       {
                                          §<t§(§<"%§().mNextState);
                                       }
                                       while(_loc5_);
                                       
                                       while(true)
                                       {
                                          continue loop0;
                                       }
                                       addr132:
                                       addr87:
                                    }
                                    §§goto(addr127);
                                 }
                                 addr105:
                              }
                              §§goto(addr132);
                           }
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr87);
               }
               §§goto(addr37);
            }
            §§pop().update(param1);
         }
         §§goto(addr37);
      }
      
      override public function getAppWidth() : Number
      {
         return §["3§;
      }
      
      override public function getAppHeight() : Number
      {
         return §7$§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return § "6§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: " + VERSION.replace("{svn_version}","local dev build"));
         if(!_loc2_)
         {
            §§push(§§pop() + ", ");
            if(_loc1_)
            {
               §§push(§§pop() + "Server: ");
               if(_loc1_ || _loc1_)
               {
                  return §§pop() + §["5§;
               }
            }
         }
      }
      
      protected function §<C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §'_§.§#R§(this.getItemData(),this.getLevelBackgrounds());
         }
         do
         {
            §'_§.§6h§(this.§2!1§.§1h§,§!<§.§6p§(),this.§>0§);
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §+!T§.§`x§(§<!=§);
      }
      
      protected function getItemData() : XML
      {
         return §+!T§.§`x§(§7!t§);
      }
      
      protected function §>0§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §["!§ = true;
         }
         while(true)
         {
            if(§["$§)
            {
               if(_loc2_ || _loc2_)
               {
                  §<t§(§8!N§.§%!Q§);
                  break;
               }
               break;
            }
            §<t§(§7!X§.§%!Q§);
            if(_loc3_ && _loc3_)
            {
               break;
            }
            if(!_loc2_)
            {
               continue;
            }
            §§goto(addr19);
         }
         addr19:
      }
      
      public function §[!;§(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§9""§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc2_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§^p§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_.§^p§ = _loc3_;
                     }
                     if(!_loc4_)
                     {
                        addr111:
                        §§push(§%K§.§,!>§());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 super.onEnterFrame(param1);
                                 loop2:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(this.§`"1§);
                                       if(!_loc4_)
                                       {
                                          loop4:
                                          while(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                while(true)
                                                {
                                                   this.§`"1§ = false;
                                                }
                                                addr81:
                                             }
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      break loop4;
                                                   }
                                                   break loop2;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          return;
                                          addr78:
                                       }
                                       continue loop3;
                                    }
                                    addr115:
                                    while(true)
                                    {
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           return;
                        }
                        addr68:
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr68);
               }
               §§goto(addr111);
            }
            §§goto(addr78);
         }
         §§goto(addr81);
      }
      
      public function §[0§() : void
      {
      }
      
      public function §=g§() : void
      {
      }
   }
}
