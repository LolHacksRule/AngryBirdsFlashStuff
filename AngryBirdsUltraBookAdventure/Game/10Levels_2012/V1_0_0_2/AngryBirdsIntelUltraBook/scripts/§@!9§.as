package
{
   import §&A§.§,6§;
   import §+!Q§.§<[§;
   import §0!N§.LevelManager;
   import §0X§.§'N§;
   import §0X§.§'W§;
   import §0X§.§3S§;
   import §3!8§.§%!5§;
   import §3!8§.§2!_§;
   import §40§.§!Y§;
   import §40§.§'!j§;
   import §40§.§-!,§;
   import §40§.§4V§;
   import §40§.§=d§;
   import §40§.§>!J§;
   import §40§.§?H§;
   import §40§.§@!8§;
   import §40§.§@+§;
   import §40§.§`!?§;
   import §40§.§`L§;
   import §4e§.§=!p§;
   import §6!M§.§-!?§;
   import §6!M§.§;!G§;
   import §8u§.§3g§;
   import §8u§.§9=§;
   import §9!5§.§ B§;
   import §9!5§.§!1§;
   import §9!5§.§0!`§;
   import §9!5§.StateCutScene;
   import §9!5§.StatePlay;
   import §9!y§.§@M§;
   import §<!>§.§,?§;
   import §<e§.§ &§;
   import §@N§.§2w§;
   import §@i§.§=r§;
   import §^_§.§,>§;
   import §`!%§.§2x§;
   import com.angrybirds.friendsbar.§`Y§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   import §true§.§ _§;
   
   public class §@!9§ extends AngryBirdsFP11
   {
      
      public static const §<!a§:String = "1.0.0.2 r97324)";
      
      private static const §=$§:String = "AngryBirdsIntelUltrabookSettings";
      
      protected static var § get§:Class;
      
      protected static var §@!2§:Class;
      
      protected static var §[X§:Class;
      
      protected static var §]X§:Class;
      
      public static var §;0§:§3g§;
      
      public static var §6!f§:§@!9§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<!a§ = "1.0.0.2 r97324)";
            loop0:
            while(true)
            {
               §=$§ = "AngryBirdsIntelUltrabookSettings";
               while(true)
               {
                  § get§ = § !k§;
                  while(!_loc2_)
                  {
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     §@!2§ = §`c§;
                     addr61:
                     if(_loc1_ || §@!9§)
                     {
                        §]X§ = §7!'§;
                        addr68:
                        if(!(_loc1_ || _loc2_))
                        {
                           while(!_loc2_)
                           {
                              §§goto(addr61);
                              §§goto(addr68);
                           }
                           while(true)
                           {
                              §[X§ = §=l§;
                              §§goto(addr49);
                           }
                           addr49:
                           addr73:
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      protected var §=;§:§`Y§;
      
      private var §8f§:String = null;
      
      private var §4!X§:String = "";
      
      private var §[!T§:§3S§;
      
      private var §4!>§:Sprite;
      
      private var §4A§:Boolean = false;
      
      public function §@!9§(param1:§,6§)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Stage3D = null;
         if(!(_loc8_ && _loc3_))
         {
            §'W§.enabled = true;
         }
         var _loc2_:* = 0;
         try
         {
            if(_loc5_ = param1.stage.stage3Ds[0])
            {
               if(!_loc8_)
               {
                  §§push(1);
                  if(!(_loc8_ && _loc2_))
                  {
                     _loc2_ = §§pop();
                     if(!_loc8_)
                     {
                        addr66:
                        if(_loc2_ == 0)
                        {
                           if(_loc7_ || _loc3_)
                           {
                              §'N§.§4!u§("no-stage3d");
                              if(!_loc8_)
                              {
                                 addr162:
                                 §§push(§§findproperty(§#!x§));
                                 if(_loc7_)
                                 {
                                    §§push(param1.stage.loaderInfo.parameters.serverVersion);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§pop().§#!x§ = §§pop() || "[No version from server]";
                                       addr183:
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§findproperty(§8!`§));
                                          if(_loc7_)
                                          {
                                             §§push(param1.stage.loaderInfo.parameters.serverRoot);
                                             if(_loc7_ || _loc3_)
                                             {
                                                if(!§§pop())
                                                {
                                                   addr140:
                                                   §§pop();
                                                   if(_loc7_ || param1)
                                                   {
                                                      addr148:
                                                      if(!§[!d§)
                                                      {
                                                         addr160:
                                                         §§pop().§8!`§ = "http://head-dot-angrybirds-ultrabook.appspot.com";
                                                         while(true)
                                                         {
                                                            super(param1);
                                                            loop2:
                                                            while(_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §6!f§ = this;
                                                                  addr94:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   §§push("http://head-dot-angrybirds-ultrabook.appspot.com");
                                                   if(_loc8_ && _loc3_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr160);
                                             }
                                             §§goto(addr140);
                                          }
                                          §§goto(addr148);
                                       }
                                       addr183:
                                    }
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr162);
                        addr53:
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr66);
               }
               §§goto(addr88);
            }
            §§goto(addr53);
         }
         catch(e:Error)
         {
            §§goto(addr66);
         }
         §§goto(addr194);
      }
      
      public static function §+!l§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push((sUserProgress as §<[§).§0u§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr53);
                  }
               }
               return null;
            }
            §§goto(addr53);
         }
         addr53:
         §§push(§=$§ + "-");
         if(_loc1_ || §@!9§)
         {
            return §§pop() + (sUserProgress as §<[§).§0u§;
         }
      }
      
      public static function §`3§(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §;0§ = new §3g§(§8!`§,(AngryBirdsFP11.sUserProgress as §<[§).§0u§,(AngryBirdsFP11.sUserProgress as §<[§).userName);
            if(!_loc3_)
            {
               addr56:
               §§push(§;0§);
               if(_loc4_)
               {
                  §§pop().§5!J§(param1);
                  addr61:
                  §§push(§;0§);
               }
               §§push(§§pop().§5O§);
               if(!_loc3_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc4_ || §@!9§)
               {
                  if(_loc2_ >= 0)
                  {
                     if(_loc4_)
                     {
                        addr79:
                        §'N§.§,!j§(_loc2_);
                     }
                  }
                  return;
               }
               §§goto(addr79);
            }
            §§goto(addr61);
         }
         §§goto(addr56);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      private function §0=§(param1:Array) : void
      {
      }
      
      private function §=!D§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§4A§)
            {
            }
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §,>§.§%2§(§ get§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §,>§.§%2§(§@!2§);
         if(_loc4_)
         {
            this.§3z§(_loc2_,_loc1_,["Views","Components"],true);
         }
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §,>§.§%2§(§]X§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(!(_loc5_ && this))
         {
            this.§3z§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §,>§.§%2§(§[X§);
         if(_loc3_)
         {
            this.§3z§(_loc2_,_loc1_,["Backgrounds"]);
         }
         return _loc1_;
      }
      
      protected function §1q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§[!d§)
            {
               if(_loc1_)
               {
                  if(!stage.loaderInfo.parameters.userId)
                  {
                     addr110:
                     while(true)
                     {
                        §'N§.§>!1§("userId");
                        addr113:
                        while(true)
                        {
                        }
                     }
                     addr110:
                  }
                  loop0:
                  while(true)
                  {
                     if(!stage.loaderInfo.parameters.accessToken)
                     {
                        while(true)
                        {
                           if(_loc1_)
                           {
                              §'N§.§>!1§("accessToken");
                              addr100:
                              while(true)
                              {
                              }
                              addr100:
                           }
                           else
                           {
                              §§goto(addr110);
                           }
                        }
                        continue;
                        addr95:
                     }
                     while(true)
                     {
                        if(!stage.loaderInfo.parameters.tokenExpiresIn)
                        {
                           loop3:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 §'N§.§>!1§("tokenExpiresIn");
                                 loop4:
                                 while(_loc1_)
                                 {
                                    while(true)
                                    {
                                       §;!G§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
                                       if(_loc1_)
                                       {
                                          if(_loc1_ || _loc1_)
                                          {
                                             if(_loc1_ || this)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    return;
                                 }
                                 §§goto(addr100);
                              }
                              else
                              {
                                 §§goto(addr95);
                              }
                           }
                        }
                        §§goto(addr23);
                     }
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr23);
         }
         §§goto(addr100);
      }
      
      override protected function initialize() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:SharedObject = null;
         if(_loc5_ || _loc1_)
         {
            super.initialize();
            while(true)
            {
               this.§8f§ = stage.loaderInfo.parameters.levelId;
               while(true)
               {
                  §!L§.addEventListener(Event.INIT,this.§@!m§);
                  addr59:
                  while(!_loc4_)
                  {
                  }
               }
               addr44:
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
               this.§1q§();
               if(_loc5_)
               {
                  addr33:
                  if(false)
                  {
                     while(true)
                     {
                        §!L§.addEventListener(Event.COMPLETE,this.§&B§);
                        addr42:
                        while(_loc5_)
                        {
                           §§goto(addr44);
                        }
                        §§goto(addr59);
                        §§goto(addr33);
                     }
                     addr35:
                  }
                  var _loc1_:Boolean = true;
                  try
                  {
                     _loc2_ = SharedObject.getLocal(§=$§,"/ultrabook");
                     if(_loc5_ || this)
                     {
                        if(_loc2_.data.useSounds == undefined)
                        {
                           if(_loc5_ || _loc1_)
                           {
                              _loc2_.data.useSounds = true;
                              if(_loc5_ || this)
                              {
                                 addr121:
                                 _loc1_ = _loc2_.data.useSounds;
                                 if(!_loc4_)
                                 {
                                    addr150:
                                    §-#§(_loc1_);
                                    if(!_loc4_)
                                    {
                                       §=r§.addCallback("giftsSentToUsers",this.§0=§);
                                    }
                                 }
                                 return;
                                 addr173:
                              }
                           }
                           do
                           {
                              §=r§.addCallback("onUrl",this.§=!D§);
                           }
                           while(_loc4_ && this);
                           
                           §§goto(addr173);
                        }
                     }
                     §§goto(addr121);
                  }
                  catch(e:Error)
                  {
                     §§goto(addr150);
                  }
                  §§goto(addr121);
               }
               §§goto(addr42);
            }
         }
         while(true)
         {
            §§goto(addr35);
         }
      }
      
      protected function §7`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§=;§ = new §`Y§(§;0§,§8!`§,(sUserProgress as §<[§).§0u§);
            while(true)
            {
               this.§4!>§.addChild(this.§=;§);
            }
            addr272:
         }
         loop1:
         while(true)
         {
            §§push(this.§=;§);
            loop2:
            while(true)
            {
               §§pop().height = stage.stageHeight;
               loop3:
               while(true)
               {
                  §§push(this.§=;§);
                  while(true)
                  {
                     §§pop().x = stage.stageWidth - 180;
                     addr247:
                     addr151:
                     while(true)
                     {
                        §§push(this.§=;§);
                        addr223:
                        while(true)
                        {
                           §§push(§ &§.§+!j§);
                           addr225:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§`G§);
                              addr228:
                              while(true)
                              {
                                 §§push(this.§=;§);
                                 continue loop2;
                              }
                           }
                        }
                     }
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(§ &§.§52§);
                     while(!_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.§,!@§);
                        while(true)
                        {
                           §§push(this.§=;§);
                           loop21:
                           while(true)
                           {
                              §§push(§ &§.§7!n§);
                              while(true)
                              {
                                 §§pop().addEventListener(§§pop(),this.§;F§);
                                 loop23:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!(_loc2_ || this))
                                       {
                                          break;
                                       }
                                       §§push(this.§=;§);
                                       continue loop21;
                                    }
                                    addr217:
                                    while(!_loc1_)
                                    {
                                       §§push(this.§=;§);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§ &§.§]!r§);
                                          loop13:
                                          while(true)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§"a§);
                                             addr197:
                                             while(_loc2_)
                                             {
                                                §§push(this.§=;§);
                                                while(!(_loc1_ && this))
                                                {
                                                   §§push(§ &§.§4H§);
                                                   while(!(_loc1_ && _loc1_))
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.§%h§);
                                                      while(true)
                                                      {
                                                         §§push(this.§=;§);
                                                         continue loop12;
                                                      }
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         §§pop().addEventListener(§§pop(),this.§4!-§);
                                                         continue loop23;
                                                      }
                                                   }
                                                   continue loop13;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr247);
                                          }
                                       }
                                    }
                                    §§goto(addr272);
                                 }
                                 continue loop3;
                              }
                           }
                           if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           }
                           if(!(_loc1_ && this))
                           {
                              continue loop1;
                           }
                           §§goto(addr228);
                        }
                     }
                     while(_loc2_)
                     {
                        §§pop().addEventListener(§§pop(),this.§-,§);
                        §§goto(addr217);
                     }
                     §§goto(addr225);
                  }
               }
            }
         }
      }
      
      protected function §@!m§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §%!5§.§]`§(false);
         }
      }
      
      protected function §&B§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §%!5§.§]`§(true);
         }
      }
      
      public function §>!+§(param1:String, param2:§9=§ = null, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(this.§=;§);
            if(!(_loc5_ && this))
            {
               §§push(param1);
               if(_loc4_ || param1)
               {
                  if(§§pop())
                  {
                     addr61:
                     §§push(LevelManager.§2!9§(param1).name);
                     if(_loc4_)
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
                  §§pop().§8!w§(§§pop(),param1,param2,param3);
                  §§goto(addr74);
               }
               §§goto(addr68);
            }
            §§goto(addr61);
         }
         addr74:
      }
      
      public function §>=§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=;§.§,!v§(param1);
         }
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            § _§.§!6§ = new §2w§(stage);
         }
      }
      
      override protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            sUserProgress = new §<[§(§8!`§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9!`§(new §?H§(false));
            loop0:
            while(true)
            {
               §9!`§(new §!Y§(false));
               loop1:
               while(true)
               {
                  §9!`§(new §'!j§(false));
                  loop2:
                  while(true)
                  {
                     §9!`§(new §>!J§(false));
                     while(true)
                     {
                        §9!`§(new §-!,§(false));
                        loop4:
                        while(!(_loc2_ && _loc2_))
                        {
                           §9!`§(new §@!8§(false));
                           loop5:
                           while(true)
                           {
                              §9!`§(new §=d§(false));
                              loop6:
                              while(!_loc2_)
                              {
                                 §9!`§(new §@+§(false));
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       while(true)
                                       {
                                          §9!`§(new §4V§(false));
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       return;
                                       addr49:
                                       addr77:
                                    }
                                    break;
                                    if(_loc1_ || this)
                                    {
                                       if(_loc2_ && this)
                                       {
                                          continue loop6;
                                       }
                                       if(!_loc1_)
                                       {
                                          continue loop2;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr49);
                                       continue loop6;
                                    }
                                 }
                                 continue loop5;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      override protected function initStateLoad() : §,?§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§[!d§)
            {
               if(!_loc1_)
               {
                  if(!stage.loaderInfo.parameters.assetsUrl)
                  {
                     if(_loc2_)
                     {
                        §'N§.§>!1§("assetsUrl");
                        if(!_loc1_)
                        {
                           addr45:
                           if(stage.loaderInfo.parameters.buildNumber)
                           {
                           }
                        }
                     }
                  }
                  §§goto(addr45);
               }
            }
            return new §`!?§(true,§,?§.§?h§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
         }
         §§goto(addr45);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = null;
         if(_loc3_ || this)
         {
            §`-§ = true;
            loop0:
            while(true)
            {
               §§push(this.§8f§);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(LevelManager.§@!L§(this.§8f§));
                        addr162:
                        loop9:
                        while(true)
                        {
                           §§push(§§pop());
                           loop10:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr164:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_ && _loc2_)
                                 {
                                    continue loop10;
                                 }
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue loop9;
                                 }
                                 if(§§pop() != this.§8f§)
                                 {
                                    while(true)
                                    {
                                       §'N§.§-4§(this.§8f§);
                                       addr149:
                                       while(_loc3_)
                                       {
                                       }
                                       continue loop0;
                                    }
                                    addr145:
                                 }
                                 while(true)
                                 {
                                    this.§8f§ = null;
                                    loop4:
                                    while(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          this.§5<§(_loc2_);
                                       }
                                       while(true)
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             continue loop1;
                                          }
                                          continue loop4;
                                       }
                                       return;
                                    }
                                 }
                                 continue loop10;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §,!6§(§0!`§.§?h§);
                     if(!(_loc4_ && param1))
                     {
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        §§goto(addr145);
                     }
                     else if(!(_loc4_ && _loc2_))
                     {
                        if(!(_loc4_ && this))
                        {
                           if(_loc3_ || param1)
                           {
                              continue;
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr101);
                  }
                  return;
               }
               §§goto(addr162);
            }
         }
         §§goto(addr110);
      }
      
      public function §5<§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(LevelManager.§@!L§(param1));
            if(!(_loc3_ && this))
            {
               §§push(§§pop());
            }
            param1 = §§pop();
            do
            {
               LevelManager.§1!+§(param1);
               do
               {
                  §,!6§(StateCutScene.§?h§);
               }
               while(!(_loc2_ || param1));
               
            }
            while(!_loc2_);
            
         }
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.setFirstGameState();
            loop0:
            while(true)
            {
               §2!_§.§9^§ = new §2x§();
               while(true)
               {
                  §2!_§.§9^§.§-'§();
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§7`§();
                     while((sUserProgress as §<[§).hasTutorialBeenSeen(§<[§.§[!]§) == false)
                     {
                        if(!_loc2_)
                        {
                           (sUserProgress as §<[§).saveTutorialSeen(§<[§.§[!]§);
                        }
                        if(_loc1_)
                        {
                           if(_loc2_ && _loc2_)
                           {
                              continue loop2;
                           }
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           §§goto(addr24);
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = int(Math.round(stage.stageWidth));
         var _loc3_:* = int(Math.round(stage.stageHeight));
         if(!(_loc7_ && _loc3_))
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
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop15:
                           while(true)
                           {
                              §§pop();
                              loop16:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§push(20);
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                       addr199:
                                       while(true)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop22:
                                                while(true)
                                                {
                                                   §§push(int(§<<§));
                                                   if(_loc8_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr211:
                                                         while(true)
                                                         {
                                                            §§push(int(§5!X§));
                                                            addr186:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr187:
                                                               while(true)
                                                               {
                                                                  addr149:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     addr151:
                                                                     while(true)
                                                                     {
                                                                        §§push(2);
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() < §§pop());
                                                                           if(_loc8_ || this)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           addr181:
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr182:
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 addr112:
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(2);
                                                                                       addr115:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             break loop10;
                                                                                          }
                                                                                          if(_loc8_ || _loc2_)
                                                                                          {
                                                                                             §§push(§§pop() < §§pop());
                                                                                             if(!(_loc7_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   while(!§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                   }
                                                                                                   addr136:
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         return;
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   continue loop22;
                                                                                                   addr134:
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr210:
                                                   }
                                                   addr222:
                                                   var _loc4_:* = §§pop();
                                                   var _loc5_:int = 62;
                                                   §§push(_loc2_);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(int(§§pop() - (_loc4_ - _loc5_)));
                                                   }
                                                   var _loc6_:* = §§pop();
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      § _§.§%L§(0,0,_loc6_,_loc3_);
                                                      loop23:
                                                      while(true)
                                                      {
                                                         setViewSize(_loc6_,_loc3_);
                                                         loop24:
                                                         while(true)
                                                         {
                                                            this.§ 3§(_loc2_,_loc3_);
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§push(this.§=;§);
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §<<§ = _loc6_;
                                                                     loop28:
                                                                     while(_loc8_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §5!X§ = _loc3_;
                                                                           if(!(_loc8_ || this))
                                                                           {
                                                                              continue loop28;
                                                                           }
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              continue loop25;
                                                                           }
                                                                           addr323:
                                                                           addr323:
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§=;§);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(_loc3_);
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§pop().height = §§pop();
                                                                                 break loop28;
                                                                              }
                                                                              addr324:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop() - _loc4_;
                                                                                 continue loop32;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr324);
                                                                              §§goto(addr327);
                                                                           }
                                                                           addr327:
                                                                        }
                                                                        return;
                                                                     }
                                                                     addr285:
                                                                     while(_loc7_ && param1)
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr323);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr275);
                                                }
                                                addr201:
                                             }
                                             §§goto(addr149);
                                          }
                                       }
                                    }
                                    addr198:
                                 }
                                 §§goto(addr210);
                              }
                           }
                           addr219:
                        }
                        §§goto(addr199);
                     }
                  }
                  §§goto(addr219);
               }
            }
         }
         §§goto(addr201);
      }
      
      public function § 3§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §@M§.setViewSize(param1,param2);
         }
      }
      
      protected function §3z§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            if(!_loc11_)
            {
               var _loc9_:int = 0;
               if(_loc12_ || this)
               {
                  for each(_loc6_ in param1[_loc5_].§*§)
                  {
                     if(_loc11_ && param2)
                     {
                        continue;
                     }
                     §§push(param4);
                     if(!_loc11_)
                     {
                        if(§§pop())
                        {
                           if(!_loc11_)
                           {
                              addr98:
                              delete param2[_loc5_][_loc6_.name()];
                              if(_loc11_ && param3)
                              {
                                 continue;
                              }
                           }
                        }
                        param2[_loc5_].appendChild(_loc6_);
                        continue;
                     }
                     §§goto(addr98);
                  }
               }
            }
         }
      }
      
      protected function §`G§(param1:§ &§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §5C§();
            loop0:
            while(true)
            {
               if(param1.data == null)
               {
                  §'N§.§,z§();
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           §§push(§=r§);
                           §§push("flashInviteFriendsHandler");
                           if(_loc2_ || this)
                           {
                              §§push(param1.data);
                              if(!_loc3_)
                              {
                                 §§pop().§[!3§(§§pop(),!!§§pop() ? param1.data.userId : null);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 if(!(_loc3_ && this))
                                 {
                                    return;
                                 }
                                 addr89:
                                 while(true)
                                 {
                                    §'N§.§9!a§();
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr50);
                           addr98:
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      protected function §-,§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §8!d§();
         }
      }
      
      protected function §"a§(param1:§ &§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §>!P§.uiInteractionHandler(0,"showCredits",null);
         }
      }
      
      protected function §%h§(param1:§ &§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §>!P§.uiInteractionHandler(0,"showTutorial",null);
         }
      }
      
      protected function §;F§(param1:§ &§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §5C§();
         }
         var _loc2_:int = (param1.data as §-!?§).§ N§ - 1;
         if(!_loc3_)
         {
            §'N§.§=!k§(_loc2_.toString());
         }
         do
         {
            §§push(§=r§);
            §§push("flashBrag");
            §§push(param1.data.userId);
            §§push(LevelManager.§4Y§);
            §§push(LevelManager.§0v§().writtenName + "-");
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() + §=!p§.§1!j§(LevelManager.§4Y§));
            }
            §§pop().§[!3§(§§pop(),§§pop(),§§pop(),§§pop());
         }
         while(_loc3_ && this);
         
      }
      
      protected function §4!-§(param1:§ &§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:String = param1.target.data.lvl;
         §§push(LevelManager.§@!L§(_loc2_));
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            if(_loc3_ != _loc2_)
            {
               loop0:
               while(true)
               {
                  §'N§.§-4§(_loc2_);
                  addr104:
                  addr87:
                  while(true)
                  {
                  }
                  while(true)
                  {
                     if(_loc4_ || this)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  §§goto(addr104);
               }
            }
            while(true)
            {
               if(!AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
               {
                  return;
               }
               §§goto(addr87);
               §§goto(addr104);
            }
         }
         §§goto(addr80);
      }
      
      protected function §,!@§(param1:§ &§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§pop().§§slot[2] = null;
            if(_loc5_ || param1)
            {
               §§push(§§newactivation());
               if(!(_loc5_ || _loc2_))
               {
                  §§pop().§§slot[2].data.useSounds = §-!W§;
                  if(_loc5_)
                  {
                     addr223:
                     mySO.flush();
                     addr222:
                     break;
                  }
               }
               else
               {
                  addr216:
               }
               continue;
               break;
            }
            §§goto(addr222);
         }
         §§goto(addr239);
      }
      
      override public function newUserScore(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1);
         §§push(this.§2!c§(_loc2_,_loc3_,_loc4_));
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:*;
         if(_loc5_ = §§pop())
         {
            if(!_loc6_)
            {
               (AngryBirdsFP11.sUserProgress as §<[§).§2!@§(param1,_loc5_);
            }
         }
      }
      
      private function §2!c§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc7_:§-!?§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         §§push(this.§6x§.§6!B§(LevelManager.§4Y§,param1,param2,param3,_loc5_,param4));
         if(!(_loc11_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = _loc7_.§ N§ - 1;
            if(!(_loc11_ && param3))
            {
               §'N§.§;2§(_loc8_.toString());
            }
         }
         return _loc6_;
      }
      
      public function get §6x§() : §`Y§
      {
         return this.§=;§;
      }
      
      public function get §6!H§() : §3S§
      {
         return this.§[!T§;
      }
      
      public function §@5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§[!T§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().§6,§();
         }
         addr49:
         if(!(_loc1_ && this))
         {
            §§push(this.§[!T§);
         }
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Client: ");
         if(!(_loc1_ && _loc2_))
         {
            §§push(§§pop() + §<!a§.replace("{svn_version}","local dev build"));
            if(_loc2_)
            {
               §§push(§§pop() + "Server: ");
               if(_loc1_ && this)
               {
               }
               §§goto(addr53);
            }
            §§push(§§pop() + §#!x§);
         }
         addr53:
         return §§pop();
      }
      
      override protected function initializeGame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(!(_loc2_ && _loc2_))
         {
            §'N§.§var §(§'W§.§-!f§,_loc1_.toString(),_loc1_);
         }
         while(true)
         {
            this.§4A§ = true;
            while(_loc3_ || _loc2_)
            {
               super.initializeGame();
               if(_loc3_ || this)
               {
                  return;
               }
            }
         }
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.onKeyDown(param1);
            while(true)
            {
               §§push(this.§4!X§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     this.§4!X§ += String.fromCharCode(param1.keyCode);
                     while(true)
                     {
                        if(_loc2_ || param1)
                        {
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 this.§4!X§ = String.fromCharCode(param1.keyCode);
                                 addr125:
                                 while(true)
                                 {
                                 }
                              }
                              addr119:
                           }
                           while(true)
                           {
                              this.§4!X§ = this.§4!X§.toLowerCase();
                              continue loop1;
                           }
                        }
                        §§goto(addr125);
                     }
                     addr105:
                  }
                  §§goto(addr119);
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               while(true)
               {
                  this.§4!X§ = this.§4!X§.substr(1);
                  §§goto(addr66);
               }
               addr60:
            }
         }
         §§goto(addr60);
      }
      
      override public function externalPause() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'N§.§-!_§();
         }
      }
      
      override public function externalResume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §'N§.§3!j§();
         }
      }
   }
}
