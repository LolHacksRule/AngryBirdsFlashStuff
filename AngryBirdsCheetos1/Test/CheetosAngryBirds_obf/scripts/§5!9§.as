package
{
   import §!V§.§<!g§;
   import §!V§.§>d§;
   import §!r§.§3!!§;
   import §"§.§%!$§;
   import §"§.§;!?§;
   import §-!Q§.§,!7§;
   import §09§.§ $§;
   import §1!E§.§`!8§;
   import §31§.§^!K§;
   import §3@§.§>#§;
   import §5G§.§'!9§;
   import §5G§.§1!F§;
   import §5G§.§39§;
   import §5G§.§9!$§;
   import §5G§.§;!8§;
   import §5G§.§@t§;
   import §5G§.StateConnecting;
   import §5G§.StateCutSceneDynamic;
   import §5G§.StatePlay;
   import §5G§.include;
   import §6N§.§1!9§;
   import §;!]§.§`!V§;
   import §=!g§.§!!@§;
   import §>^§.§!6§;
   import §>^§.§7]§;
   import §[h§.§0!0§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.net.SharedObject;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import §throw§.§3W§;
   
   public class §5!9§ extends §3W§
   {
      
      public static const VERSION:String = "(r106595)";
      
      public static const §?!L§:int = 750;
      
      public static const §"r§:int = 500;
      
      public static const §1!#§:Boolean = false;
      
      public static const §9]§:int = 3000;
      
      public static const §#w§:String = "https://head-dot-angrybirds-cheetos-test.appspot.com/";
      
      public static var §<V§:String;
      
      public static var §0!R§:String = "https://head-dot-angrybirds-cheetos-test.appspot.com/";
      
      public static var §^1§:String = "levelstart";
      
      public static var §+X§:String = "useItem";
      
      public static var §%8§:String = "levelcomplete";
      
      public static var §]q§:String = "refreshsession";
      
      private static var §^!h§:Class;
      
      private static var §?!J§:Class;
      
      private static var §5!5§:Class;
      
      private static var §-!E§:Class;
      
      public static var §#%§:§`!8§ = null;
      
      public static var §[!C§:Boolean = true;
      
      public static var §'W§:MovieClip = null;
      
      public static var §-!O§:§5!9§ = null;
      
      public static var §6<§:Sprite = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            VERSION = "(r106595)";
            loop0:
            while(true)
            {
               §?!L§ = 750;
               loop1:
               while(true)
               {
                  §"r§ = 500;
                  loop2:
                  while(!_loc1_)
                  {
                     §1!#§ = false;
                     loop3:
                     while(true)
                     {
                        §9]§ = 3000;
                        loop4:
                        while(true)
                        {
                           §#w§ = "https://head-dot-angrybirds-cheetos-test.appspot.com/";
                           continue loop3;
                           addr75:
                           if(!(_loc2_ || §5!9§))
                           {
                              continue;
                           }
                           §6<§ = null;
                           addr82:
                           if(_loc2_ || _loc1_)
                           {
                              addr40:
                              if(!(_loc1_ && _loc1_))
                              {
                                 addr47:
                                 if(_loc2_ || §5!9§)
                                 {
                                    addr54:
                                    if(_loc1_ && §5!9§)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          if(!_loc1_)
                                          {
                                             §^!h§ = §^i§;
                                             loop12:
                                             while(true)
                                             {
                                                §?!J§ = §<!f§;
                                                loop13:
                                                while(!_loc1_)
                                                {
                                                   §5!5§ = §?3§;
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                            addr110:
                                                         }
                                                         §-!E§ = §>t§;
                                                         while(!_loc1_)
                                                         {
                                                            §#%§ = null;
                                                            loop16:
                                                            while(_loc2_)
                                                            {
                                                               §[!C§ = true;
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(_loc1_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §'W§ = null;
                                                                  while(!_loc1_)
                                                                  {
                                                                     §-!O§ = null;
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc1_ && _loc2_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           §§goto(addr75);
                                                                           continue loop16;
                                                                        }
                                                                        continue loop17;
                                                                        §§goto(addr82);
                                                                     }
                                                                     continue loop4;
                                                                     §§goto(addr40);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §]q§ = "refreshsession";
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop14;
                                                            §§goto(addr47);
                                                         }
                                                         continue loop12;
                                                      }
                                                      addr165:
                                                      while(!(_loc1_ && _loc2_))
                                                      {
                                                         §%8§ = "levelcomplete";
                                                         §§goto(addr160);
                                                         continue loop14;
                                                      }
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      §0!R§ = "https://head-dot-angrybirds-cheetos-test.appspot.com/";
                                                      addr182:
                                                      while(_loc2_)
                                                      {
                                                         §^1§ = "levelstart";
                                                         break loop13;
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §+X§ = "useItem";
                                                   §§goto(addr165);
                                                }
                                             }
                                          }
                                          §§goto(addr182);
                                       }
                                    }
                                    return;
                                    addr61:
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr66);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr61);
      }
      
      private var §2W§:§1!9§;
      
      private var mRememberMeToggled_Credit:Boolean = false;
      
      private var mRememberMeToggled_CreditCheetosBag:Boolean = false;
      
      private var §^!b§:SharedObject;
      
      private var callObject:Object;
      
      private var §;!a§:§0!0§;
      
      private var §8!G§:Boolean;
      
      private var §0Z§:Boolean;
      
      public function §5!9§(param1:CheetosAngryBirdsCanvas)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var canvas:CheetosAngryBirdsCanvas = param1;
         while(true)
         {
            this.§2W§ = new §1!9§();
            loop1:
            for(; _loc4_; if(_loc5_ && param1)
            {
               continue;
            },if(false)
            {
               §§goto(addr42);
            },try
            {
               this.§^!b§ = SharedObject.getLocal("popupData");
               if(_loc4_ || param1)
               {
                  if(this.§^!b§)
                  {
                     if(!_loc5_)
                     {
                        this.§^!b§.data.mRememberMeToggled_Credit = this.§8!&§;
                        if(_loc4_)
                        {
                           this.§^!b§.data.mRememberMeToggled_CreditCheetosBag = this.§+!1§;
                           if(_loc4_ || param1)
                           {
                              addr118:
                              this.§;!a§ = new §0!0§();
                              if(_loc4_ || this)
                              {
                                 §'9§ = §?!L§;
                                 §#!1§ = §"r§;
                                 var loadingScreen:LoadingScreen = new LoadingScreen();
                                 super(canvas,loadingScreen,§7]§.§#!I§(§^!h§),§7]§.§#!I§(§?!J§));
                                 §^!K§.§'I§.init(§>#§.§`g§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§2W§,this.§%!Z§);
                                 stage.scaleMode = StageScaleMode.NO_SCALE;
                                 stage.align = StageAlign.TOP_LEFT;
                                 §@!Z§.init(this,§?!L§,§"r§);
                                 §@!Z§.§;!,§ = new § $§(stage);
                                 §@!Z§.§+!-§.visible = §1!#§;
                                 §4y§(new §'!9§(false));
                                 §4y§(new §39§(false));
                                 §4y§(new StatePlay(false));
                                 §4y§(new §@t§(false));
                                 addr576:
                                 addr511:
                                 addr479:
                                 addr505:
                                 addr499:
                                 addr492:
                                 addr472:
                                 addr580:
                                 addr554:
                                 addr485:
                                 addr571:
                                 addr465:
                                 if(_loc4_)
                                 {
                                    §4y§(new §1!F§(false));
                                    §4y§(new §;!8§(false));
                                    §4y§(new StateCutSceneDynamic(false));
                                    §4y§(new §9!$§(false));
                                    addr414:
                                    addr449:
                                    addr442:
                                    if(_loc4_ || param1)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §4y§(new StateConnecting(false));
                                          addr400:
                                          if(_loc4_ || _loc3_)
                                          {
                                             §!!@§.addCallback("refreshSession",§39§(§5!9§.§-!O§.§0!+§(§39§.§3!?§)).refreshSession);
                                             addr386:
                                             if(_loc4_ || _loc2_)
                                             {
                                                §!!@§.addCallback("pauseGame",this.§;3§);
                                                addr356:
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         §!!@§.addCallback("resumeGame",this.§?a§);
                                                         addr345:
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §!6§.§7K§(§#Z§);
                                                               addr336:
                                                               if(!_loc5_)
                                                               {
                                                                  §!6§.§+F§(true);
                                                                  stage.showDefaultContextMenu = false;
                                                                  addr317:
                                                                  addr331:
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        §+#§(true);
                                                                        addr310:
                                                                        if(_loc4_)
                                                                        {
                                                                           §,!7§.§<!-§("CHANNEL_THEME",1,1);
                                                                           addr291:
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 §,!7§.§<!-§("CHANNEL_AMBIENT",1,1);
                                                                                 §#%§ = new §`!8§("");
                                                                                 addr260:
                                                                                 addr284:
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    stage.addEventListener(Event.RESIZE,this.§6!7§);
                                                                                    addr244:
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§73§);
                                                                                          addr225:
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§push(stage.stageWidth == §?!L§);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(!§§pop());
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr214:
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            addr216:
                                                                                                            §§pop();
                                                                                                            §§push(stage.stageHeight == §"r§);
                                                                                                            if(!(_loc5_ && this))
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr172:
                                                                                                                  §§push(!§§pop());
                                                                                                               }
                                                                                                               §§goto(addr216);
                                                                                                            }
                                                                                                            addr217:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr174:
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     this.§6!7§(null);
                                                                                                                     addr181:
                                                                                                                     if(!(_loc5_ && this))
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 if(_loc4_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       addr134:
                                                                                                                                       this.§8!G§ = false;
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          if(_loc4_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc4_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr317);
                                                                                                                                                }
                                                                                                                                                return;
                                                                                                                                             }
                                                                                                                                             §§goto(addr217);
                                                                                                                                          }
                                                                                                                                          §§goto(addr174);
                                                                                                                                       }
                                                                                                                                       §§goto(addr181);
                                                                                                                                    }
                                                                                                                                    §§goto(addr576);
                                                                                                                                 }
                                                                                                                                 §§goto(addr511);
                                                                                                                              }
                                                                                                                              §§goto(addr479);
                                                                                                                           }
                                                                                                                           §§goto(addr260);
                                                                                                                        }
                                                                                                                        §§goto(addr244);
                                                                                                                     }
                                                                                                                     §§goto(addr225);
                                                                                                                  }
                                                                                                                  §§goto(addr414);
                                                                                                               }
                                                                                                               §§goto(addr331);
                                                                                                            }
                                                                                                            §§goto(addr134);
                                                                                                         }
                                                                                                         §§goto(addr172);
                                                                                                      }
                                                                                                      §§goto(addr216);
                                                                                                   }
                                                                                                   §§goto(addr214);
                                                                                                }
                                                                                                §§goto(addr505);
                                                                                             }
                                                                                             §§goto(addr576);
                                                                                          }
                                                                                          §§goto(addr284);
                                                                                       }
                                                                                       §§goto(addr499);
                                                                                    }
                                                                                    §§goto(addr310);
                                                                                    addr267:
                                                                                 }
                                                                                 §§goto(addr291);
                                                                              }
                                                                              §§goto(addr386);
                                                                           }
                                                                           §§goto(addr336);
                                                                        }
                                                                        §§goto(addr492);
                                                                     }
                                                                     §§goto(addr356);
                                                                  }
                                                                  §§goto(addr345);
                                                               }
                                                               §§goto(addr472);
                                                            }
                                                            §§goto(addr580);
                                                         }
                                                         §§goto(addr449);
                                                      }
                                                      §§goto(addr554);
                                                   }
                                                   §§goto(addr442);
                                                }
                                                §§goto(addr400);
                                             }
                                             §§goto(addr485);
                                          }
                                          §§goto(addr571);
                                       }
                                       §§goto(addr465);
                                    }
                                    addr435:
                                    §§goto(addr435);
                                 }
                                 addr540:
                                 §§goto(addr540);
                              }
                              §§goto(addr414);
                              addr104:
                           }
                           §§goto(addr576);
                        }
                        §§goto(addr267);
                     }
                     §§goto(addr576);
                  }
                  §§goto(addr104);
               }
               §§goto(addr576);
            }
            catch(e:*)
            {
               var _loc3_:* = e;
            },§§goto(addr118))
            {
               §-!O§ = this;
               loop2:
               while(true)
               {
                  addr42:
                  while(true)
                  {
                     §<!g§.enabled = true;
                     while(!_loc5_)
                     {
                        §>d§.§@Y§(§<!g§.§8Q§);
                        if(_loc4_ || _loc2_)
                        {
                           continue loop1;
                        }
                     }
                     continue loop2;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      public static function §+#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §5!9§)
         {
            §[!C§ = param1;
         }
         do
         {
            §,!7§.§!!A§(§[!C§);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public static function §!t§() : Boolean
      {
         return §[!C§;
      }
      
      public static function §3!K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§,!7§.§-!§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr89:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc1_)
                        {
                           §,!7§.playSound("ThemeMusic","Channel_Theme",100);
                        }
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop0;
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
            addr87:
         }
         while(true)
         {
            §§push(§,!7§.§-!§("Channel_Theme"));
            if(_loc1_ || §5!9§)
            {
               §§push(§§pop().§`!N§());
               if(_loc1_)
               {
                  §§push(!§§pop());
               }
               if(!_loc1_)
               {
                  continue;
               }
               if(_loc2_ && §5!9§)
               {
                  §§goto(addr89);
               }
               §§goto(addr62);
            }
            else
            {
               §§goto(addr87);
            }
         }
      }
      
      public static function §2z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§,!7§.§-!§("Channel_Theme"));
            if(_loc1_ || §5!9§)
            {
               if(!§§pop())
               {
               }
               §§goto(addr60);
            }
            §§pop().§13§();
         }
         addr60:
         if(_loc1_)
         {
            §§push(§,!7§.§-!§("Channel_Theme"));
         }
      }
      
      private function §;3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this);
            if(_loc2_ || _loc2_)
            {
               §§push(this.§8!G§);
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     addr82:
                     §§push(this.§0Z§);
                     if(!_loc1_)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc2_)
                        {
                           addr104:
                           §§push(Boolean(§§pop()));
                        }
                     }
                  }
                  else
                  {
                     §§push(§!t§());
                     if(_loc2_)
                     {
                        §§goto(addr104);
                     }
                  }
                  §§pop().§0Z§ = §§pop();
                  do
                  {
                     §+#§(false);
                     do
                     {
                        this.§8!G§ = true;
                        do
                        {
                           §@!Z§.§@0§();
                        }
                        while(!(_loc2_ || _loc2_));
                        
                     }
                     while(_loc1_ && this);
                     
                  }
                  while(_loc1_ && _loc1_);
                  
                  return;
                  addr58:
               }
               §§goto(addr104);
            }
            §§goto(addr82);
         }
         §§goto(addr58);
      }
      
      private function §?a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§0Z§)
            {
               if(!_loc2_)
               {
                  §+#§(true);
                  addr64:
                  while(true)
                  {
                  }
                  addr64:
               }
               §§goto(addr64);
            }
            while(true)
            {
               this.§8!G§ = false;
               while(_loc1_)
               {
                  §@!Z§.§,R§();
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               §§goto(addr64);
            }
         }
         §§goto(addr64);
      }
      
      override protected function initStateLoad() : §;!?§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(include));
         §§push(true);
         §§push(§;!?§.§3!?§);
         §§push(this.getMinLoadingScreenTime());
         if(!(_loc1_ && _loc2_))
         {
            §§push(stage.loaderInfo.parameters.assetsUrl);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop());
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr58:
                        §§pop();
                        addr60:
                        §§push("");
                        §§push(stage.loaderInfo.parameters.buildNumber);
                        if(!_loc1_)
                        {
                           return new §§pop().include(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                        }
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr60);
               }
               §§goto(addr79);
            }
         }
         §§goto(addr58);
      }
      
      public function get §8!&§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§^!b§)
            {
               if(!(_loc1_ && this))
               {
                  return this.§^!b§.data.mRememberMeToggled_Credit;
               }
            }
         }
         return false;
      }
      
      public function set §8!&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§^!b§)
            {
               if(_loc2_)
               {
                  this.§^!b§.data.mRememberMeToggled_Credit = param1;
               }
               do
               {
                  this.§^!b§.flush();
               }
               while(!(_loc2_ || param1));
               
               addr49:
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function get §+!1§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§^!b§)
            {
               if(_loc1_ || _loc1_)
               {
                  return this.§^!b§.data.mRememberMeToggled_CreditCheetosBag;
               }
            }
         }
         return false;
      }
      
      public function set §+!1§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§^!b§)
            {
               if(!_loc2_)
               {
                  this.§^!b§.data.mRememberMeToggled_CreditCheetosBag = param1;
               }
               do
               {
                  this.§^!b§.flush();
               }
               while(_loc2_);
               
               addr45:
            }
            return;
         }
         §§goto(addr45);
      }
      
      protected function §%!Z§(param1:ByteArray) : void
      {
      }
      
      private function §6!7§(param1:Event) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         §§push(stage.stageWidth / §?!L§);
         if(_loc8_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(stage.stageHeight / §"r§);
         if(!(_loc7_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc8_ || _loc2_)
         {
            §§push(_loc2_);
            if(_loc8_ || this)
            {
               if(§§pop() < _loc3_)
               {
                  if(!(_loc7_ && param1))
                  {
                     §#Z§.scaleX = §#Z§.scaleY = _loc2_;
                     if(!_loc7_)
                     {
                        addr92:
                        §@!Z§.§"u§(§#Z§.x,§#Z§.y,stage.stageWidth,stage.stageWidth * (§"r§ / §?!L§));
                        if(_loc8_)
                        {
                           §§goto(addr122);
                        }
                     }
                     §§push(stage.stageHeight * (§?!L§ / §"r§));
                     if(_loc8_)
                     {
                        addr175:
                        §§push(Number(§§pop()));
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        addr177:
                        loop2:
                        while(true)
                        {
                           §§push(Number(stage.stageHeight));
                           if(!(_loc7_ && this))
                           {
                              _loc5_ = §§pop();
                              while(true)
                              {
                                 §@!Z§.§"u§(§#Z§.x,§#Z§.y,_loc4_,_loc5_);
                                 if(!_loc7_)
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           continue;
                           addr122:
                           return;
                        }
                     }
                     addr120:
                  }
                  §§goto(addr156);
               }
               else
               {
                  §#Z§.scaleX = §#Z§.scaleY = _loc3_;
                  if(!_loc7_)
                  {
                     §§goto(addr120);
                  }
               }
               §§goto(addr177);
            }
            §§goto(addr175);
         }
         §§goto(addr92);
      }
      
      protected function §73§(param1:FullScreenEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§6!7§(null);
         }
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.setFirstGameState();
            while(true)
            {
               §^!K§.§'I§.§,!_§();
               addr68:
               if(!(_loc1_ && _loc2_))
               {
                  this.§=p§();
                  do
                  {
                     §!!@§.§%Q§("flashIsReady");
                  }
                  while(!_loc2_);
                  
                  addr85:
                  if(_loc1_)
                  {
                     while(!(_loc1_ && _loc2_))
                     {
                        §§goto(addr68);
                        §§goto(addr85);
                     }
                     while(true)
                     {
                        §@;§.§<U§(§`!V§.§>X§(this.§2W§.getFileAsString("Chapters.json")));
                        §§goto(addr61);
                     }
                     addr61:
                     addr90:
                  }
                  return;
               }
            }
         }
         §§goto(addr90);
      }
      
      private function §=p§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(!_loc3_)
         {
            §>d§.§@Y§(§<!g§.§0B§,_loc1_.toString(),_loc1_);
            do
            {
               §@!Z§.§'y§(§7]§.§#!I§(§5!5§),§7]§.§#!I§(§-!E§));
               do
               {
                  §@!Z§.§9S§(this.§2W§.§]A§,§3!!§.§=[§(),this.§7d§);
               }
               while(!(_loc2_ || this));
               
            }
            while(!_loc2_);
            
         }
      }
      
      private function §7d§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §'A§(StateConnecting.§3!?§);
         }
         do
         {
            this.§%B§();
         }
         while(_loc3_ && this);
         
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc4_ || _loc3_)
         {
            §§push(§@!Z§.§+!-§);
            if(!_loc5_)
            {
               if(§§pop() != null)
               {
                  addr42:
                  if(!(_loc5_ && this))
                  {
                     §§push(§@!Z§.§+!-§);
                  }
                  §§push(super.updateState(param1));
                  if(_loc4_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_ || this)
                  {
                     if(!§!!%§().isGenericState())
                     {
                        loop0:
                        while(true)
                        {
                           §§push(_loc2_);
                           addr107:
                           while(true)
                           {
                              if(§§pop() == §%!$§.STATE_STATUS_COMPLETED)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§!6§);
                                    §§push("AngryBirdSocial::run() state change is about to start. Old State = " + §!!%§().mName);
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(§§pop() + " New State = ");
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(§§pop() + §!!%§().mNextState);
                                       }
                                    }
                                    §§pop().log(§§pop());
                                    addr147:
                                    while(true)
                                    {
                                       §'A§(§!!%§().mNextState);
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           break;
                        }
                        §§goto(addr107);
                     }
                     return §§pop();
                  }
                  §§goto(addr147);
               }
               §§goto(addr42);
            }
            §§pop().update(param1);
         }
         §§goto(addr42);
      }
      
      override public function getAppWidth() : Number
      {
         return §?!L§;
      }
      
      override public function getAppHeight() : Number
      {
         return §"r§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §9]§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         if(_loc4_ || _loc2_)
         {
            if(stage != null)
            {
               loop0:
               while(true)
               {
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  addr222:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr223:
                     while(true)
                     {
                        §§push(_loc1_);
                        addr183:
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() == null);
                           if(!(_loc3_ && this))
                           {
                              §§push(!§§pop());
                              if(_loc4_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          §§push(_loc1_);
                                          if(_loc3_ && this)
                                          {
                                             break;
                                          }
                                          if(_loc4_)
                                          {
                                             §§push(§§pop().length > 0);
                                             if(_loc4_)
                                             {
                                                while(§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§push(_loc1_);
                                                      break loop8;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop0;
                                                }
                                                addr30:
                                                §§push(VERSION);
                                                if(!_loc3_)
                                                {
                                                   return §§pop().replace("{svn_version}","local dev build");
                                                }
                                                addr79:
                                                return §§pop();
                                                addr162:
                                             }
                                             continue loop9;
                                          }
                                          continue loop3;
                                       }
                                       addr167:
                                       while(true)
                                       {
                                          §§push(int(§§pop().indexOf(".")));
                                          addr170:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             §§goto(addr171);
                                          }
                                       }
                                    }
                                    addr202:
                                 }
                                 §§goto(addr162);
                              }
                           }
                           §§goto(addr202);
                        }
                     }
                  }
               }
            }
            §§goto(addr30);
         }
         §§goto(addr180);
      }
      
      public function §51§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§%!$§ = §!!%§();
         if(_loc3_ || _loc2_)
         {
            §§push(Boolean(_loc1_));
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr94:
                     while(true)
                     {
                        §§push(_loc1_.mName == StateConnecting.§3!?§);
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr93:
               }
               while(§§pop())
               {
                  if(_loc3_)
                  {
                     if(!(_loc3_ || _loc1_))
                     {
                        §§goto(addr94);
                        continue;
                     }
                     §'A§(StateConnecting.§3!?§);
                  }
                  break;
               }
               return;
            }
            §§goto(addr93);
         }
         §§goto(addr67);
      }
      
      public function §7!6§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(param1.indexOf("1-") == 0)
            {
               §§push(param1);
               if(!_loc4_)
               {
                  var _loc2_:* = §§pop().substring(2);
                  if(_loc3_ || this)
                  {
                     if("1" === _loc2_)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc3_ || param1)
                           {
                           }
                           §§goto(addr277);
                        }
                        else
                        {
                           §§goto(addr177);
                        }
                     }
                     else if("2" === _loc2_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           §§push(1);
                           if(!_loc3_)
                           {
                              addr250:
                           }
                        }
                        else
                        {
                           addr214:
                           §§push(5);
                           if(_loc3_ || _loc2_)
                           {
                              §§goto(addr222);
                           }
                           else
                           {
                              addr236:
                           }
                        }
                     }
                     else if("3" === _loc2_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr177:
                           §§push(2);
                           if(_loc4_ && _loc3_)
                           {
                           }
                           §§goto(addr277);
                        }
                        else
                        {
                           addr196:
                           §§push(3);
                           if(_loc4_)
                           {
                              addr208:
                           }
                        }
                     }
                     else if("4" === _loc2_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§goto(addr196);
                        }
                        else
                        {
                           addr242:
                           §§push(7);
                           if(!(_loc4_ && param1))
                           {
                              §§goto(addr250);
                           }
                        }
                     }
                     else if("5" === _loc2_)
                     {
                        if(!_loc4_)
                        {
                           §§push(4);
                           if(!_loc4_)
                           {
                              §§goto(addr208);
                           }
                           else
                           {
                              addr272:
                           }
                        }
                        else
                        {
                           §§goto(addr242);
                        }
                     }
                     else if("6" === _loc2_)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr214);
                        }
                        else
                        {
                           addr228:
                           §§push(6);
                           if(!(_loc4_ && _loc3_))
                           {
                              §§goto(addr236);
                           }
                        }
                     }
                     else
                     {
                        if("7" === _loc2_)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr228);
                           }
                        }
                        else if("8" === _loc2_)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr242);
                           }
                        }
                        else if("9" !== _loc2_)
                        {
                           addr277:
                           switch(§§pop())
                           {
                              case 0:
                                 param1 = "1";
                                 break;
                                 addr107:
                              case 1:
                                 addr96:
                                 param1 = "2";
                                 break;
                                 addr97:
                              case 2:
                                 addr90:
                                 param1 = "3";
                                 break;
                                 addr91:
                              case 3:
                                 param1 = "1";
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr107);
                                 break;
                              case 4:
                                 §§push("2");
                                 if(!(_loc4_ && param1))
                                 {
                                    param1 = §§pop();
                                    if(!(_loc4_ && this))
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr96);
                                 }
                                 §§goto(addr97);
                              case 5:
                                 §§push("3");
                                 if(!_loc4_)
                                 {
                                    param1 = §§pop();
                                    if(_loc3_ || _loc2_)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr90);
                                 }
                                 §§goto(addr91);
                              case 6:
                                 param1 = "4";
                                 addr31:
                                 break;
                              case 7:
                                 param1 = "5";
                                 break;
                              case 8:
                                 param1 = "6";
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr31);
                           }
                           return param1;
                           §§push(9);
                        }
                        §§goto(addr277);
                        if(_loc3_ || this)
                        {
                           §§goto(addr272);
                        }
                     }
                     §§goto(addr277);
                  }
                  §§goto(addr228);
               }
               §§goto(addr277);
               addr103:
            }
            §§goto(addr277);
         }
         §§goto(addr103);
      }
      
      public function § !&§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            if(param1.indexOf("1-") == 0)
            {
               §§push(param1);
               if(_loc4_)
               {
                  do
                  {
                     var _loc2_:* = §§pop().substring(2);
                     if(!_loc3_)
                     {
                        if("1" === _loc2_)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(0);
                              if(_loc3_ && _loc2_)
                              {
                                 addr218:
                              }
                           }
                           else
                           {
                              addr205:
                              §§push(8);
                              if(_loc4_)
                              {
                                 §§goto(addr218);
                              }
                           }
                           §§goto(addr223);
                        }
                        if("2" === _loc2_)
                        {
                           if(!_loc3_)
                           {
                              §§push(1);
                              if(!_loc4_)
                              {
                                 addr174:
                              }
                           }
                           else
                           {
                              §§goto(addr205);
                           }
                        }
                        else if("3" === _loc2_)
                        {
                           if(_loc4_ || param1)
                           {
                              §§push(2);
                              if(_loc3_ && _loc2_)
                              {
                                 §§goto(addr218);
                              }
                           }
                           else
                           {
                              addr189:
                              §§push(6);
                              if(!_loc4_)
                              {
                              }
                           }
                        }
                        else
                        {
                           if("4" === _loc2_)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(3);
                                 if(!_loc4_)
                                 {
                                    addr201:
                                 }
                              }
                              else
                              {
                                 §§goto(addr205);
                              }
                           }
                           else
                           {
                              if("5" === _loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr166:
                                    §§push(4);
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§goto(addr174);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr205);
                                 }
                              }
                              else
                              {
                                 if("6" === _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(5);
                                       if(!_loc4_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr205);
                                    }
                                 }
                                 else if("7" === _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       §§goto(addr189);
                                    }
                                    else
                                    {
                                       addr198:
                                       §§push(7);
                                       if(_loc4_)
                                       {
                                          §§goto(addr201);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    if("8" === _loc2_)
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr198);
                                       }
                                       else
                                       {
                                          §§goto(addr205);
                                       }
                                    }
                                    else if("9" === _loc2_)
                                    {
                                       §§goto(addr205);
                                    }
                                    else
                                    {
                                       §§push(9);
                                    }
                                    §§goto(addr205);
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr166);
                  }
                  while(§§push(param1), !(_loc4_ || _loc3_));
                  
                  return §§pop();
               }
               addr223:
               switch(§§pop())
               {
                  case 0:
                  case 1:
                  case 2:
                     continue loop0;
                  case 3:
                     param1 = "1";
                     break;
                  case 4:
                     param1 = "2";
                     break;
                  case 5:
                     param1 = "3";
                     break;
                  case 6:
                     param1 = "4";
                     addr32:
                     break;
                  case 7:
                     param1 = "5";
                     break;
                  case 8:
                     param1 = "6";
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr32);
               }
               return param1;
               addr65:
            }
            §§goto(addr223);
         }
         §§goto(addr65);
      }
      
      public function get §5N§() : §0!0§
      {
         return this.§;!a§;
      }
      
      private function §%B§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:ContextMenu = new ContextMenu();
         if(_loc2_)
         {
            _loc1_.hideBuiltInItems();
            while(true)
            {
               _loc1_.customItems.push(new ContextMenuItem("Client version: " + VERSION.replace("{svn_version}","local dev build"),false,false));
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     _loc1_.customItems.push(new ContextMenuItem("Server version: " + this.getVersionInfo(),false,false));
                     do
                     {
                        canvas.contextMenu = _loc1_;
                     }
                     while(_loc3_ && _loc1_);
                     
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr90);
      }
   }
}
