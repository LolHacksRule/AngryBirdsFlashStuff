package
{
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §,!"§.§ true§;
   import §,!"§.§,!#§;
   import §,!"§.§-O§;
   import §,!"§.§0!5§;
   import §,!"§.§8j§;
   import §,!"§.§8v§;
   import §,!"§.§<z§;
   import §,!"§.§="§;
   import §,!"§.§@D§;
   import §,!"§.StateCutScene;
   import §,!"§.StatePlay;
   import §,!"§.§[_§;
   import §,!"§.§]g§;
   import §2!<§.§;!M§;
   import §2G§.§>U§;
   import §5Z§.§[Z§;
   import §8!B§.§ 7§;
   import §8!B§.§#! §;
   import §9P§.§'B§;
   import §9P§.§[!4§;
   import §9T§.§1r§;
   import §;f§.§7P§;
   import §]!0§.§<0§;
   import §]p§.§%§;
   import §^]§.§`!K§;
   import §`K§.§ L§;
   import §`K§.§4N§;
   import §`K§.§^!5§;
   import com.rovio.assets.§1!8§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class AngryBirdsFP11 extends §[!4§
   {
      
      protected static var §]!!§:Class = AngryBirdsFP11_mTextBinary;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §02§:String;
      
      public static var §#U§:String;
      
      public static const §-p§:int = 1024;
      
      public static const §5!9§:int = 768;
      
      public static const §^!E§:Boolean = false;
      
      public static const §-t§:int = 2000;
      
      public static const §1!=§:Boolean = false;
      
      private static const §88§:int = 750;
      
      private static const §[§:int = 3;
      
      private static const §9!4§:int = 15;
      
      protected static var § a§:Class;
      
      protected static var §?!P§:Class;
      
      protected static var §-!0§:Class;
      
      protected static var §;T§:Class;
      
      public static var §`I§:§<0§ = null;
      
      public static var §"!5§:Boolean = true;
      
      private static var §46§:AngryBirdsFP11 = null;
      
      public static var §8&§:Sprite = null;
      
      public static var §;!4§:§ 7§;
      
      public static var §"e§:Boolean = false;
      
      protected static var §?P§:int = 0;
      
      protected static var §%Z§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            VERSION = "0.0.1.({svn_version})";
            loop1:
            while(true)
            {
               §-p§ = 1024;
               loop2:
               while(true)
               {
                  §5!9§ = 768;
                  §^!E§ = false;
                  §-t§ = 2000;
                  loop3:
                  while(true)
                  {
                     §1!=§ = false;
                     while(!_loc2_)
                     {
                        §88§ = 750;
                        while(_loc1_)
                        {
                           §[§ = 3;
                           §9!4§ = 15;
                           if(_loc2_)
                           {
                              continue;
                           }
                           § a§ = AngryBirdsFP11_mViewLibraryBin;
                           loop6:
                           while(true)
                           {
                              §?!P§ = AngryBirdsFP11_mAssetMapBin;
                              while(true)
                              {
                                 §-!0§ = AngryBirdsFP11_mItemDataTableBin;
                                 §;T§ = AngryBirdsFP11_mLevelBackgroundsTableBin;
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    §`I§ = null;
                                    §"!5§ = true;
                                    continue loop6;
                                    addr41:
                                    if(!(_loc2_ && AngryBirdsFP11))
                                    {
                                       §%Z§ = 0;
                                       addr48:
                                       if(!_loc2_)
                                       {
                                          return;
                                          addr32:
                                       }
                                       while(true)
                                       {
                                          if(!_loc1_)
                                          {
                                             while(_loc1_)
                                             {
                                                continue loop2;
                                             }
                                             continue loop3;
                                             addr53:
                                          }
                                          if(_loc2_ && AngryBirdsFP11)
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr41);
                                          §§goto(addr48);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        continue loop0;
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        §8&§ = null;
                        §"e§ = false;
                        §§goto(addr53);
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private var §@+§:§%§;
      
      private var §=3§:int;
      
      private var §,M§:Boolean;
      
      private var §%v§:int;
      
      private var §9,§:int;
      
      protected var §<d§:Boolean;
      
      public function AngryBirdsFP11(param1:§'B§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§@+§ = new §%§();
            loop0:
            while(true)
            {
               super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
               while(true)
               {
                  this.initialize();
                  while(!_loc2_)
                  {
                     this.initStates();
                     loop3:
                     for(; !_loc2_; while(!_loc2_)
                     {
                        §§goto(addr86);
                     })
                     {
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        §§push(stage.stageWidth == §3!<§);
                        if(_loc3_)
                        {
                           §§push(!§§pop());
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       if(!(_loc3_ || _loc2_))
                                       {
                                          continue loop3;
                                       }
                                       this.onStageResize(null);
                                    }
                                    break;
                                 }
                                 return;
                                 addr46:
                              }
                              addr39:
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              }
                              §§goto(addr46);
                           }
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(stage.stageHeight == §8!4§);
            if(!_loc2_)
            {
               §§push(!§§pop());
            }
            if(!_loc2_)
            {
               §§goto(addr39);
            }
            §§goto(addr86);
         }
      }
      
      public static function get stageWidth() : int
      {
         return §?P§;
      }
      
      public static function get stageHeight() : int
      {
         return §%Z§;
      }
      
      public static function §6r§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §"!5§ = param1;
            do
            {
               §[!7§.§%R§(§"!5§);
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public static function §5e§() : Boolean
      {
         return §"!5§;
      }
      
      public static function get §3!<§() : int
      {
         return §`y§.getAppWidth();
      }
      
      public static function get §8!4§() : int
      {
         return §`y§.getAppHeight();
      }
      
      public static function §[5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§[!7§.§-K§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           §[!7§.playSound("ThemeMusic","Channel_Theme",999);
                        }
                        if(!_loc1_)
                        {
                           addr77:
                           break;
                        }
                        §§push(§§pop().§+c§());
                        continue loop0;
                        if(_loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(!_loc1_)
                        {
                           continue;
                        }
                        addr87:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr87:
                     }
                     return;
                  }
               }
               §§goto(addr87);
            }
         }
         §§goto(addr77);
      }
      
      public static function §1k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || AngryBirdsFP11)
         {
            §[!7§.§9!K§("Channel_Theme");
         }
      }
      
      public static function get §`y§() : AngryBirdsFP11
      {
         return §46§;
      }
      
      protected function getAssetMap() : XML
      {
         return §^!5§.§'l§(§?!P§);
      }
      
      protected function getUIData() : XML
      {
         return §^!5§.§'l§(§ a§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §;!M§.§>o§.init(§7P§.§'g§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§@+§,this.§]!,§);
         loop0:
         while(true)
         {
            §46§ = this;
            while(true)
            {
               stage.scaleMode = StageScaleMode.NO_SCALE;
               stage.align = StageAlign.TOP_LEFT;
               §6!6§ = §3!<§;
               while(true)
               {
                  §3d§ = §8!4§;
                  addr67:
                  while(!(_loc3_ && _loc2_))
                  {
                     continue loop0;
                  }
               }
               addr44:
               loop4:
               while(_loc2_ || this)
               {
                  loop5:
                  while(true)
                  {
                     § L§.§2e§(§#!G§);
                     while(_loc2_)
                     {
                        § L§.§?!!§(true);
                        if(!(_loc3_ && _loc2_))
                        {
                           continue loop5;
                        }
                     }
                     continue loop4;
                  }
                  §§goto(addr67);
               }
            }
         }
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#! §.§`'§ = new §1r§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §`I§ = new §<0§(§#U§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §#!F§(new §[_§(false));
         loop0:
         while(true)
         {
            §#!F§(new §-O§(false));
            addr192:
            while(true)
            {
               §#!F§(new §8j§(false));
               addr185:
               while(true)
               {
                  §#!F§(new §@D§(false));
                  continue loop0;
               }
            }
         }
      }
      
      protected function §]!,§(param1:ByteArray) : void
      {
      }
      
      protected function §+S§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §4N§.§<!K§();
         }
      }
      
      protected function §-B§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §4N§.§6V§();
         if(_loc4_)
         {
            if(this.§,M§)
            {
               if(_loc4_)
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§9,§);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc4_ || this)
                  {
                     _loc2_.§9,§ = _loc3_;
                  }
                  §§push(this.§9,§);
                  while(true)
                  {
                     §§push(§9!4§);
                     addr99:
                     §§goto(addr61);
                  }
                  addr60:
               }
               §§goto(addr95);
            }
            addr61:
            while(§§pop() > §§pop())
            {
               continue loop0;
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function § §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.onStageResize(null);
         }
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:* = NaN;
         if(!_loc7_)
         {
            §§push(this.§<d§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(stage.stageWidth < 2);
                     if(_loc6_)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(!_loc7_)
                           {
                              addr67:
                              §§pop();
                              while(_loc6_)
                              {
                                 while(true)
                                 {
                                    §§push(stage.stageHeight < 2);
                                    if(_loc7_ && this)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr67);
                              }
                              return;
                           }
                           continue loop0;
                           addr65:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc7_ && this))
                              {
                                 return;
                              }
                              if(_loc6_)
                              {
                                 if(_loc6_ || param1)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 continue loop1;
                              }
                              §§goto(addr68);
                           }
                           break;
                           §§goto(addr70);
                        }
                        §§push(stage.stageWidth / §3!<§);
                        if(!_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        §§push(stage.stageHeight / §8!4§);
                        if(!(_loc7_ && _loc2_))
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        if(_loc6_ || param1)
                        {
                           if(_loc2_ >= _loc3_)
                           {
                              §§push(stage.stageHeight * (§3!<§ / §8!4§));
                              if(_loc6_)
                              {
                                 addr211:
                                 _loc4_ = §§pop();
                                 addr212:
                                 §§push(Number(stage.stageHeight));
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       _loc5_ = §§pop();
                                       addr157:
                                       §#! §.§%U§(0,0,stage.stageWidth,stage.stageHeight);
                                       if(_loc6_)
                                       {
                                          setViewSize(stage.stageWidth,stage.stageHeight);
                                          if(_loc6_)
                                          {
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §?P§ = stage.stageWidth;
                                                §%Z§ = stage.stageHeight;
                                                if(!(_loc7_ && this))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      addr229:
                                                      _loc4_ = stage.stageWidth;
                                                      addr220:
                                                      _loc5_ = Number(stage.stageWidth * (§8!4§ / §3!<§));
                                                      §§goto(addr157);
                                                      addr222:
                                                      addr226:
                                                   }
                                                   return;
                                                }
                                                addr139:
                                                §§goto(addr139);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr212);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr211);
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr211);
                     }
                     §§goto(addr65);
                  }
               }
               §§goto(addr74);
            }
         }
         §§goto(addr70);
      }
      
      public function §,,§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = getTimer();
         if(!_loc3_)
         {
            if(_loc1_ - this.§=3§ > §88§)
            {
               if(_loc2_ || _loc2_)
               {
                  if(stage.displayState != StageDisplayState.FULL_SCREEN)
                  {
                     if(stage.displayState == StageDisplayState.NORMAL)
                     {
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              this.§2<§(_loc1_);
                           }
                           else
                           {
                              addr88:
                              this.§6N§(_loc1_);
                              addr23:
                              return;
                              addr91:
                           }
                           §§goto(addr91);
                        }
                        if(_loc3_ && _loc1_)
                        {
                        }
                     }
                     §§goto(addr23);
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §@9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§6N§(0);
         }
      }
      
      public function §'!H§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(stage)
            {
               if(_loc1_ || _loc2_)
               {
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(!(_loc2_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr55);
      }
      
      private function §6N§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§<d§ = true;
            while(true)
            {
               stage.displayState = StageDisplayState.NORMAL;
               loop1:
               for(; _loc2_ || _loc2_; while(_loc2_ || _loc2_)
               {
                  this.§,M§ = false;
                  if(_loc2_ || this)
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     this.§=3§ = param1;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      private function §2<§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<d§ = true;
            stage.displayState = StageDisplayState.FULL_SCREEN;
            do
            {
               this.§=3§ = param1;
               do
               {
                  this.§%v§ = 0;
                  this.§9,§ = 0;
               }
               while(!_loc3_);
               
               this.§,M§ = true;
            }
            while(!_loc3_);
            
         }
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.keyCode;
         if(!_loc3_)
         {
            if(Keyboard.F === _loc2_)
            {
               addr41:
               §§push(0);
               if(_loc3_ && this)
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.setFirstGameState();
            while(true)
            {
               §;!M§.§>o§.§,U§();
            }
            addr85:
         }
         loop1:
         while(true)
         {
            §`!K§.§0!#§(JSON.parse(this.§@+§.getFileAsString("Chapters.json")));
            while(!(_loc2_ && _loc1_))
            {
               this.initializeGame();
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break loop1;
               }
               §§goto(addr85);
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
            §§push(§#! §.§92§);
            if(_loc5_)
            {
               if(§§pop() != null)
               {
                  addr38:
                  if(_loc5_)
                  {
                     §§push(§#! §.§92§);
                  }
                  §§push(super.updateState(param1));
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc4_)
                  {
                     if(!§@!@§().isGenericState())
                     {
                        if(_loc5_)
                        {
                           §§push(_loc2_);
                           loop0:
                           while(true)
                           {
                              if(§§pop() == §'!#§.STATE_STATUS_COMPLETED)
                              {
                                 if(_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(§ L§);
                                       §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() + §@!@§().mName);
                                          if(_loc5_ || _loc2_)
                                          {
                                             §§push(§§pop() + " New State = ");
                                             if(_loc5_ || _loc2_)
                                             {
                                             }
                                             addr134:
                                             §§pop().log(§§pop());
                                             while(true)
                                             {
                                                §8n§(§@!@§().mNextState);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                   return §§pop();
                                                   addr63:
                                                }
                                             }
                                             addr135:
                                          }
                                          §§push(§§pop() + §@!@§().mNextState);
                                       }
                                       §§goto(addr134);
                                    }
                                    addr96:
                                 }
                              }
                              §§goto(addr63);
                           }
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr96);
               }
               §§goto(addr38);
            }
            §§pop().update(param1);
         }
         §§goto(addr38);
      }
      
      override public function getAppWidth() : Number
      {
         return §-p§;
      }
      
      override public function getAppHeight() : Number
      {
         return §5!9§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §-t§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Client: ");
         if(_loc1_)
         {
            §§push(VERSION);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop() + §§pop().replace("{svn_version}","local dev build"));
               if(!(_loc2_ && _loc1_))
               {
                  §§push(", ");
                  if(_loc1_ || _loc1_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc1_ || this)
                     {
                        addr75:
                        addr74:
                        §§push(§§pop() + "Server: ");
                        if(_loc2_ && _loc2_)
                        {
                        }
                        §§goto(addr85);
                     }
                     addr84:
                     addr85:
                     return §§pop();
                     §§push(§§pop() + §02§);
                  }
                  §§goto(addr75);
               }
               §§goto(addr74);
            }
            §§goto(addr84);
         }
         §§goto(addr75);
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#! §.§+Q§(this.getItemData(),this.getLevelBackgrounds());
         }
         do
         {
            §#! §.§0!8§(this.§@+§.§;k§,§>U§.§<v§(),this.onGraphicsInitialized);
         }
         while(!_loc1_);
         
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §^!5§.§'l§(§;T§);
      }
      
      protected function getItemData() : XML
      {
         return §^!5§.§'l§(§-!0§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §"e§ = true;
         }
         do
         {
            if(§1!=§)
            {
               if(_loc2_ || param1)
               {
                  §8n§(§[_§.§-A§);
               }
            }
            else
            {
               §8n§(§8j§.§-A§);
               if(_loc2_ || this)
               {
                  §§goto(addr19);
               }
            }
         }
         while(!(_loc2_ || param1));
         
         addr19:
      }
      
      public function §%! §(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §§push(this.§,M§);
            if(!(_loc4_ && param1))
            {
               if(§§pop())
               {
                  var _loc2_:*;
                  §§push((_loc2_ = this).§%v§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc4_)
                  {
                     _loc2_.§%v§ = _loc3_;
                  }
               }
               §§push(§[Z§.§?4§());
            }
            loop0:
            while(§§pop())
            {
               super.onEnterFrame(param1);
               while(true)
               {
                  §§push(this.§<d§);
                  if(!_loc4_)
                  {
                     break;
                  }
                  continue loop0;
               }
               if(§§pop())
               {
                  this.§<d§ = false;
               }
               return;
            }
            return;
         }
         §§goto(addr88);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
