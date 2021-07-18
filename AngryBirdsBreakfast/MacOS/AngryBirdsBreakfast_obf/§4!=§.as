package
{
   import § ^§.§-U§;
   import § ^§.§3!_§;
   import § ^§.§[C§;
   import § ^§.§`!2§;
   import §"n§.§!!G§;
   import §"n§.§+!a§;
   import §"n§.§[!-§;
   import §"n§.§[!e§;
   import §#"&§.§6!F§;
   import §#"&§.§;!"§;
   import §&v§.§#!R§;
   import §&v§.§%!I§;
   import §,C§.§+§;
   import §1T§.§'!c§;
   import §48§.§4L§;
   import §8!K§.§,9§;
   import §8!K§.§5!Y§;
   import §9!`§.§;g§;
   import §;!§.§-!v§;
   import §;!§.§1A§;
   import §;!§.§2!f§;
   import §;!§.§2q§;
   import §;!§.§7!3§;
   import §;!§.§=-§;
   import §;!§.§?!x§;
   import §;!§.§@!C§;
   import §;!§.§^!5§;
   import §;!§.§^!N§;
   import §;!§.§`B§;
   import §=!L§.§4""§;
   import §=!L§.§6&§;
   import §?""§.§`!o§;
   import §?z§.§%r§;
   import §@L§.§ J§;
   import §@L§.§?!'§;
   import §[!i§.§7!Y§;
   import §]0§.§>!R§;
   import com.angrybirds.§&!"§;
   import com.angrybirds.fonts.AngryBirdsArialMSFont;
   import com.rovio.assets.§<V§;
   import com.rovio.assets.LoadingScreenBlack;
   import each.§8!N§;
   import flash.desktop.NativeApplication;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.StageDisplayState;
   import flash.events.KeyboardEvent;
   import flash.text.Font;
   import flash.ui.Keyboard;
   import flash.utils.getTimer;
   
   public class §4!=§ extends §6!!§
   {
      
      protected static var §34§:Class;
      
      protected static var §@W§:Class;
      
      private static var §5]§:Class;
      
      protected static var §6!w§:Class;
      
      private static var §#!1§:Class;
      
      public static const §[Y§:String = "(r500)";
      
      public static const §`!E§:int = 760;
      
      public static const §`!5§:int;
      
      public static const §'+§:int = 570;
      
      public static var §"l§:String = "ABNestle";
      
      public static var §&%§:String = "http://head.angrybirds-nestle.appspot.com/";
      
      public static var §69§:String = "../";
      
      public static const §-!$§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §34§ = §3!U§;
            loop0:
            while(true)
            {
               §@W§ = §9!a§;
               loop1:
               while(true)
               {
                  §5]§ = §<!o§;
                  while(true)
                  {
                     §6!w§ = §?!N§;
                     loop4:
                     while(!(_loc1_ && §4!=§))
                     {
                        §[Y§ = "(r500)";
                        while(true)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop4;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      private var §7!1§:§>!R§;
      
      private var §86§:Boolean = true;
      
      private var §"N§:§3!_§;
      
      private var §"!-§:Boolean;
      
      public function §4!=§(param1:§`!o§, param2:String, param3:String)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(param2 == null)
            {
               if(!_loc6_)
               {
                  §69§ = §&%§;
               }
            }
         }
         var _loc4_:XML;
         var _loc5_:Namespace = (_loc4_ = NativeApplication.nativeApplication.applicationDescriptor).namespace();
         if(!(_loc6_ && this))
         {
            §"l§ = _loc4_._loc5_::id;
            loop0:
            while(true)
            {
               §+!a§.enabled = false;
               loop1:
               while(true)
               {
                  §[!-§.§@v§(§+!a§.§]"%§);
                  loop2:
                  while(true)
                  {
                     §§push(param2);
                     loop3:
                     while(true)
                     {
                        if(§§pop() == null)
                        {
                           continue loop2;
                        }
                        addr100:
                        while(true)
                        {
                           §§push(param2);
                           if(_loc7_)
                           {
                              if(§§pop().indexOf(".") < 0)
                              {
                                 do
                                 {
                                    super(param1,param2,param3);
                                    do
                                    {
                                       this.§"!-§ = false;
                                    }
                                    while(_loc6_ && this);
                                    
                                    if(!(_loc7_ || param3))
                                    {
                                       continue loop1;
                                    }
                                 }
                                 while(_loc6_);
                                 
                                 addr93:
                                 if(!(_loc6_ && param3))
                                 {
                                    break;
                                 }
                                 continue loop2;
                                 addr93:
                              }
                              loop6:
                              while(true)
                              {
                                 §§push(param2);
                                 if(!(_loc6_ && this))
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop().substring(0,param2.indexOf(".")));
                                    }
                                    addr116:
                                 }
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       break loop6;
                                    }
                                    param2 = §§pop();
                                    continue loop1;
                                 }
                              }
                              continue loop3;
                           }
                           §§goto(addr116);
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr93);
         }
      }
      
      public static function §'!u§(param1:XML) : XML
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            if(true)
            {
               addr24:
               for each(_loc2_ in param1)
               {
                  if(_loc6_ || _loc2_)
                  {
                     if(!_loc2_.@width)
                     {
                        continue;
                     }
                     if(_loc5_ && §4!=§)
                     {
                        continue;
                     }
                  }
                  _loc2_.@width = §`!E§;
               }
            }
            return param1;
         }
         §§goto(addr24);
      }
      
      public static function §"!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §4!=§))
         {
            §§push(§'!c§.§[!d§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr95:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc1_ || §4!=§)
                        {
                           if(!_loc2_)
                           {
                              §'!c§.§3!f§("ThemeMusic","Channel_Theme",100,0.65);
                              addr79:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr79);
                     }
                     return;
                     addr62:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.onKeyDown(param1);
         }
         loop0:
         while(true)
         {
            var _loc2_:* = param1.keyCode;
            if(!_loc4_)
            {
               if(Keyboard.S === _loc2_)
               {
                  addr84:
                  §§push(0);
                  if(_loc3_ || _loc2_)
                  {
                  }
               }
               else
               {
                  §§push(1);
               }
               loop2:
               switch(§§pop())
               {
                  case 0:
                     §§push(this);
                     §§push(this.§86§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§<=§(§§pop());
                     while(true)
                     {
                        (§6!!§.singleton as §4!=§).§>E§.updateMuteButtonState();
                        if(_loc4_)
                        {
                           break loop2;
                        }
                        if(!(_loc4_ && _loc3_))
                        {
                           if(true)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                     }
               }
               return;
            }
            §§goto(addr84);
         }
      }
      
      public function get soundsEnabled() : Boolean
      {
         return this.§86§;
      }
      
      override protected function initialize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.initialize();
         }
      }
      
      override protected function initializeManagers() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.initializeManagers();
         }
      }
      
      override protected function initStateLoad() : §%r§
      {
         return new §2!f§(§@!>§,true,§%r§.§-!q§,1000,stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      override protected function initializeStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §!!G§.§8!M§ = false;
            loop0:
            while(true)
            {
               §§push(§!!G§.§2Z§);
               while(true)
               {
                  §§pop().§+3§(§8!N§.§?!c§(§#!1§));
                  loop2:
                  while(true)
                  {
                     §§push(§!!G§.§2Z§);
                     if(!(_loc1_ || this))
                     {
                        break;
                     }
                     §§pop().setLanguage(§!!G§.§-!N§);
                     loop3:
                     while(_loc1_)
                     {
                        §7p§(new §^!5§(§&" §,§@!>§,false));
                        loop4:
                        for(; !_loc2_; while(!(_loc2_ && this))
                        {
                           §7p§(new §@!C§(§&" §,false,§@!C§.§-!q§,§@!>§));
                           §§goto(addr128);
                        })
                        {
                           while(true)
                           {
                              §7p§(new §^!N§(§&" §,§@!>§,§@!H§,false));
                              loop6:
                              while(true)
                              {
                                 §7p§(new §1A§(§&" §,§@!>§,false));
                                 loop7:
                                 while(true)
                                 {
                                    §7p§(new §`B§(§&" §,§@!>§,§@!H§,false));
                                    while(true)
                                    {
                                       §7p§(new §2q§(§&" §,§@!>§,§@!H§,false));
                                       continue loop7;
                                       addr147:
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       §7p§(new §?!x§(§&" §,§@!>§,false));
                                       loop14:
                                       while(!(_loc2_ && _loc1_))
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(stage.stageWidth == §+g§);
                                          if(!(_loc2_ && this))
                                          {
                                             §§push(!§§pop());
                                          }
                                          loop15:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop16:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr95:
                                                   addr128:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(stage.stageHeight == §=!?§);
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         if(_loc2_ && this)
                                                         {
                                                            continue loop16;
                                                         }
                                                         §§push(!§§pop());
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         continue loop15;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                             while(§§pop())
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr59:
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §@Q§(null);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §7p§(new §7!3§(§&" §,§@!>§,false,§@!H§));
                                                         break loop14;
                                                         §§goto(addr59);
                                                      }
                                                      addr193:
                                                   }
                                                }
                                                if(_loc1_ || this)
                                                {
                                                   break;
                                                }
                                                §§goto(addr95);
                                             }
                                             return;
                                          }
                                       }
                                       while(true)
                                       {
                                          §7p§(new §=-§(§&" §,false,§=-§.§-!q§,§@!>§,§@!H§));
                                          continue loop4;
                                          §§goto(addr108);
                                       }
                                       addr108:
                                    }
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr250);
      }
      
      override protected function setupPopupManager() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §8!^§ = new MovieClip();
         }
         loop0:
         while(true)
         {
            §!!U§.stage.addChild(§8!^§);
            while(true)
            {
               §-G§ = new §7!Y§(§8!^§,§@!>§,this,§`!E§,§'+§);
               do
               {
                  §-G§.addEventListener(§;g§.OPEN,§ !U§);
                  continue loop0;
               }
               while(!(_loc2_ || this));
               
               return;
               addr78:
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               (§^!8§.userProgress as §-U§).§&^§();
               do
               {
                  §+"0§ = new §6&§(§-G§,§^!8§,§4L§.§[1§,new §4""§());
               }
               while(_loc1_);
               
               addr85:
               if(!_loc2_)
               {
                  loop5:
                  while(true)
                  {
                     if(_loc1_)
                     {
                        while(!_loc1_)
                        {
                           §^!8§.userProgress = new §-U§("",§&" §);
                           continue loop5;
                        }
                        continue loop0;
                        addr92:
                     }
                     §§goto(addr78);
                  }
                  continue;
               }
               §§goto(addr44);
            }
         }
      }
      
      override protected function initializeUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§7"$§();
         }
      }
      
      private function §+?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§"N§ = new §3!_§();
         }
      }
      
      public function §7"$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`!2§.§9!&§ = new §[C§();
         }
      }
      
      override protected function initializeLevelItemManager() : §#!R§
      {
         return new §%!I§();
      }
      
      override protected function initializeLevelThemeManager() : §+§
      {
         return super.initializeLevelThemeManager();
      }
      
      override protected function initializeLevelMain() : §?!'§
      {
         return new § J§(stage,§@!H§,§9,§,§&" §);
      }
      
      override protected function initializePackageManager() : §6!F§
      {
         return new §;!"§(§&" §,this.§+!i§);
      }
      
      protected function get §]!1§() : §;!"§
      {
         return §3&§ as §;!"§;
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §&!"§.§4!_§(0,0,param1,param2);
         }
         do
         {
            setViewSize(param1,param2);
            do
            {
               §-G§.setViewSize(param1,param2);
            }
            while(_loc4_);
            
         }
         while(!_loc3_);
         
      }
      
      override protected function initializeGame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.initializeGame();
         }
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(_loc2_ || _loc1_)
         {
            §[!-§.§@v§(§+!a§.§%"§,_loc1_.toString(),_loc1_);
         }
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(§<V§.§;"'§("ViewLanguageSelection"))
            {
               if(_loc2_)
               {
                  super.setFirstGameState();
               }
               do
               {
                  §<f§(§^!N§.§-!q§);
               }
               while(!(_loc2_ || _loc2_));
               
               addr51:
            }
            return;
         }
         §§goto(addr51);
      }
      
      override protected function getAssetMap() : XML
      {
         return §8!N§.§?!c§(§34§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §8!N§.§?!c§(§@W§);
         if(_loc4_)
         {
            §[!e§.§[!4§(_loc2_,_loc1_,["Views","Components"],true);
         }
         return _loc1_;
      }
      
      protected function get §+!i§() : §%!I§
      {
         return §@!H§ as §%!I§;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreenBlack();
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: " + §[Y§.replace("{svn_version}","local dev build"));
         if(!_loc2_)
         {
            §§push(§§pop() + ", ");
            if(_loc1_)
            {
               §§push(§§pop() + "Server: ");
               if(_loc2_)
               {
               }
               §§goto(addr54);
            }
            §§push(§§pop() + §=!N§);
         }
         addr54:
         return §§pop();
      }
      
      override protected function initFonts() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.initFonts();
         }
         do
         {
            Font.registerFont(AngryBirdsArialMSFont);
         }
         while(_loc2_);
         
      }
      
      override protected function loadItems() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:XML = this.§ !6§(§8!N§.§?!c§(§5]§),§8!N§.§?!c§(§!!@§));
         if(!(_loc2_ && _loc1_))
         {
            §@!H§.loadItems(_loc1_);
         }
      }
      
      private function § !6§(param1:XML, param2:XML) : XML
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:XML = new XML(param1.Items.toXMLString());
         var _loc4_:XML = new XML(param1.Item_Materials.toXMLString());
         var _loc5_:XML = new XML(param1.Item_Shapes.toXMLString());
         var _loc6_:XML = new XML(param1.Item_Resources_Sounds.toXMLString());
         var _loc7_:XML = new XML(param1.SoundChannels.toXMLString());
         var _loc8_:XML = new XML(param1.Material_Damage_Multipliers.toXMLString());
         var _loc9_:XML = new XML(param1.Material_Velocity_Multipliers.toXMLString());
         if(!(_loc11_ && param1))
         {
            param2.appendChild(_loc3_);
            while(true)
            {
               param2.appendChild(_loc4_);
               addr110:
               if(!(_loc10_ || _loc3_))
               {
                  continue;
               }
               return param2;
               addr117:
            }
         }
         while(true)
         {
            param2.appendChild(_loc5_);
            do
            {
               param2.appendChild(_loc6_);
               loop3:
               do
               {
                  param2.appendChild(_loc7_);
                  while(true)
                  {
                     param2.appendChild(_loc8_);
                     while(!_loc11_)
                     {
                        param2.appendChild(_loc9_);
                        if(!_loc11_)
                        {
                           continue loop3;
                        }
                     }
                  }
               }
               while(_loc11_);
               
            }
            while(!(_loc10_ || _loc3_));
            
            if(_loc11_ && param2)
            {
               continue;
            }
            §§goto(addr110);
         }
         §§goto(addr117);
      }
      
      override protected function getLevelBackgroundXML() : XML
      {
         return §8!N§.§?!c§(§6!w§);
      }
      
      public function get §@!R§() : §5!Y§
      {
         return §&" §;
      }
      
      override protected function initializeLevelManager() : §5!Y§
      {
         return new §,9§();
      }
      
      public function get §?!b§() : §-U§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(Boolean(§^!8§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(!(_loc2_ || _loc2_))
                     {
                        break;
                     }
                     if(!(_loc1_ && _loc2_))
                     {
                        return §^!8§.userProgress as §-U§;
                        addr74:
                     }
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§^!8§.userProgress));
                        if(!(_loc1_ && this))
                        {
                           continue loop0;
                        }
                        addr94:
                        while(true)
                        {
                           §§pop();
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  return null;
                  addr58:
               }
               §§goto(addr94);
            }
         }
         §§goto(addr74);
      }
      
      public function set §?!b§(param1:§-U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §^!8§.userProgress = param1;
         }
      }
      
      public function get §#!'§() : §3!_§
      {
         return this.§"N§;
      }
      
      public function §<=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §'!c§.§,!O§(param1);
            do
            {
               this.§86§ = param1;
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public function §5@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§86§);
            if(_loc1_)
            {
               §§push(!§§pop());
            }
            §§pop().§86§ = §§pop();
            while(true)
            {
               §'!c§.§,!O§(this.§86§);
               §§goto(addr67);
            }
         }
         addr67:
         while(true)
         {
            (§6!!§.singleton as §4!=§).§?!b§.§<=§(this.§86§);
            if(!_loc2_)
            {
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §=D§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§"!-§ = param1;
         }
      }
      
      public function §"!L§() : Boolean
      {
         return this.§"!-§;
      }
      
      public function §0Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            NativeApplication.nativeApplication.exit();
         }
      }
      
      public function §?!l§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            (§!!U§ as AngryBirdsCustomCanvas).§!"-§();
         }
      }
      
      public function §&!N§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(stage.displayState == StageDisplayState.NORMAL)
            {
               if(_loc2_ || _loc1_)
               {
                  §§push(false);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr60:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr60);
      }
   }
}
