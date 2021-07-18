package
{
   import § "4§.§8!R§;
   import § §.§4#`§;
   import §%R§.§["N§;
   import §&#H§.§3#J§;
   import §,"N§.§'#E§;
   import §,"N§.§@>§;
   import §0!=§.§'"]§;
   import §0!=§.§]"3§;
   import §1!i§.§1"9§;
   import §1#R§.§+#[§;
   import §2"Y§.§,§;
   import §5§.§0§;
   import §5t§.§>"p§;
   import §5t§.Log;
   import §5t§.§`"+§;
   import §6"G§.§-#C§;
   import §69§.§!!u§;
   import §<"c§.§"C§;
   import §<"c§.§+!n§;
   import §<"c§.§+#?§;
   import §<"c§.§,"A§;
   import §<"c§.§1!#§;
   import §<"c§.§5"p§;
   import §<"c§.§<2§;
   import §<"c§.StateCutScene;
   import §<"c§.StatePlay;
   import §<"c§.§^#M§;
   import §<"c§.§`!O§;
   import §<w§.§9"G§;
   import §="2§.§?!r§;
   import §?m§.§+"2§;
   import §[!m§.§&j§;
   import §[!m§.§;a§;
   import §[!m§.§?!C§;
   import §^#>§.§#_§;
   import §`!o§.§6",§;
   import com.angrybirds.§,!q§;
   import com.angrybirds.§=O§;
   import com.angrybirds.fonts.AngryBirdsBoldFont;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.angrybirds.fonts.AngryBirdsTextBoldFont;
   import com.angrybirds.fonts.AngryBirdsTextFont;
   import com.rovio.assets.§`=§;
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
   
   public class §4#;§ extends §]"3§
   {
      
      protected static var §7!h§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §<!&§:String;
      
      public static var SERVER_ROOT:String;
      
      public static const §%N§:int = 1024;
      
      public static const §>#O§:int = 768;
      
      public static const §<N§:Boolean = true;
      
      public static const §""V§:int = 2000;
      
      private static const §;#^§:int = 750;
      
      private static const §?"K§:int = 3;
      
      private static const §4!o§:int = 15;
      
      protected static var §1!G§:Class;
      
      protected static var §2"@§:Class;
      
      protected static var §"!;§:Class;
      
      protected static var §="s§:Class;
      
      protected static var §!9§:Class;
      
      public static var §3"G§:Boolean = true;
      
      private static var §3!j§:§4#;§ = null;
      
      public static var §0Z§:Sprite = null;
      
      public static var §7!A§:§=O§;
      
      public static var §=f§:Boolean = false;
      
      protected static var §]!n§:int = 0;
      
      protected static var §'O§:int = 0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §7!h§ = §+"Y§;
         }
         loop0:
         while(true)
         {
            VERSION = "0.0.1.({svn_version})";
            loop1:
            while(true)
            {
               §%N§ = 1024;
               addr216:
               while(true)
               {
                  §>#O§ = 768;
                  loop3:
                  while(true)
                  {
                     §<N§ = true;
                     loop4:
                     while(true)
                     {
                        §""V§ = 2000;
                        loop5:
                        while(true)
                        {
                           §;#^§ = 750;
                           continue loop0;
                           addr119:
                           if(_loc2_ || _loc1_)
                           {
                              §3!j§ = null;
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    addr86:
                                    if(!(_loc1_ && §4#;§))
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    addr174:
                                    while(true)
                                    {
                                       §4!o§ = 15;
                                       continue loop3;
                                       §§goto(addr86);
                                    }
                                 }
                                 else
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       §!9§ = §?!T§;
                                       loop13:
                                       while(true)
                                       {
                                          §3"G§ = true;
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop13;
                                             }
                                             §§goto(addr119);
                                             addr35:
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr42:
                                                if(_loc2_ || §4#;§)
                                                {
                                                   return;
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §="s§ = §0N§;
                                                      continue loop12;
                                                   }
                                                   addr157:
                                                   while(!_loc1_)
                                                   {
                                                      §"!;§ = §#!Y§;
                                                      continue loop11;
                                                   }
                                                   while(true)
                                                   {
                                                      §2"@§ = §`r§;
                                                      §§goto(addr150);
                                                   }
                                                   addr150:
                                                }
                                                continue loop3;
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                              continue loop4;
                              addr84:
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      protected var §6"v§:§'#E§;
      
      protected var §?4§:§,#5§;
      
      protected var §?"1§:§!!u§;
      
      protected var §+!b§:§+"2§;
      
      protected var §`7§:MovieClip;
      
      protected var §5M§:§;a§;
      
      protected var §8z§:§0#2§;
      
      private var §case §:int;
      
      private var §3!h§:Boolean;
      
      private var §-#,§:int;
      
      private var §8#`§:int;
      
      protected var §4!V§:Boolean;
      
      protected var §5!X§:Boolean;
      
      protected var §4#J§:§@>§;
      
      protected var §?#B§:Boolean;
      
      protected var §^#F§:Boolean = true;
      
      private var § #_§:Boolean = false;
      
      public function §4#;§(param1:§'"]§, param2:String, param3:String)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            this.§5B§();
            loop0:
            while(true)
            {
               addr32:
               while(true)
               {
                  §<!&§ = param2;
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        SERVER_ROOT = param3;
                        if(!_loc7_)
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
         var _loc5_:XML = this.getPopupData();
         if(!(_loc7_ && this))
         {
            §1"9§.§;!P§(_loc5_,_loc4_,["Views","Components","Popups"],true);
            loop4:
            while(true)
            {
               super(param1,this.getLoadingScreen(),_loc4_,this.getAssetMap());
               while(true)
               {
                  this.initialize();
                  loop13:
                  while(_loc6_ || param2)
                  {
                     continue loop4;
                     addr68:
                     if(!(_loc6_ || param1))
                     {
                        continue;
                     }
                     addr75:
                     if(!(_loc7_ && this))
                     {
                        addr82:
                        if(!(_loc6_ || param1))
                        {
                           loop7:
                           for(; _loc6_ || param1; §§goto(addr82))
                           {
                              §§push(stage.stageWidth == screenWidth);
                              loop8:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop9:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             continue loop13;
                                          }
                                          while(true)
                                          {
                                             stage.showDefaultContextMenu = false;
                                             if(!_loc6_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr68);
                                          }
                                          §§goto(addr75);
                                       }
                                       continue loop7;
                                       addr129:
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       §§pop();
                                       addr157:
                                       while(true)
                                       {
                                          §§push(stage.stageHeight == screenHeight);
                                          if(!(_loc7_ && this))
                                          {
                                             if(_loc6_)
                                             {
                                                if(_loc7_ && param2)
                                                {
                                                   break;
                                                }
                                                §§push(!§§pop());
                                                continue loop8;
                                             }
                                             continue loop10;
                                          }
                                          continue loop8;
                                       }
                                       continue loop9;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              this.initializeStates();
                              §§goto(addr161);
                           }
                           addr161:
                           addr172:
                        }
                        return;
                     }
                     §§goto(addr157);
                  }
               }
            }
         }
         §§goto(addr172);
      }
      
      public static function get stageWidth() : int
      {
         return §]!n§;
      }
      
      public static function get stageHeight() : int
      {
         return §'O§;
      }
      
      public static function §2!>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §3"G§ = param1;
         }
         do
         {
            §?!r§.§2r§(§3"G§);
         }
         while(!_loc3_);
         
      }
      
      public static function §]q§() : Boolean
      {
         return §3"G§;
      }
      
      public static function get screenWidth() : int
      {
         return singleton.getAppWidth();
      }
      
      public static function get screenHeight() : int
      {
         return singleton.getAppHeight();
      }
      
      public static function get singleton() : §4#;§
      {
         return §3!j§;
      }
      
      public function get popupManager() : §;a§
      {
         return this.§5M§;
      }
      
      public function get tutorialPopupManager() : §0#2§
      {
         return this.§8z§;
      }
      
      public function get dataModel() : §@>§
      {
         return this.§4#J§;
      }
      
      public function get §-2§() : Boolean
      {
         return this.§5!X§;
      }
      
      public function set §-2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5!X§ = param1;
         }
      }
      
      protected function getAssetMap() : XML
      {
         return §>"p§.§ !Q§(§"!;§);
      }
      
      protected function getUIData() : XML
      {
         return §>"p§.§ !Q§(§1!G§);
      }
      
      protected function getPopupData() : XML
      {
         return §>"p§.§ !Q§(§2"@§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initializeDataModel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§4#J§ = new §@>§();
         }
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            §3!j§ = this;
         }
         loop0:
         while(true)
         {
            this.§5!X§ = false;
            loop1:
            while(true)
            {
               §,!q§.init(this,screenWidth,screenHeight);
               while(true)
               {
                  this.initializeDataModel();
                  loop3:
                  while(true)
                  {
                     this.§"+§();
                     loop4:
                     while(true)
                     {
                        this.initializeUserProgress();
                        addr154:
                        while(true)
                        {
                           §["N§.§%!E§.init(§6",§.§<[§(),this.§%"&§() || "",stage.loaderInfo.parameters.buildNumber || "",this.§6"v§,this.§4#4§);
                           loop6:
                           while(true)
                           {
                              stage.scaleMode = StageScaleMode.NO_SCALE;
                              while(true)
                              {
                                 stage.align = StageAlign.TOP_LEFT;
                                 continue loop3;
                                 addr52:
                                 if(_loc2_ || this)
                                 {
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        addr83:
                        if(_loc2_ || this)
                        {
                           if(_loc2_)
                           {
                              loop12:
                              while(true)
                              {
                                 Log.§!"7§(§["A§);
                                 addr43:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       addr45:
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§goto(addr52);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §4w§ = screenHeight;
                                             break loop12;
                                             §§goto(addr45);
                                          }
                                          addr104:
                                       }
                                    }
                                    addr81:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr83);
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr154);
                                 addr30:
                                 if(_loc3_ && _loc3_)
                                 {
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue;
                                 }
                                 var _loc1_:XMLList = §>"p§.§ !Q§(§7!h§).children();
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    §`=§.init(_loc1_);
                                 }
                                 §?!r§.§,"d§("CHANNEL_THEME",1,1);
                                 §?!r§.§,"d§("CHANNEL_AMBIENT",1,1);
                                 stage.addEventListener(Event.MOUSE_LEAVE,this.§[u§);
                                 addr374:
                                 addr409:
                                 addr388:
                                 if(!(_loc3_ && this))
                                 {
                                    stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
                                    stage.addEventListener(Event.RESIZE,this.§=_§);
                                    addr366:
                                    if(_loc2_ || _loc3_)
                                    {
                                       stage.addEventListener(KeyboardEvent.KEY_DOWN,this.§?B§);
                                       stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§=,§);
                                       addr333:
                                       addr343:
                                       if(!_loc3_)
                                       {
                                          stage.addEventListener(Event.ACTIVATE,this.§=!j§);
                                          addr318:
                                          if(_loc2_ || this)
                                          {
                                             stage.addEventListener(Event.DEACTIVATE,this.§<"x§);
                                             addr303:
                                             if(!(_loc3_ && this))
                                             {
                                                stage.tabChildren = false;
                                                addr293:
                                                if(_loc2_)
                                                {
                                                   §7!A§ = new §=O§(stage);
                                                   addr284:
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         addr274:
                                                         §7!A§.addEventListener(§9"G§.§`!V§,this.§'#K§);
                                                         addr277:
                                                         §§push(§7!A§);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(§9"G§.§,#T§);
                                                            if(!_loc3_)
                                                            {
                                                               §§pop().addEventListener(§§pop(),this.§3!I§);
                                                               §§push(§-#C§.§%!E§);
                                                               §§push(§<N§);
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               §§pop().§;"8§ = §§pop();
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  if(_loc2_ || _loc3_)
                                                                  {
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§goto(addr374);
                                                                              }
                                                                              return;
                                                                           }
                                                                           §§goto(addr366);
                                                                        }
                                                                        §§goto(addr303);
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                                  §§goto(addr277);
                                                               }
                                                               addr269:
                                                               §§goto(addr269);
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         addr272:
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr409);
                                                   }
                                                   §§goto(addr293);
                                                }
                                                §§goto(addr333);
                                             }
                                             §§goto(addr318);
                                          }
                                          §§goto(addr343);
                                       }
                                       §§goto(addr366);
                                    }
                                    §§goto(addr388);
                                 }
                                 addr405:
                                 §§goto(addr405);
                              }
                              while(_loc2_)
                              {
                                 §,!q§.§!#=§.visible = §<N§;
                                 §§goto(addr81);
                                 §§goto(addr30);
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  Log.§6"<§(true);
                  if(_loc2_)
                  {
                     §§goto(addr30);
                  }
                  §§goto(addr43);
               }
            }
         }
      }
      
      protected function §%"&§() : String
      {
         return stage.loaderInfo.parameters.assetsUrl;
      }
      
      private function §<"x§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§57§();
         }
      }
      
      private function §57§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§^#F§);
            loop0:
            for(; §§pop(); §§push(this.§?#B§),if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  §§goto(addr31);
               }
               addr48:
               return;
            })
            {
               while(true)
               {
                  this.§^#F§ = false;
                  loop2:
                  while(_loc2_ || _loc1_)
                  {
                     while(true)
                     {
                        this.§?#B§ = §?!r§.§`"5§;
                        do
                        {
                           if(_loc2_)
                           {
                              if(!(_loc2_ || _loc1_))
                              {
                                 break loop0;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        §§goto(addr48);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr87);
      }
      
      private function §=!j§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§=!§();
         }
      }
      
      private function §=!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§^#F§);
            loop0:
            for(; !§§pop(); while(true)
            {
               §§push(this.§?#B§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     if(_loc1_ || this)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        break loop0;
                     }
                     §§goto(addr69);
                  }
                  break;
               }
               continue loop0;
            },return)
            {
               while(true)
               {
                  this.§^#F§ = true;
                  continue loop0;
               }
            }
         }
      }
      
      protected function setupPopupManager() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`7§ = new MovieClip();
            loop0:
            while(true)
            {
               §["A§.stage.addChild(this.§`7§);
               loop1:
               while(true)
               {
                  this.§5M§ = new §&j§(this.§`7§,§4#,§,this);
                  loop2:
                  while(true)
                  {
                     §§push(this.§5M§);
                     loop3:
                     while(true)
                     {
                        §§push(§+#[§.OPEN);
                        loop4:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.§'#K§);
                           loop5:
                           while(!_loc2_)
                           {
                              §§push(this.§5M§);
                              while(true)
                              {
                                 §§push(§+#[§.CLOSE);
                                 if(_loc2_)
                                 {
                                    break;
                                    addr123:
                                 }
                                 §§pop().addEventListener(§§pop(),this.§3!I§);
                                 while(_loc1_)
                                 {
                                 }
                                 continue loop1;
                                 loop10:
                                 for(; !(_loc2_ && _loc2_); while(true)
                                 {
                                    §§push(this.§5M§);
                                    if(!(_loc2_ && this))
                                    {
                                       continue loop3;
                                    }
                                    continue loop10;
                                 },continue loop3)
                                 {
                                    §§push(§?!C§.§&T§);
                                    while(true)
                                    {
                                       §§push(true);
                                       addr91:
                                       addr40:
                                       while(true)
                                       {
                                          §§pop().§5!a§(§§pop(),§§pop(),new Rectangle(0,0,-180,0));
                                          continue loop10;
                                       }
                                       §§push(§?!C§.§[!Z§);
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          continue;
                                       }
                                       §§push(true);
                                       if(!_loc2_)
                                       {
                                          §§pop().§5!a§(§§pop(),§§pop(),new Rectangle(0,0,0,0));
                                          if(_loc1_)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr123);
                                             }
                                             while(_loc1_)
                                             {
                                                §§push(this.§5M§);
                                                continue loop10;
                                             }
                                             continue loop2;
                                             addr110:
                                          }
                                          continue loop10;
                                       }
                                       §§goto(addr91);
                                    }
                                 }
                              }
                              continue loop4;
                           }
                           continue loop0;
                        }
                        if(!(_loc1_ || this))
                        {
                           continue;
                        }
                        §§goto(addr40);
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§8z§ = new §0#2§(this.§5M§,this.§4#J§,§?!C§.§[!Z§);
            §§goto(addr110);
         }
      }
      
      protected function §'#K§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§##!§();
         }
      }
      
      protected function §3!I§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.resumeEngine();
         }
      }
      
      public function resumeEngine() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§5M§.§""n§());
         if(_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§7!A§.isExternallyPaused());
         if(_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(!§§pop());
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
                              if(_loc4_ || this)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                 }
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc3_ && _loc3_)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc4_ || _loc2_)
                                             {
                                                if(!(_loc4_ || _loc1_))
                                                {
                                                   continue loop4;
                                                }
                                                while(true)
                                                {
                                                   §,!q§.resume();
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(this.§-2§);
                                                      if(!(_loc4_ || this))
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr131:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop7;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          return;
                                       }
                                    }
                                    addr76:
                                 }
                                 §§goto(addr131);
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr111);
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §##!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §,!q§.pause();
         }
      }
      
      protected function §"+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§?4§ = this.initializeLevelItemManager();
            loop0:
            while(true)
            {
               this.§?"1§ = this.initializeLevelThemeManager();
               while(true)
               {
                  this.§+!b§ = this.initializeLevelManager();
                  loop2:
                  while(_loc2_ || _loc2_)
                  {
                     this.§6"v§ = this.initializePackageManager();
                     loop3:
                     while(_loc2_)
                     {
                        §,!q§.§9!,§ = this.initializeLevelMain();
                        while(true)
                        {
                           this.setupPopupManager();
                           if(_loc2_ || this)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      protected function initializeLevelMain() : §#_§
      {
         return new §#_§(stage,this.§?4§,this.§?"1§,this.§+!b§);
      }
      
      protected function initializeLevelItemManager() : §,#5§
      {
         return new §,#5§();
      }
      
      protected function initializeLevelThemeManager() : §!!u§
      {
         return new §!!u§();
      }
      
      protected function initializeLevelManager() : §+"2§
      {
         return new §+"2§();
      }
      
      protected function initializePackageManager() : §'#E§
      {
         return new §'#E§(this.§+!b§);
      }
      
      protected function initializeUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§4#J§.userProgress = new §8!R§(SERVER_ROOT,this.§+!b§);
         }
      }
      
      protected function initializeStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §7![§(new §<2§(this.§+!b§,§4#,§,false));
            loop0:
            while(true)
            {
               §7![§(new §+!n§(this.§+!b§,§4#,§,false));
               loop1:
               while(true)
               {
                  §7![§(new §"C§(this.§+!b§,§4#,§,false));
                  loop2:
                  while(true)
                  {
                     §7![§(new §+#?§(this.§+!b§,§4#,§,false));
                     loop3:
                     while(true)
                     {
                        §7![§(new StatePlay(this.§+!b§,§4#,§,false));
                        loop4:
                        while(!_loc1_)
                        {
                           §7![§(new §,"A§(this.§+!b§,§4#,§,false));
                           while(true)
                           {
                              §7![§(new §5"p§(this.§+!b§,§4#,§,false));
                              loop6:
                              for(; _loc2_; while(true)
                              {
                                 if(_loc2_ || this)
                                 {
                                    continue loop4;
                                 }
                                 continue loop6;
                                 addr62:
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 this.§=_§(null);
                                 addr72:
                                 if(!_loc2_)
                                 {
                                    while(!_loc1_)
                                    {
                                       §§push(stage.stageWidth == screenWidth);
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          §§push(!§§pop());
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§goto(addr97);
                                             }
                                             else
                                             {
                                                while(§§pop())
                                                {
                                                   if(!(_loc1_ && this))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§goto(addr62);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr98);
                                                      }
                                                   }
                                                   §§goto(addr72);
                                                }
                                                addr25:
                                                return;
                                                addr51:
                                             }
                                             §§goto(addr170);
                                             addr44:
                                             if(_loc1_ && this)
                                             {
                                                continue;
                                             }
                                             §§goto(addr51);
                                          }
                                       }
                                       §§goto(addr97);
                                    }
                                    continue loop1;
                                    addr132:
                                 }
                                 §§goto(addr74);
                              },continue loop4)
                              {
                                 §7![§(new §1!#§(this.§+!b§,§4#,§,false));
                                 while(true)
                                 {
                                    §7![§(new §^#M§(this.§+!b§,§4#,§,false));
                                    addr170:
                                    addr74:
                                    loop8:
                                    while(true)
                                    {
                                       §7![§(new StateCutScene(this.§+!b§,§4#,§,false));
                                       continue loop6;
                                       addr98:
                                       loop13:
                                       while(true)
                                       {
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             continue loop3;
                                          }
                                          continue loop8;
                                          addr97:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop13;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    if(_loc2_ || this)
                                    {
                                       §§goto(addr25);
                                    }
                                 }
                              }
                           }
                           if(_loc1_ && this)
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           §7![§(new §`!O§(this.§+!b§,§4#,§,false));
                           §§goto(addr132);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(stage.stageHeight == screenHeight);
            if(!(_loc1_ && _loc1_))
            {
               if(_loc2_)
               {
                  §§goto(addr44);
                  §§push(!§§pop());
               }
               §§goto(addr97);
            }
            §§goto(addr44);
         }
      }
      
      protected function §4#4§(param1:ByteArray) : void
      {
      }
      
      protected function §[u§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §`"+§.§+#`§();
         }
      }
      
      protected function §[#8§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §`"+§.§9!q§();
            if(_loc5_ || this)
            {
               if(this.§3!h§)
               {
                  if(!_loc4_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§8#`§);
                     if(_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc2_.§8#`§ = _loc3_;
                     }
                     if(_loc5_)
                     {
                        §§push(this.§8#`§);
                        loop0:
                        while(true)
                        {
                           §§push(§4!o§);
                           addr111:
                           while(true)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 addr67:
                                 return;
                                 addr66:
                              }
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 this.§3!h§ = false;
                                 continue loop0;
                              }
                           }
                        }
                        addr65:
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr65);
               }
               §§goto(addr67);
            }
            §§goto(addr91);
         }
         §§goto(addr114);
      }
      
      public function §+%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§=_§(null);
         }
      }
      
      protected function §=_§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4!V§ = true;
         }
      }
      
      protected function §=,§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§=!§();
         }
      }
      
      public function §5"q§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = getTimer();
         if(_loc2_)
         {
            if(_loc1_ - this.§case § > §;#^§)
            {
               if(!_loc3_)
               {
                  addr71:
                  if(stage.displayState == StageDisplayState.FULL_SCREEN)
                  {
                     if(_loc2_)
                     {
                        addr88:
                        this.§"!+§(_loc1_);
                     }
                     addr23:
                     return;
                     addr91:
                  }
                  else
                  {
                     if(stage.displayState == StageDisplayState.NORMAL)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              this.§9#-§(_loc1_);
                           }
                           else
                           {
                              §§goto(addr91);
                           }
                        }
                     }
                     §§goto(addr23);
                  }
                  §§goto(addr23);
               }
               §§goto(addr88);
            }
            §§goto(addr23);
         }
         §§goto(addr71);
      }
      
      public function §<#'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§"!+§(0);
         }
      }
      
      public function §>!Z§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(stage)
            {
               if(!_loc1_)
               {
                  addr38:
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(_loc2_)
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
            §§goto(addr56);
         }
         §§goto(addr38);
      }
      
      private function §"!+§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§4!V§ = true;
         }
         while(true)
         {
            while(true)
            {
               this.§case § = param1;
               do
               {
                  this.§3!h§ = false;
               }
               while(_loc3_ && this);
               
               if(_loc4_ || _loc2_)
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
      
      private function §9#-§(param1:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§4!V§ = true;
            while(true)
            {
               this.§case § = param1;
               while(_loc3_ || _loc3_)
               {
                  this.§-#,§ = 0;
                  loop2:
                  for(; _loc3_ || this; loop4:
                  while(_loc3_ || this)
                  {
                     while(true)
                     {
                        this.§3!h§ = true;
                        if(!_loc3_)
                        {
                           continue loop4;
                        }
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr27);
                     }
                     try
                     {
                        stage.displayState = StageDisplayState.FULL_SCREEN;
                     }
                     catch(e:Error)
                     {
                     }
                     return;
                  })
                  {
                     while(true)
                     {
                        this.§8#`§ = 0;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      protected function §?B§(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.keyCode;
         if(_loc3_ || _loc2_)
         {
            if(Keyboard.F === _loc2_)
            {
               addr45:
               §§push(0);
               if(_loc3_ || _loc3_)
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
      
      public function get §0k§() : Boolean
      {
         return this.§ #_§;
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.setFirstGameState();
            while(true)
            {
               this.§ #_§ = true;
               addr61:
               if(!(_loc1_ && _loc2_))
               {
                  §["N§.§%!E§.§!" §();
                  addr78:
                  if(!(_loc2_ || _loc1_))
                  {
                     while(_loc2_ || this)
                     {
                        §§goto(addr61);
                        §§goto(addr78);
                     }
                     while(true)
                     {
                        this.initializeGame();
                        §§goto(addr54);
                     }
                     addr54:
                     addr83:
                  }
                  return;
               }
            }
         }
         §§goto(addr83);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc4_)
         {
            §§push(§,!q§.§!#=§);
            if(!(_loc5_ && this))
            {
               if(§§pop() != null)
               {
               }
               §§goto(addr52);
            }
            §§pop().update(param1);
         }
         addr52:
         if(_loc4_ || _loc3_)
         {
            §§push(§,!q§.§!#=§);
         }
         §§push(super.updateState(param1));
         if(_loc4_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(!§@!2§().isGenericState())
            {
               if(!_loc5_)
               {
                  §§goto(addr72);
               }
            }
            §§goto(addr95);
         }
         addr72:
         §§push(_loc2_);
         if(_loc4_)
         {
            if(§§pop() == §4#`§.§-#_§)
            {
               if(_loc4_)
               {
                  § g§(§@!2§().nextState);
                  addr95:
                  §§push(_loc2_);
               }
            }
            §§goto(addr95);
         }
         return §§pop();
      }
      
      override public function getAppWidth() : Number
      {
         return §%N§;
      }
      
      override public function getAppHeight() : Number
      {
         return §>#O§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §""V§;
      }
      
      protected function §5#J§() : String
      {
         return "ThemeMusic";
      }
      
      public function playThemeMusic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§?!r§.§2R§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || this)
                           {
                              if(_loc1_ && _loc2_)
                              {
                                 continue loop0;
                              }
                              §?!r§.§"#_§(this.§5#J§(),"Channel_Theme",999);
                           }
                           break;
                        }
                        §§push(§§pop().§<"M§());
                        addr35:
                        break;
                        if(_loc2_ || _loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(_loc2_)
                        {
                           continue;
                        }
                        addr98:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr98:
                     }
                     return;
                  }
               }
               §§goto(addr98);
            }
         }
         §§goto(addr72);
      }
      
      public function stopThemeMusic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?!r§.§9"4§("Channel_Theme");
         }
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: " + VERSION.replace("{svn_version}","local dev build"));
         if(_loc1_ || this)
         {
            §§push(§§pop() + ", ");
            if(_loc1_)
            {
               addr53:
               §§push(§§pop() + "Server: ");
               if(!_loc2_)
               {
                  return §§pop() + §<!&§;
               }
            }
         }
         §§goto(addr53);
      }
      
      protected function loadItems() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§?4§.loadItems(this.§=!%§());
         }
      }
      
      protected function loadBackgrounds() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§?"1§.§7-§(this.§6"!§().Backgrounds);
         }
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.loadItems();
         }
         do
         {
            this.loadBackgrounds();
            do
            {
               §,!q§.§[#Z§(this.§6"v§.§!"$§,this.onGraphicsInitialized);
            }
            while(_loc1_ && _loc2_);
            
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      protected function §6"!§() : XML
      {
         return §>"p§.§ !Q§(§!9§);
      }
      
      protected function §=!%§() : XML
      {
         return §>"p§.§ !Q§(§="s§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §=f§ = true;
         }
         do
         {
            § g§(§+!n§.§^!7§);
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§3!h§);
            if(_loc4_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc2_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§-#,§);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc5_ && _loc2_))
                     {
                        _loc2_.§-#,§ = _loc3_;
                     }
                     if(_loc4_)
                     {
                        addr136:
                        §§push(§3#J§.§;[§());
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(this.§4!V§);
                                 if(_loc5_ && param1)
                                 {
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr133:
                                       while(true)
                                       {
                                          this.resize();
                                          addr135:
                                          while(true)
                                          {
                                             this.§4!V§ = false;
                                             addr111:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       addr133:
                                    }
                                    while(true)
                                    {
                                       super.onEnterFrame(param1);
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       if(!_loc5_)
                                       {
                                          if(_loc4_ || this)
                                          {
                                             break;
                                          }
                                          §§goto(addr133);
                                       }
                                       §§goto(addr135);
                                    }
                                    addr92:
                                    if(_loc4_ || _loc2_)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          return;
                                       }
                                       break loop1;
                                    }
                                    addr140:
                                    while(true)
                                    {
                                       continue loop1;
                                       §§goto(addr92);
                                    }
                                 }
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr133);
                  }
                  §§goto(addr140);
               }
               §§goto(addr136);
            }
            §§goto(addr132);
         }
         §§goto(addr133);
      }
      
      protected final function resize(param1:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = int(Math.round(stage.stageWidth));
         var _loc3_:* = int(Math.round(stage.stageHeight));
         if(!(_loc5_ && _loc2_))
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
                              addr376:
                              loop47:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(20);
                                    loop48:
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                       addr354:
                                       while(true)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§]!n§);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      addr368:
                                                      loop9:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(§'O§);
                                                            while(!_loc5_)
                                                            {
                                                               §§push(int(§§pop()));
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr335:
                                                                  while(!(_loc5_ && _loc2_))
                                                                  {
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               addr93:
                                                               if(_loc5_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc3_);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr106:
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        loop39:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 §§push(false);
                                                                                 loop41:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    loop37:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr192:
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr202:
                                                                                                   if(_loc4_ || this)
                                                                                                   {
                                                                                                      if(!(_loc4_ || _loc2_))
                                                                                                      {
                                                                                                         continue loop47;
                                                                                                      }
                                                                                                      §§push(§'O§);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               §§goto(addr93);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr334);
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      loop33:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                         {
                                                                                                            addr141:
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     addr151:
                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                     {
                                                                                                                        if(_loc4_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           while(!_loc5_)
                                                                                                                           {
                                                                                                                              loop36:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop37;
                                                                                                                                       }
                                                                                                                                       continue loop39;
                                                                                                                                    }
                                                                                                                                    addr318:
                                                                                                                                    while(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc4_)
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   break loop36;
                                                                                                                                                }
                                                                                                                                                continue loop2;
                                                                                                                                             }
                                                                                                                                             continue loop4;
                                                                                                                                             addr304:
                                                                                                                                             if(!(_loc5_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                return §§pop();
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop47;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr302:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc2_);
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc5_ && param1)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                         addr264:
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                      while(_loc4_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() / §§pop() > 25 / 12)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(int(Math.round(_loc3_ * (25 / 12))));
                                                                                                                                                               addr284:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc2_ = §§pop();
                                                                                                                                                                  break loop33;
                                                                                                                                                               }
                                                                                                                                                               break loop37;
                                                                                                                                                            }
                                                                                                                                                            addr276:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1);
                                                                                                                                                            if(!(_loc5_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ && this)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(!§§pop());
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  addr235:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop36;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        break loop37;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr106);
                                                                                                                                                               }
                                                                                                                                                               addr234:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr234);
                                                                                                                                                            addr287:
                                                                                                                                                         }
                                                                                                                                                         continue loop6;
                                                                                                                                                      }
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr284);
                                                                                                                                                }
                                                                                                                                                continue loop9;
                                                                                                                                                addr252:
                                                                                                                                             }
                                                                                                                                             addr303:
                                                                                                                                             §§goto(addr304);
                                                                                                                                             §§goto(addr192);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop3;
                                                                                                                                 }
                                                                                                                                 §§goto(addr235);
                                                                                                                              }
                                                                                                                              while(!_loc5_)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 while(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(2);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ || this))
                                                                                                                                       {
                                                                                                                                          continue loop48;
                                                                                                                                       }
                                                                                                                                       §§goto(addr301);
                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                       §§goto(addr151);
                                                                                                                                    }
                                                                                                                                    continue loop48;
                                                                                                                                    §§goto(addr141);
                                                                                                                                 }
                                                                                                                                 continue loop0;
                                                                                                                                 §§goto(addr202);
                                                                                                                              }
                                                                                                                              §§goto(addr335);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr318);
                                                                                                                           }
                                                                                                                           addr317:
                                                                                                                           addr166:
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr293);
                                                                                                                  }
                                                                                                                  §§goto(addr264);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr317);
                                                                                                               }
                                                                                                               addr316:
                                                                                                               addr149:
                                                                                                            }
                                                                                                            §§goto(addr290);
                                                                                                         }
                                                                                                         §§goto(addr284);
                                                                                                         §§goto(addr216);
                                                                                                      }
                                                                                                      addr216:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         §§goto(addr287);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr326);
                                                                                                }
                                                                                                break loop37;
                                                                                                addr61:
                                                                                                if(!(_loc4_ || this))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   break loop39;
                                                                                                }
                                                                                                §§push(true);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop41;
                                                                                                }
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   §§goto(addr304);
                                                                                                }
                                                                                                §§goto(addr166);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr316);
                                                                                             }
                                                                                             addr315:
                                                                                          }
                                                                                          §§goto(addr302);
                                                                                       }
                                                                                       §§goto(addr236);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             §§goto(addr134);
                                                                                             §§push(§]!n§);
                                                                                          }
                                                                                          §§goto(addr303);
                                                                                       }
                                                                                       §§goto(addr276);
                                                                                    }
                                                                                    §§goto(addr284);
                                                                                 }
                                                                                 addr123:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop40:
                                                                                 while(true)
                                                                                 {
                                                                                    addr76:
                                                                                    while(true)
                                                                                    {
                                                                                       §]!n§ = _loc2_;
                                                                                       for(; !_loc5_; §'O§ = _loc3_,do
                                                                                       {
                                                                                          this.resizeViews(§]!n§,§'O§);
                                                                                       }
                                                                                       while(!(_loc4_ || _loc3_));
                                                                                       ,if(!_loc4_)
                                                                                       {
                                                                                          continue;
                                                                                       },§§goto(addr61))
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       continue loop40;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr285);
                                                                           }
                                                                           §§goto(addr76);
                                                                        }
                                                                        §§goto(addr252);
                                                                     }
                                                                     §§goto(addr234);
                                                                  }
                                                                  §§goto(addr123);
                                                               }
                                                               §§goto(addr149);
                                                            }
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr315);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr368);
                              }
                           }
                        }
                        §§goto(addr354);
                     }
                  }
               }
            }
         }
         §§goto(addr376);
      }
      
      protected function resizeViews(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §,!q§.§0!L§(0,0,param1,param2);
            do
            {
               setViewSize(param1,param2);
               do
               {
                  this.§5M§.setViewSize(param1,param2);
               }
               while(!(_loc3_ || _loc3_));
               
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
      
      protected function §5B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            Font.registerFont(AngryBirdsFont);
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
                  while(!(_loc1_ || _loc1_));
                  
               }
               while(!_loc1_);
               
            }
            while(_loc2_ && _loc2_);
            
         }
      }
   }
}
