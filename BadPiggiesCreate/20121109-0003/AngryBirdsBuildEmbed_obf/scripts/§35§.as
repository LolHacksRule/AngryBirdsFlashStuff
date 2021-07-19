package
{
   import § !A§.§"!8§;
   import § !r§.§3!X§;
   import §!!8§.§-!D§;
   import §1!F§.§"![§;
   import §1!F§.§-G§;
   import §1!F§.§2!i§;
   import §1!F§.§6+§;
   import §1!F§.§>P§;
   import §1!F§.StatePlayBS;
   import §1!F§.§]>§;
   import §1!F§.§^z§;
   import §1?§.§+!§;
   import §<!<§.§=2§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import §@!i§.§#S§;
   import §@!i§.§,!F§;
   import §@!i§.§0!§;
   import §@!i§.§?!q§;
   import §@!i§.§@!n§;
   import §@!i§.StateLevelEditor;
   import §@!i§.StateLevelEditorTestPlay;
   import §@!i§.StateLevelPreview;
   import §@!i§.§[!_§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.SharedObject;
   
   public class §35§ extends AngryBirdsFP11
   {
      
      public static const VERSION:String = "0.0.1.7 ({svn_version})";
      
      public static var §9!T§:String;
      
      protected static var §`!l§:String;
      
      public static const §&d§:int = 800;
      
      public static const §6k§:int = 600;
      
      public static const §>!q§:Boolean = false;
      
      protected static var §%&§:Class;
      
      protected static var §^>§:Class;
      
      protected static var §&!_§:Class;
      
      protected static var §?N§:Class;
      
      public static var §;+§:Boolean = true;
      
      private static var §8;§:§35§ = null;
      
      public static var §7!p§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §35§))
         {
            VERSION = "0.0.1.7 ({svn_version})";
         }
         if(!(_loc2_ && §35§))
         {
            §6k§ = 600;
            §>!q§ = false;
            if(_loc1_ || _loc2_)
            {
               §%&§ = §&!B§;
               §^>§ = § A§;
               if(_loc1_)
               {
                  §&!_§ = §%!T§;
               }
               §?N§ = §4j§;
               §;+§ = true;
               if(_loc1_)
               {
                  §8;§ = null;
                  §7!p§ = false;
               }
            }
         }
      }
      
      public function §35§(param1:§"!8§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super(param1);
         }
      }
      
      public static function §]!<§() : String
      {
         return "AngryBirdsBuildSharedMemory";
      }
      
      public static function get §`!d§() : §35§
      {
         return §8;§;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         return §3!X§.§3<§(§&!_§);
      }
      
      override protected function getAssetMap() : XML
      {
         return §3!X§.§3<§(§^>§);
      }
      
      override protected function getUIData() : XML
      {
         return §3!X§.§3<§(§%&§);
      }
      
      override protected function getItemData() : XML
      {
         return §3!X§.§3<§(§?N§);
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Sprite = new §`o§();
         if(!_loc3_)
         {
            _loc1_.scaleX = §'!V§.§9r§;
            if(_loc2_ || _loc3_)
            {
               addr43:
               _loc1_.scaleY = §'!V§.§'A§;
            }
            return _loc1_;
         }
         §§goto(addr43);
      }
      
      override protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super.initialize();
            if(!_loc2_)
            {
               addr48:
               §8;§ = this;
            }
            var _loc1_:SharedObject = SharedObject.getLocal("AB_BS_settings");
            if(_loc3_)
            {
               if(_loc1_.data.soundsEnabled)
               {
                  if(!_loc2_)
                  {
                     §;z§(_loc1_.data.soundsEnabled);
                     if(_loc3_)
                     {
                        addr71:
                        §+!§.§#n§("CHANNEL_THEME",1,1);
                     }
                  }
                  return;
               }
            }
            §§goto(addr71);
         }
         §§goto(addr48);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = int(Math.round(stage.stageWidth));
         var _loc3_:* = int(Math.round(stage.stageHeight));
         if(!_loc5_)
         {
            §§push(_loc2_);
            §§push(20);
            if(!(_loc5_ && _loc2_))
            {
               §§push(§§pop() < §§pop());
               if(_loc4_)
               {
                  §§push(§§pop());
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           addr48:
                           §§pop();
                           §§push(_loc3_);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(20);
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(_loc4_ || param1)
                                 {
                                    addr73:
                                    if(§§pop())
                                    {
                                       §§push(int(§6!I§));
                                       if(_loc4_ || param1)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc4_ || param1)
                                          {
                                             §§push(int(§+m§));
                                             if(_loc4_ || _loc3_)
                                             {
                                                _loc3_ = §§pop();
                                                if(!(_loc5_ && this))
                                                {
                                                   addr118:
                                                   §§push(_loc2_);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr126:
                                                      §§push(2);
                                                      if(_loc4_)
                                                      {
                                                         addr129:
                                                         §§push(§§pop() < §§pop());
                                                         if(_loc4_ || param1)
                                                         {
                                                            addr137:
                                                            if(!§§pop())
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  §§pop();
                                                                  §§push(_loc3_);
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     addr155:
                                                                     §§push(2);
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr159:
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           §§goto(addr186);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc2_);
                                                                        }
                                                                        §§goto(addr186);
                                                                     }
                                                                     §§goto(addr165);
                                                                  }
                                                                  addr165:
                                                                  if(§§pop() / §§pop() > 25 / 12)
                                                                  {
                                                                  }
                                                                  §'!V§.§>!T§(0,0,_loc2_,_loc3_);
                                                                  addr186:
                                                                  setViewSize(_loc2_,_loc3_);
                                                                  §7j§.§else§.setCanvasSize(_loc2_,_loc3_);
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     §6!I§ = _loc2_;
                                                                     §§goto(addr205);
                                                                  }
                                                                  addr205:
                                                                  §+m§ = _loc3_;
                                                                  return;
                                                                  §§push(_loc3_);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr155);
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr126);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr126);
                        }
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr137);
               }
               §§goto(addr48);
            }
            §§goto(addr129);
         }
         §§goto(addr186);
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-!D§.init(§;!!§.§ !<§("callbackObject"));
            §'!V§.§'!s§.visible = false;
            if(_loc1_)
            {
               § Y§(new §^z§(false));
               § Y§(new §-G§(false));
               § Y§(new §]>§(false));
               § Y§(new StateLevelEditor(false));
               § Y§(new §@!n§(false));
               if(!_loc2_)
               {
                  § Y§(new StateLevelEditorTestPlay(false));
                  if(_loc1_ || _loc2_)
                  {
                     § Y§(new §#S§(false));
                     if(!_loc2_)
                     {
                        § Y§(new §0!§(false));
                        § Y§(new StatePlayBS(false));
                        if(_loc1_ || _loc1_)
                        {
                           § Y§(new §>P§(false));
                        }
                        § Y§(new §"![§(false));
                        if(!(_loc2_ && _loc2_))
                        {
                           § Y§(new §2!i§(false));
                           § Y§(new §[!_§(false));
                           if(!(_loc2_ && _loc1_))
                           {
                              addr136:
                              § Y§(new §,!F§(false));
                              if(_loc1_ || this)
                              {
                                 §§goto(addr148);
                              }
                              §§goto(addr162);
                           }
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr136);
               }
               §§goto(addr162);
            }
            addr148:
            § Y§(new §?!q§(false));
            if(_loc1_)
            {
               addr155:
               § Y§(new StateLevelPreview(false));
               if(_loc1_)
               {
                  addr162:
                  § Y§(new §6+§(false));
               }
               §§push(stage.stageWidth == screenWidth);
               if(!_loc2_)
               {
                  §§push(!§§pop());
                  if(_loc1_)
                  {
                     addr186:
                     if(!§§pop())
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           §§push(stage.stageHeight == screenHeight);
                           if(_loc2_ && _loc2_)
                           {
                           }
                           §§goto(addr203);
                        }
                        §§push(!§§pop());
                     }
                  }
                  addr203:
                  if(§§pop())
                  {
                     addr204:
                     this.onStageResize(null);
                  }
                  §§goto(addr207);
               }
               §§goto(addr186);
            }
            addr207:
            return;
         }
         §§goto(addr204);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.setFirstGameState();
            if(_loc2_ || this)
            {
               addr43:
               §8!W§(§6+§.STATE_NAME);
               if(_loc2_ || _loc1_)
               {
                  §7!p§ = true;
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §'!V§.§1!2§ = new §=2§(stage);
         }
      }
      
      override public function getAppWidth() : Number
      {
         return §&d§;
      }
      
      override public function getAppHeight() : Number
      {
         return §6k§;
      }
   }
}
