package
{
   import §"!i§.LevelManager;
   import §+!f§.§@!c§;
   import §,@§.§ !U§;
   import §,@§.§'!6§;
   import §-!$§.§,w§;
   import §0b§.§"V§;
   import §1!B§.§>!s§;
   import §2!U§.§2!=§;
   import §2!U§.§8"!§;
   import §2!U§.§<&§;
   import §2!U§.StateCutScene;
   import §2!U§.StatePlay;
   import §4H§.§!!5§;
   import §4H§.§9?§;
   import §8!H§.§"_§;
   import §;!y§.§,!s§;
   import §;#§.§&L§;
   import §<-§.§!!K§;
   import §<-§.§-!h§;
   import §<-§.§5Z§;
   import §>L§.§+!i§;
   import §@! §.§[! §;
   import §[;§.§#!6§;
   import §^!m§.§4!i§;
   import §^`§.§14§;
   import §^`§.§>!N§;
   import §`!#§.§!!2§;
   import §`!#§.§#!Q§;
   import §`!#§.§'!1§;
   import §`!#§.§+9§;
   import §`!#§.§,D§;
   import §`!#§.§-r§;
   import §`!#§.§1!D§;
   import §`!#§.§7a§;
   import §`!#§.§>!4§;
   import §`!#§.§>!U§;
   import §`!#§.§?c§;
   import com.angrybirds.friendsbar.§-V§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class §<t§ extends AngryBirdsFP11
   {
      
      public static const §`!q§:String = "1.1.0.7 r106972)";
      
      private static const §&'§:String = "AngryBirdsIntelUltrabookSettings";
      
      protected static var §+x§:Class;
      
      protected static var §`!^§:Class;
      
      protected static var §+!g§:Class;
      
      protected static var §=!Z§:Class;
      
      public static var §!V§:§ !U§;
      
      public static var §`n§:§<t§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`!q§ = "1.1.0.7 r106972)";
            loop0:
            while(true)
            {
               §&'§ = "AngryBirdsIntelUltrabookSettings";
               loop1:
               while(true)
               {
                  §+x§ = §>?§;
                  while(true)
                  {
                     §`!^§ = §<X§;
                     loop3:
                     while(_loc1_ || _loc2_)
                     {
                        loop4:
                        while(true)
                        {
                           §+!g§ = §@p§;
                           while(_loc1_)
                           {
                              §=!Z§ = §#!q§;
                              if(!(_loc2_ && §<t§))
                              {
                                 if(_loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break loop4;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      protected var §5q§:§-V§;
      
      private var §3§:String = null;
      
      private var §]"#§:String = "";
      
      private var §"2§:§-!h§;
      
      private var §3-§:Sprite;
      
      private var §^!G§:Boolean = false;
      
      public function §<t§(param1:§,w§)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Stage3D = null;
         if(_loc8_)
         {
            §5Z§.enabled = true;
         }
         var _loc2_:* = 0;
         try
         {
            if(_loc5_ = param1.stage.stage3Ds[0])
            {
               if(_loc8_ || this)
               {
                  §§push(1);
                  if(_loc8_)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc7_ && _loc3_))
                     {
                        addr66:
                        §§push(_loc2_);
                        addr54:
                     }
                     loop8:
                     while(true)
                     {
                        if(false)
                        {
                           loop1:
                           while(true)
                           {
                              §`n§ = this;
                              loop2:
                              while(_loc8_)
                              {
                                 while(true)
                                 {
                                    §!!K§.§&!v§(§5Z§.§+!q§);
                                    if(!(_loc8_ || this))
                                    {
                                       continue loop2;
                                    }
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       continue loop8;
                                    }
                                    addr194:
                                    while(true)
                                    {
                                       §§push(§§findproperty(§[!S§));
                                       if(_loc8_ || param1)
                                       {
                                          §§push(param1.stage.loaderInfo.parameters.serverRoot);
                                          if(_loc8_ || param1)
                                          {
                                             if(!§§pop())
                                             {
                                                addr156:
                                                §§pop();
                                                if(!_loc7_)
                                                {
                                                   if(§?C§)
                                                   {
                                                      addr161:
                                                      §§push("http://head-dot-ab-in-adventure.appspot.com");
                                                      if(_loc7_ && _loc3_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push("http://head-dot-ab-in-adventure.appspot.com");
                                                   }
                                                }
                                                §§goto(addr161);
                                             }
                                             §§pop().§[!S§ = §§pop();
                                             while(true)
                                             {
                                                super(param1);
                                                break loop2;
                                             }
                                             addr172:
                                          }
                                          §§goto(addr156);
                                       }
                                       §§goto(addr161);
                                    }
                                 }
                                 var _loc3_:ContextMenu = new ContextMenu();
                                 §§push(_loc8_);
                                 if(!_loc8_)
                                 {
                                    addr202:
                                    §§pop();
                                    §§push(Boolean(param1));
                                    break loop8;
                                 }
                                 break loop8;
                              }
                              while(!_loc8_)
                              {
                                 §§goto(addr172);
                              }
                              addr121:
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr195);
                        }
                        §§goto(addr202);
                     }
                     if(§§pop())
                     {
                        _loc3_.hideBuiltInItems();
                        if(!(_loc7_ && this))
                        {
                           param1.contextMenu = _loc3_;
                           if(!(_loc7_ && _loc3_))
                           {
                              addr225:
                              param1.stage.addChild(this.§3-§ = new Sprite());
                              if(_loc8_)
                              {
                                 §4!i§.initialize(param1.stage);
                                 if(_loc8_)
                                 {
                                    addr244:
                                    §§push(param1.stage.loaderInfo.parameters.serverVersion);
                                    if(_loc8_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc8_ || param1)
                                          {
                                             addr261:
                                             §§pop();
                                             addr263:
                                             §§push("");
                                          }
                                          var _loc4_:* = §§pop();
                                          if(!(_loc7_ && this))
                                          {
                                             this.§"2§ = new §-!h§(_loc4_);
                                          }
                                          do
                                          {
                                             this.§"2§.start();
                                          }
                                          while(_loc7_ && this);
                                          
                                          return;
                                       }
                                       §§goto(addr263);
                                    }
                                    §§goto(addr261);
                                 }
                              }
                              §§goto(addr244);
                           }
                           §§goto(addr261);
                        }
                        §§goto(addr244);
                     }
                     §§goto(addr225);
                     addr106:
                  }
                  if(§§pop() == 0)
                  {
                     if(!(_loc7_ && this))
                     {
                        §!!K§.§<3§("no-stage3d");
                        if(_loc8_ || param1)
                        {
                           addr173:
                           §§push(§§findproperty(§^I§));
                           if(!_loc7_)
                           {
                              §§push(param1.stage.loaderInfo.parameters.serverVersion);
                              if(_loc8_ || this)
                              {
                                 §§pop().§^I§ = §§pop() || "[No version from server]";
                                 §§goto(addr194);
                              }
                           }
                           §§goto(addr191);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr173);
               }
            }
            §§goto(addr54);
         }
         catch(e:Error)
         {
            §§goto(addr66);
         }
         §§goto(addr106);
      }
      
      public static function §9!y§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push((sUserProgress as §#!6§).§ z§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && §<t§))
                  {
                     §§push(§&'§);
                  }
                  else
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr69);
            }
            §§push(§§pop() + "-");
            if(_loc2_)
            {
               return §§pop() + (sUserProgress as §#!6§).§ z§;
            }
         }
         addr69:
         return null;
      }
      
      public static function §6v§(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §!V§ = new § !U§(§[!S§,(AngryBirdsFP11.sUserProgress as §#!6§).§ z§,(AngryBirdsFP11.sUserProgress as §#!6§).userName);
            if(_loc4_)
            {
               §§goto(addr51);
            }
            §§goto(addr66);
         }
         addr51:
         §§push(§!V§);
         if(_loc4_)
         {
            §§pop().§8m§(param1);
            addr66:
            §§push(§!V§);
         }
         §§push(§§pop().§6!4§);
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            if(_loc2_ >= 0)
            {
               if(_loc4_ || param1)
               {
                  §!!K§.§5!%§(_loc2_);
               }
            }
         }
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §#!I§(param1:Array) : void
      {
      }
      
      private function §;!A§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§^!G§)
            {
            }
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §>!s§.§;§(§+x§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §>!s§.§;§(§`!^§);
         if(_loc4_)
         {
            this.§[!@§(_loc2_,_loc1_,["Views","Components"],true);
         }
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §>!s§.§;§(§=!Z§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(!_loc4_)
         {
            this.§[!@§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §>!s§.§;§(§+!g§);
         if(!_loc4_)
         {
            this.§[!@§(_loc2_,_loc1_,["Backgrounds"]);
         }
         return _loc1_;
      }
      
      protected function §"!4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§?C§)
            {
               if(_loc2_ || _loc1_)
               {
                  if(!stage.loaderInfo.parameters.userId)
                  {
                     addr126:
                     while(true)
                     {
                        §!!K§.§1,§("userId");
                        addr129:
                        while(true)
                        {
                        }
                     }
                     addr126:
                  }
                  while(true)
                  {
                     if(!stage.loaderInfo.parameters.accessToken)
                     {
                        loop1:
                        while(!_loc1_)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              §!!K§.§1,§("accessToken");
                              while(true)
                              {
                                 while(_loc2_ || _loc2_)
                                 {
                                    if(_loc1_ && this)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr24);
                                    }
                                 }
                              }
                              addr111:
                           }
                           else
                           {
                              §§goto(addr126);
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        if(!stage.loaderInfo.parameters.tokenExpiresIn)
                        {
                           §§goto(addr65);
                        }
                        addr24:
                        while(true)
                        {
                           §!!5§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
                           if(_loc1_ && _loc2_)
                           {
                              continue loop5;
                           }
                           if(!_loc1_)
                           {
                              break;
                           }
                           addr65:
                           while(true)
                           {
                              §!!K§.§1,§("tokenExpiresIn");
                              continue loop5;
                           }
                        }
                        return;
                        §§goto(addr111);
                     }
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr24);
         }
         §§goto(addr82);
      }
      
      override protected function initialize() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:SharedObject = null;
         if(!(_loc5_ && _loc2_))
         {
            super.initialize();
            loop0:
            while(true)
            {
               this.§3§ = stage.loaderInfo.parameters.levelId;
               while(true)
               {
                  §>s§.addEventListener(Event.INIT,this.§9"#§);
                  loop2:
                  for(; !_loc5_; while(true)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        if(_loc4_)
                        {
                           this.§"!4§();
                           if(_loc4_ || _loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop2;
                  })
                  {
                     while(true)
                     {
                        §>s§.addEventListener(Event.COMPLETE,this.§+c§);
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr39);
         }
         var _loc1_:Boolean = true;
         try
         {
            _loc2_ = SharedObject.getLocal(§&'§,"/ab_in_adventure");
            if(_loc4_ || _loc3_)
            {
               if(_loc2_.data.useSounds == undefined)
               {
                  if(_loc4_ || _loc2_)
                  {
                     _loc2_.data.useSounds = true;
                     if(!(_loc5_ && _loc2_))
                     {
                        addr125:
                        _loc1_ = _loc2_.data.useSounds;
                        if(_loc5_)
                        {
                        }
                        return;
                        addr172:
                     }
                     addr154:
                     §]!G§(_loc1_);
                     if(_loc4_)
                     {
                        §+!i§.addCallback("giftsSentToUsers",this.§#!I§);
                        addr178:
                        do
                        {
                           §+!i§.addCallback("onUrl",this.§;!A§);
                        }
                        while(_loc5_);
                        
                        §§goto(addr172);
                        addr178:
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr178);
               }
               §§goto(addr125);
            }
            §§goto(addr178);
         }
         catch(e:Error)
         {
            §§goto(addr154);
         }
         §§goto(addr125);
      }
      
      protected function §0R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§5q§ = new §-V§(§!V§,§[!S§,(sUserProgress as §#!6§).§ z§);
            while(true)
            {
               this.§3-§.addChild(this.§5q§);
               while(true)
               {
                  §§push(this.§5q§);
                  loop2:
                  while(true)
                  {
                     §§pop().height = stage.stageHeight;
                     loop3:
                     while(true)
                     {
                        §§push(this.§5q§);
                        while(true)
                        {
                           §§pop().x = stage.stageWidth - 180;
                           while(true)
                           {
                              §§push(this.§5q§);
                              while(true)
                              {
                                 §§push(§[! §.§4!&§);
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§]!$§);
                                    while(true)
                                    {
                                       §§push(this.§5q§);
                                       loop9:
                                       while(!_loc1_)
                                       {
                                          §§push(§[! §.§6!f§);
                                          loop10:
                                          while(true)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§7!%§);
                                             addr212:
                                             while(!_loc1_)
                                             {
                                                §§push(this.§5q§);
                                                while(!_loc1_)
                                                {
                                                   §§push(§[! §.§^!;§);
                                                   continue loop10;
                                                }
                                                continue loop9;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 if(_loc1_ && this)
                                 {
                                    continue;
                                 }
                                 §§goto(addr141);
                                 §§push(§[! §.§@Q§);
                              }
                           }
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           §§push(§[! §.PLAY_LEVEL);
                           if(!(_loc1_ && this))
                           {
                              §§pop().addEventListener(§§pop(),this.§[!&§);
                              §§goto(addr75);
                           }
                           §§goto(addr95);
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr89);
            }
         }
         §§goto(addr43);
      }
      
      protected function §9"#§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §14§.§["#§(false);
         }
      }
      
      protected function §+c§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §14§.§["#§(true);
         }
      }
      
      public function §;!T§(param1:String, param2:§'!6§ = null, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(this.§5q§);
            if(_loc4_)
            {
               §§push(param1);
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     addr56:
                     §§push(LevelManager.§`r§(param1).name);
                     if(_loc4_ || this)
                     {
                        addr68:
                        §§push(§§pop());
                     }
                     §§goto(addr68);
                  }
                  else
                  {
                     §§push("");
                  }
                  §§pop().§"I§(§§pop(),param1,param2,param3);
                  §§goto(addr74);
               }
               §§goto(addr68);
            }
            §§goto(addr56);
         }
         addr74:
      }
      
      public function §'!0§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§5q§.§<!i§(param1);
         }
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,!s§.§=!I§ = new §"V§(stage);
         }
      }
      
      override protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            sUserProgress = new §#!6§(§[!S§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9X§(new §+9§(false));
            loop0:
            while(true)
            {
               §9X§(new §#!Q§(false));
               while(true)
               {
                  §9X§(new §!!2§(false));
                  addr72:
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  §9X§(new §'!1§(false));
                  addr79:
                  if(!(_loc1_ && _loc2_))
                  {
                     addr37:
                     if(_loc2_)
                     {
                        addr39:
                        if(!(_loc1_ && _loc2_))
                        {
                           addr46:
                           if(_loc1_ && _loc1_)
                           {
                              loop4:
                              while(true)
                              {
                                 §9X§(new §>!U§(false));
                                 addr102:
                                 loop5:
                                 for(; !_loc1_; §§goto(addr39))
                                 {
                                    if(!_loc1_)
                                    {
                                       §9X§(new §?c§(false));
                                       loop6:
                                       while(true)
                                       {
                                          §9X§(new §7a§(false));
                                          addr86:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                break loop6;
                                                addr70:
                                             }
                                             §9X§(new §1!D§(false));
                                             while(!_loc1_)
                                             {
                                                §§goto(addr72);
                                                §§goto(addr79);
                                             }
                                             continue loop6;
                                             §§goto(addr37);
                                          }
                                          continue loop5;
                                       }
                                       continue loop0;
                                    }
                                    addr137:
                                    while(true)
                                    {
                                       §9X§(new §,D§(false));
                                       break loop5;
                                    }
                                 }
                                 while(true)
                                 {
                                    §9X§(new §>!4§(false));
                                    continue loop4;
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr70);
               }
            }
         }
         §§goto(addr137);
      }
      
      override protected function initStateLoad() : §"_§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!§?C§)
            {
               if(_loc2_)
               {
                  if(!stage.loaderInfo.parameters.assetsUrl)
                  {
                     if(_loc2_)
                     {
                        addr45:
                        §!!K§.§1,§("assetsUrl");
                        if(_loc2_ || _loc1_)
                        {
                        }
                        return new §-r§(true,§"_§.§'!q§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
                        addr70:
                     }
                  }
               }
               if(stage.loaderInfo.parameters.buildNumber)
               {
               }
            }
            §§goto(addr70);
         }
         §§goto(addr45);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = null;
         if(!(_loc3_ && param1))
         {
            §^T§ = true;
            loop0:
            while(true)
            {
               §§push(this.§3§);
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     loop8:
                     while(true)
                     {
                        §9!m§(§8"!§.§'!q§);
                        if(!(_loc3_ && _loc2_))
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           addr142:
                           while(!(_loc3_ && _loc3_))
                           {
                              continue loop0;
                           }
                           loop1:
                           while(true)
                           {
                              §§push(LevelManager.§5l§(this.§3§));
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                 }
                                 addr148:
                              }
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr150:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!_loc4_)
                                    {
                                       break;
                                    }
                                    if(§§pop() != this.§3§)
                                    {
                                       while(true)
                                       {
                                          §!!K§.§4R§(this.§3§);
                                          addr135:
                                          addr51:
                                          while(true)
                                          {
                                          }
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             continue loop8;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§3§ = null;
                                       continue loop1;
                                       §§goto(addr135);
                                    }
                                 }
                              }
                           }
                           addr99:
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              while(true)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    if(_loc4_ || this)
                                    {
                                       break;
                                    }
                                    §§goto(addr150);
                                 }
                              }
                              return;
                              addr80:
                           }
                           §§goto(addr51);
                        }
                        §§goto(addr135);
                     }
                     return;
                     addr32:
                  }
                  §§goto(addr142);
               }
               §§goto(addr148);
            }
         }
         while(true)
         {
            if(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
            {
               if(!_loc3_)
               {
                  this.§^!#§(_loc2_);
               }
               §§goto(addr80);
            }
            §§goto(addr32);
         }
      }
      
      public function §^!#§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(LevelManager.§5l§(param1));
            if(!(_loc2_ && param1))
            {
               §§push(§§pop());
            }
            param1 = §§pop();
            do
            {
               LevelManager.§`!O§(param1);
               do
               {
                  §9!m§(StateCutScene.§'!q§);
               }
               while(!_loc3_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.setFirstGameState();
         }
         loop0:
         while(true)
         {
            §>!N§.§!!e§ = new §&L§();
            loop1:
            while(true)
            {
               §>!N§.§!!e§.§2§();
               loop2:
               while(true)
               {
                  this.§0R§();
                  while(true)
                  {
                     if(!(_loc1_ && this))
                     {
                        if((sUserProgress as §#!6§).hasTutorialBeenSeen(§#!6§.§,!G§) != false)
                        {
                           break;
                        }
                        if(_loc2_ || _loc1_)
                        {
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop2;
                  }
                  addr25:
                  return;
               }
            }
         }
      }
      
      override protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            §§push(int(Math.round(stage.stageWidth)));
            loop0:
            while(true)
            {
               param1 = §§pop();
               loop1:
               while(true)
               {
                  §§push(int(Math.round(stage.stageHeight)));
                  loop2:
                  while(true)
                  {
                     param2 = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(param1);
                        loop4:
                        while(true)
                        {
                           §§push(20);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             §§push(param2);
                                             while(_loc6_)
                                             {
                                                §§push(20);
                                                while(true)
                                                {
                                                   §§push(§§pop() < §§pop());
                                                }
                                                addr76:
                                                if(_loc7_ && param1)
                                                {
                                                   continue;
                                                }
                                                param1 = §§pop();
                                                addr84:
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(false)
                                                      {
                                                         loop25:
                                                         while(true)
                                                         {
                                                            §§push(param2);
                                                            loop26:
                                                            while(!_loc7_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(2);
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ && param2)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(§§pop() < §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr112:
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 loop28:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          if(!(_loc7_ && _loc3_))
                                                                                          {
                                                                                             if(_loc7_ && this)
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                             §§push(param2);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop27;
                                                                                             }
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(§§pop() / §§pop() > 25 / 12)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(!(_loc7_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(int(Math.round(param2 * (25 / 12))));
                                                                                                         if(!(_loc7_ && param1))
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               break loop28;
                                                                                                            }
                                                                                                            §§goto(addr76);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr130);
                                                                                                   }
                                                                                                   §§goto(addr84);
                                                                                                }
                                                                                                addr242:
                                                                                                break;
                                                                                             }
                                                                                             while(!_loc7_)
                                                                                             {
                                                                                                §§push(§§pop() < §§pop());
                                                                                                break loop27;
                                                                                             }
                                                                                             §§goto(addr203);
                                                                                          }
                                                                                          break;
                                                                                          addr131:
                                                                                       }
                                                                                       var _loc3_:* = §§pop();
                                                                                       var _loc4_:int = 62;
                                                                                       §§push(param1);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(int(§§pop() - (_loc3_ - _loc4_)));
                                                                                       }
                                                                                       var _loc5_:* = §§pop();
                                                                                       if(_loc6_ || param2)
                                                                                       {
                                                                                          §,!s§.§4J§(0,0,_loc5_,param2);
                                                                                          setViewSize(_loc5_,param2);
                                                                                          this.§'!B§(param1,param2);
                                                                                          addr377:
                                                                                          addr370:
                                                                                          addr364:
                                                                                          if(this.§5q§)
                                                                                          {
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                addr355:
                                                                                                this.§5q§.x = param1 - _loc3_;
                                                                                             }
                                                                                             addr358:
                                                                                             §§push(this.§5q§);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(param2);
                                                                                                   if(_loc6_ || param2)
                                                                                                   {
                                                                                                      §§pop().height = §§pop();
                                                                                                      addr321:
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         if(!(_loc7_ && param1))
                                                                                                         {
                                                                                                            addr286:
                                                                                                            §3!!§ = _loc5_;
                                                                                                            addr290:
                                                                                                            if(!(_loc7_ && param1))
                                                                                                            {
                                                                                                               if(!(_loc7_ && param2))
                                                                                                               {
                                                                                                                  §>u§ = param2;
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ || param1))
                                                                                                                     {
                                                                                                                        §§goto(addr321);
                                                                                                                     }
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr290);
                                                                                                               }
                                                                                                               §§goto(addr377);
                                                                                                            }
                                                                                                            §§goto(addr370);
                                                                                                            addr330:
                                                                                                         }
                                                                                                         §§goto(addr364);
                                                                                                      }
                                                                                                      §§goto(addr358);
                                                                                                   }
                                                                                                   §§goto(addr355);
                                                                                                }
                                                                                                §§goto(addr377);
                                                                                             }
                                                                                             §§goto(addr355);
                                                                                          }
                                                                                          §§goto(addr286);
                                                                                       }
                                                                                       §§goto(addr330);
                                                                                    }
                                                                                    addr130:
                                                                                    return;
                                                                                 }
                                                                                 continue loop2;
                                                                                 addr128:
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    break loop26;
                                                                                 }
                                                                                 addr132:
                                                                              }
                                                                              addr206:
                                                                              while(!_loc7_)
                                                                              {
                                                                                 §§push(int(§3!!§));
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           addr205:
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr152:
                                                                        while(_loc6_ || param1)
                                                                        {
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              continue loop25;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        addr181:
                                                                        while(!(_loc7_ && _loc3_))
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc7_ && _loc3_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr132);
                                                                              }
                                                                           }
                                                                           §§goto(addr206);
                                                                        }
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§>u§));
                                                                           addr170:
                                                                           while(true)
                                                                           {
                                                                              param2 = §§pop();
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ || this))
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     §§push(§§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        §§goto(addr128);
                                                                     }
                                                                     §§goto(addr151);
                                                                     §§goto(addr112);
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               continue loop0;
                                                            }
                                                            while(!_loc7_)
                                                            {
                                                               §§goto(addr137);
                                                               §§push(2);
                                                            }
                                                            §§goto(addr170);
                                                         }
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr131);
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr205);
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
         §§goto(addr197);
      }
      
      public function §'!B§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            §4!i§.setViewSize(param1,param2);
         }
      }
      
      protected function §[!@§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            if(!_loc12_)
            {
               var _loc9_:int = 0;
               if(_loc11_ || this)
               {
                  for each(_loc6_ in param1[_loc5_].§*§)
                  {
                     if(!_loc12_)
                     {
                        §§push(param4);
                        if(_loc11_ || param3)
                        {
                           if(§§pop())
                           {
                              if(_loc12_)
                              {
                                 continue;
                              }
                              addr97:
                              delete param2[_loc5_][_loc6_.name()];
                              if(!_loc11_)
                              {
                                 continue;
                              }
                           }
                           param2[_loc5_].appendChild(_loc6_);
                           continue;
                        }
                     }
                     §§goto(addr97);
                  }
               }
            }
         }
      }
      
      protected function §]!$§(param1:§[! §) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §5!M§();
            loop0:
            while(true)
            {
               if(param1.data != null)
               {
                  continue;
               }
               §!!K§.§0!'§();
               loop1:
               do
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     if(_loc2_ && _loc3_)
                     {
                        continue loop0;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr114:
                  }
                  while(true)
                  {
                     §§push(§+!i§);
                     §§push("flashInviteFriendsHandler");
                     if(!(_loc2_ && _loc3_))
                     {
                        §§push(param1.data);
                        if(!_loc2_)
                        {
                           if(!§§pop())
                           {
                              §§push(null);
                              continue loop1;
                           }
                           addr54:
                           §§push(param1.data);
                        }
                        §§push(§§pop().userId);
                        continue loop1;
                     }
                     §§goto(addr54);
                  }
               }
               while(§§pop().§>!y§(§§pop(),§§pop()), !(_loc3_ || _loc3_));
               
            }
         }
      }
      
      protected function §7!%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §]8§();
         }
      }
      
      protected function §+!N§(param1:§[! §) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §`!<§.uiInteractionHandler(0,"showCredits",null);
         }
      }
      
      protected function §[6§(param1:§[! §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §`!<§.uiInteractionHandler(0,"showTutorial",null);
         }
      }
      
      protected function §"!u§(param1:§[! §) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §5!M§();
         }
         var _loc2_:int = (param1.data as §9?§).§1<§ - 1;
         if(!(_loc4_ && this))
         {
            §!!K§.§-!=§(_loc2_.toString());
            do
            {
               §§push(§+!i§);
               §§push("flashBrag");
               §§push(param1.data.userId);
               §§push(LevelManager.§"L§);
               §§push(LevelManager.§+!$§().writtenName + "-");
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() + §@!c§.§<!N§(LevelManager.§"L§));
               }
               §§pop().§>!y§(§§pop(),§§pop(),§§pop(),§§pop());
            }
            while(!_loc3_);
            
         }
      }
      
      protected function §[!&§(param1:§[! §) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:String = param1.target.data.lvl;
         §§push(LevelManager.§5l§(_loc2_));
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc3_ != _loc2_)
            {
               if(!_loc4_)
               {
                  §!!K§.§4R§(_loc2_);
               }
               while(true)
               {
                  addr84:
                  while(_loc5_ || _loc2_)
                  {
                     §9!m§(StateCutScene.§'!q§);
                     if(_loc5_ || this)
                     {
                        return;
                     }
                  }
               }
               addr100:
            }
            while(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
            {
               if(_loc5_)
               {
                  while(true)
                  {
                     LevelManager.§`!O§(_loc3_);
                  }
                  addr81:
               }
               §§goto(addr84);
               §§goto(addr100);
            }
            return;
         }
         §§goto(addr81);
      }
      
      protected function §9z§(param1:§[! §) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(_loc5_ || param1)
            {
               §§push(§§newactivation());
               if(!_loc4_)
               {
                  §§pop().§§slot[1] = param1;
                  loop0:
                  while(true)
                  {
                     §]!G§(!§"C§());
                     while(true)
                     {
                        if(§"C§())
                        {
                           loop2:
                           while(true)
                           {
                              if(§,^§() != StatePlay.§'!q§)
                              {
                                 §§push(§,^§() == §!!2§.§'!q§);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop4:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§pop();
                                             if(_loc5_ || _loc2_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§,^§() == §2!=§.§'!q§);
                                                   addr74:
                                                   while(true)
                                                   {
                                                      loop8:
                                                      do
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc4_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§push(§,^§() == §<&§.§'!q§);
                                                               addr98:
                                                               continue loop5;
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop4;
                                                      }
                                                      while(!(_loc5_ || param1));
                                                      
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §,!s§.§=!I§.background.§3!c§();
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr137:
                                                            }
                                                            continue loop2;
                                                            break loop5;
                                                         }
                                                         break loop5;
                                                      }
                                                      break;
                                                   }
                                                   try
                                                   {
                                                      addr177:
                                                      §§push(§§newactivation());
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§pop().§§slot[2] = SharedObject.getLocal(§&'§,"/ab_in_adventure");
                                                         if(_loc5_)
                                                         {
                                                            addr203:
                                                            §§push(§§newactivation());
                                                            if(!_loc4_)
                                                            {
                                                               addr206:
                                                               §§pop().§§slot[2].data.useSounds = §0!7§;
                                                               if(_loc4_)
                                                               {
                                                               }
                                                               break loop5;
                                                            }
                                                            addr213:
                                                            §§pop().§§slot[2].flush();
                                                            break loop5;
                                                         }
                                                         §§push(§§newactivation());
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                   catch(e:Error)
                                                   {
                                                   }
                                                   §§goto(addr229);
                                                }
                                                addr68:
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr74);
                                    }
                                 }
                              }
                              §§goto(addr137);
                           }
                        }
                        §§goto(addr177);
                        if(_loc4_ && _loc2_)
                        {
                           continue;
                        }
                        AngryBirdsFP11.playThemeMusic();
                        if(!(_loc4_ && _loc3_))
                        {
                           if(false)
                           {
                              §§goto(addr68);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr215);
                     }
                  }
               }
               §§goto(addr206);
            }
            addr215:
            addr229:
            return;
         }
         §§goto(addr206);
      }
      
      override public function newUserScore(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1);
         §§push(this.§4!M§(_loc2_,_loc3_,_loc4_));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:*;
         if(_loc5_ = §§pop())
         {
            if(!(_loc6_ && _loc2_))
            {
               (AngryBirdsFP11.sUserProgress as §#!6§).§%N§(param1,_loc5_);
            }
         }
      }
      
      private function §4!M§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc7_:§9?§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         §§push(this.§3!<§.§`j§(LevelManager.§"L§,param1,param2,param3,_loc5_,param4));
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = _loc7_.§1<§ - 1;
            if(!_loc12_)
            {
               §!!K§.§<]§(_loc8_.toString());
            }
         }
         return _loc6_;
      }
      
      public function get §3!<§() : §-V§
      {
         return this.§5q§;
      }
      
      public function get §`X§() : §-!h§
      {
         return this.§"2§;
      }
      
      public function §6"!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§"2§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr33);
            }
            §§pop().§7Q§();
         }
         addr33:
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§"2§);
         }
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Client: ");
         if(!_loc1_)
         {
            §§push(§§pop() + §`!q§.replace("{svn_version}","local dev build"));
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop() + "Server: ");
               if(!_loc1_)
               {
                  return §§pop() + §^I§;
               }
            }
         }
      }
      
      override protected function initializeGame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(_loc3_)
         {
            §!!K§.§&!v§(§5Z§.§@!<§,_loc1_.toString(),_loc1_);
            do
            {
               this.§^!G§ = true;
               do
               {
                  super.initializeGame();
               }
               while(!_loc3_);
               
            }
            while(_loc2_);
            
         }
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super.onKeyDown(param1);
         }
         loop0:
         while(true)
         {
            §§push(this.§]"#§);
            loop1:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§]"#§ = String.fromCharCode(param1.keyCode);
                     continue loop0;
                  }
                  addr108:
               }
               else
               {
                  this.§]"#§ += String.fromCharCode(param1.keyCode);
                  loop2:
                  while(true)
                  {
                     addr72:
                     while(true)
                     {
                        this.§]"#§ = this.§]"#§.toLowerCase();
                        addr78:
                        addr25:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      override public function externalPause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!!K§.§=E§();
         }
      }
      
      override public function externalResume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!!K§.§2!k§();
         }
      }
   }
}
