package
{
   import § "@§.§#"?§;
   import § "@§.§%!3§;
   import § "@§.§%!x§;
   import § "@§.§-m§;
   import § "@§.§;q§;
   import § "@§.StateLevelEditor;
   import § "@§.StateLevelEditorTestPlay;
   import § "@§.StateLevelPreview;
   import §""3§.§,"5§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §'@§.§4!n§;
   import §'@§.§4&§;
   import §+h§.§^!]§;
   import §,B§.StateMap;
   import §-!n§.§5!U§;
   import §0![§.§7!Y§;
   import §0![§.§@8§;
   import §0![§.§@l§;
   import §0![§.StateLoadBS;
   import §0![§.StatePlayBS;
   import §0![§.§^! §;
   import §5!V§.§1!L§;
   import §5"-§.§5y§;
   import §5"-§.§`^§;
   import §6p§.§?%§;
   import §8" §.§,!q§;
   import §9!O§.§0x§;
   import §=!M§.§?!1§;
   import §="6§.§3!S§;
   import §^!y§.§'"#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.utils.getTimer;
   
   public class §>"§ extends AngryBirdsFP11
   {
      
      public static var §@R§:String;
      
      protected static var §0!^§:String;
      
      private static const §`S§:String = "AngryBirdsBuildAndShareSettings";
      
      public static const §6!c§:String = "/";
      
      public static const §^!N§:int = 1024;
      
      public static const §5!P§:int = 480;
      
      public static const §>3§:Boolean = false;
      
      protected static var §0l§:Class;
      
      protected static var §2!`§:Class;
      
      protected static var §^!3§:Class;
      
      protected static var §9"3§:Class;
      
      public static var §`&§:Boolean = true;
      
      private static var §>7§:§>"§ = null;
      
      public static var §,!v§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §>"§))
         {
            §`S§ = "AngryBirdsBuildAndShareSettings";
            loop0:
            while(true)
            {
               §6!c§ = "/";
               loop1:
               while(true)
               {
                  §^!N§ = 1024;
                  while(true)
                  {
                     §5!P§ = 480;
                     while(_loc1_)
                     {
                        §>3§ = false;
                        loop4:
                        for(; !_loc2_; while(_loc1_ || _loc1_)
                        {
                           §^!3§ = §`!H§;
                           §§goto(addr98);
                           §§goto(addr41);
                        })
                        {
                           §0l§ = §-!,§;
                           while(true)
                           {
                              §2!`§ = §7!4§;
                              continue loop4;
                              while(!(_loc2_ && §>"§))
                              {
                                 §`&§ = true;
                                 loop9:
                                 for(; _loc1_; while(true)
                                 {
                                    §>7§ = null;
                                    do
                                    {
                                       §,!v§ = false;
                                    }
                                    while(!_loc1_);
                                    
                                    if(_loc1_ || _loc2_)
                                    {
                                       addr41:
                                       if(_loc1_ || §>"§)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop4;
                                    }
                                    continue loop9;
                                 },return)
                                 {
                                    addr62:
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    addr98:
                                    while(true)
                                    {
                                       §9"3§ = § ![§;
                                       break loop9;
                                       §§goto(addr62);
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
         §§goto(addr81);
      }
      
      public function §>"§(param1:§,"5§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§§findproperty(§@R§));
            if(!_loc2_)
            {
               §§push(param1.stage.loaderInfo.parameters.serverVersion);
               if(!(_loc2_ && _loc3_))
               {
                  §§pop().§@R§ = §§pop() || "[No version from server]";
                  while(true)
                  {
                     §§push(§§findproperty(§0!^§));
                     if(_loc3_)
                     {
                        §§push(param1.stage.loaderInfo.parameters.serverRoot);
                        if(!_loc2_)
                        {
                           if(!§§pop())
                           {
                              addr88:
                              §§pop();
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr96:
                                 if(!§>3§)
                                 {
                                    addr103:
                                    §§pop().§0!^§ = "";
                                    loop1:
                                    while(true)
                                    {
                                       super(param1);
                                       addr73:
                                       while(true)
                                       {
                                          §4!n§.enabled = true;
                                          continue loop1;
                                       }
                                    }
                                 }
                                 §§goto(addr103);
                              }
                              §§push("");
                              if(!_loc3_)
                              {
                              }
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr96);
                     if(_loc2_ && param1)
                     {
                        continue;
                     }
                     §§goto(addr46);
                  }
               }
            }
            §§goto(addr133);
         }
         §§goto(addr73);
      }
      
      public static function §1"3§() : String
      {
         return "AngryBirdsBuildSharedMemory";
      }
      
      public static function get §%d§() : §>"§
      {
         return §>7§;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         return §?!1§.§ !?§(§^!3§);
      }
      
      private function §]5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §3!S§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
         }
      }
      
      protected function §+!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §^!]§.initialize(canvas.stage);
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §?!1§.§ !?§(§2!`§);
      }
      
      override protected function getUIData() : XML
      {
         return §?!1§.§ !?§(§0l§);
      }
      
      override protected function getItemData() : XML
      {
         return §?!1§.§ !?§(§9"3§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new §&"=§();
      }
      
      override protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super.initialize();
            if(!(_loc2_ && _loc1_))
            {
               §>7§ = this;
            }
         }
         var _loc1_:SharedObject = SharedObject.getLocal("AB_BS_settings");
         if(_loc3_ || _loc1_)
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
               }
               addr93:
            }
            while(true)
            {
               §5!U§.§2R§("CHANNEL_THEME",3,1);
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr93);
            }
            return;
         }
         §§goto(addr98);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = int(Math.round(stage.stageWidth));
         var _loc3_:* = int(Math.round(stage.stageHeight));
         if(!_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(20);
               addr241:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     addr243:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr245:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!_loc4_)
                                 {
                                    addr220:
                                    §§push(20);
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                       addr221:
                                       while(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(int(§>6§));
                                                   addr237:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr238:
                                                      while(true)
                                                      {
                                                         §§push(int(§<!R§));
                                                         addr213:
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            addr214:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr225:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr163:
                                                while(_loc5_)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr213);
                                                §§goto(addr214);
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                    addr220:
                                 }
                                 §§goto(addr237);
                              }
                           }
                           addr244:
                        }
                        §§goto(addr223);
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §4m§.init(§5y§.§"!>§("callbackObject"));
         }
         loop0:
         while(true)
         {
            §=!X§.§29§.visible = false;
            loop1:
            while(true)
            {
               §,Y§(new StateLevelEditor(false));
               loop2:
               while(true)
               {
                  §,Y§(new §%!3§(false));
                  while(true)
                  {
                     §,Y§(new StateLevelEditorTestPlay(false));
                     loop4:
                     for(; !(_loc1_ && _loc1_); if(_loc1_ && this)
                     {
                        continue;
                     },§§goto(addr96))
                     {
                        §,Y§(new §;q§(false));
                        while(true)
                        {
                           §,Y§(new StatePlayBS(false));
                           loop6:
                           while(true)
                           {
                              §,Y§(new §@l§(false));
                              loop7:
                              while(true)
                              {
                                 §,Y§(new §@8§(false));
                                 loop8:
                                 while(true)
                                 {
                                    §,Y§(new §7!Y§(false));
                                    loop9:
                                    while(true)
                                    {
                                       §,Y§(new §%!x§(false));
                                       addr289:
                                       while(true)
                                       {
                                          §,Y§(new §-m§(false));
                                          loop11:
                                          for(; !_loc1_; while(!(_loc1_ && _loc1_))
                                          {
                                             continue loop9;
                                          })
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop0;
                                             }
                                             §,Y§(new §#"?§(false));
                                             loop12:
                                             while(true)
                                             {
                                                §,Y§(new StateLevelPreview(false));
                                                continue loop8;
                                                addr234:
                                                while(true)
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop12;
                                                   addr206:
                                                   while(_loc2_ || _loc1_)
                                                   {
                                                      §§push(§0x§.§2=§);
                                                      while(true)
                                                      {
                                                         §§pop().init(stage.loaderInfo.parameters.assetsUrl);
                                                         continue loop11;
                                                      }
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                          continue loop1;
                                       }
                                       if(_loc1_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(stage.stageWidth == §>!U§);
                                          if(!_loc1_)
                                          {
                                             §§push(!§§pop());
                                          }
                                          loop19:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop20:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop21:
                                                   while(true)
                                                   {
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(stage.stageHeight == §>Y§);
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               continue loop20;
                                                            }
                                                            §§push(!§§pop());
                                                         }
                                                         if(!(_loc2_ || _loc2_))
                                                         {
                                                            continue loop19;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     if(_loc1_ && _loc1_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        continue loop6;
                                                                        addr190:
                                                                     }
                                                                     this.onStageResize(null);
                                                                     loop23:
                                                                     for(; _loc2_ || _loc1_; while(true)
                                                                     {
                                                                        §4m§.registerMethod("onSoundsToggle",this.onSoundsToggled);
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop23;
                                                                     },return)
                                                                     {
                                                                        addr88:
                                                                        if(!(_loc1_ && this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr143:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc1_ && _loc2_))
                                                                           {
                                                                              §§push(§0x§.§2=§);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§pop().init("");
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       §§goto(addr289);
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop4;
                                                                                 addr124:
                                                                              }
                                                                              §§goto(addr154);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr206);
                                                                           }
                                                                           §§goto(addr88);
                                                                        }
                                                                     }
                                                                     continue loop21;
                                                                     addr81:
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr81);
                                                            }
                                                            §§goto(addr29);
                                                         }
                                                         §§goto(addr159);
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                             §§goto(addr65);
                                          }
                                          §§goto(addr173);
                                       }
                                       addr173:
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
         if(!_loc2_)
         {
            AngryBirdsFP11.setSoundsEnabled(_loc1_);
            do
            {
               §4m§.doJsCall("onSoundsToggled",JSON.stringify(_loc1_));
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      override public function setFirstGameState() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.setFirstGameState();
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §1!b§(§^! §.§'=§);
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        §,!v§ = true;
                        if(!_loc2_)
                        {
                           if(true)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     var _loc1_:int = Math.round(getTimer() / 1000);
                     if(_loc3_)
                     {
                        §4&§.§@!Q§(§4!n§.§&!1§,_loc1_.toString(),_loc1_);
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr45);
      }
      
      override protected function initStateLoad() : §`^§
      {
         return new StateLoadBS(true,§`^§.§'=§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §=!X§.§!'§ = new §1!L§(stage);
         }
      }
      
      override protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §>" § = new §'"#§(§0!^§);
         }
      }
      
      protected function §9!@§(param1:Event) : void
      {
      }
      
      protected function §+!k§(param1:Event) : void
      {
      }
      
      protected function §[W§(param1:Event) : void
      {
      }
      
      protected function §'!a§(param1:Event) : void
      {
      }
      
      protected function §>"=§(param1:Event) : void
      {
      }
      
      protected function §<=§(param1:Event) : void
      {
      }
      
      protected function §`",§(param1:Event) : void
      {
      }
      
      protected function §1!q§(param1:Event) : void
      {
      }
      
      protected function §!!y§(param1:Event) : void
      {
      }
      
      protected function §52§(param1:Event) : void
      {
      }
      
      override public function getAppWidth() : Number
      {
         return §^!N§;
      }
      
      override public function getAppHeight() : Number
      {
         return §5!P§;
      }
   }
}
