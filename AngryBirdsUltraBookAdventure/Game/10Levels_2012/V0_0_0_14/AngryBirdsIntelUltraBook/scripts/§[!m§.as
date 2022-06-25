package
{
   import § !k§.§6!5§;
   import § !k§.§6!U§;
   import § !k§.§?U§;
   import § !k§.StateCutScene;
   import § !k§.StatePlay;
   import §!!§.LevelManager;
   import §&!h§.§"[§;
   import §&!h§.§0!"§;
   import §&!h§.§]V§;
   import §&9§.§1?§;
   import §'H§.§9!f§;
   import §+k§.§>t§;
   import §+k§.§^x§;
   import §0o§.§ !1§;
   import §0o§.§ L§;
   import §0o§.§#!H§;
   import §0o§.§#D§;
   import §0o§.§,4§;
   import §0o§.§5!S§;
   import §0o§.§;%§;
   import §0o§.§<2§;
   import §0o§.§=x§;
   import §0o§.§>Z§;
   import §0o§.§^!p§;
   import §4[§.§-w§;
   import §4[§.§3q§;
   import §5!t§.§+!g§;
   import §5i§.§4!]§;
   import §6z§.§`!<§;
   import §8!G§.§"D§;
   import §8,§.§5T§;
   import §9!Q§.§7o§;
   import §;!q§.§%!l§;
   import §;!q§.§%t§;
   import §<i§.§#!%§;
   import §>§.§[0§;
   import §^c§.§=o§;
   import com.angrybirds.friendsbar.§&E§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class §[!m§ extends AngryBirdsFP11
   {
      
      public static const §+[§:String = "0.0.0.14 r97247)";
      
      private static const §#<§:String = "AngryBirdsFacebookSettings";
      
      protected static var §1!`§:Class;
      
      protected static var §<7§:Class;
      
      protected static var §&3§:Class;
      
      protected static var §+§:Class;
      
      public static var §8!C§:§^x§;
      
      public static var §1H§:§[!m§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+[§ = "0.0.0.14 r97247)";
            loop0:
            while(true)
            {
               §#<§ = "AngryBirdsFacebookSettings";
               while(true)
               {
                  §1!`§ = §%!-§;
                  while(!_loc2_)
                  {
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     §<7§ = §,i§;
                     addr61:
                     if(_loc1_ || §[!m§)
                     {
                        §+§ = §&!w§;
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
                              §&3§ = §;I§;
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
      
      protected var §-!F§:§&E§;
      
      private var §@!f§:String = null;
      
      private var §`!3§:String = "";
      
      private var §0!+§:§0!"§;
      
      private var §#!U§:Sprite;
      
      private var §5§:Boolean = false;
      
      public function §[!m§(param1:§#!%§)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Stage3D = null;
         if(!(_loc8_ && _loc3_))
         {
            §"[§.enabled = true;
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
                              §]V§.§&$§("no-stage3d");
                              if(!_loc8_)
                              {
                                 addr162:
                                 §§push(§§findproperty(§9n§));
                                 if(_loc7_)
                                 {
                                    §§push(param1.stage.loaderInfo.parameters.serverVersion);
                                    if(!(_loc8_ && _loc3_))
                                    {
                                       §§pop().§9n§ = §§pop() || "[No version from server]";
                                       addr183:
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§findproperty(§6S§));
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
                                                      if(!§2!y§)
                                                      {
                                                         addr160:
                                                         §§pop().§6S§ = "http://head-dot-angrybirds-ultrabook.appspot.com";
                                                         while(true)
                                                         {
                                                            super(param1);
                                                            loop2:
                                                            while(_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §1H§ = this;
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
      
      public static function §;@§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push((sUserProgress as §9!f§).§0!V§);
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
         §§push(§#<§ + "-");
         if(_loc1_ || §[!m§)
         {
            return §§pop() + (sUserProgress as §9!f§).§0!V§;
         }
      }
      
      public static function §2!]§(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §8!C§ = new §^x§(§6S§,(AngryBirdsFP11.sUserProgress as §9!f§).§0!V§,(AngryBirdsFP11.sUserProgress as §9!f§).userName);
            if(!_loc3_)
            {
               addr56:
               §§push(§8!C§);
               if(_loc4_)
               {
                  §§pop().§&?§(param1);
                  addr61:
                  §§push(§8!C§);
               }
               §§push(§§pop().§&1§);
               if(!_loc3_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc4_ || §[!m§)
               {
                  if(_loc2_ >= 0)
                  {
                     if(_loc4_)
                     {
                        addr79:
                        §]V§.§"!W§(_loc2_);
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
      
      private function §[]§(param1:Array) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
         }
      }
      
      private function §&!1§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§5§)
            {
            }
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §`!<§.§ !0§(§1!`§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §`!<§.§ !0§(§<7§);
         if(_loc4_)
         {
            this.§&0§(_loc2_,_loc1_,["Views","Components"],true);
         }
         return _loc1_;
      }
      
      override protected function getItemData() : XML
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §`!<§.§ !0§(§+§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(!(_loc5_ && this))
         {
            this.§&0§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §`!<§.§ !0§(§&3§);
         if(_loc3_)
         {
            this.§&0§(_loc2_,_loc1_,["Backgrounds"]);
         }
         return _loc1_;
      }
      
      protected function §<j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§2!y§)
            {
               if(_loc1_)
               {
                  if(!stage.loaderInfo.parameters.userId)
                  {
                     addr110:
                     while(true)
                     {
                        §]V§.§31§("userId");
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
                              §]V§.§31§("accessToken");
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
                                 §]V§.§31§("tokenExpiresIn");
                                 loop4:
                                 while(_loc1_)
                                 {
                                    while(true)
                                    {
                                       §3q§.load(stage.loaderInfo.parameters.userId,stage.loaderInfo.parameters.accessToken,stage.loaderInfo.parameters.tokenExpiresIn);
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
            if(!(_loc4_ && _loc2_))
            {
               this.§@!f§ = stage.loaderInfo.parameters.levelId;
               if(!_loc4_)
               {
                  §@!C§.addEventListener(Event.INIT,this.§=N§);
                  addr73:
                  loop4:
                  while(true)
                  {
                     addr57:
                     while(true)
                     {
                        §@!C§.addEventListener(Event.COMPLETE,this.§]u§);
                        addr64:
                        while(!_loc5_)
                        {
                           continue loop4;
                        }
                        continue loop4;
                     }
                  }
                  addr73:
               }
               §§goto(addr73);
            }
            while(true)
            {
               this.§<j§();
               if(_loc5_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr57);
               }
               §§goto(addr64);
            }
            var _loc1_:Boolean = true;
            try
            {
               _loc2_ = SharedObject.getLocal(§#<§);
               if(_loc5_ || this)
               {
                  if(_loc2_.data.useSounds != undefined)
                  {
                     if(_loc5_ || _loc1_)
                     {
                        §§pop();
                        if(_loc5_ || this)
                        {
                           addr108:
                           §§pop();
                           if(!_loc4_)
                           {
                              addr149:
                              _loc1_ = _loc2_.data.useSounds;
                              if(_loc4_ && _loc2_)
                              {
                              }
                              return;
                              addr216:
                           }
                           addr132:
                        }
                        addr178:
                        §0S§(_loc1_);
                        if(!(_loc4_ && this))
                        {
                           §1?§.addCallback("giftsSentToUsers",this.§[]§);
                           do
                           {
                              §1?§.addCallback("onUrl",this.§&!1§);
                           }
                           while(!(_loc5_ || this));
                           
                           §§goto(addr216);
                           addr198:
                        }
                        §§goto(addr216);
                     }
                     §§goto(addr149);
                  }
                  else
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        if(false)
                        {
                           §§goto(addr108);
                        }
                        else
                        {
                           _loc2_.data.useSounds = true;
                           if(!(_loc4_ && this))
                           {
                              §§goto(addr149);
                           }
                        }
                     }
                  }
                  §§goto(addr198);
               }
               §§goto(addr132);
            }
            catch(e:Error)
            {
               §§goto(addr178);
            }
            §§goto(addr149);
         }
         §§goto(addr73);
      }
      
      protected function §@!9§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-!F§ = new §&E§(§8!C§,§6S§,(sUserProgress as §9!f§).§0!V§);
            if(!_loc3_)
            {
               this.§#!U§.addChild(this.§-!F§);
               if(_loc2_ || _loc1_)
               {
                  §§push(this.§-!F§);
                  if(_loc2_ || _loc1_)
                  {
                     §§pop().height = stage.stageHeight;
                     if(!_loc3_)
                     {
                        §§push(this.§-!F§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§pop().x = stage.stageWidth - 180;
                           if(!_loc3_)
                           {
                              §§push(this.§-!F§);
                              while(true)
                              {
                                 §§push(§[0§.§3n§);
                                 loop1:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§>!r§);
                                    addr273:
                                    loop19:
                                    while(true)
                                    {
                                       §§push(this.§-!F§);
                                       addr260:
                                       while(true)
                                       {
                                          §§push(§[0§.§1!e§);
                                          addr262:
                                          while(true)
                                          {
                                             §§pop().addEventListener(§§pop(),this.§!,§);
                                             addr265:
                                             loop18:
                                             while(true)
                                             {
                                                §§push(this.§-!F§);
                                                addr251:
                                                while(true)
                                                {
                                                   §§push(§[0§.§&d§);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§pop().addEventListener(§§pop(),this.§#!f§);
                                                      addr256:
                                                      while(true)
                                                      {
                                                         §§push(this.§-!F§);
                                                         addr225:
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(§[0§.§@=§);
                                                            addr227:
                                                            addr244:
                                                            addr247:
                                                            while(!(_loc2_ || this))
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§pop().addEventListener(§§pop(),this.§?!q§);
                                                            while(true)
                                                            {
                                                               §§push(this.§-!F§);
                                                               addr200:
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(§[0§.§0&§);
                                                                  addr202:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        §§pop().addEventListener(§§pop(),this.§]!q§);
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ && _loc3_)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§-!F§);
                                                                              addr185:
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 §§push(§[0§.§1!=§);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       break loop6;
                                                                                    }
                                                                                    continue loop7;
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                              §§pop().addEventListener(§§pop(),this.§-N§);
                                                                           }
                                                                        }
                                                                        addr212:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr227);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr244);
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
                              addr268:
                           }
                           loop2:
                           while(true)
                           {
                              §§push(this.§-!F§);
                              loop3:
                              for(; _loc2_ || this; §§push(this.§-!F§),if(!(_loc2_ || this))
                              {
                                 continue;
                              },if(_loc2_)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(_loc2_)
                                    {
                                       §§pop().§'=§();
                                       if(!_loc2_)
                                       {
                                          §§goto(addr174);
                                       }
                                       if(_loc3_ && this)
                                       {
                                          continue loop2;
                                       }
                                       if(!(_loc3_ && this))
                                       {
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             break loop2;
                                          }
                                          §§goto(addr256);
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr268);
                                 }
                                 §§goto(addr251);
                              },§§goto(addr185))
                              {
                                 §§push(§[0§.PLAY_LEVEL);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          §§pop().addEventListener(§§pop(),this.§2A§);
                                          while(!(_loc3_ && this))
                                          {
                                             continue loop3;
                                          }
                                          §§goto(addr247);
                                          addr174:
                                       }
                                       §§goto(addr262);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr260);
                           }
                           return;
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr256);
                  }
                  §§goto(addr225);
               }
               §§goto(addr265);
            }
            §§goto(addr273);
         }
         §§goto(addr221);
      }
      
      protected function §=N§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §%t§.§!!T§(false);
         }
      }
      
      protected function §]u§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §%t§.§!!T§(true);
         }
      }
      
      public function § _§(param1:String, param2:§>t§ = null, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§-!F§);
            if(!_loc4_)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     addr37:
                     §§push(LevelManager.§,m§(param1).name);
                     if(!(_loc4_ && this))
                     {
                        addr49:
                        §§push(§§pop());
                     }
                     §§goto(addr49);
                  }
                  else
                  {
                     §§push("");
                  }
                  §§pop().§5Q§(§§pop(),param1,param2,param3);
                  §§goto(addr55);
               }
               §§goto(addr49);
            }
            §§goto(addr37);
         }
         addr55:
      }
      
      public function § P§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-!F§.§,W§(param1);
         }
      }
      
      override protected function initLevelMain() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §4!]§.§8C§ = new §"D§(stage);
         }
      }
      
      override protected function initUserProgress() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            sUserProgress = new §9!f§(§6S§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §?!-§(new § L§(false));
            while(true)
            {
               §?!-§(new §#D§(false));
               loop7:
               while(_loc2_ || _loc2_)
               {
                  §?!-§(new §#!H§(false));
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop7;
                  }
                  while(true)
                  {
                     §?!-§(new §^!p§(false));
                     §§goto(addr83);
                  }
               }
            }
         }
         §§goto(addr144);
      }
      
      override protected function initStateLoad() : §5T§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(!§2!y§)
            {
               if(_loc1_ || _loc1_)
               {
                  addr32:
                  if(!stage.loaderInfo.parameters.assetsUrl)
                  {
                     if(!_loc2_)
                     {
                        §]V§.§31§("assetsUrl");
                        if(_loc2_)
                        {
                        }
                        return new §=x§(true,§5T§.§3F§,getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
                        addr69:
                     }
                  }
                  if(stage.loaderInfo.parameters.buildNumber)
                  {
                  }
               }
            }
            §§goto(addr69);
         }
         §§goto(addr32);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = null;
         if(_loc4_)
         {
            §@!&§ = true;
            if(_loc4_ || param1)
            {
               §§push(this.§@!f§);
               if(_loc4_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && this))
                     {
                        §§push(LevelManager.§%e§(this.§@!f§));
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              addr67:
                              _loc2_ = §§pop();
                              if(!(_loc5_ && param1))
                              {
                                 addr86:
                                 if(_loc2_ != this.§@!f§)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §]V§.§3^§(this.§@!f§);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          addr107:
                                          this.§@!f§ = null;
                                          if(!(_loc5_ && param1))
                                          {
                                             if(!AngryBirdsFP11.sUserProgress.isLevelOpen(_loc2_))
                                             {
                                                loop0:
                                                while(true)
                                                {
                                                   addr128:
                                                   while(true)
                                                   {
                                                      § !,§(§?U§.§3F§);
                                                      if(!(_loc4_ || this))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc4_ || _loc3_))
                                                         {
                                                            this.§,!b§(_loc2_);
                                                            break;
                                                         }
                                                         addr167:
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr170);
                                                }
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr161);
                                       }
                                       return;
                                    }
                                    §§goto(addr170);
                                 }
                              }
                              §§goto(addr107);
                           }
                        }
                        §§goto(addr86);
                     }
                     addr170:
                     return;
                  }
                  §§goto(addr128);
               }
               §§goto(addr67);
            }
            §§goto(addr167);
         }
         §§goto(addr161);
      }
      
      public function §,!b§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(LevelManager.§%e§(param1));
            if(_loc4_)
            {
               var _loc2_:*;
               §§push(_loc2_ = §§pop());
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     param1 = §§pop();
                     §§push(_loc2_);
                  }
               }
            }
            §§pop();
            if(!(_loc3_ && param1))
            {
               LevelManager.§9!d§(param1);
               do
               {
                  § !,§(StateCutScene.§3F§);
               }
               while(!_loc4_);
               
               addr88:
            }
            return;
         }
         §§goto(addr88);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.setFirstGameState();
            if(_loc2_ || this)
            {
               §%!l§.§9!o§ = new §=o§();
               if(_loc2_ || _loc1_)
               {
                  §%!l§.§9!o§.§<r§();
                  loop0:
                  while(true)
                  {
                     this.§@!9§();
                     while((sUserProgress as §9!f§).hasTutorialBeenSeen(§9!f§.§!=§) == false)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           (sUserProgress as §9!f§).saveTutorialSeen(§9!f§.§!=§);
                        }
                        if(!_loc3_)
                        {
                           addr94:
                           break;
                        }
                     }
                     return;
                  }
                  addr53:
               }
            }
            §§goto(addr94);
         }
         §§goto(addr53);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:int = Math.round(stage.stageWidth);
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc9_ || this)
         {
            §§push(_loc2_);
            if(!(_loc8_ && param1))
            {
               §§push(20);
               if(!_loc8_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc9_)
                  {
                     §§push(§§pop());
                     if(_loc9_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           if(_loc9_)
                           {
                              §§pop();
                              if(_loc9_)
                              {
                                 §§push(_loc3_);
                                 if(!(_loc8_ && param1))
                                 {
                                    §§push(20);
                                    if(!_loc8_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc9_)
                                       {
                                          addr78:
                                          if(§§pop())
                                          {
                                             if(_loc9_ || _loc2_)
                                             {
                                                _loc2_ = §6!]§;
                                                if(_loc9_)
                                                {
                                                   _loc3_ = §#o§;
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      addr111:
                                                      §§push(_loc2_);
                                                      if(_loc9_ || this)
                                                      {
                                                         addr119:
                                                         §§push(2);
                                                         if(_loc9_)
                                                         {
                                                            addr122:
                                                            §§push(§§pop() < §§pop());
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               addr131:
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                  }
                                                                  addr154:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§goto(addr157);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr205:
                                                                        §§push(180);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr165:
                                                                     §§push(_loc2_);
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        addr184:
                                                                        if(§§pop() / _loc3_ > 25 / 12)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              _loc2_ = Math.round(_loc3_ * (25 / 12));
                                                                           }
                                                                        }
                                                                        §§goto(addr205);
                                                                     }
                                                                  }
                                                                  var _loc4_:* = §§pop();
                                                                  var _loc5_:int = 62;
                                                                  §§push(_loc2_);
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     §§push(int(§§pop() - (_loc4_ - _loc5_)));
                                                                  }
                                                                  var _loc6_:* = §§pop();
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     §4!]§.§,!0§(0,0,_loc6_,_loc3_);
                                                                     if(!(_loc8_ && _loc2_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           setViewSize(_loc6_,_loc3_);
                                                                           if(!_loc8_)
                                                                           {
                                                                              this.§6!y§(_loc2_,_loc3_);
                                                                              if(_loc9_ || _loc3_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(this.§-!F§);
                                                                                 if(_loc9_ || _loc3_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr305:
                                                                                          §§push(this.§-!F§);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             addr283:
                                                                                             §§push(_loc2_);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   §§pop().x = §§pop() - §§pop();
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr374);
                                                                                                }
                                                                                                addr307:
                                                                                                var _loc7_:* = §§pop();
                                                                                                §§pop().height = §§pop();
                                                                                                if(!(_loc8_ && param1))
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(!(_loc8_ && _loc2_))
                                                                                                   {
                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §6!]§ = _loc7_ = _loc6_;
                                                                                                            addr335:
                                                                                                            if(_loc9_ || this)
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  addr360:
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        addr366:
                                                                                                                        §#o§ = _loc7_ = _loc3_;
                                                                                                                        addr371:
                                                                                                                        §§push(_loc7_);
                                                                                                                     }
                                                                                                                     §§goto(addr374);
                                                                                                                  }
                                                                                                                  §§goto(addr373);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr371);
                                                                                                         }
                                                                                                         §§goto(addr366);
                                                                                                      }
                                                                                                      addr373:
                                                                                                      §§pop();
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                   §§goto(addr360);
                                                                                                }
                                                                                                §§goto(addr366);
                                                                                             }
                                                                                             addr306:
                                                                                             §§goto(addr307);
                                                                                             §§push(§§pop());
                                                                                          }
                                                                                          §§goto(addr306);
                                                                                          §§push(_loc3_);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr335);
                                                                                 }
                                                                                 §§goto(addr283);
                                                                              }
                                                                              §§goto(addr335);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr305);
                                                                        §§push(this.§-!F§);
                                                                     }
                                                                     addr374:
                                                                     return;
                                                                  }
                                                                  §§goto(addr366);
                                                               }
                                                               §§goto(addr154);
                                                            }
                                                            §§pop();
                                                            if(_loc9_ || param1)
                                                            {
                                                               addr142:
                                                               §§push(_loc3_);
                                                               if(_loc9_)
                                                               {
                                                                  addr145:
                                                                  §§push(2);
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     addr153:
                                                                     §§goto(addr154);
                                                                     §§push(§§pop() < §§pop());
                                                                  }
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            §§goto(addr205);
                                                         }
                                                         §§goto(addr153);
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr142);
                                             }
                                             addr157:
                                             return;
                                          }
                                          §§goto(addr111);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr154);
               }
               §§goto(addr153);
            }
            §§goto(addr145);
         }
         §§goto(addr142);
      }
      
      public function §6!y§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §7o§.setViewSize(param1,param2);
         }
      }
      
      protected function §&0§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(var _loc9_ in param3)
         {
            _loc5_ = _loc9_;
            _loc9_;
            if(_loc13_ || param1)
            {
               _loc9_ = 0;
               if(_loc13_)
               {
                  for each(var _loc11_ in param1[_loc5_].§*§)
                  {
                     _loc6_ = _loc11_;
                     _loc11_;
                     if(!_loc13_)
                     {
                        continue;
                     }
                     §§push(param4);
                     if(_loc13_)
                     {
                        if(§§pop())
                        {
                           if(_loc12_)
                           {
                              continue;
                           }
                           addr103:
                           delete param2[_loc5_][_loc6_.name()];
                           if(_loc12_ && this)
                           {
                              continue;
                           }
                        }
                        param2[_loc5_].appendChild(_loc6_);
                        continue;
                     }
                     §§goto(addr103);
                  }
               }
            }
         }
      }
      
      protected function §>!r§(param1:§[0§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §2!3§();
            do
            {
               if(param1.data == null)
               {
                  §]V§.§;Q§();
                  loop1:
                  do
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              §]V§.§6!r§();
                              addr93:
                              while(true)
                              {
                              }
                           }
                           addr91:
                        }
                        while(true)
                        {
                           §§push(§1?§);
                           §§push("flashInviteFriendsHandler");
                           if(!_loc3_)
                           {
                              §§push(param1.data);
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(!§§pop())
                                 {
                                    §§push(null);
                                    continue loop1;
                                 }
                                 addr48:
                                 §§push(param1.data);
                              }
                              §§push(§§pop().userId);
                              continue loop1;
                           }
                           §§goto(addr48);
                        }
                     }
                     §§goto(addr93);
                  }
                  while(§§pop().§>!X§(§§pop(),§§pop()), !_loc2_);
                  
                  continue;
               }
               §§goto(addr91);
            }
            while(_loc3_);
            
            return;
         }
         §§goto(addr93);
      }
      
      protected function §!,§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §catch§();
         }
      }
      
      protected function §#!f§(param1:§[0§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§pop();
            do
            {
               §"!5§.uiInteractionHandler(0,"showCredits",null);
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      protected function §?!q§(param1:§[0§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §"!5§.uiInteractionHandler(0,"showTutorial",null);
         }
      }
      
      protected function §-N§(param1:§[0§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §2!3§();
         }
         var _loc2_:int = (param1.data as §-w§).§0v§ - 1;
         if(_loc3_ || param1)
         {
            §]V§.§?!L§(_loc2_.toString());
            do
            {
               §§push(§1?§);
               §§push("flashBrag");
               §§push(param1.data.userId);
               §§push(LevelManager.§^!F§);
               §§push(LevelManager.§5!K§().writtenName + "-");
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() + §+!g§.§,!X§(LevelManager.§^!F§));
               }
               §§pop().§>!X§(§§pop(),§§pop(),§§pop(),§§pop());
            }
            while(_loc4_ && _loc3_);
            
         }
      }
      
      protected function §2A§(param1:§[0§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:String = param1.target.data.lvl;
         §§push(LevelManager.§%e§(_loc2_));
         if(!(_loc4_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc3_ != _loc2_)
            {
               while(true)
               {
                  §]V§.§3^§(_loc2_);
                  addr110:
                  while(true)
                  {
                  }
                  addr96:
                  if(!(_loc4_ && param1))
                  {
                     § !,§(StateCutScene.§3F§);
                     addr103:
                     if(!(_loc5_ || this))
                     {
                        while(_loc5_)
                        {
                           §§goto(addr96);
                           §§goto(addr103);
                        }
                        §§goto(addr110);
                        addr94:
                     }
                     return;
                  }
               }
            }
            while(AngryBirdsFP11.sUserProgress.isLevelOpen(_loc3_))
            {
               if(!(_loc4_ && _loc3_))
               {
                  while(true)
                  {
                     LevelManager.§9!d§(_loc3_);
                  }
                  addr91:
               }
               §§goto(addr94);
               §§goto(addr110);
            }
            return;
         }
         §§goto(addr91);
      }
      
      protected function §]!q§(param1:§[0§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc4_)
         {
            §§pop().§§slot[2] = null;
            loop0:
            while(true)
            {
               §§push(§§newactivation());
               if(!(_loc4_ && _loc3_))
               {
                  §§pop().§§slot[1] = param1;
                  while(true)
                  {
                     §0S§(!§`;§());
                     loop2:
                     for(; _loc5_ || _loc2_; if(!(_loc4_ && param1))
                     {
                        continue loop0;
                     })
                     {
                        if(§`;§())
                        {
                           loop3:
                           while(true)
                           {
                              if(§+!0§() == StatePlay.§3F§)
                              {
                                 continue loop2;
                              }
                              §§push(§+!0§() == §;%§.§3F§);
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop5:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr125:
                                          while(true)
                                          {
                                             addr66:
                                             while(true)
                                             {
                                                §§push(§+!0§() == §6!U§.§3F§);
                                             }
                                          }
                                       }
                                       addr124:
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ && this))
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§pop();
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            break loop9;
                                                         }
                                                         addr153:
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr202:
                                                      §§push(§§newactivation());
                                                      if(_loc5_)
                                                      {
                                                         addr205:
                                                         §§pop().§§slot[2].data.useSounds = §>!e§;
                                                         if(!_loc4_)
                                                         {
                                                            addr227:
                                                            mySO.flush();
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§pop();
                                                               break;
                                                            }
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr124);
                                                   }
                                                }
                                                addr254:
                                                return;
                                                addr237:
                                             }
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       addr44:
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                AngryBirdsFP11.playThemeMusic();
                                                if(_loc5_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                §§goto(addr237);
                                             }
                                             else
                                             {
                                                §§goto(addr125);
                                             }
                                          }
                                          §§goto(addr237);
                                       }
                                       break;
                                    }
                                 }
                                 if(_loc4_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr44);
                              }
                           }
                        }
                        try
                        {
                           §§push(§§newactivation());
                           if(!_loc4_)
                           {
                              §§pop().§§slot[2] = SharedObject.getLocal(§#<§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§goto(addr202);
                              }
                              §§goto(addr237);
                           }
                           §§goto(addr227);
                        }
                        catch(e:Error)
                        {
                           if(_loc5_)
                           {
                              §§pop();
                           }
                        }
                        §§goto(addr254);
                     }
                  }
               }
               §§goto(addr205);
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               §4!]§.§8C§.background.§4!w§();
               §§goto(addr153);
            }
         }
         §§goto(addr227);
      }
      
      override public function newUserScore(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(param1);
         §§push(this.§"#§(_loc2_,_loc3_,_loc4_));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:*;
         if(_loc5_ = §§pop())
         {
            if(!_loc6_)
            {
               (AngryBirdsFP11.sUserProgress as §9!f§).§%!§(param1,_loc5_);
            }
         }
      }
      
      private function §"#§(param1:int, param2:int, param3:int = 0, param4:Boolean = false) : int
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc7_:§-w§ = null;
         var _loc8_:int = 0;
         var _loc5_:Array = [];
         §§push(this.§9!T§.§3!U§(LevelManager.§^!F§,param1,param2,param3,_loc5_,param4));
         if(!_loc12_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         for each(var _loc11_ in _loc5_)
         {
            _loc7_ = _loc11_;
            _loc11_;
            if(!_loc12_)
            {
               _loc8_ = _loc7_.§0v§ - 1;
               if(!_loc12_)
               {
                  §]V§.§`N§(_loc8_.toString());
               }
            }
         }
         return _loc6_;
      }
      
      public function get §9!T§() : §&E§
      {
         return this.§-!F§;
      }
      
      public function get §7!6§() : §0!"§
      {
         return this.§0!+§;
      }
      
      public function §`!w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§0!+§);
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr33);
            }
            §§pop().§0!X§();
         }
         addr33:
         if(_loc1_)
         {
            §§push(this.§0!+§);
         }
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: ");
         if(!_loc2_)
         {
            §§push(§§pop() + §+[§.replace("{svn_version}","local dev build"));
            if(_loc1_)
            {
               addr36:
               §§push(§§pop() + "Server: ");
               if(_loc1_ || this)
               {
                  return §§pop() + §9n§;
               }
            }
         }
         §§goto(addr36);
      }
      
      override protected function initializeGame() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(_loc4_ || _loc3_)
         {
            §]V§.§8![§(§"[§.§4j§,_loc1_.toString(),_loc1_);
            if(!(_loc3_ && _loc1_))
            {
               this.§5§ = true;
               if(_loc4_)
               {
                  addr76:
                  super.initializeGame();
               }
               return;
            }
         }
         §§goto(addr76);
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.onKeyDown(param1);
            if(!_loc4_)
            {
               §§push(this.§`!3§);
               if(!_loc4_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        addr40:
                        this.§`!3§ = String.fromCharCode(param1.keyCode);
                        if(_loc4_ && param1)
                        {
                        }
                        this.§`!3§ = this.§`!3§.toLowerCase();
                        addr90:
                        if(_loc4_)
                        {
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr114);
                  }
                  else
                  {
                     this.§`!3§ = this.§`!3§ + String.fromCharCode(param1.keyCode);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§goto(addr90);
                     }
                  }
                  §§goto(addr90);
               }
               addr114:
               if(this.§`!3§.length > 15)
               {
                  if(_loc3_)
                  {
                     §§goto(addr119);
                  }
               }
               addr119:
               this.§`!3§ = this.§`!3§.substr(1);
               return;
            }
         }
         §§goto(addr40);
      }
      
      override public function externalPause() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §]V§.§;!a§();
         }
      }
      
      override public function externalResume() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §]V§.§2'§();
         }
      }
   }
}
