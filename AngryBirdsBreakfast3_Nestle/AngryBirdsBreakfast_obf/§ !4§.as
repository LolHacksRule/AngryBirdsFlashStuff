package
{
   import §!!!§.§6!l§;
   import §!""§.§5!8§;
   import §"!w§.§6!E§;
   import §%!B§.§0![§;
   import §%!n§.§%]§;
   import §%8§.§4O§;
   import §,!'§.§5O§;
   import §,!'§.§6!L§;
   import §0!m§.§<!t§;
   import §0!m§.§@!S§;
   import §1![§.§-"5§;
   import §1![§.§`w§;
   import §1!c§.§'!y§;
   import §1!c§.§'8§;
   import §1!c§.§1!Z§;
   import §1!c§.§8§;
   import §1!c§.§@=§;
   import §1!c§.StateCutScene;
   import §1!c§.StateEpisodeSelection;
   import §1!c§.StatePlay;
   import §1!c§.§]0§;
   import §1!c§.§^j§;
   import §1!c§.§`!z§;
   import §1!i§.§"g§;
   import §1!i§.§,-§;
   import §1!i§.§^Q§;
   import §2!&§.§+h§;
   import §24§.;
   import §24§.§4!H§;
   import §24§.§=!L§;
   import §37§.§9!c§;
   import §4!i§.§<!1§;
   import §8]§.§7O§;
   import §;g§.§0!o§;
   import §>z§.§5!d§;
   import §@V§.§#=§;
   import §[!Z§.§>D§;
   import §^"!§.§+!7§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§34§;
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
   
   public class § !4§ extends §5O§
   {
      
      protected static var §>!h§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §7!1§:String;
      
      public static var §[!F§:String;
      
      public static const §3z§:int = 1024;
      
      public static const §`!,§:int = 768;
      
      public static const §!L§:Boolean = false;
      
      public static const §1!p§:int = 2000;
      
      private static const §+!y§:int = 750;
      
      private static const §3J§:int = 3;
      
      private static const §>,§:int = 15;
      
      protected static var §3B§:Class;
      
      protected static var §=k§:Class;
      
      protected static var §?6§:Class;
      
      protected static var §,!%§:Class;
      
      protected static var §,f§:Class;
      
      public static var §[7§:Boolean = true;
      
      private static var §0!V§:§ !4§ = null;
      
      public static var §,!o§:Sprite = null;
      
      public static var §`?§:§<!t§;
      
      public static var §`Z§:Boolean = false;
      
      private static var §^!I§:int = 0;
      
      private static var §]i§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>!h§ = §>!Y§;
            while(true)
            {
               VERSION = "0.0.1.({svn_version})";
               addr230:
               while(true)
               {
                  §3z§ = 1024;
                  loop2:
                  while(true)
                  {
                     §`!,§ = 768;
                     addr210:
                     while(true)
                     {
                        §!L§ = false;
                        continue loop2;
                     }
                  }
               }
            }
            addr234:
         }
         loop5:
         while(true)
         {
            §+!y§ = 750;
            while(true)
            {
               §3J§ = 3;
               loop7:
               while(true)
               {
                  §>,§ = 15;
                  loop8:
                  while(true)
                  {
                     §3B§ = §3!4§;
                     while(true)
                     {
                        if(_loc1_ || § !4§)
                        {
                           continue loop5;
                        }
                        continue loop8;
                        loop12:
                        for(; !(_loc2_ && § !4§); while(true)
                        {
                           if(_loc1_ || _loc2_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §,!o§ = null;
                              continue;
                           }
                           continue loop12;
                        },§§goto(addr198))
                        {
                           §,f§ = §9^§;
                           while(true)
                           {
                              §[7§ = true;
                              addr101:
                              loop14:
                              while(true)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    continue loop7;
                                 }
                                 addr152:
                                 while(true)
                                 {
                                    §?6§ = §3!S§;
                                    addr147:
                                    while(true)
                                    {
                                       §,!%§ = §=!2§;
                                       continue loop12;
                                    }
                                    continue loop14;
                                 }
                              }
                              continue loop7;
                           }
                        }
                     }
                     §§goto(addr210);
                  }
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  return;
               }
               §§goto(addr234);
            }
         }
      }
      
      protected var §=p§:§-"5§;
      
      protected var §@!]§:§4O§;
      
      protected var §2!v§:§5!d§;
      
      protected var §4a§:§0![§;
      
      protected var §%,§:MovieClip;
      
      protected var §#!c§:§^Q§;
      
      protected var §@y§:§+!7§;
      
      private var §;A§:int;
      
      private var §[!!§:Boolean;
      
      private var §?]§:int;
      
      private var §%!W§:int;
      
      protected var §0w§:Boolean;
      
      protected var §4p§:Boolean;
      
      protected var §6!4§:§`w§;
      
      protected var §+!#§:Boolean;
      
      protected var §`n§:Boolean = true;
      
      private var §^!§:Boolean = false;
      
      public function § !4§(param1:§6!L§, param2:String, param3:String)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.initFonts();
            loop0:
            while(true)
            {
               addr32:
               while(true)
               {
                  §7!1§ = param2;
                  while(true)
                  {
                     if(_loc6_)
                     {
                        §[!F§ = param3;
                        if(!(_loc7_ && param3))
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr32);
         }
         var _loc4_:XML = this.getUIData();
         var _loc5_:XML = this.§4!K§();
         if(_loc6_)
         {
            §<!1§.§3M§(_loc5_,_loc4_,["Views","Components","Popups"],true);
         }
         loop4:
         while(true)
         {
            super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
            loop5:
            while(true)
            {
               this.initialize();
               loop6:
               while(true)
               {
                  this.initializeStates();
                  loop7:
                  while(!_loc7_)
                  {
                     §§push(stage.stageWidth == §&v§);
                     if(_loc6_)
                     {
                        §§push(!§§pop());
                        loop8:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop14:
                              while(true)
                              {
                                 §§pop();
                                 addr125:
                                 while(!_loc7_)
                                 {
                                    §§push(stage.stageHeight == §,n§);
                                    if(_loc6_ || param3)
                                    {
                                       continue loop8;
                                    }
                                    addr96:
                                    if(!_loc7_)
                                    {
                                    }
                                    continue loop14;
                                 }
                                 continue loop4;
                              }
                              addr124:
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 do
                                 {
                                    stage.showDefaultContextMenu = false;
                                    if(_loc7_)
                                    {
                                       continue loop6;
                                    }
                                 }
                                 while(!_loc6_);
                                 
                                 return;
                                 addr57:
                              }
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    this.resize();
                                    continue loop6;
                                 }
                                 §§goto(addr125);
                              }
                              continue loop7;
                           }
                        }
                     }
                     §§goto(addr124);
                  }
                  continue loop5;
               }
            }
         }
      }
      
      public static function get stageWidth() : int
      {
         return §^!I§;
      }
      
      public static function get stageHeight() : int
      {
         return §]i§;
      }
      
      public static function setSoundsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §[7§ = param1;
         }
         do
         {
            §>D§.§,"§(§[7§);
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public static function §4E§() : Boolean
      {
         return §[7§;
      }
      
      public static function get §&v§() : int
      {
         return §%"7§.getAppWidth();
      }
      
      public static function get §,n§() : int
      {
         return §%"7§.getAppHeight();
      }
      
      public static function get §%"7§() : § !4§
      {
         return §0!V§;
      }
      
      public function get §+!J§() : §^Q§
      {
         return this.§#!c§;
      }
      
      public function get §=!e§() : §+!7§
      {
         return this.§@y§;
      }
      
      public function get §@D§() : §`w§
      {
         return this.§6!4§;
      }
      
      public function get §?!9§() : Boolean
      {
         return this.§4p§;
      }
      
      public function set §?!9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§4p§ = param1;
         }
      }
      
      protected function getAssetMap() : XML
      {
         return §4!H§.§7o§(§?6§);
      }
      
      protected function getUIData() : XML
      {
         return §4!H§.§7o§(§3B§);
      }
      
      protected function §4!K§() : XML
      {
         return §4!H§.§7o§(§=k§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function §,3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§6!4§ = new §`w§();
         }
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §0!V§ = this;
            while(true)
            {
               this.§4p§ = false;
               addr165:
               while(true)
               {
                  §@!S§.init(this,§&v§,§,n§);
               }
            }
            addr169:
         }
         loop2:
         while(true)
         {
            this.§,3§();
            loop3:
            while(true)
            {
               this.initializeManagers();
               addr149:
               while(true)
               {
                  this.initializeUserProgress();
                  while(true)
                  {
                     §6!E§.§,2§.init(§+h§.§^!W§(),this.§%!=§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§=p§,this.§#2§);
                     continue loop2;
                     addr63:
                     while(!(_loc2_ && _loc2_))
                     {
                        continue loop3;
                     }
                  }
                  addr92:
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  §5!k§ = §&v§;
                  while(true)
                  {
                     §!O§ = §,n§;
                     §§goto(addr63);
                  }
               }
            }
         }
      }
      
      protected function §%!=§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §,z§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§ d§();
         }
      }
      
      private function § d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§`n§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§`n§ = false;
                     loop2:
                     while(true)
                     {
                        this.§+!#§ = §>D§.§3!%§;
                        do
                        {
                           if(!(_loc1_ || _loc1_))
                           {
                              continue loop2;
                           }
                           if(!(_loc1_ || _loc1_))
                           {
                              continue loop1;
                           }
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop0;
                           }
                        }
                        while(!(_loc1_ || this));
                        
                        addr37:
                        return;
                     }
                  }
               }
            }
         }
      }
      
      private function §'I§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§"!b§();
         }
      }
      
      private function §"!b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§`n§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§`n§ = true;
                     addr59:
                     while(!(_loc2_ && _loc1_))
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  addr55:
               }
               return;
            }
            addr81:
         }
         while(true)
         {
            §§push(this.§+!#§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     break;
                  }
                  §§goto(addr59);
               }
               break;
            }
            §§goto(addr81);
            §§goto(addr55);
         }
      }
      
      protected function setupPopupManager() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§%,§ = new MovieClip();
            while(true)
            {
               §-!x§.stage.addChild(this.§%,§);
               addr128:
               if(_loc1_ && this)
               {
                  continue;
               }
               §§push(this.§#!c§);
               loop9:
               while(true)
               {
                  §§push(§,-§.§#!V§);
                  addr94:
                  while(true)
                  {
                     §§push(true);
                     addr95:
                     while(true)
                     {
                        §§pop().addLayer(§§pop(),§§pop(),new Rectangle(0,0,-180,0));
                        addr102:
                        addr139:
                        loop12:
                        while(true)
                        {
                           if(_loc2_ || _loc2_)
                           {
                              continue loop9;
                           }
                           addr121:
                           addr157:
                           while(!(_loc1_ && this))
                           {
                              §§goto(addr128);
                              continue loop12;
                           }
                           while(true)
                           {
                              §§push(this.§#!c§);
                              break loop12;
                           }
                        }
                        loop6:
                        while(!_loc1_)
                        {
                           §§push(§7O§.CLOSE);
                           if(!_loc1_)
                           {
                              §§pop().addEventListener(§§pop(),this.§"D§);
                              while(true)
                              {
                                 this.§@y§ = new §+!7§(this.§#!c§,this.§6!4§,§,-§.§'!f§);
                                 §§goto(addr121);
                                 addr62:
                                 if(!(_loc2_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 addr69:
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc1_)
                                    {
                                       return;
                                    }
                                    addr184:
                                    while(true)
                                    {
                                       this.§#!c§ = new §"g§(this.§%,§,§,$§,this);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§#!c§);
                                    break loop6;
                                    §§goto(addr69);
                                 }
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§pop().addEventListener(§§pop(),this.§>!t§);
                              }
                              addr154:
                           }
                           §§goto(addr157);
                        }
                        while(true)
                        {
                           §§goto(addr154);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      protected function §>!t§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§>b§();
         }
      }
      
      protected function §"D§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@!R§();
         }
      }
      
      public function §@!R§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§#!c§.§8!5§());
         if(!_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§`?§.§+F§());
         if(!_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop5:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 if(_loc3_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc4_ && _loc1_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc4_ && this))
                                                {
                                                   if(_loc4_ && _loc2_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   while(true)
                                                   {
                                                      §@!S§.resume();
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(this.§?!9§);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr61:
                                                         addr61:
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            if(_loc3_ || this)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue loop3;
                                                         }
                                                         addr133:
                                                         while(!(_loc4_ && this))
                                                         {
                                                            §§pop();
                                                            continue loop7;
                                                            §§goto(addr61);
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                             }
                                             return;
                                          }
                                          addr92:
                                       }
                                    }
                                    continue loop2;
                                    addr123:
                                 }
                                 §§goto(addr133);
                              }
                           }
                        }
                     }
                     §§goto(addr123);
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public function §>b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §@!S§.pause();
         }
      }
      
      protected function initializeManagers() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@!]§ = this.initializeLevelItemManager();
            while(true)
            {
               this.§2!v§ = this.initializeLevelThemeManager();
               while(!_loc2_)
               {
                  this.§4a§ = this.initializeLevelManager();
                  if(!(_loc2_ && this))
                  {
                     return;
                     addr57:
                  }
               }
            }
         }
         loop2:
         while(true)
         {
            this.§=p§ = this.initializePackageManager();
            while(true)
            {
               §@!S§.§2A§ = this.initializeLevelMain();
               continue loop2;
               addr33:
               if(!(_loc1_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr40);
            }
         }
         §§goto(addr57);
      }
      
      protected function initializeLevelMain() : §#=§
      {
         return new §#=§(stage,this.§@!]§,this.§2!v§,this.§4a§);
      }
      
      protected function initializeLevelItemManager() : §4O§
      {
         return new §4O§();
      }
      
      protected function initializeLevelThemeManager() : §5!d§
      {
         return new §5!d§();
      }
      
      protected function initializeLevelManager() : §0![§
      {
         return new §0![§();
      }
      
      protected function initializePackageManager() : §-"5§
      {
         return new §-"5§(this.§4a§);
      }
      
      protected function initializeUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§6!4§.userProgress = new §%]§(§[!F§,this.§4a§);
         }
      }
      
      protected function initializeStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §1""§(new §'8§(this.§4a§,§,$§,false));
            loop0:
            while(true)
            {
               §1""§(new §`!z§(this.§4a§,§,$§,false));
               while(true)
               {
                  §1""§(new StateEpisodeSelection(this.§4a§,§,$§,false));
                  loop2:
                  for(; _loc1_ || _loc2_; while(!(_loc2_ && _loc1_))
                  {
                     §1""§(new §@=§(this.§4a§,§,$§,false));
                     loop8:
                     for(; !_loc2_; while(true)
                     {
                        if(_loc2_ && this)
                        {
                           continue loop8;
                        }
                        §§goto(addr109);
                     },§§goto(addr216))
                     {
                        §1""§(new StateCutScene(this.§4a§,§,$§,false));
                        while(true)
                        {
                           §1""§(new §1!Z§(this.§4a§,§,$§,false));
                           continue loop8;
                           addr71:
                           if(_loc1_ || _loc2_)
                           {
                              addr24:
                              return;
                           }
                        }
                     }
                  })
                  {
                     §1""§(new §^j§(this.§4a§,§,$§,false));
                     loop3:
                     while(true)
                     {
                        §1""§(new StatePlay(this.§4a§,§,$§,false));
                        loop4:
                        while(true)
                        {
                           §1""§(new §8§(this.§4a§,§,$§,false));
                           addr196:
                           while(true)
                           {
                              §1""§(new §'!y§(this.§4a§,§,$§,false));
                              while(!_loc2_)
                              {
                                 §1""§(new §]0§(this.§4a§,§,$§,false));
                                 continue loop2;
                                 if(!(_loc2_ && this))
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr196);
      }
      
      protected function §#2§(param1:ByteArray) : void
      {
      }
      
      protected function §4f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §=!L§.§&f§();
         }
      }
      
      protected function §>Z§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §=!L§.§@Y§();
            if(!_loc5_)
            {
               if(this.§[!!§)
               {
                  if(!_loc5_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§%!W§);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc5_ && param1))
                     {
                        _loc2_.§%!W§ = _loc3_;
                     }
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(this.§%!W§);
                        loop2:
                        while(true)
                        {
                           §§push(§>,§);
                           loop3:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 loop0:
                                 while(true)
                                 {
                                    this.§[!!§ = false;
                                    addr126:
                                    while(true)
                                    {
                                       §§push(this.§?]§);
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(§3J§);
                                          if(!(_loc5_ && this))
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                break;
                                             }
                                             if(_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue;
                                                }
                                                this.§5!v§(this.§;A§);
                                             }
                                             if(!_loc5_)
                                             {
                                                addr118:
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 addr123:
                              }
                              §§goto(addr76);
                           }
                        }
                        addr74:
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr126);
               }
               addr76:
               return;
            }
            §§goto(addr118);
         }
         §§goto(addr74);
      }
      
      public function §-_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§#!U§(null);
         }
      }
      
      protected function §#!U§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§0w§ = true;
         }
      }
      
      protected function §[g§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!b§();
         }
      }
      
      public function §]!;§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = getTimer();
         if(!(_loc3_ && _loc1_))
         {
            if(_loc1_ - this.§;A§ > §+!y§)
            {
               if(_loc2_ || _loc2_)
               {
                  if(stage.displayState != StageDisplayState.FULL_SCREEN)
                  {
                     if(stage.displayState == StageDisplayState.NORMAL)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 addr71:
                                 this.§%t§(_loc1_);
                              }
                              else
                              {
                                 addr103:
                                 this.§5!v§(_loc1_);
                                 addr28:
                                 return;
                                 addr106:
                              }
                              §§goto(addr28);
                           }
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr28);
                  }
               }
            }
            §§goto(addr103);
         }
         §§goto(addr71);
      }
      
      public function §,a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5!v§(0);
         }
      }
      
      public function §[z§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(stage)
            {
               if(_loc1_ || _loc1_)
               {
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(_loc1_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr60:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr60);
      }
      
      private function §5!v§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§0w§ = true;
         }
         loop0:
         while(true)
         {
            do
            {
               this.§;A§ = param1;
               continue loop0;
            }
            while(false);
            
            try
            {
               stage.displayState = StageDisplayState.NORMAL;
            }
            catch(e:Error)
            {
            }
            return;
         }
      }
      
      private function §%t§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§0w§ = true;
            loop0:
            while(true)
            {
               this.§;A§ = param1;
               loop1:
               while(true)
               {
                  this.§?]§ = 0;
                  loop2:
                  while(_loc3_)
                  {
                     loop3:
                     while(true)
                     {
                        this.§%!W§ = 0;
                        while(!_loc4_)
                        {
                           this.§[!!§ = true;
                           if(!_loc3_)
                           {
                              continue;
                           }
                           if(_loc4_)
                           {
                              break loop3;
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr29);
         }
         try
         {
            stage.displayState = StageDisplayState.FULL_SCREEN;
         }
         catch(e:Error)
         {
         }
      }
      
      protected function §!!d§(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.keyCode;
         if(!(_loc4_ && _loc2_))
         {
            if(Keyboard.F === _loc2_)
            {
               addr45:
               §§push(0);
               if(!_loc3_)
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
         §§goto(addr45);
      }
      
      public function get §[!W§() : Boolean
      {
         return this.§^!§;
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.setFirstGameState();
            loop0:
            while(true)
            {
               this.§^!§ = true;
               do
               {
                  this.initializeGame();
                  continue loop0;
               }
               while(_loc1_);
               
            }
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(!(_loc4_ && _loc3_))
         {
            §§push(§@!S§.§["4§);
            if(_loc5_)
            {
               if(§§pop() != null)
               {
               }
               §§goto(addr48);
            }
            §§pop().update(param1);
         }
         addr48:
         if(_loc5_)
         {
            §§push(§@!S§.§["4§);
         }
         §§push(super.updateState(param1));
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc5_)
         {
            if(!§-!w§().isGenericState())
            {
               if(!_loc4_)
               {
                  §§goto(addr63);
               }
            }
            §§goto(addr91);
         }
         addr63:
         §§push(_loc2_);
         if(!_loc4_)
         {
            if(§§pop() == §9!c§.§6+§)
            {
               if(!(_loc4_ && this))
               {
                  §7"6§(§-!w§().nextState);
                  addr91:
                  §§push(_loc2_);
               }
            }
            §§goto(addr91);
         }
         return §§pop();
      }
      
      override public function getAppWidth() : Number
      {
         return §3z§;
      }
      
      override public function getAppHeight() : Number
      {
         return §`!,§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §1!p§;
      }
      
      protected function §,p§() : String
      {
         return "ThemeMusic";
      }
      
      public function §get §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(§>D§.§<d§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               addr105:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc1_ || this)
                        {
                           if(_loc1_ || this)
                           {
                              §>D§.§9!q§(this.§,p§(),"Channel_Theme",999);
                              addr89:
                              break;
                           }
                           continue loop0;
                        }
                        §§goto(addr89);
                     }
                     return;
                     addr67:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §=!a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §>D§.§6A§("Channel_Theme");
         }
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: " + VERSION.replace("{svn_version}","local dev build"));
         if(_loc1_ || _loc1_)
         {
            §§push(§§pop() + ", ");
            if(!(_loc2_ && this))
            {
               addr58:
               §§push(§§pop() + "Server: ");
               if(_loc1_)
               {
                  return §§pop() + §7!1§;
               }
            }
         }
         §§goto(addr58);
      }
      
      protected function loadItems() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§@!]§.loadItems(this.§+!g§());
         }
      }
      
      protected function §9!7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§2!v§.§ <§(this.getLevelBackgroundXML().Backgrounds);
         }
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.loadItems();
         }
         do
         {
            this.§9!7§();
            do
            {
               §@!S§.§>!J§(this.§=p§.§"1§,this.§]d§);
            }
            while(!_loc2_);
            
         }
         while(_loc1_);
         
      }
      
      protected function getLevelBackgroundXML() : XML
      {
         return §4!H§.§7o§(§,f§);
      }
      
      protected function §+!g§() : XML
      {
         return §4!H§.§7o§(§,!%§);
      }
      
      protected function §]d§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §`Z§ = true;
            do
            {
               §7"6§(§`!z§.§8"%§);
            }
            while(!_loc2_);
            
         }
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§[!!§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr30:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§?]§);
                     if(_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_ || this)
                     {
                        _loc2_.§?]§ = _loc3_;
                     }
                     if(_loc4_)
                     {
                        addr121:
                        §§push(§6!l§.§<E§());
                        loop0:
                        while(§§pop())
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this.§0w§);
                              if(_loc4_ || param1)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_ || this)
                                       {
                                          this.resize();
                                       }
                                       while(true)
                                       {
                                          this.§0w§ = false;
                                          addr85:
                                          while(!_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                break loop0;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       super.onEnterFrame(param1);
                                       if(_loc4_)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             break loop2;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr85);
                                    }
                                 }
                                 return;
                                 addr100:
                              }
                              break;
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr121);
            }
            §§goto(addr100);
         }
         §§goto(addr30);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = int(Math.round(stage.stageWidth));
         var _loc3_:int = Math.round(stage.stageHeight);
         if(!_loc4_)
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
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr372:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr341:
                                 while(true)
                                 {
                                    §§push(20);
                                    addr342:
                                    while(_loc5_ || param1)
                                    {
                                       §§push(§§pop() < §§pop());
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr371:
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    loop18:
                                    for(; !_loc4_; while(_loc5_ || param1)
                                    {
                                       §§goto(addr298);
                                       §§push(2);
                                    })
                                    {
                                       §§push(2);
                                       loop19:
                                       while(true)
                                       {
                                          §§push(§§pop() < §§pop());
                                          if(_loc5_)
                                          {
                                             §§push(§§pop());
                                             loop20:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop21:
                                                   while(true)
                                                   {
                                                      loop22:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop23:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(_loc3_);
                                                                  loop24:
                                                                  while(!_loc4_)
                                                                  {
                                                                     if(§§pop() / §§pop() > 25 / 12)
                                                                     {
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           §§push(int(Math.round(_loc3_ * (25 / 12))));
                                                                           addr277:
                                                                           loop42:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    loop43:
                                                                                    while(true)
                                                                                    {
                                                                                       addr227:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      while(!_loc4_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            loop30:
                                                                                                            for(; !_loc4_; while(!(_loc4_ && this))
                                                                                                            {
                                                                                                               §§goto(addr136);
                                                                                                            })
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               loop31:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§^!I§);
                                                                                                                  loop32:
                                                                                                                  while(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ || _loc3_))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        addr298:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        addr123:
                                                                                                                        §§push(_loc3_);
                                                                                                                        if(!(_loc5_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           addr136:
                                                                                                                           if(!(_loc4_ && this))
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    return §§pop();
                                                                                                                                    addr147:
                                                                                                                                 }
                                                                                                                                 loop38:
                                                                                                                                 while(!§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §^!I§ = _loc2_;
                                                                                                                                       loop40:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ || this))
                                                                                                                                          {
                                                                                                                                             break loop38;
                                                                                                                                          }
                                                                                                                                          §]i§ = _loc3_;
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc4_ && param1))
                                                                                                                                             {
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(_loc4_ && _loc3_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop23;
                                                                                                                                                }
                                                                                                                                                continue loop31;
                                                                                                                                             }
                                                                                                                                             continue loop40;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§]i§);
                                                                                                                                             addr327:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                break loop42;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop42;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop25;
                                                                                                                              }
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        §§goto(addr159);
                                                                                                                     }
                                                                                                                     §§goto(addr342);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§]i§);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           continue loop32;
                                                                                                                        }
                                                                                                                        if(!(_loc5_ || this))
                                                                                                                        {
                                                                                                                           continue loop42;
                                                                                                                        }
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§goto(addr123);
                                                                                                                        }
                                                                                                                        §§goto(addr327);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr341);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr202);
                                                                                                            }
                                                                                                            §§goto(addr147);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   addr321:
                                                                                                   while(_loc5_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                   §§goto(addr324);
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr371);
                                                                                             }
                                                                                             §§goto(addr372);
                                                                                          }
                                                                                          continue loop43;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                           addr364:
                                                                           while(!_loc4_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              §§goto(addr365);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                         }
                                                         §§goto(addr301);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr321);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr364);
                                    }
                                 }
                              }
                              §§goto(addr352);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr226);
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §@!S§.§1!§(0,0,param1,param2);
            while(true)
            {
               setViewSize(param1,param2);
               loop1:
               while(!_loc4_)
               {
                  while(true)
                  {
                     this.§#!c§.setViewSize(param1,param2);
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §0B§() : void
      {
      }
      
      public function §1$§() : void
      {
      }
      
      protected function initFonts() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            Font.registerFont(AngryBirdsFont);
            loop0:
            while(true)
            {
               Font.registerFont(AngryBirdsBoldFont);
               while(true)
               {
                  Font.registerFont(AngryBirdsTextFont);
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        Font.registerFont(AngryBirdsTextBoldFont);
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
   }
}
