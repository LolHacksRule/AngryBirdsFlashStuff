package
{
   import § !Y§.§1!j§;
   import § I§.§]"6§;
   import §!?§.§=!_§;
   import §!?§.§@"C§;
   import §!X§.§<!3§;
   import §"!&§.§-!M§;
   import §#!b§.§"!"§;
   import §#!b§.§'y§;
   import §'4§.§^g§;
   import §+!a§.§`b§;
   import §+!h§.§#V§;
   import §,"&§.§6" §;
   import §,"&§.§9q§;
   import §0N§.§0!g§;
   import §0N§.§2!@§;
   import §0N§.§5!^§;
   import §1%§.§0!3§;
   import §3"#§.§<!O§;
   import §5Q§.§^!e§;
   import §7!%§.§[K§;
   import §7!H§.§!!4§;
   import §7!H§.§#!f§;
   import §7!H§.§>1§;
   import §8!_§.§ null§;
   import §8!_§.§0!q§;
   import §8!_§.§3!g§;
   import §8!_§.§4!U§;
   import §8!_§.§8!H§;
   import §8!_§.§93§;
   import §8!_§.§?!#§;
   import §8!_§.StateCutScene;
   import §8!_§.StateEpisodeSelection;
   import §8!_§.StatePlay;
   import §8!_§.§]J§;
   import §<W§.§#e§;
   import §=u§.§!D§;
   import §^r§.§@!T§;
   import §`!j§.§9"!§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§1!l§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class § !g§ extends §'y§
   {
      
      protected static var §^"1§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §&!t§:String;
      
      public static var §2!R§:String;
      
      public static const §?[§:int = 1024;
      
      public static const §3!h§:int = 768;
      
      public static const §-"<§:Boolean = false;
      
      public static const §1!E§:int = 2000;
      
      private static const §2!h§:int = 750;
      
      private static const §2"D§:int = 3;
      
      private static const §6"C§:int = 15;
      
      protected static var §51§:Class;
      
      protected static var §8"7§:Class;
      
      protected static var §4!G§:Class;
      
      protected static var §1F§:Class;
      
      protected static var §&t§:Class;
      
      public static var §>!1§:Boolean = true;
      
      private static var §9";§:§ !g§ = null;
      
      public static var §%M§:Sprite = null;
      
      public static var §6l§:§6" §;
      
      public static var §<B§:Boolean = false;
      
      private static var §+!Y§:int = 0;
      
      private static var §"y§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §^"1§ = §#8§;
            loop0:
            while(true)
            {
               VERSION = "0.0.1.({svn_version})";
               while(true)
               {
                  §?[§ = 1024;
                  while(true)
                  {
                     §3!h§ = 768;
                     loop3:
                     while(true)
                     {
                        §-"<§ = false;
                        addr175:
                        while(true)
                        {
                           §1!E§ = 2000;
                           addr168:
                           while(!_loc2_)
                           {
                              §2!h§ = 750;
                              continue loop3;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §9";§ = null;
            §§goto(addr77);
         }
         §§goto(addr44);
      }
      
      protected var §^?§:§@"C§;
      
      protected var §3"4§:§-!M§;
      
      protected var §+Q§:§`b§;
      
      protected var §6u§:§9"!§;
      
      protected var §'+§:MovieClip;
      
      protected var §'d§:§>1§;
      
      protected var §="<§:§<!3§;
      
      private var §8#§:int;
      
      private var §91§:Boolean;
      
      private var §2"E§:int;
      
      private var §[<§:int;
      
      protected var §+v§:Boolean;
      
      protected var §"!d§:Boolean;
      
      protected var §3u§:§=!_§;
      
      protected var §4!§:Boolean;
      
      protected var §'!?§:Boolean = true;
      
      public function § !g§(param1:§"!"§, param2:String, param3:String)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§?8§();
            loop0:
            while(true)
            {
               addr34:
               while(true)
               {
                  §&!t§ = param2;
                  continue loop0;
               }
            }
            addr41:
         }
         while(true)
         {
            §2!R§ = param3;
            if(!_loc6_)
            {
               continue;
            }
            if(!(_loc7_ && param2))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr41);
            }
            §§goto(addr34);
         }
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§]"F§();
         if(_loc6_)
         {
            §1!j§.§8"+§(_loc5_,_loc4_,["Views","Components","Popups"],true);
            loop3:
            while(true)
            {
               super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
               while(true)
               {
                  this.initialize();
                  while(!_loc7_)
                  {
                     this.initializeStates();
                     loop6:
                     while(_loc6_ || param3)
                     {
                        §§push(stage.stageWidth == screenWidth);
                        loop7:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop8:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       this.resize();
                                    }
                                    if(!(_loc7_ && param2))
                                    {
                                       continue loop3;
                                    }
                                    addr126:
                                    while(_loc6_)
                                    {
                                       while(true)
                                       {
                                          §§push(stage.stageHeight == screenHeight);
                                          if(!(_loc7_ && param3))
                                          {
                                             if(!(_loc6_ || param1))
                                             {
                                                continue loop8;
                                             }
                                             §§push(!§§pop());
                                          }
                                          if(!_loc7_)
                                          {
                                             continue loop7;
                                          }
                                       }
                                    }
                                    continue loop6;
                                 }
                                 addr53:
                                 return;
                                 addr96:
                              }
                              while(true)
                              {
                                 §§pop();
                                 §§goto(addr126);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      public static function get stageWidth() : int
      {
         return §+!Y§;
      }
      
      public static function get stageHeight() : int
      {
         return §"y§;
      }
      
      public static function §@p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §>!1§ = param1;
            do
            {
               §<!O§.§!p§(§>!1§);
            }
            while(!_loc3_);
            
         }
      }
      
      public static function §<!c§() : Boolean
      {
         return §>!1§;
      }
      
      public static function get screenWidth() : int
      {
         return §;!'§.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return §;!'§.getAppHeight();
      }
      
      public static function get §;!'§() : § !g§
      {
         return §9";§;
      }
      
      public function get §>";§() : §>1§
      {
         return this.§'d§;
      }
      
      public function get §@"8§() : §<!3§
      {
         return this.§="<§;
      }
      
      public function get §&!`§() : §=!_§
      {
         return this.§3u§;
      }
      
      public function get §#!'§() : Boolean
      {
         return this.§"!d§;
      }
      
      public function set §#!'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§"!d§ = param1;
         }
      }
      
      protected function getAssetMap() : XML
      {
         return §0!g§.§[!y§(§4!G§);
      }
      
      protected function getUIData() : XML
      {
         return §0!g§.§[!y§(§51§);
      }
      
      protected function §]"F§() : XML
      {
         return §0!g§.§[!y§(§8"7§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §2"7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§3u§ = new §=!_§();
         }
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §9";§ = this;
            loop0:
            while(true)
            {
               this.§"!d§ = false;
               while(true)
               {
                  §9q§.init(this,screenWidth,screenHeight);
                  loop2:
                  while(!_loc3_)
                  {
                     this.§2"7§();
                     while(true)
                     {
                        this.initializeManagers();
                        loop4:
                        while(_loc2_)
                        {
                           §[K§.§[!1§.init(§#V§.§4!+§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§^?§,this.§^" §);
                           loop5:
                           for(; !_loc3_; if(!(_loc2_ || this))
                           {
                              continue;
                           })
                           {
                              stage.scaleMode = StageScaleMode.NO_SCALE;
                              loop6:
                              while(true)
                              {
                                 stage.align = StageAlign.TOP_LEFT;
                                 while(!_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       §8&§ = screenWidth;
                                       while(_loc2_ || this)
                                       {
                                          §`w§ = screenHeight;
                                          while(!_loc3_)
                                          {
                                             continue loop5;
                                             while(_loc2_ || this)
                                             {
                                                while(true)
                                                {
                                                   §2!@§.§0!t§(§2! §);
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §2!@§.§]W§(true);
                                                         if(_loc2_ || this)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop6;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(false)
                                                   {
                                                      continue;
                                                   }
                                                   var _loc1_:XMLList = §0!g§.§[!y§(§^"1§).children();
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §1!l§.init(_loc1_);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §<!O§.§;!D§("CHANNEL_THEME",1,1);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §<!O§.§;!D§("CHANNEL_AMBIENT",1,1);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               stage.addEventListener(Event.MOUSE_LEAVE,this.§]!Y§);
                                                               while(true)
                                                               {
                                                                  stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§?!J§);
                                                                  loop18:
                                                                  for(; !(_loc3_ && _loc2_); while(!(_loc3_ && this))
                                                                  {
                                                                     §§goto(addr248);
                                                                  })
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     stage.addEventListener(Event.RESIZE,this.§1"?§);
                                                                     while(true)
                                                                     {
                                                                        stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§7K§);
                                                                        while(!_loc3_)
                                                                        {
                                                                           stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§0!J§);
                                                                           while(true)
                                                                           {
                                                                              stage.addEventListener(Event.ACTIVATE,this.§2"?§);
                                                                              while(!_loc3_)
                                                                              {
                                                                                 stage.addEventListener(Event.DEACTIVATE,this.§1"§);
                                                                                 loop23:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    §6l§ = new §6" §(stage);
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop23;
                                                                                       }
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§6l§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§#e§.§;!#§);
                                                                                          addr238:
                                                                                          addr248:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().addEventListener(§§pop(),this.§5!$§);
                                                                                             continue loop18;
                                                                                          }
                                                                                          §§push(§6l§);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(§#e§.§5!L§);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§pop().addEventListener(§§pop(),this.§9O§);
                                                                                             continue loop24;
                                                                                          }
                                                                                          §§goto(addr238);
                                                                                       }
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              return;
                                                                              addr214:
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr214);
                                                }
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §9q§.§2!x§.visible = §-"<§;
            §§goto(addr46);
         }
      }
      
      private function §1"§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!!b§();
         }
      }
      
      private function §!!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§'!?§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§'!?§ = false;
                     loop2:
                     while(!_loc1_)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           this.§4!§ = §<!O§.§?!2§;
                           while(true)
                           {
                              if(_loc1_ && this)
                              {
                                 continue loop2;
                                 if(§§pop())
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                              }
                              continue loop0;
                              addr30:
                           }
                           §§goto(addr33);
                        }
                     }
                  }
               }
               return;
            }
         }
         addr33:
      }
      
      private function §2"?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§'";§();
         }
      }
      
      private function §'";§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§'!?§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  addr68:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  this.§'!?§ = true;
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr68);
      }
      
      protected function setupPopupManager() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'+§ = new MovieClip();
            loop0:
            while(true)
            {
               §2! §.stage.addChild(this.§'+§);
               while(true)
               {
                  this.§'d§ = new §#!f§(this.§'+§,§super§,this);
                  loop2:
                  while(_loc1_)
                  {
                     §§push(this.§'d§);
                     while(true)
                     {
                        §§push(§@!T§.OPEN);
                        loop4:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.§5!$§);
                           addr152:
                           while(!_loc2_)
                           {
                              §§push(this.§'d§);
                              while(true)
                              {
                                 §§push(§@!T§.CLOSE);
                                 if(_loc2_ && _loc1_)
                                 {
                                    break;
                                 }
                                 §§pop().addEventListener(§§pop(),this.§9O§);
                              }
                              continue loop4;
                           }
                           continue loop2;
                        }
                        loop9:
                        for(; !(_loc2_ && _loc2_); §§push(this.§'d§),if(!_loc1_)
                        {
                           continue;
                        },if(!_loc2_)
                        {
                           §§goto(addr30);
                        },§§goto(addr131))
                        {
                           §§push(§!!4§.§?!F§);
                           while(true)
                           {
                              §§push(true);
                              addr70:
                              addr30:
                              while(true)
                              {
                                 §§pop().addLayer(§§pop(),§§pop(),new Rectangle(0,0,-180,0));
                                 addr77:
                                 loop12:
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    addr84:
                                    if(_loc1_ || this)
                                    {
                                       continue loop0;
                                    }
                                    addr143:
                                    while(true)
                                    {
                                       this.§="<§ = new §<!3§(this.§'d§,this.§3u§,§!!4§.§#!e§);
                                       break loop12;
                                       §§goto(addr84);
                                    }
                                 }
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    §§push(this.§'d§);
                                    continue loop9;
                                    §§goto(addr77);
                                 }
                                 §§goto(addr152);
                              }
                              §§push(§!!4§.§#!e§);
                              if(!(_loc1_ || _loc2_))
                              {
                                 continue;
                              }
                              §§push(true);
                              if(_loc1_)
                              {
                                 §§pop().addLayer(§§pop(),§§pop(),new Rectangle(0,0,0,0));
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    return;
                                 }
                              }
                              else
                              {
                                 §§goto(addr70);
                              }
                              §§goto(addr77);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr143);
      }
      
      protected function §5!$§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=!z§();
         }
      }
      
      protected function §9O§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§?!f§();
         }
      }
      
      public function §?!f§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§'d§.§^",§());
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§6l§.§1"1§());
         if(!(_loc4_ && _loc2_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(!§§pop());
            }
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc3_)
                           {
                              §§push(!§§pop());
                              loop4:
                              while(!(_loc4_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§pop();
                                             addr139:
                                             while(true)
                                             {
                                                §§push(this.§#!'§);
                                                if(!(_loc4_ && _loc1_))
                                                {
                                                   continue loop5;
                                                }
                                                addr83:
                                                if(_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                          }
                                          addr128:
                                       }
                                       while(§§pop())
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                §9q§.resume();
                                             }
                                             else
                                             {
                                                §§goto(addr139);
                                             }
                                          }
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       return;
                                    }
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           §§goto(addr128);
                        }
                     }
                  }
                  §§goto(addr123);
               }
               if(_loc4_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr83);
               §§push(!§§pop());
            }
         }
         §§goto(addr139);
      }
      
      public function §=!z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9q§.pause();
         }
      }
      
      protected function initializeManagers() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§3"4§ = this.initializeLevelItemManager();
         }
         loop0:
         while(true)
         {
            this.§+Q§ = this.initializeLevelThemeManager();
            loop1:
            do
            {
               this.§6u§ = this.initializeLevelManager();
               while(true)
               {
                  this.§^?§ = this.initializePackageManager();
                  while(!(_loc2_ && _loc2_))
                  {
                     §9q§.§>!L§ = this.initializeLevelMain();
                     while(!_loc2_)
                     {
                        continue loop0;
                        this.setupPopupManager();
                        if(_loc1_ || _loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
            while(_loc2_);
            
            return;
         }
      }
      
      protected function initializeLevelMain() : §^g§
      {
         return new §^g§(stage,this.§3"4§,this.§+Q§,this.§6u§);
      }
      
      protected function initializeLevelItemManager() : §-!M§
      {
         return new §-!M§();
      }
      
      protected function initializeLevelThemeManager() : §`b§
      {
         return new §`b§();
      }
      
      protected function initializeLevelManager() : §9"!§
      {
         return new §9"!§();
      }
      
      protected function initializePackageManager() : §@"C§
      {
         return new §@"C§(this.§6u§);
      }
      
      protected function initializeUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§3u§.userProgress = new §]"6§(§2!R§,this.§6u§);
         }
      }
      
      protected function initializeStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0j§(new §?!#§(this.§6u§,§super§,false));
            loop0:
            while(true)
            {
               §0j§(new §0!q§(this.§6u§,§super§,false));
               while(true)
               {
                  §0j§(new StateEpisodeSelection(this.§6u§,§super§,false));
                  continue loop0;
                  addr71:
                  if(_loc2_ || _loc2_)
                  {
                     addr20:
                     return;
                  }
               }
            }
         }
         while(true)
         {
            this.§1"?§(null);
            §§goto(addr62);
         }
      }
      
      protected function §^" §(param1:ByteArray) : void
      {
      }
      
      protected function §]!Y§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §5!^§.§6;§();
         }
         while(this.§["#§())
         {
            if(_loc2_)
            {
               this.§<""§(0);
            }
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      protected function §?!J§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §5!^§.§<"F§();
            if(_loc5_ || _loc3_)
            {
               if(this.§91§)
               {
                  if(!_loc4_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§[<§);
                     if(_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_ || this)
                     {
                        _loc2_.§[<§ = _loc3_;
                     }
                     if(_loc5_)
                     {
                        §§push(this.§[<§);
                        while(true)
                        {
                           §§push(§6"C§);
                           addr118:
                           §§goto(addr72);
                        }
                     }
                  }
                  §§goto(addr114);
               }
               addr72:
               while(§§pop() > §§pop())
               {
                  while(true)
                  {
                     this.§91§ = false;
                     continue loop0;
                  }
               }
               addr71:
               return;
            }
         }
         §§goto(addr122);
      }
      
      public function §`"0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§1"?§(null);
         }
      }
      
      protected function §1"?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+v§ = true;
         }
      }
      
      protected function §0!J§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'";§();
         }
      }
      
      public function §%!N§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = getTimer();
         if(_loc3_ || this)
         {
            if(_loc1_ - this.§8#§ > §2!h§)
            {
               for(; stage.displayState != StageDisplayState.FULL_SCREEN; if(_loc2_ && _loc2_)
               {
                  continue;
               },this.§;?§(_loc1_),§§goto(addr68))
               {
                  if(stage.displayState == StageDisplayState.NORMAL)
                  {
                     if(_loc3_ || _loc1_)
                     {
                        continue;
                     }
                     addr68:
                     addr102:
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr29);
                        }
                        break;
                     }
                  }
                  §§goto(addr29);
               }
               this.§<""§(_loc1_);
               §§goto(addr102);
               addr94:
            }
            addr29:
            return;
         }
         §§goto(addr94);
      }
      
      public function §&4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§<""§(0);
         }
      }
      
      public function §["#§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(stage)
            {
               if(!_loc1_)
               {
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr56:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr56);
      }
      
      private function §<""§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§+v§ = true;
         }
         while(true)
         {
            while(true)
            {
               this.§8#§ = param1;
               do
               {
                  this.§91§ = false;
               }
               while(_loc3_);
               
               if(!_loc3_)
               {
                  if(true)
                  {
                     try
                     {
                        stage.displayState = StageDisplayState.NORMAL;
                     }
                     catch(e:Error)
                     {
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      private function §;?§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§+v§ = true;
            while(true)
            {
               this.§8#§ = param1;
               while(true)
               {
                  this.§2"E§ = 0;
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§[<§ = 0;
                        addr59:
                        while(_loc4_)
                        {
                        }
                        continue loop2;
                     }
                  }
               }
               addr36:
               if(!(_loc3_ && _loc3_))
               {
                  if(false)
                  {
                     §§goto(addr55);
                  }
                  try
                  {
                     addr78:
                     stage.displayState = StageDisplayState.FULL_SCREEN;
                  }
                  catch(e:Error)
                  {
                  }
                  return;
               }
            }
         }
         while(true)
         {
            this.§91§ = true;
            if(!(_loc3_ && _loc2_))
            {
               §§goto(addr36);
            }
            §§goto(addr59);
         }
         §§goto(addr78);
      }
      
      protected function §7K§(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.keyCode;
         if(_loc4_)
         {
            if(Keyboard.F === _loc2_)
            {
               addr41:
               §§push(0);
               if(!_loc4_)
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
         §§goto(addr41);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.setFirstGameState();
            while(true)
            {
               this.initializeGame();
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            §[K§.§[!1§.§-"D§();
            if(!_loc1_)
            {
               if(!_loc1_)
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
         if(_loc4_ || _loc2_)
         {
            §§push(§9q§.§2!x§);
            if(_loc4_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc5_ && param1))
                  {
                     addr40:
                     §9q§.§2!x§.update(param1);
                  }
               }
               §§push(super.updateState(param1));
               if(_loc4_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!_loc5_)
               {
                  if(!§,"7§().isGenericState())
                  {
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        loop0:
                        while(true)
                        {
                           if(§§pop() == §0!3§.§-c§)
                           {
                              addr122:
                              if(_loc5_)
                              {
                              }
                              while(true)
                              {
                                 §8!^§(§,"7§().nextState);
                                 if(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    return §§pop();
                                    addr62:
                                 }
                              }
                              addr122:
                           }
                           §§goto(addr62);
                        }
                     }
                     while(true)
                     {
                        §§push(§2!@§);
                        §§push("AngryBirdSocial::run() state change is about to start. Old State = " + §,"7§().mName);
                        if(_loc4_)
                        {
                           §§push(§§pop() + " New State = ");
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(§§pop() + §,"7§().nextState);
                           }
                        }
                        §§pop().log(§§pop());
                        §§goto(addr122);
                     }
                  }
                  §§goto(addr62);
               }
               §§goto(addr122);
            }
         }
         §§goto(addr40);
      }
      
      override public function getAppWidth() : Number
      {
         return §?[§;
      }
      
      override public function getAppHeight() : Number
      {
         return §3!h§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §1!E§;
      }
      
      protected function §>5§() : String
      {
         return "ThemeMusic";
      }
      
      public function §2!M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§<!O§.§4d§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr91:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           if(!_loc1_)
                           {
                              §<!O§.playSound(this.§>5§(),"Channel_Theme",999);
                              addr75:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr75);
                     }
                     return;
                     addr58:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §0!c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §<!O§.§,!z§("Channel_Theme");
         }
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Client: " + VERSION.replace("{svn_version}","local dev build"));
         if(!(_loc1_ && this))
         {
            §§push(§§pop() + ", ");
            if(!_loc1_)
            {
               addr44:
               §§push(§§pop() + "Server: ");
               if(_loc2_ || _loc2_)
               {
                  return §§pop() + §&!t§;
               }
            }
         }
         §§goto(addr44);
      }
      
      protected function loadItems() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3"4§.loadItems(this.§5!n§());
         }
      }
      
      protected function loadBackgrounds() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§+Q§.§%'§(this.§>w§().Backgrounds);
         }
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.initializeUserProgress();
            while(true)
            {
               this.loadItems();
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.loadBackgrounds();
                     do
                     {
                        §9q§.§&!&§(this.§^?§.§-" §,this.§"W§);
                     }
                     while(_loc1_ && _loc2_);
                     
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
      
      protected function §>w§() : XML
      {
         return §0!g§.§[!y§(§&t§);
      }
      
      protected function §5!n§() : XML
      {
         return §0!g§.§[!y§(§1F§);
      }
      
      protected function §"W§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §<B§ = true;
         }
         do
         {
            §8!^§(§0!q§.STATE_NAME);
         }
         while(_loc3_);
         
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§91§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr35:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§2"E§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc5_ && param1))
                     {
                        _loc2_.§2"E§ = _loc3_;
                     }
                     if(_loc4_ || _loc3_)
                     {
                        addr129:
                        §§push(§^!e§.§>c§());
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              while(true)
                              {
                              }
                              addr135:
                           }
                           while(true)
                           {
                              §§push(this.§+v§);
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                              continue loop6;
                           }
                           if(§§pop())
                           {
                              while(_loc5_)
                              {
                                 §§goto(addr135);
                              }
                              while(true)
                              {
                                 this.resize();
                                 addr128:
                                 while(true)
                                 {
                                    this.§+v§ = false;
                                    for(; _loc4_ || param1; super.onEnterFrame(param1),if(!(_loc5_ && _loc2_))
                                    {
                                       return;
                                    })
                                    {
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr114);
                                    }
                                 }
                              }
                              addr114:
                              addr116:
                           }
                           §§goto(addr77);
                        }
                        return;
                        addr131:
                     }
                     §§goto(addr128);
                  }
                  §§goto(addr116);
               }
               §§goto(addr129);
            }
            §§goto(addr131);
         }
         §§goto(addr35);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = int(Math.round(stage.stageWidth));
         var _loc3_:int = Math.round(stage.stageHeight);
         if(_loc5_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(20);
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
                                 while(true)
                                 {
                                    §§push(20);
                                    addr359:
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                    }
                                    loop18:
                                    for(; !(_loc4_ && _loc3_); while(_loc5_ || this)
                                    {
                                       if(_loc5_)
                                       {
                                          _loc2_ = §§pop();
                                          §§goto(addr283);
                                       }
                                       §§goto(addr363);
                                    })
                                    {
                                       §§push(2);
                                       while(true)
                                       {
                                          §§push(§§pop() < §§pop());
                                          loop20:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop21:
                                             while(_loc5_ || this)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§pop();
                                                      loop23:
                                                      while(!_loc4_)
                                                      {
                                                         §§push(_loc3_);
                                                         loop24:
                                                         for(; !_loc4_; if(_loc4_ && _loc2_)
                                                         {
                                                            continue;
                                                         },if(!_loc4_)
                                                         {
                                                            §§goto(addr195);
                                                            §§push(_loc2_);
                                                         },§§goto(addr339))
                                                         {
                                                            §§push(2);
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() < §§pop());
                                                               addr290:
                                                               while(true)
                                                               {
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!(_loc5_ || param1))
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           §§push(_loc3_);
                                                                           loop29:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() / §§pop() > 25 / 12)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(int(Math.round(_loc3_ * (25 / 12))));
                                                                                    continue loop18;
                                                                                 }
                                                                                 addr265:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop31:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          while(_loc5_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                loop40:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop41:
                                                                                                      for(; _loc5_; if(_loc4_ && param1)
                                                                                                      {
                                                                                                         continue;
                                                                                                      },if(_loc4_)
                                                                                                      {
                                                                                                         continue loop33;
                                                                                                      },addr139:,if(_loc5_ || _loc3_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr150:
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§goto(addr153);
                                                                                                                  §§push(false);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr283:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                                  addr283:
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr310:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §+!Y§ = _loc2_;
                                                                                                                  addr91:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                        {
                                                                                                                           continue loop23;
                                                                                                                        }
                                                                                                                        §§goto(addr249);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr238);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr165:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               addr310:
                                                                                                            }
                                                                                                            §§goto(addr168);
                                                                                                         }
                                                                                                         addr148:
                                                                                                      },while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§goto(addr362);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            addr311:
                                                                                                         }
                                                                                                         §§goto(addr139);
                                                                                                      })
                                                                                                      {
                                                                                                         if(!(_loc5_ || this))
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§pop();
                                                                                                         loop42:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(§"y§);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     continue loop29;
                                                                                                                  }
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     if(!(_loc4_ && param1))
                                                                                                                     {
                                                                                                                        continue loop41;
                                                                                                                     }
                                                                                                                     addr153:
                                                                                                                     addr153:
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        return §§pop();
                                                                                                                     }
                                                                                                                     addr214:
                                                                                                                     loop39:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop40;
                                                                                                                        }
                                                                                                                        addr248:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr249:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§+!Y§);
                                                                                                                           }
                                                                                                                           continue loop39;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  §§goto(addr359);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc5_ || param1)
                                                                                                                  {
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                                  §§goto(addr240);
                                                                                                               }
                                                                                                               addr240:
                                                                                                               continue loop24;
                                                                                                               addr168:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr292:
                                                                                                            }
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               if(!(_loc4_ && this))
                                                                                                               {
                                                                                                                  §§push(false);
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               addr362:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§+!Y§);
                                                                                                                  addr363:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(int(§§pop()));
                                                                                                                     addr374:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        break loop42;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr362:
                                                                                                            }
                                                                                                            break;
                                                                                                            §§goto(addr362);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§"y§);
                                                                                                            addr339:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               break loop24;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop32;
                                                                                                   }
                                                                                                   §§goto(addr148);
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr248);
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr250:
                                                                     }
                                                                     §§goto(addr292);
                                                                  }
                                                                  continue loop25;
                                                               }
                                                            }
                                                         }
                                                         while(_loc5_ || this)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr374);
                                                         if(!(_loc5_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         §"y§ = _loc3_;
                                                         while(true)
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr150);
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr311);
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr290);
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr361);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr310);
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §9q§.§<_§(0,0,param1,param2);
         }
         while(true)
         {
            setViewSize(param1,param2);
            while(_loc4_ || param1)
            {
               this.§'d§.setViewSize(param1,param2);
               if(!_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function §const§() : void
      {
      }
      
      public function §8!S§() : void
      {
      }
      
      protected function §?8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            Font.registerFont(AngryBirdsFont);
         }
         do
         {
            Font.registerFont(AngryBirdsBoldFont);
            do
            {
               Font.registerFont(AngryBirdsTextFont);
               do
               {
                  Font.registerFont(AngryBirdsTextBoldFont);
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(!(_loc2_ || _loc2_));
            
         }
         while(!(_loc2_ || this));
         
      }
   }
}
