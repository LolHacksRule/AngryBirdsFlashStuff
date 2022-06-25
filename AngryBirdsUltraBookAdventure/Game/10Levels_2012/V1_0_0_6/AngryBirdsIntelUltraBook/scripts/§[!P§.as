package
{
   import §"x§.§3!v§;
   import §#!O§.§9-§;
   import §#&§.§1A§;
   import §#&§.§9!o§;
   import §%t§.§1§;
   import §%t§.§?!a§;
   import §'!J§.§"!t§;
   import §'!J§.§"&§;
   import §'!J§.§#!D§;
   import §'!J§.§+!;§;
   import §'!J§.§-!d§;
   import §'!J§.§8!J§;
   import §'!J§.§<m§;
   import §'!J§.§=4§;
   import §'!J§.§=I§;
   import §'!J§.§[§;
   import §'!J§.§]d§;
   import §'!Q§.§ §;
   import §+0§.§;!>§;
   import §,!§.§![§;
   import §3!G§.LevelManager;
   import §4;§.§3M§;
   import §6!Y§.§"F§;
   import §6!Y§.§0!x§;
   import §7@§.§4C§;
   import §;!o§.§>!l§;
   import §;H§.§!y§;
   import §;H§.§,!]§;
   import §;H§.§9!3§;
   import §;H§.StateCutScene;
   import §;H§.StatePlay;
   import §>! §.§^!c§;
   import §?N§.§]!e§;
   import §]+§.§#@§;
   import §]+§.§%!M§;
   import §]+§.§@!J§;
   import §]2§.§-9§;
   import com.angrybirds.friendsbar.§1!R§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class §[!P§ extends AngryBirdsFP11
   {
      
      public static const §@W§:String = "1.0.0.6 r97703)";
      
      private static const §@$§:String = "AngryBirdsIntelUltrabookSettings";
      
      protected static var §?!$§:Class;
      
      protected static var §@F§:Class;
      
      protected static var §`!>§:Class;
      
      protected static var §@![§:Class;
      
      public static var §>#§:§"F§;
      
      public static var §;!K§:§[!P§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@W§ = "1.0.0.6 r97703)";
            loop0:
            while(true)
            {
               §@$§ = "AngryBirdsIntelUltrabookSettings";
               while(true)
               {
                  §?!$§ = §1!A§;
                  while(!_loc2_)
                  {
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     §@F§ = §&!7§;
                     addr61:
                     if(_loc1_ || §[!P§)
                     {
                        §@![§ = §+!D§;
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
                              §`!>§ = §'!f§;
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
      
      protected var §;!i§:§1!R§;
      
      private var §23§:String = null;
      
      private var §8!1§:String = "";
      
      private var §!O§:§#@§;
      
      private var §#t§:Sprite;
      
      private var §<!%§:Boolean = false;
      
      public function §[!P§(param1:§-9§)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Stage3D = null;
         if(!(_loc8_ && _loc3_))
         {
            §%!M§.enabled = true;
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
                              §@!J§.§#D§("no-stage3d");
                              if(!_loc8_)
                              {
                                 addr162:
                                 §§push(§§findproperty(§+!V§));
                                 if(_loc7_)
                                 {
                                    §§push(param1.stage.loaderInfo.parameters.serverVersion);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§pop().§+!V§ = §§pop() || "[No version from server]";
                                       addr183:
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§findproperty(§;!1§));
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
                                                      if(!§@a§)
                                                      {
                                                         addr160:
                                                         §§pop().§;!1§ = "http://head-dot-ab-in-adventure.appspot.com";
                                                         while(true)
                                                         {
                                                            super(param1);
                                                            loop2:
                                                            while(_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §;!K§ = this;
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
                                                   §§push("http://head-dot-ab-in-adventure.appspot.com");
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
      
      public static function §'!r§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push((sUserProgress as §![§).§-H§);
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
         §§push(§@$§ + "-");
         if(_loc1_ || §[!P§)
         {
            return §§pop() + (sUserProgress as §![§).§-H§;
         }
      }
      
      public static function §'!F§(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §>#§ = new §"F§(§;!1§,(AngryBirdsFP11.sUserProgress as §![§).§-H§,(AngryBirdsFP11.sUserProgress as §![§).userName);
            if(!_loc3_)
            {
               addr56:
               §§push(§>#§);
               if(_loc4_)
               {
                  §§pop().§??§(param1);
                  addr61:
                  §§push(§>#§);
               }
               §§push(§§pop().§-b§);
               if(!_loc3_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc4_ || §[!P§)
               {
                  if(_loc2_ >= 0)
                  {
                     if(_loc4_)
                     {
                        addr79:
                        §@!J§.§<!=§(_loc2_);
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
      
      private function §#U§(param1:Array) : void
      {
      }
      
      private function §1!Z§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§<!%§)
            {
            }
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §3!v§.§;!-§(§?!$§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §3!v§.§;!-§(§@F§);
         if(_loc4_)
         {
            this.§&v§(_loc2_,_loc1_,["Views","Components"],true);
         }
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §3!v§.§;!-§(§@![§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(!(_loc5_ && this))
         {
            this.§&v§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §3!v§.§;!-§(§`!>§);
         if(_loc3_)
         {
            this.§&v§(_loc2_,_loc1_,["Backgrounds"]);
         }
         return _loc1_;
      }
      
      protected function §^!4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§@a§)
            {
               if(_loc1_)
               {
                  if(!stage.loaderInfo.parameters.userId)
                  {
                     addr110:
                     while(true)
                     {
                        §@!J§.§&B§("userId");
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
                              §@!J§.§&B§("accessToken");
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
                                 §@!J§.§&B§("tokenExpiresIn");
                                 loop4:
                                 while(_loc1_)
                                 {
                                    while(true)
                                    {
                                       §1A§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
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
               this.§23§ = stage.loaderInfo.parameters.levelId;
               while(true)
               {
                  §<!h§.addEventListener(Event.INIT,this.§7F§);
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
               this.§^!4§();
               if(_loc5_)
               {
                  addr33:
                  if(false)
                  {
                     while(true)
                     {
                        §<!h§.addEventListener(Event.COMPLETE,this.§>E§);
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
                     _loc2_ = SharedObject.getLocal(§@$§,"/ab_in_adventure");
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
                                    §5!C§(_loc1_);
                                    if(!_loc4_)
                                    {
                                       §>!l§.addCallback("giftsSentToUsers",this.§#U§);
                                    }
                                 }
                                 return;
                                 addr173:
                              }
                           }
                           do
                           {
                              §>!l§.addCallback("onUrl",this.§1!Z§);
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
      
      protected function §`b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§;!i§ = new §1!R§(§>#§,§;!1§,(sUserProgress as §![§).§-H§);
            while(true)
            {
               this.§#t§.addChild(this.§;!i§);
            }
            addr272:
         }
         loop1:
         while(true)
         {
            §§push(this.§;!i§);
            loop2:
            while(true)
            {
               §§pop().height = stage.stageHeight;
               loop3:
               while(true)
               {
                  §§push(this.§;!i§);
                  while(true)
                  {
                     §§pop().x = stage.stageWidth - 180;
                     addr247:
                     addr151:
                     while(true)
                     {
                        §§push(this.§;!i§);
                        addr223:
                        while(true)
                        {
                           §§push(§4C§.§,>§);
                           addr225:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§-!a§);
                              addr228:
                              while(true)
                              {
                                 §§push(this.§;!i§);
                                 continue loop2;
                              }
                           }
                        }
                     }
                     if(!(_loc2_ || _loc2_))
                     {
                        continue;
                     }
                     §§push(§4C§.§`!c§);
                     while(!_loc1_)
                     {
                        §§pop().addEventListener(§§pop(),this.§,Z§);
                        while(true)
                        {
                           §§push(this.§;!i§);
                           loop21:
                           while(true)
                           {
                              §§push(§4C§.§5!h§);
                              while(true)
                              {
                                 §§pop().addEventListener(§§pop(),this.§=L§);
                                 loop23:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       if(!(_loc2_ || this))
                                       {
                                          break;
                                       }
                                       §§push(this.§;!i§);
                                       continue loop21;
                                    }
                                    addr217:
                                    while(!_loc1_)
                                    {
                                       §§push(this.§;!i§);
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§4C§.§1j§);
                                          loop13:
                                          while(true)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§>j§);
                                             addr197:
                                             while(_loc2_)
                                             {
                                                §§push(this.§;!i§);
                                                while(!(_loc1_ && this))
                                                {
                                                   §§push(§4C§.§9P§);
                                                   while(!(_loc1_ && _loc1_))
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.§3-§);
                                                      while(true)
                                                      {
                                                         §§push(this.§;!i§);
                                                         continue loop12;
                                                      }
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         §§pop().addEventListener(§§pop(),this.§;!#§);
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
                        §§pop().addEventListener(§§pop(),this.§;7§);
                        §§goto(addr217);
                     }
                     §§goto(addr225);
                  }
               }
            }
         }
      }
      
      protected function §7F§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §?!a§.§2q§(false);
         }
      }
      
      protected function §>E§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §?!a§.§2q§(true);
         }
      }
      
      public function §;! §(param1:String, param2:§0!x§ = null, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            §§push(this.§;!i§);
            if(!(_loc5_ && this))
            {
               §§push(param1);
               if(_loc4_ || param1)
               {
                  if(§§pop())
                  {
                     addr61:
                     §§push(LevelManager.§1H§(param1).name);
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
                  §§pop().§5_§(§§pop(),param1,param2,param3);
                  §§goto(addr74);
               }
               §§goto(addr68);
            }
            §§goto(addr61);
         }
         addr74:
      }
      
      public function §;e§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!i§.§=!Q§(param1);
         }
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §^!c§.§5!Y§ = new §9-§(stage);
         }
      }
      
      override protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            sUserProgress = new §![§(§;!1§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!]§(new §=4§(false));
            loop0:
            while(true)
            {
               §!]§(new §=I§(false));
               loop1:
               while(true)
               {
                  §!]§(new §#!D§(false));
                  loop2:
                  while(true)
                  {
                     §!]§(new §[§(false));
                     while(true)
                     {
                        §!]§(new §-!d§(false));
                        loop4:
                        while(!(_loc2_ && _loc2_))
                        {
                           §!]§(new §<m§(false));
                           loop5:
                           while(true)
                           {
                              §!]§(new §8!J§(false));
                              loop6:
                              while(!_loc2_)
                              {
                                 §!]§(new §+!;§(false));
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       while(true)
                                       {
                                          §!]§(new §]d§(false));
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
      
      override protected function initStateLoad() : §;!>§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§@a§)
            {
               if(!_loc1_)
               {
                  if(!stage.loaderInfo.parameters.assetsUrl)
                  {
                     if(_loc2_)
                     {
                        §@!J§.§&B§("assetsUrl");
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
            return new §"&§(true,§;!>§.§"!s§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
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
            §6!c§ = true;
            loop0:
            while(true)
            {
               §§push(this.§23§);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(LevelManager.§ o§(this.§23§));
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
                                 if(§§pop() != this.§23§)
                                 {
                                    while(true)
                                    {
                                       §@!J§.§@8§(this.§23§);
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
                                    this.§23§ = null;
                                    loop4:
                                    while(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          this.§]7§(_loc2_);
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
                     §@!n§(§,!]§.§"!s§);
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
      
      public function §]7§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(LevelManager.§ o§(param1));
            if(!(_loc3_ && this))
            {
               §§push(§§pop());
            }
            param1 = §§pop();
            do
            {
               LevelManager.§@3§(param1);
               do
               {
                  §@!n§(StateCutScene.§"!s§);
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
               §1§.§-X§ = new §3M§();
               while(true)
               {
                  §1§.§-X§.§1p§();
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     this.§`b§();
                     while((sUserProgress as §![§).hasTutorialBeenSeen(§![§.§&!4§) == false)
                     {
                        if(!_loc2_)
                        {
                           (sUserProgress as §![§).saveTutorialSeen(§![§.§&!4§);
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
                                                   §§push(int(§-!P§));
                                                   if(_loc8_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr211:
                                                         while(true)
                                                         {
                                                            §§push(int(§6!l§));
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
                                                      §^!c§.§<!B§(0,0,_loc6_,_loc3_);
                                                      loop23:
                                                      while(true)
                                                      {
                                                         setViewSize(_loc6_,_loc3_);
                                                         loop24:
                                                         while(true)
                                                         {
                                                            this.§;!T§(_loc2_,_loc3_);
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§push(this.§;!i§);
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §-!P§ = _loc6_;
                                                                     loop28:
                                                                     while(_loc8_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §6!l§ = _loc3_;
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
                                                                              §§push(this.§;!i§);
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
      
      public function §;!T§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §]!e§.setViewSize(param1,param2);
         }
      }
      
      protected function §&v§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
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
      
      protected function §-!a§(param1:§4C§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §&2§();
            loop0:
            while(true)
            {
               if(param1.data == null)
               {
                  §@!J§.§3n§();
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           §§push(§>!l§);
                           §§push("flashInviteFriendsHandler");
                           if(_loc2_ || this)
                           {
                              §§push(param1.data);
                              if(!_loc3_)
                              {
                                 §§pop().§ a§(§§pop(),!!§§pop() ? param1.data.userId : null);
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
                                    §@!J§.§+!F§();
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
      
      protected function §;7§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §1T§();
         }
      }
      
      protected function §>j§(param1:§4C§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §00§.uiInteractionHandler(0,"showCredits",null);
         }
      }
      
      protected function §3-§(param1:§4C§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §00§.uiInteractionHandler(0,"showTutorial",null);
         }
      }
      
      protected function §=L§(param1:§4C§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §&2§();
         }
         var _loc2_:int = (param1.data as §9!o§).§&d§ - 1;
         if(!_loc3_)
         {
            §@!J§.§6>§(_loc2_.toString());
         }
         do
         {
            §§push(§>!l§);
            §§push("flashBrag");
            §§push(param1.data.userId);
            §§push(LevelManager.§%n§);
            §§push(LevelManager.§];§().writtenName + "-");
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() + § §.§'!X§(LevelManager.§%n§));
            }
            §§pop().§ a§(§§pop(),§§pop(),§§pop(),§§pop());
         }
         while(_loc3_ && this);
         
      }
      
      protected function §;!#§(param1:§4C§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:String = param1.target.data.lvl;
         §§push(LevelManager.§ o§(_loc2_));
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
                  §@!J§.§@8§(_loc2_);
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
      
      protected function §,Z§(param1:§4C§) : void
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
                  §§pop().§§slot[2].data.useSounds = §5`§;
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
         §§push(this.§@-§(_loc2_,_loc3_,_loc4_));
         if(_loc7_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:*;
         if(_loc5_ = §§pop())
         {
            if(!_loc6_)
            {
               (AngryBirdsFP11.sUserProgress as §![§).§=!9§(param1,_loc5_);
            }
         }
      }
      
      private function §@-§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc7_:§9!o§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         §§push(this.§<!z§.§@&§(LevelManager.§%n§,param1,param2,param3,_loc5_,param4));
         if(!(_loc11_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         for each(_loc7_ in _loc5_)
         {
            _loc8_ = _loc7_.§&d§ - 1;
            if(!(_loc11_ && param3))
            {
               §@!J§.§ K§(_loc8_.toString());
            }
         }
         return _loc6_;
      }
      
      public function get §<!z§() : §1!R§
      {
         return this.§;!i§;
      }
      
      public function get §99§() : §#@§
      {
         return this.§!O§;
      }
      
      public function §=!g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!O§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().§7!O§();
         }
         addr49:
         if(!(_loc1_ && this))
         {
            §§push(this.§!O§);
         }
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Client: ");
         if(!(_loc1_ && _loc2_))
         {
            §§push(§§pop() + §@W§.replace("{svn_version}","local dev build"));
            if(_loc2_)
            {
               §§push(§§pop() + "Server: ");
               if(_loc1_ && this)
               {
               }
               §§goto(addr53);
            }
            §§push(§§pop() + §+!V§);
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
            §@!J§.§[!G§(§%!M§.§%6§,_loc1_.toString(),_loc1_);
         }
         while(true)
         {
            this.§<!%§ = true;
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
               §§push(this.§8!1§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     this.§8!1§ += String.fromCharCode(param1.keyCode);
                     while(true)
                     {
                        if(_loc2_ || param1)
                        {
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 this.§8!1§ = String.fromCharCode(param1.keyCode);
                                 addr125:
                                 while(true)
                                 {
                                 }
                              }
                              addr119:
                           }
                           while(true)
                           {
                              this.§8!1§ = this.§8!1§.toLowerCase();
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
                  this.§8!1§ = this.§8!1§.substr(1);
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
            §@!J§.§9]§();
         }
      }
      
      override public function externalResume() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §@!J§.§3!q§();
         }
      }
   }
}
