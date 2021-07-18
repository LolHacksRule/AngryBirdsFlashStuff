package
{
   import §#";§.§0"#§;
   import §%!0§.§&@§;
   import §%!j§.§%K§;
   import §,P§.§'_§;
   import §05§.§?s§;
   import §50§.StateMap;
   import §5u§.§=!2§;
   import §6!k§.§@B§;
   import §6]§.§+!T§;
   import §7!@§.§+`§;
   import §;" §.§5L§;
   import §;<§.§'B§;
   import §;<§.§1N§;
   import §;b§.§!l§;
   import §;b§.§&H§;
   import §;b§.§0C§;
   import §;b§.§<b§;
   import §;b§.§@"0§;
   import §;b§.StateLevelEditor;
   import §;b§.StateLevelEditorTestPlay;
   import §;b§.StateLevelPreview;
   import §<!1§.§&%§;
   import §<!1§.§0W§;
   import §>!d§.§,$§;
   import §?!'§.§]!]§;
   import §^U§.§&y§;
   import §^U§.§4!T§;
   import §^U§.§7!r§;
   import §^U§.§<"5§;
   import §^U§.StateLoadBS;
   import §^U§.StatePlayBS;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.utils.getTimer;
   
   public class §[!^§ extends AngryBirdsFP11
   {
      
      public static var §["5§:String;
      
      protected static var § !i§:String;
      
      private static const § !$§:String = "AngryBirdsBuildAndShareSettings";
      
      public static const §@";§:String = "/";
      
      public static const §["3§:int = 800;
      
      public static const §7$§:int = 600;
      
      public static const §^q§:Boolean = false;
      
      protected static var §%!%§:Class;
      
      protected static var §&L§:Class;
      
      protected static var §<!=§:Class;
      
      protected static var §7!t§:Class;
      
      public static var §;!h§:Boolean = true;
      
      private static var §%"1§:§[!^§ = null;
      
      public static var §["!§:Boolean = false;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § !$§ = "AngryBirdsBuildAndShareSettings";
            while(true)
            {
               §@";§ = "/";
               loop1:
               while(_loc2_ || §[!^§)
               {
                  §["3§ = 800;
                  loop2:
                  while(true)
                  {
                     §7$§ = 600;
                     addr113:
                     loop3:
                     while(true)
                     {
                        §^q§ = false;
                        loop4:
                        while(true)
                        {
                           §%!%§ = §-x§;
                           while(true)
                           {
                              §&L§ = §%"4§;
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop3;
                                 }
                                 §<!=§ = §?!l§;
                                 loop7:
                                 while(true)
                                 {
                                    §7!t§ = §@`§;
                                    addr84:
                                    while(_loc2_)
                                    {
                                       §;!h§ = true;
                                       continue loop7;
                                    }
                                    continue loop2;
                                 }
                                 if(_loc2_ || _loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          return;
                                       }
                                       continue loop1;
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      public function §[!^§(param1:§@B§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§§findproperty(§["5§));
            if(!(_loc3_ && param1))
            {
               §§push(param1.stage.loaderInfo.parameters.serverVersion);
               if(!_loc3_)
               {
                  §§pop().§["5§ = §§pop() || "[No version from server]";
                  loop0:
                  while(true)
                  {
                     §§push(§§findproperty(§ !i§));
                     if(!_loc3_)
                     {
                        §§push(param1.stage.loaderInfo.parameters.serverRoot);
                        if(_loc2_ || _loc2_)
                        {
                           if(!§§pop())
                           {
                              addr97:
                              §§pop();
                              if(_loc2_ || _loc2_)
                              {
                                 if(§^q§)
                                 {
                                    addr107:
                                    §§push("");
                                    if(_loc2_ || _loc2_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§push("");
                                 }
                              }
                              §§goto(addr107);
                           }
                           §§pop().§ !i§ = §§pop();
                           while(true)
                           {
                              super(param1);
                              loop2:
                              while(true)
                              {
                                 §&%§.enabled = true;
                                 while(true)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §0W§.§#W§(§&%§.§if§);
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                              if(_loc3_ && _loc3_)
                              {
                                 continue;
                              }
                              §§goto(addr48);
                           }
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr107);
                  }
                  addr150:
               }
            }
            §§goto(addr147);
         }
         §§goto(addr150);
      }
      
      public static function §1"#§() : String
      {
         return "AngryBirdsBuildSharedMemory";
      }
      
      public static function get §@"7§() : §[!^§
      {
         return §%"1§;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         return §+!T§.§`x§(§<!=§);
      }
      
      private function §>!X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §=!2§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
         }
      }
      
      protected function §^z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §]!]§.initialize(canvas.stage);
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §+!T§.§`x§(§&L§);
      }
      
      override protected function getUIData() : XML
      {
         return §+!T§.§`x§(§%!%§);
      }
      
      override protected function getItemData() : XML
      {
         return §+!T§.§`x§(§7!t§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new §!]§();
      }
      
      override protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
            if(!_loc2_)
            {
               §%"1§ = this;
            }
         }
         var _loc1_:SharedObject = SharedObject.getLocal("AB_BS_settings");
         if(!(_loc2_ && this))
         {
            if(_loc1_.data.soundsEnabled)
            {
               while(true)
               {
                  setSoundsEnabled(_loc1_.data.soundsEnabled);
                  addr98:
                  while(true)
                  {
                  }
                  addr71:
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  return;
                  addr78:
               }
            }
            while(true)
            {
               §0"#§.§4!m§("CHANNEL_THEME",3,1);
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr71);
            }
         }
         §§goto(addr78);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:* = int(Math.round(stage.stageHeight));
         if(!(_loc5_ && this))
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
                  loop2:
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
                                 loop6:
                                 while(true)
                                 {
                                    §§push(20);
                                    addr253:
                                    while(_loc4_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             continue loop4;
                                          }
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          addr208:
                                          if(!(_loc5_ && param1))
                                          {
                                             loop18:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      addr182:
                                                      loop21:
                                                      for(; !(_loc5_ && param1); while(true)
                                                      {
                                                         if(_loc4_ || param1)
                                                         {
                                                            if(!(_loc4_ || this))
                                                            {
                                                               break;
                                                            }
                                                            §]!]§.setViewSize(_loc2_,_loc3_);
                                                            loop24:
                                                            while(!_loc5_)
                                                            {
                                                               §7!u§ = _loc2_;
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  if(!(_loc5_ && this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop21;
                                                      },§§goto(addr242))
                                                      {
                                                         setViewSize(_loc2_,_loc3_);
                                                         while(true)
                                                         {
                                                            §%K§.§`9§.setCanvasSize(_loc2_,_loc3_);
                                                            continue loop21;
                                                            addr51:
                                                            if(!(_loc4_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               addr60:
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  return;
                                                                  addr67:
                                                               }
                                                               addr262:
                                                               while(true)
                                                               {
                                                                  §§push(int(§7!u§));
                                                                  continue loop0;
                                                                  §§goto(addr60);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(int(§1"?§));
                                                                  addr241:
                                                                  while(true)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     addr242:
                                                                     while(!(_loc5_ && param1))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           addr223:
                                                                           while(true)
                                                                           {
                                                                              §§push(2);
                                                                              addr224:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() < §§pop());
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc4_ || param1))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                 }
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr237:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       addr192:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc5_ && param1))
                                                                                          {
                                                                                             addr200:
                                                                                             §§push(§§pop() < 2);
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             continue loop27;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               addr282:
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr223);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr192);
                                             }
                                             return;
                                          }
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§goto(addr221);
                           }
                           §§goto(addr262);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?s§.init(§'B§.§'M§("callbackObject"));
            while(true)
            {
               §'_§.§5k§.visible = false;
               loop1:
               while(true)
               {
                  §&p§(new StateLevelEditor(false));
                  loop2:
                  while(true)
                  {
                     §&p§(new §@"0§(false));
                     loop3:
                     while(true)
                     {
                        §&p§(new StateLevelEditorTestPlay(false));
                        while(true)
                        {
                           §&p§(new §&H§(false));
                           loop5:
                           while(true)
                           {
                              §&p§(new StatePlayBS(false));
                              loop6:
                              while(true)
                              {
                                 §&p§(new §4!T§(false));
                                 loop7:
                                 while(true)
                                 {
                                    §&p§(new §<"5§(false));
                                    while(true)
                                    {
                                       §&p§(new §7!r§(false));
                                       continue loop6;
                                       loop11:
                                       while(_loc2_ || this)
                                       {
                                          §&p§(new §<b§(false));
                                          loop12:
                                          for(; !_loc1_; if(_loc1_ && this)
                                          {
                                             continue;
                                          },if(_loc1_)
                                          {
                                             continue loop5;
                                          },§§goto(addr99))
                                          {
                                             §&p§(new StateLevelPreview(false));
                                             loop13:
                                             while(true)
                                             {
                                                §&p§(new §&y§(false));
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop13;
                                                   loop30:
                                                   while(!(_loc1_ && this))
                                                   {
                                                      §§push(§5L§.§[E§);
                                                      loop29:
                                                      while(true)
                                                      {
                                                         §§pop().init(stage.loaderInfo.parameters.assetsUrl);
                                                         loop26:
                                                         while(true)
                                                         {
                                                            §§push(§,$§.§[E§);
                                                            loop27:
                                                            while(true)
                                                            {
                                                               §§pop().init(stage.loaderInfo.parameters.assetsUrl);
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(!(_loc2_ || _loc1_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(stage.stageWidth == §6j§);
                                                                     if(!(_loc1_ && _loc1_))
                                                                     {
                                                                        §§push(!§§pop());
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop26;
                                                                                       }
                                                                                       this.onStageResize(null);
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             addr82:
                                                                                             if(_loc2_ || _loc2_)
                                                                                             {
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   addr91:
                                                                                                   if(!(_loc2_ || _loc1_))
                                                                                                   {
                                                                                                      break;
                                                                                                      addr24:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §?s§.registerMethod("onSoundsToggle",this.onSoundsToggled);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                                continue loop28;
                                                                                             }
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_ || this)
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   continue loop30;
                                                                                                }
                                                                                                addr163:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§,$§.§[E§);
                                                                                                   if(!(_loc1_ && this))
                                                                                                   {
                                                                                                      §§pop().init("");
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   continue loop27;
                                                                                                }
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          loop23:
                                                                                          while(_loc2_)
                                                                                          {
                                                                                             §§push(stage.stageHeight == §+#§);
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                             }
                                                                                             if(_loc2_ || this)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop23;
                                                                                             }
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(stage.loaderInfo.parameters.assetsUrl)
                                                                                          {
                                                                                             continue loop30;
                                                                                          }
                                                                                          §§push(§5L§.§[E§);
                                                                                          if(_loc1_ && _loc1_)
                                                                                          {
                                                                                             continue loop29;
                                                                                          }
                                                                                          §§pop().init("");
                                                                                          §§goto(addr163);
                                                                                          §§goto(addr91);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr24);
                                                                              }
                                                                              continue loop26;
                                                                              addr68:
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr114);
                                                                     §§goto(addr191);
                                                                  }
                                                                  addr191:
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                          while(true)
                                          {
                                             §&p§(new §0C§(false));
                                             continue loop11;
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
         }
      }
      
      private function onSoundsToggled() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = !AngryBirdsFP11.getSoundsEnabled();
         if(_loc3_)
         {
            AngryBirdsFP11.setSoundsEnabled(_loc1_);
            do
            {
               §?s§.doJsCall("onSoundsToggled",JSON.stringify(_loc1_));
            }
            while(_loc2_);
            
         }
      }
      
      override public function setFirstGameState() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setFirstGameState();
            loop0:
            while(true)
            {
               addr28:
               while(true)
               {
                  §<t§(§&y§.§%!Q§);
                  do
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  while(§["!§ = true, !_loc3_);
                  
               }
            }
         }
         while(false)
         {
            §§goto(addr28);
         }
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(_loc3_ || this)
         {
            §0W§.§#W§(§&%§.§`!2§,_loc1_.toString(),_loc1_);
         }
      }
      
      override protected function initStateLoad() : §1N§
      {
         return new StateLoadBS(true,§1N§.§%!Q§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'_§.§=M§ = new §&@§(stage);
         }
      }
      
      override protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §>!7§ = new §+`§(§ !i§);
         }
      }
      
      protected function §2!h§(param1:Event) : void
      {
      }
      
      protected function §+v§(param1:Event) : void
      {
      }
      
      protected function §;!#§(param1:Event) : void
      {
      }
      
      protected function §0!1§(param1:Event) : void
      {
      }
      
      protected function §9!t§(param1:Event) : void
      {
      }
      
      protected function §3#§(param1:Event) : void
      {
      }
      
      protected function §8!]§(param1:Event) : void
      {
      }
      
      protected function §7O§(param1:Event) : void
      {
      }
      
      protected function §3!Z§(param1:Event) : void
      {
      }
      
      protected function §?[§(param1:Event) : void
      {
      }
      
      override public function getAppWidth() : Number
      {
         return §["3§;
      }
      
      override public function getAppHeight() : Number
      {
         return §7$§;
      }
   }
}
