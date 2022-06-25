package §2!H§
{
   import § D§.§]!B§;
   import §"L§.§5O§;
   import §"L§.§;c§;
   import §"L§.LevelManager;
   import §"L§.LevelModel;
   import §#!Q§.Replay;
   import §&=§.§0'§;
   import §&=§.LevelParticleManager;
   import §&L§.b2Vec2;
   import §&V§.§+H§;
   import §,!_§.AnimationManager;
   import §,!_§.DynamicContentManager;
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §2!?§.§7!W§;
   import §3p§.§4!G§;
   import §3p§.LevelObject;
   import §3p§.LevelObjectManager;
   import §3p§.LevelObjectRenderer;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   import §6b§.Log;
   import §7p§.Integer;
   import §<!j§.§%!-§;
   import §<§.LevelBackground;
   import §[m§.LevelThemeBackground;
   import §[m§.LevelThemeBackgroundManager;
   import §`u§.§@K§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelMain
   {
      
      private static const §1!j§:int = 20;
      
      public static const §6v§:Number;
      
      public static const §0O§:Number;
      
      public static const §8N§:Number = 0.05;
      
      public static const §%!F§:Number;
      
      public static const §6!_§:Number;
      
      public static const §!!R§:Integer;
      
      protected static var §[F§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || LevelMain)
         {
            §1!j§ = 20;
            while(true)
            {
               §6v§ = §]!B§.SCREEN_WIDTH;
               addr57:
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
         loop1:
         while(true)
         {
            §0O§ = §]!B§.SCREEN_HEIGHT;
            loop2:
            while(true)
            {
               §8N§ = 1 / 20;
               loop3:
               while(true)
               {
                  §%!F§ = §]!B§.SCREEN_HEIGHT * §8N§;
                  loop4:
                  do
                  {
                     §§push(§§findproperty(§6!_§));
                     §§push(§6v§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() * §8N§);
                     }
                     §§pop().§6!_§ = §§pop();
                     loop5:
                     while(_loc1_)
                     {
                        §!!R§ = new Integer(13 - 3);
                        while(_loc1_)
                        {
                           §[F§ = LevelModel.§-!Q§;
                           if(!_loc2_)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 continue loop4;
                              }
                              continue loop5;
                              continue loop5;
                           }
                        }
                        continue loop2;
                     }
                     continue loop3;
                  }
                  while(_loc2_ && _loc1_);
                  
                  continue loop1;
               }
            }
         }
      }
      
      protected var §5f§:LevelObjectManager;
      
      private var §+!Y§:LevelObject;
      
      private var §4I§:Array = null;
      
      protected var §4!6§:LevelBackground;
      
      public var mLevelEngine:§?!`§;
      
      protected var §^!2§:§1H§;
      
      protected var §]!Y§:§%!-§;
      
      protected var §8!5§:LevelSlingshot;
      
      protected var §<H§:LevelParticleManager;
      
      public var mReadyToRun:Boolean = false;
      
      public var §#!U§:Boolean = false;
      
      protected var §#`§:Boolean = false;
      
      protected var §+!§:Boolean = false;
      
      public var §@_§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §@!M§:Number;
      
      public var §,6§:Number;
      
      private var §7!S§:Number;
      
      public var §;!-§:§5O§;
      
      public var §>!=§:Boolean = false;
      
      private var §^!@§:§'!I§;
      
      private var §1c§:Sprite;
      
      protected var §0@§:LevelModel;
      
      protected var §+!a§:§7!W§ = null;
      
      private var §#!R§:EventDispatcher;
      
      private var §]%§:Array;
      
      private var §!!L§:Array;
      
      protected var §&!J§:Starling;
      
      private var §<!_§:§@K§;
      
      protected var §6! §:TextureManager;
      
      protected var §!!]§:AnimationManager;
      
      private var §;F§:DynamicContentManager;
      
      private var §5B§:DynamicContentManager;
      
      private var §;O§:DynamicContentManager;
      
      private var §'!'§:Stage;
      
      private var §'!N§:§0K§;
      
      protected var §1!^§:Replay;
      
      protected var §;a§:Replay;
      
      protected var §[q§:Number = 0.0;
      
      protected var §"!k§:String;
      
      private var §]!Z§:Boolean;
      
      protected var §9!6§:Boolean;
      
      protected var §&!0§:uint = 1.417339207E9;
      
      public var §'![§:Boolean;
      
      public function LevelMain(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§!!L§ = [];
         }
         while(true)
         {
            super();
            while(!_loc4_)
            {
               this.§#!R§ = new EventDispatcher();
               loop2:
               while(true)
               {
                  this.§;!-§ = new §5O§();
                  while(true)
                  {
                     this.§'!'§ = param1;
                     while(_loc3_ || _loc3_)
                     {
                        this.§6! § = TextureManager.§8!X§;
                        while(_loc3_ || _loc2_)
                        {
                           this.§!!]§ = this.initAnimationManager(this.§6! §);
                           continue loop2;
                           addr31:
                           if(!(_loc3_ || this))
                           {
                              continue;
                           }
                           if(false)
                           {
                              loop8:
                              while(true)
                              {
                                 this.§5B§ = this.initThemeSoundsManager();
                                 while(_loc3_)
                                 {
                                    this.§;O§ = this.initCutSceneManager();
                                    if(!_loc4_)
                                    {
                                       continue loop8;
                                    }
                                 }
                                 addr53:
                                 while(_loc3_)
                                 {
                                    continue loop8;
                                 }
                                 continue loop2;
                              }
                              continue;
                           }
                           var _loc2_:Stage3D = param1.stage3Ds[0];
                           if(!(_loc4_ && this))
                           {
                              this.§&!J§ = new Starling(§'!I§,param1,new Rectangle(0,0,§]!B§.SCREEN_WIDTH,§]!B§.SCREEN_HEIGHT),_loc2_);
                              §]!B§.§%h§.addEventListener(Event.ENTER_FRAME,this.§&!J§.onEnterFrame);
                              _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§[D§,false,0,true);
                              addr272:
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr202:
                                 this.§&!J§.§]?§ = false;
                                 addr203:
                                 addr201:
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr188:
                                    §§push(this.§&!J§);
                                    §§push(false);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§pop().enableErrorChecking = §§pop();
                                       addr164:
                                       addr197:
                                       §§push(this.§&!J§);
                                       if(!_loc4_)
                                       {
                                          §§pop().§ T§ = 2;
                                          addr168:
                                          if(!_loc4_)
                                          {
                                             if(!(_loc4_ && param1))
                                             {
                                                if(_loc3_ || param1)
                                                {
                                                   §§push(this.§&!J§);
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§pop().§%C§();
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr168);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr188);
                                                   }
                                                   §§goto(addr164);
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr201);
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr272);
                                 addr230:
                              }
                              addr253:
                              §§goto(addr253);
                           }
                           §§goto(addr230);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function §+$§(param1:LevelObject, param2:LevelObject) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§8!=§);
         if(!(_loc5_ && param1))
         {
            §§push(§§pop() - param2.§8!=§);
            if(!(_loc5_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.§?4§);
         if(!(_loc5_ && param2))
         {
            §§push(§§pop() - param2.§?4§);
            if(!_loc5_)
            {
               addr72:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            return §9u§(_loc3_,_loc4_);
         }
         §§goto(addr72);
      }
      
      public static function §9u§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§1c§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop());
                     if(_loc2_ || _loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr100:
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(this.§,F§));
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    while(§§pop())
                                    {
                                       if(!_loc1_)
                                       {
                                          this.§1c§ = this.§^!@§.§`!K§;
                                       }
                                       if(!(_loc1_ && this))
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    §§push(this.§1c§);
                                    if(!_loc1_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop0;
                                    addr51:
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr99:
                     }
                     §§goto(addr51);
                  }
                  §§goto(addr99);
               }
            }
         }
         §§goto(addr100);
      }
      
      public function get §,F§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§^!@§);
            do
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     this.§^!@§ = this.§&!J§.§"!8§ as §'!I§;
                     loop4:
                     while(true)
                     {
                        §§push(this.§^!@§);
                        addr58:
                        while(true)
                        {
                           §§pop().§<!4§ = false;
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc1_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           continue loop4;
                        }
                     }
                  }
                  addr74:
               }
               while(true)
               {
                  §§push(this.§^!@§);
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr58);
               }
            }
            while(!(_loc2_ || _loc2_));
            
            return §§pop();
         }
         §§goto(addr74);
      }
      
      private function get §8,§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§,F§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.§,F§);
                  }
                  else
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            return (§§pop() as §'!I§).§8,§;
         }
         addr54:
         return null;
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.§!!]§;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§6! §;
      }
      
      public function get camera() : §%!-§
      {
         return this.§]!Y§;
      }
      
      public function get objects() : LevelObjectManager
      {
         return this.§5f§;
      }
      
      public function get particles() : LevelParticleManager
      {
         return this.§<H§;
      }
      
      public function get background() : LevelBackground
      {
         return this.§4!6§;
      }
      
      public function get slingshot() : LevelSlingshot
      {
         return this.§8!5§;
      }
      
      public function get activeObject() : LevelObject
      {
         return this.§+!Y§;
      }
      
      public function get §'g§() : §1H§
      {
         return this.§^!2§;
      }
      
      public function get stage() : Stage
      {
         return this.§'!'§;
      }
      
      public function get §>-§() : DynamicContentManager
      {
         return this.§;O§;
      }
      
      protected function get §"!B§() : DynamicContentManager
      {
         return this.§;F§;
      }
      
      public function set activeObject(param1:LevelObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§+!Y§ = param1;
         }
      }
      
      public function set §3,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9!6§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§<!_§);
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§<!_§);
                        addr263:
                        while(true)
                        {
                           §§pop().dispose();
                           addr265:
                           while(true)
                           {
                           }
                        }
                     }
                     addr261:
                  }
                  while(true)
                  {
                     §§push(this.§6! §);
                     if(_loc2_ || _loc1_)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§6! §);
                                 addr243:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    loop30:
                                    while(!(_loc1_ && _loc2_))
                                    {
                                       if(!_loc1_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§;F§);
                                             loop6:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc1_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(§§pop());
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         continue loop3;
                                                      }
                                                      loop9:
                                                      while(true)
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§;F§);
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().textureManager);
                                                                     addr192:
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§pop().dispose();
                                                                        addr194:
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§;F§);
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    if(!(_loc2_ || _loc2_))
                                                                                    {
                                                                                       break loop13;
                                                                                    }
                                                                                    §§push(§§pop().textureManager);
                                                                                    if(_loc2_ || _loc1_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              addr218:
                                                                           }
                                                                        }
                                                                        continue loop30;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                               }
                                                               addr189:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§;O§);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     addr147:
                                                                     if(_loc1_ && this)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§pop();
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 continue loop30;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§;O§);
                                                                                 if(!(_loc1_ && _loc2_))
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    §§push(§§pop().textureManager);
                                                                                    if(!(_loc1_ && this))
                                                                                    {
                                                                                       if(_loc2_ || this)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§goto(addr192);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().dispose();
                                                                                          loop24:
                                                                                          for(; !_loc1_; if(!(_loc2_ || _loc1_))
                                                                                          {
                                                                                             continue;
                                                                                          },if(!_loc1_)
                                                                                          {
                                                                                             §§goto(addr60);
                                                                                             §§push(this.§&!J§);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr189);
                                                                                          })
                                                                                          {
                                                                                             if(_loc1_ && _loc1_)
                                                                                             {
                                                                                                break loop23;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§&!J§);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      if(!_loc1_)
                                                                                                      {
                                                                                                         if(_loc2_ || this)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               addr62:
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               addr102:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§;O§);
                                                                                                                  addr104:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr25);
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   continue loop18;
                                                                                                }
                                                                                                addr60:
                                                                                                §§pop().dispose();
                                                                                                §§goto(addr62);
                                                                                             }
                                                                                             addr25:
                                                                                             return;
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr194);
                                                                                 }
                                                                                 §§goto(addr104);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§goto(addr102);
                                                                        }
                                                                        §§goto(addr29);
                                                                        §§goto(addr93);
                                                                     }
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr199:
                                       }
                                       else
                                       {
                                          §§goto(addr261);
                                       }
                                    }
                                    §§goto(addr265);
                                 }
                              }
                           }
                           §§goto(addr199);
                        }
                     }
                     §§goto(addr243);
                  }
               }
            }
            §§goto(addr263);
         }
         §§goto(addr160);
      }
      
      protected function initThemeGraphicsManager() : DynamicContentManager
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : DynamicContentManager
      {
         return null;
      }
      
      protected function initCutSceneManager() : DynamicContentManager
      {
         return null;
      }
      
      protected function initAnimationManager(param1:TextureManager) : AnimationManager
      {
         return new AnimationManager(param1);
      }
      
      public function §,>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(Starling.§!!F§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(param1);
                        addr106:
                        addr107:
                        loop2:
                        while(!§§pop())
                        {
                           §§push(Starling.§!!F§);
                           loop3:
                           for(; !(_loc3_ && _loc3_); §§push(Starling.§!!F§),if(_loc3_ && _loc2_)
                           {
                              continue;
                           },if(!_loc2_)
                           {
                              continue loop0;
                           },§§goto(addr41))
                           {
                              §§pop().stop();
                              while(!_loc3_)
                              {
                                 if(_loc3_ && param1)
                                 {
                                    break loop2;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop1;
                                 §§pop().color = 0;
                                 if(!(_loc3_ && this))
                                 {
                                    §§goto(addr24);
                                 }
                              }
                              §§goto(addr24);
                           }
                           §§pop().start();
                           §§goto(addr112);
                        }
                        §§goto(addr110);
                     }
                  }
                  addr24:
                  return;
               }
               §§goto(addr106);
            }
         }
         §§goto(addr107);
      }
      
      public function §1F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.sprite);
            if(!(_loc2_ && param1))
            {
               if(§§pop())
               {
               }
               §§goto(addr56);
            }
            §§pop().visible = param1;
         }
         addr56:
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.sprite);
         }
      }
      
      public function setController(param1:§7!W§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§+!a§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  if(!(_loc3_ && param1))
                  {
                     §§push(this.§+!a§);
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr51:
                        §§push(this.§+!a§);
                        if(_loc2_)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §§pop().addEventListeners();
                           addr69:
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 addr72:
                                 while(true)
                                 {
                                    this.§+!a§ = param1;
                                    while(this.mReadyToRun)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue;
                                          }
                                          §§goto(addr51);
                                       }
                                       §§goto(addr69);
                                    }
                                    §§goto(addr24);
                                 }
                                 continue loop0;
                              }
                              addr92:
                           }
                        }
                        continue;
                        addr24:
                        return;
                     }
                  }
                  §§goto(addr92);
               }
               §§goto(addr72);
            }
         }
         §§goto(addr71);
      }
      
      public function §@^§() : Replay
      {
         return this.§1!^§;
      }
      
      public function §8W§(param1:§@K§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§<!_§ = param1;
         }
         §§push(this.§<!_§.§1t§);
         if(!(_loc7_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(!_loc7_)
            {
               if(_loc6_ || param2)
               {
                  if(§§pop() >= _loc4_)
                  {
                     if(_loc6_)
                     {
                        if(param3 != null)
                        {
                           loop4:
                           while(true)
                           {
                              this.§#!R§.addEventListener(Event.INIT,param3);
                              loop3:
                              while(true)
                              {
                                 this.§!!L§.push(param3);
                                 addr79:
                                 while(!(_loc6_ || this))
                                 {
                                    continue loop4;
                                 }
                                 if(!(_loc7_ && param3))
                                 {
                                    addr93:
                                    while(this.§ !W§(param2))
                                    {
                                       if(!_loc7_)
                                       {
                                          if(_loc6_)
                                          {
                                             this.§+!i§();
                                          }
                                          else
                                          {
                                             §§goto(addr79);
                                          }
                                       }
                                       if(_loc6_ || param2)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                       §§goto(addr93);
                                    }
                                    return;
                                    addr43:
                                 }
                                 addr138:
                                 if(!(_loc7_ && param3))
                                 {
                                    continue loop0;
                                 }
                                 addr156:
                                 loop5:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    addr133:
                                    while(true)
                                    {
                                       §§push(§§pop() + 1);
                                       if(_loc6_)
                                       {
                                          addr137:
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                             continue loop5;
                                          }
                                          continue loop0;
                                          addr137:
                                       }
                                       §§goto(addr137);
                                    }
                                 }
                              }
                           }
                           addr112:
                        }
                        §§goto(addr43);
                     }
                     §§goto(addr112);
                  }
                  else
                  {
                     this.§6! §.§,!j§(this.§<!_§.§6!#§(_loc5_));
                  }
                  §§goto(addr156);
               }
               §§goto(addr133);
            }
            §§goto(addr137);
         }
      }
      
      private function § !W§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§6! §);
            if(_loc4_)
            {
               §§push(§§pop().§0k§());
               loop0:
               do
               {
                  if(§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        §§push(this.§6! §);
                        loop5:
                        while(true)
                        {
                           §§push(§§pop().§3!-§);
                           addr217:
                           while(true)
                           {
                              §§push(1000);
                              addr218:
                              while(true)
                              {
                                 §§push(§§pop() / §§pop());
                                 addr219:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr220:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                        addr216:
                     }
                     §§goto(addr221);
                  }
                  else
                  {
                     while(true)
                     {
                        this.§]%§ = param1.concat();
                        if(!(_loc4_ || param1))
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        if(_loc4_ || this)
                        {
                           §§push(false);
                           if(_loc4_ || _loc2_)
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           §§goto(addr73);
                        }
                        §§goto(addr64);
                     }
                  }
                  §§goto(addr137);
               }
               while(!_loc4_);
               
               return §§pop();
            }
            §§goto(addr216);
         }
         §§goto(addr221);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§!!]§.initializeAnimations(param1);
         }
      }
      
      private function §[D§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§6! §.§'!<§();
            while(true)
            {
               §§push(this.§"!B§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§"!B§);
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop().textureManager);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr339:
                                       if(!(_loc3_ || param1))
                                       {
                                          continue;
                                       }
                                       §§push(Boolean(§§pop()));
                                       loop49:
                                       while(true)
                                       {
                                          loop50:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§>-§);
                                                   loop48:
                                                   while(!(_loc2_ && _loc2_))
                                                   {
                                                      §§push(§§pop().textureManager);
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§pop().§'!<§();
                                                         while(true)
                                                         {
                                                            addr308:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(this.§]%§));
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(this.§ !W§(this.§]%§));
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                        }
                                                                        addr319:
                                                                     }
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        this.§]%§ = null;
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              this.§+!i§();
                                                                              loop55:
                                                                              while(true)
                                                                              {
                                                                                 addr239:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§+!a§);
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() == null);
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                addr256:
                                                                                                if(!(_loc2_ && param1))
                                                                                                {
                                                                                                   if(_loc3_ || _loc2_)
                                                                                                   {
                                                                                                      addr271:
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      loop47:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                            addr369:
                                                                                                         }
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop27:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     addr283:
                                                                                                                     if(_loc3_ || param1)
                                                                                                                     {
                                                                                                                        §§push(this.mReadyToRun);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           addr225:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              loop31:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§+!a§);
                                                                                                                                       if(_loc2_ && _loc3_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§pop().addEventListeners();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop26;
                                                                                                                                    addr227:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§;F§);
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       loop35:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc2_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!(_loc2_ && param1))
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§;F§);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().§0k§();
                                                                                                                                                                  addr220:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc3_ || this))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop24;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr227);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr238);
                                                                                                                                                         }
                                                                                                                                                         loop37:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§;O§);
                                                                                                                                                            if(_loc3_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     return;
                                                                                                                                                                  }
                                                                                                                                                                  addr25:
                                                                                                                                                                  addr25:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc3_ || _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop55;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§;O§);
                                                                                                                                                                        if(!(_loc2_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().textureManager);
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 continue loop35;
                                                                                                                                                                              }
                                                                                                                                                                              addr143:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc3_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop18;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr150:
                                                                                                                                                                                 if(!(_loc2_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().§'!<§();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc3_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop37;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().§'!<§();
                                                                                                                                                                                       addr427:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr362:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§>-§);
                                                                                                                                                                                             break loop48;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr150);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr425:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr110:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr143);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop18;
                                                                                                                                                                        addr142:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr427);
                                                                                                                                                                     if(!(_loc3_ || param1))
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr52);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop55;
                                                                                                                                                               }
                                                                                                                                                               continue loop35;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr110);
                                                                                                                                                         }
                                                                                                                                                         continue loop27;
                                                                                                                                                      }
                                                                                                                                                      continue loop5;
                                                                                                                                                   }
                                                                                                                                                   continue loop50;
                                                                                                                                                }
                                                                                                                                                continue loop21;
                                                                                                                                             }
                                                                                                                                             continue loop47;
                                                                                                                                          }
                                                                                                                                          continue loop31;
                                                                                                                                       }
                                                                                                                                       continue loop47;
                                                                                                                                    }
                                                                                                                                    §§goto(addr218);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(!(_loc3_ || param1))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr129);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr25);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§>-§);
                                                                                                                        if(!(_loc3_ || this))
                                                                                                                        {
                                                                                                                           continue loop48;
                                                                                                                        }
                                                                                                                        §§push(§§pop().textureManager);
                                                                                                                        if(!(_loc3_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue loop18;
                                                                                                                        }
                                                                                                                        §§goto(addr339);
                                                                                                                        §§goto(addr283);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               addr280:
                                                                                                            }
                                                                                                            §§goto(addr225);
                                                                                                         }
                                                                                                         while(_loc3_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            break loop47;
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      while(!_loc2_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            break loop26;
                                                                                                         }
                                                                                                         continue loop49;
                                                                                                         §§goto(addr271);
                                                                                                      }
                                                                                                      addr271:
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   while(!_loc2_)
                                                                                                   {
                                                                                                      §§goto(addr369);
                                                                                                      §§push(§§pop());
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_ || _loc2_)
                                                                                                            {
                                                                                                               addr415:
                                                                                                               §§push(this.§"!B§);
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         addr398:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr362);
                                                                                                      }
                                                                                                   }
                                                                                                   addr366:
                                                                                                   addr397:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr280);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr319);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr271);
                                                                                    }
                                                                                    while(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       §§pop();
                                                                                       §§goto(addr383);
                                                                                       §§goto(addr256);
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                              addr295:
                                                                           }
                                                                           §§goto(addr398);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr366);
                                                   }
                                                }
                                             }
                                             §§goto(addr308);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr397);
                           }
                        }
                     }
                  }
               }
               if(_loc2_ && param1)
               {
                  continue;
               }
               §§goto(addr142);
               §§push(this.§;O§);
            }
         }
         §§goto(addr295);
      }
      
      private function §+!i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§#!R§.dispatchEvent(new Event(Event.INIT));
            do
            {
               this.§<%§();
            }
            while(_loc1_);
            
         }
      }
      
      private function §<%§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Function = null;
         var _loc3_:* = this.§!!L§;
         for each(_loc1_ in _loc3_)
         {
            if(!_loc4_)
            {
               this.§#!R§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!(_loc4_ && _loc3_))
         {
            this.§!!L§ = [];
         }
      }
      
      public function init(param1:LevelModel) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.mReadyToRun);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.clearLevel();
                     addr300:
                     while(true)
                     {
                     }
                  }
                  addr297:
               }
               loop3:
               while(true)
               {
                  this.§^!2§ = new §1H§(this,param1);
                  loop4:
                  while(true)
                  {
                     this.§]!Y§ = this.§`h§(param1);
                     loop5:
                     while(true)
                     {
                        this.§@!M§ = 0;
                        loop6:
                        while(true)
                        {
                           this.§,6§ = 0;
                           loop7:
                           while(true)
                           {
                              this.§7!S§ = 0;
                              loop8:
                              while(true)
                              {
                                 this.§]!Z§ = false;
                                 loop9:
                                 while(_loc2_)
                                 {
                                    this.mReadyToRun = false;
                                    while(true)
                                    {
                                       this.§#!U§ = false;
                                       continue loop8;
                                       addr80:
                                       if(_loc2_ || _loc2_)
                                       {
                                          continue loop7;
                                       }
                                    }
                                    loop27:
                                    while(true)
                                    {
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue loop9;
                                       }
                                       this.initialize(param1);
                                       loop28:
                                       while(true)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             if(_loc2_)
                                             {
                                                while(true)
                                                {
                                                   this.§8!'§();
                                                   loop26:
                                                   while(true)
                                                   {
                                                      if(_loc2_ || param1)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop28;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            addr53:
                                                            if(!(_loc3_ && this))
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  ScoreCollector.init();
                                                                  if(_loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     return;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.§0@§ = param1;
                                                                     addr211:
                                                                     while(true)
                                                                     {
                                                                        this.§#`§ = this.§4T§(param1.theme);
                                                                        break loop26;
                                                                     }
                                                                  }
                                                                  addr217:
                                                               }
                                                               while(true)
                                                               {
                                                                  §[F§ = param1.theme;
                                                                  §§goto(addr217);
                                                               }
                                                               addr222:
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(this.§#`§);
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(§§pop());
                                                                  if(_loc2_ || param1)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr172:
                                                                        addr227:
                                                                        while(_loc2_ || this)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(this.§+!§);
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 if(_loc2_ || param1)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    continue loop21;
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        while(!_loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.mPigsAnimationTimer2 = 1000;
                                                                              §§goto(addr222);
                                                                           }
                                                                           §§goto(addr172);
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        continue loop27;
                                                                     }
                                                                     this.§?! §(param1.theme);
                                                                  }
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop27;
                                                         }
                                                         if(!(_loc2_ || _loc3_))
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§goto(addr80);
                                                         continue loop26;
                                                      }
                                                      continue loop9;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            this.§+!§ = this.§%f§(param1.theme);
                                                            §§goto(addr189);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr300);
                                                         }
                                                      }
                                                      break;
                                                      §§goto(addr53);
                                                   }
                                                   §§goto(addr211);
                                                   §§goto(addr154);
                                                }
                                                addr154:
                                                addr38:
                                             }
                                             else
                                             {
                                                §§goto(addr297);
                                             }
                                             §§goto(addr300);
                                          }
                                          §§goto(addr172);
                                       }
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
         }
         §§goto(addr229);
      }
      
      protected function §8!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§1!^§ = new Replay(LevelManager.§var§);
         }
      }
      
      protected function §4T§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Boolean(this.§;F§));
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(false);
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr45:
                     §§push(true);
                  }
               }
               §§goto(addr45);
            }
            return §§pop();
         }
         §§goto(addr45);
      }
      
      protected function §%f§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelThemeBackground = null;
         if(!(_loc4_ && this))
         {
            §§push(Boolean(this.§5B§));
            if(!_loc4_)
            {
               if(§§pop())
               {
                  §§goto(addr32);
               }
               §§goto(addr130);
            }
            §§goto(addr131);
         }
         addr32:
         _loc2_ = LevelThemeBackgroundManager.§]!0§(param1);
         if(_loc3_ || this)
         {
            §§push(Boolean(_loc2_));
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(Boolean(_loc2_.§?!R§));
                     if(_loc3_)
                     {
                        §§push(§§pop());
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(!(_loc4_ && param1))
                           {
                              §§pop();
                              if(_loc3_)
                              {
                                 §§push(this.§5B§.§^!^§(_loc2_.§?!R§));
                                 if(_loc3_)
                                 {
                                    addr104:
                                    §§push(!§§pop());
                                    if(_loc4_ && this)
                                    {
                                    }
                                    addr120:
                                    if(§§pop())
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          §§goto(addr129);
                                       }
                                       else
                                       {
                                          addr131:
                                          return true;
                                          addr130:
                                       }
                                    }
                                    §§goto(addr130);
                                 }
                              }
                              §§goto(addr130);
                           }
                           §§push(Boolean(§§pop()));
                           if(_loc4_ && _loc2_)
                           {
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr104);
                  }
               }
               §§goto(addr130);
            }
            §§goto(addr129);
         }
         addr129:
         return false;
      }
      
      protected function §?! §(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelThemeBackground = null;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§;F§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§4T§(param1));
                                 while(true)
                                 {
                                    §§push(!§§pop());
                                    addr285:
                                    addr132:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr286:
                                       while(_loc3_)
                                       {
                                       }
                                       continue loop1;
                                    }
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          while(§§pop())
                                          {
                                             while(true)
                                             {
                                                if(_loc3_ || param1)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc4_ && param1)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(this.§5B§);
                                                      loop27:
                                                      while(true)
                                                      {
                                                         §§pop().removeEventListener(Event.COMPLETE,this.§2!5§);
                                                         addr178:
                                                         while(true)
                                                         {
                                                            §§push(this.§5B§);
                                                            continue loop27;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr279);
                                                }
                                                break;
                                                if(!(_loc3_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§5B§);
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§pop().addEventListener(Event.CANCEL,this.§'p§);
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr48);
                                                         }
                                                         §§goto(addr69);
                                                      }
                                                      §§goto(addr87);
                                                   }
                                                   §§goto(addr62);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§goto(addr257);
                                                }
                                                break;
                                                §§goto(addr143);
                                             }
                                             addr143:
                                             §§goto(addr268);
                                          }
                                          return;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§goto(addr290);
                           }
                           §§goto(addr179);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §'k§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§;F§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§'k§);
               addr146:
               while(true)
               {
                  §§push(this.§;F§);
                  if(_loc2_ || param1)
                  {
                     §§pop().removeEventListener(Event.CANCEL,this.§#!g§);
                     loop2:
                     while(_loc2_)
                     {
                        this.§#`§ = true;
                        loop3:
                        while(true)
                        {
                           §§push(this.§#`§);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr83:
                              addr43:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!§§pop())
                                 {
                                    while(§§pop())
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop3;
                                          }
                                          this.initialize(this.§0@§);
                                       }
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    return;
                                    addr50:
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop3;
                                 }
                              }
                              addr43:
                              if(_loc3_ && param1)
                              {
                                 continue;
                              }
                              §§goto(addr50);
                           }
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr146);
      }
      
      private function §#!g§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§;F§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§'k§);
               while(true)
               {
                  §§push(this.§;F§);
                  if(!(_loc3_ || param1))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§#!g§);
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§#!U§ = true;
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      private function §2!5§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§;F§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§2!5§);
               loop1:
               while(true)
               {
                  §§push(this.§;F§);
                  if(_loc2_ && this)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§'p§);
                  loop2:
                  while(true)
                  {
                     this.§+!§ = true;
                     loop3:
                     while(_loc3_)
                     {
                        §§push(this.§#`§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       this.initialize(this.§0@§);
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       break;
                                    }
                                    loop7:
                                    while(_loc3_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§+!§);
                                          if(!_loc3_)
                                          {
                                             continue loop4;
                                          }
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                continue loop4;
                                             }
                                             continue loop5;
                                          }
                                          addr84:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop7;
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                                 return;
                                 addr46:
                              }
                              §§goto(addr84);
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      private function §'p§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§;F§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§2!5§);
               loop1:
               while(true)
               {
                  §§push(this.§;F§);
                  if(!(_loc3_ || _loc2_))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§'p§);
                  loop2:
                  while(true)
                  {
                     this.§+!§ = true;
                     loop3:
                     for(; !(_loc2_ && this); if(_loc3_ || this)
                     {
                        addr20:
                        return;
                     })
                     {
                        §§push(this.§#`§);
                        if(!_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc2_)
                           {
                              §§push(§§pop());
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    addr102:
                                    while(true)
                                    {
                                       §§push(this.§+!§);
                                       if(!(_loc2_ && this))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          break;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 addr101:
                              }
                              while(§§pop())
                              {
                                 if(_loc3_ || param1)
                                 {
                                    continue loop2;
                                 }
                                 addr73:
                                 if(!_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr20);
                           }
                        }
                        §§goto(addr101);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function get backgroundTextureManager() : TextureManager
      {
         return this.§6! §;
      }
      
      protected function initialize(param1:LevelModel) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§9!6§ = false;
            loop0:
            while(true)
            {
               this.§'![§ = false;
               while(true)
               {
                  §§push(Starling.§1!e§);
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || this)
                           {
                              §§push(Starling.§1!e§);
                              while(true)
                              {
                                 §§pop().speed = 1;
                              }
                              addr215:
                           }
                           while(true)
                           {
                           }
                           addr217:
                        }
                        while(true)
                        {
                           this.mLevelEngine = new §?!`§(this);
                           while(true)
                           {
                              §§push(this);
                              §§push(this);
                              §§push(param1.theme);
                              §§push(this.§^!2§.§ !c§);
                              if(_loc2_)
                              {
                                 §§push(§§pop() / §8N§);
                              }
                              §§pop().§4!6§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§]!Y§.§5r§());
                              loop6:
                              while(true)
                              {
                                 this.§4!6§.§^!Y§(§]!B§.§]!#§());
                                 addr158:
                                 while(true)
                                 {
                                    this.§5f§ = this.initLevelObjectManager(param1);
                                    addr147:
                                    while(_loc2_)
                                    {
                                       this.§8!5§ = this.initLevelSlingshot(param1);
                                       while(true)
                                       {
                                          this.§<H§ = this.§`@§(this.§!!]§,this.§6! §);
                                          continue loop6;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              while(_loc2_ || param1)
                              {
                                 this.§`6§();
                                 §§goto(addr84);
                                 §§goto(addr70);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr215);
               }
            }
         }
         §§goto(addr63);
      }
      
      protected function §=+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§"!k§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§;a§ = Replay.initialize(this.§"!k§);
                  addr113:
                  loop0:
                  while(true)
                  {
                     §§push(this.§;a§);
                     while(true)
                     {
                        §§pop().speed = 1;
                        while(true)
                        {
                           §§push(this.§;a§);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§pop().play();
                           do
                           {
                              this.§[q§ = -1000;
                              continue loop0;
                           }
                           while(_loc2_ && _loc2_);
                           
                           if(_loc1_)
                           {
                              §§goto(addr24);
                           }
                        }
                     }
                  }
                  addr113:
               }
               §§goto(addr113);
            }
            addr24:
            return;
         }
         §§goto(addr113);
      }
      
      public function §5!a§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§"!k§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§;a§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§;a§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr96:
                        if(!param1)
                        {
                           §§push(this.§;a§);
                           if(_loc2_ && _loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        if(_loc3_)
                        {
                           addr99:
                           §§push(this.§;a§);
                           break;
                        }
                     }
                     §§goto(addr99);
                  }
                  addr20:
                  return;
               }
               §§goto(addr96);
            }
            §§pop().speed = Math.min(this.§;a§.speed * 1.25,Math.pow(1.25,2));
            §§goto(addr115);
         }
         §§goto(addr99);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;a§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr44:
                     this.§;a§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      protected function initLevelObjectManager(param1:LevelModel) : LevelObjectManager
      {
         return new LevelObjectManager(this,param1,new Sprite());
      }
      
      protected function §`h§(param1:LevelModel) : §%!-§
      {
         return new §%!-§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number) : LevelBackground
      {
         return new LevelBackground(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:LevelModel) : LevelSlingshot
      {
         return new LevelSlingshot(this,param1,new Sprite());
      }
      
      protected function §`@§(param1:AnimationManager, param2:TextureManager) : LevelParticleManager
      {
         return new LevelParticleManager(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && _loc3_))
         {
            if(this.mReadyToRun)
            {
               if(_loc7_ || _loc3_)
               {
                  this.clearLevel();
               }
            }
         }
         var _loc3_:LevelModel = this.§%X§();
         var _loc4_:§;c§ = new §;c§();
         if(_loc7_ || param2)
         {
            _loc4_.left = 0;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               §§push(§%!-§.§#!>§);
               if(!_loc6_)
               {
                  §§push(-§§pop());
                  if(!_loc6_)
                  {
                     §§push(10);
                     if(_loc7_ || _loc3_)
                     {
                        addr170:
                        §§push(§§pop() / §§pop());
                        if(!(_loc6_ && param1))
                        {
                           addr168:
                           §§push(8);
                        }
                        §§pop().top = §§pop();
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.top);
                           if(_loc7_)
                           {
                              §§push(§§pop() + §%!-§.§#!>§);
                           }
                           §§pop().bottom = §§pop();
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.left);
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(§§pop() + §%!-§.§^!9§);
                              }
                              §§pop().right = §§pop();
                              while(!_loc6_)
                              {
                                 while(true)
                                 {
                                    _loc4_.y = -13.929;
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          _loc4_.x = §%!-§.§^!9§;
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                           while(!(_loc6_ && param1))
                           {
                              _loc3_.§>!j§(_loc4_);
                              if(_loc6_ && this)
                              {
                                 continue;
                              }
                              §§goto(addr65);
                           }
                        }
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§goto(addr170);
               }
               §§goto(addr168);
            }
         }
         §§goto(addr129);
      }
      
      protected function §4U§(param1:LevelModel, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(param2)
            {
               if(!(_loc3_ && param2))
               {
                  addr43:
                  this.§4!S§(param1);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      protected function §%X§() : LevelModel
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:LevelModel = new LevelModel();
         if(_loc2_)
         {
            _loc1_.§<7§ = -12;
         }
         return new LevelModel();
      }
      
      protected function § E§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§&!0§ ^= this.§&!0§ << 21;
            while(true)
            {
               §§push(this);
               §§push(this.§&!0§);
               §§push(this.§&!0§);
               if(_loc1_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§&!0§ = §§pop() ^ §§pop();
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            this.§&!0§ ^= this.§&!0§ << 4;
            if(_loc1_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return this.§&!0§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §4!S§(param1:LevelModel) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§+H§ = null;
         if(_loc7_ || param1)
         {
            §§push(this);
            §§push(0.33);
            if(!_loc6_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§&!0§ = §§pop();
         }
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(10);
               loop2:
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(!(_loc7_ || _loc2_))
                  {
                     continue loop1;
                  }
                  §§push(int(§§pop()));
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc3_ = §§pop();
                     if(_loc7_)
                     {
                        while(true)
                        {
                           addr514:
                           §§push(_loc3_);
                           if(_loc7_ || _loc2_)
                           {
                              §§push(5);
                              if(_loc6_ && param1)
                              {
                                 continue loop2;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(_loc2_);
                                    if(_loc6_)
                                    {
                                       addr550:
                                       break;
                                    }
                                    §§push(§§pop() + 1);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    _loc2_ = §§pop();
                                    if(!(_loc7_ || _loc3_))
                                    {
                                       break loop2;
                                    }
                                 }
                                 continue loop0;
                              }
                              §§push(this.§ E§());
                              if(_loc7_)
                              {
                                 §§push(§§pop() * 5);
                              }
                              §§push(int(§§pop()));
                              if(_loc6_)
                              {
                                 continue loop1;
                              }
                              _loc4_ = §§pop();
                              if(!_loc7_)
                              {
                                 continue loop0;
                              }
                           }
                           break;
                        }
                        addr507:
                        §§push(int(§§pop()));
                        if(!_loc7_)
                        {
                           continue loop1;
                        }
                        §§goto(addr550);
                        addr507:
                     }
                     while(true)
                     {
                        _loc5_ = new §+H§();
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           §§push(30 + _loc3_ * 10);
                           if(!_loc6_)
                           {
                              §§push(this.§ E§());
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(§§pop() * 9);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().x = §§pop();
                           loop5:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop6:
                              while(true)
                              {
                                 §§push(0);
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(_loc5_);
                                       §§push(-100 + _loc2_ * 6);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(this.§ E§());
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() * 3);
                                             if(_loc7_ || _loc2_)
                                             {
                                                addr336:
                                                §§push(§§pop() - §§pop());
                                                if(_loc7_ || _loc2_)
                                                {
                                                   addr347:
                                                   §§push(§§pop() - _loc3_ * 8);
                                                }
                                                §§pop().y = §§pop();
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(_loc3_);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               §§push(_loc3_);
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc7_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() + §§pop() * _loc3_);
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr299:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr303:
                                                                                    §§push(§§pop() % 5);
                                                                                 }
                                                                                 §§push(int(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(2);
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(§§pop() < §§pop())
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                addr198:
                                                                                                §§push(_loc4_);
                                                                                                while(!_loc6_)
                                                                                                {
                                                                                                   §§push(3);
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(§§pop() != §§pop())
                                                                                                   {
                                                                                                      _loc5_.id = "BIRD_BLUE";
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc6_ && _loc2_))
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     §§push(this.§ E§());
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * 360);
                                                                                                                     }
                                                                                                                     §§pop().angle = §§pop();
                                                                                                                     loop18:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc7_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc6_ && this)
                                                                                                                           {
                                                                                                                              loop23:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc6_ && param1))
                                                                                                                                    {
                                                                                                                                       continue loop5;
                                                                                                                                    }
                                                                                                                                    addr481:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc5_.y = 0;
                                                                                                                                       addr484:
                                                                                                                                       loop47:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          addr467:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(1);
                                                                                                                                             addr468:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                addr469:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   addr470:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      loop34:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            loop35:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               addr476:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  addr441:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(2);
                                                                                                                                                                     addr442:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr449:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!_loc6_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop23;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr377:
                                                                                                                                                                                          addr373:
                                                                                                                                                                                          _loc5_.id = "PIG_HELMET";
                                                                                                                                                                                          loop25:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr352:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                §§push(45);
                                                                                                                                                                                                §§push(this.§ E§());
                                                                                                                                                                                                if(_loc7_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * 90);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().angle = §§pop() - §§pop();
                                                                                                                                                                                                addr363:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc7_ || param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop47;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      param1.addObject(_loc5_);
                                                                                                                                                                                                      continue loop18;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr507);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop25;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr417:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop34;
                                                                                                                                                                              }
                                                                                                                                                                              addr448:
                                                                                                                                                                           }
                                                                                                                                                                           while(!(_loc7_ || _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop35;
                                                                                                                                                                           }
                                                                                                                                                                           §§pop();
                                                                                                                                                                           addr464:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                              continue loop6;
                                                                                                                                                                           }
                                                                                                                                                                           addr464:
                                                                                                                                                                           addr456:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr449);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr448);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr476);
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           §§goto(addr128);
                                                                                                                        }
                                                                                                                        §§goto(addr377);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr152:
                                                                                                               }
                                                                                                               §§goto(addr363);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                               addr235:
                                                                                                            }
                                                                                                            §§goto(addr152);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc5_.id = "BIRD_YELLOW";
                                                                                                            }
                                                                                                            addr206:
                                                                                                         }
                                                                                                         §§goto(addr209);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr206);
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             addr388:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(_loc6_ && this)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         addr408:
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            if(_loc7_ || param1)
                                                                                                            {
                                                                                                               §§goto(addr417);
                                                                                                            }
                                                                                                            §§goto(addr470);
                                                                                                         }
                                                                                                         §§goto(addr456);
                                                                                                      }
                                                                                                      §§goto(addr469);
                                                                                                   }
                                                                                                   §§goto(addr408);
                                                                                                }
                                                                                             }
                                                                                             continue loop7;
                                                                                             §§goto(addr468);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    if(!(_loc7_ || this))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(§§pop() + 1);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(!(_loc7_ || _loc3_))
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§goto(addr118);
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                       §§goto(addr198);
                                                                                    }
                                                                                    §§goto(addr118);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                        §§goto(addr299);
                                                                     }
                                                                     §§goto(addr303);
                                                                  }
                                                                  §§goto(addr442);
                                                               }
                                                            }
                                                            §§goto(addr467);
                                                         }
                                                         §§goto(addr441);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                      }
                                                      addr438:
                                                   }
                                                   §§goto(addr352);
                                                }
                                             }
                                             §§goto(addr347);
                                          }
                                          §§goto(addr336);
                                       }
                                       §§goto(addr347);
                                    }
                                    §§goto(addr481);
                                 }
                              }
                           }
                        }
                        §§goto(addr484);
                     }
                  }
                  §§goto(addr507);
               }
               return;
            }
         }
      }
      
      private function §6!f§() : void
      {
      }
      
      public function §`6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(LevelBackground.§'G§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§`j§(this.§4!6§.§4a§,false);
                     addr211:
                     while(true)
                     {
                     }
                  }
                  addr204:
               }
               while(true)
               {
                  this.§`j§(this.§<H§.§1r§(LevelParticleManager.§^<§),false);
                  loop4:
                  while(true)
                  {
                     this.§`j§(this.§<H§.§1r§(LevelParticleManager.§^![§),true);
                     loop5:
                     while(_loc1_)
                     {
                        this.§`j§(this.§<H§.§1r§(LevelParticleManager.§9!@§),true);
                        while(true)
                        {
                           this.§`j§(this.§5f§.§3$§,true);
                           while(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue loop4;
                              }
                              this.§`j§(this.§8!5§.sprite,true);
                              loop8:
                              while(true)
                              {
                                 this.§`j§(this.§<H§.§1r§(LevelParticleManager.§[K§),true);
                                 addr129:
                                 while(true)
                                 {
                                    this.§`j§(this.§4!6§.§@![§,false);
                                    continue loop8;
                                 }
                              }
                           }
                           continue loop5;
                        }
                     }
                     §§goto(addr211);
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      private function §`j§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.sprite);
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr44:
                     this.sprite.addChild(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr44);
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§]!B§.§^F§);
               loop1:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
                     while(true)
                     {
                        param1 = §§pop();
                        while(true)
                        {
                           §§push(param2);
                           if(!(_loc5_ && param2))
                           {
                              §§push(§]!B§.§^F§);
                              if(!_loc4_)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() / §§pop());
                              if(_loc5_ && _loc3_)
                              {
                                 addr147:
                                 if(!(_loc4_ || param2))
                                 {
                                    break;
                                 }
                                 param2 = §§pop();
                                 loop5:
                                 for(; _loc4_ || this; while(!(_loc5_ && this))
                                 {
                                    _loc3_.y = (param2 / §%!-§.§?!I§ + this.§]!Y§.§2O§ - §%!-§.§<!!§ / §%!-§.§?!I§) * §8N§;
                                    if(!(_loc5_ && this))
                                    {
                                       return _loc3_;
                                    }
                                 })
                                 {
                                    while(true)
                                    {
                                       _loc3_.x = (param1 / §%!-§.§?!I§ + this.§]!Y§.§@!N§ - §%!-§.§^6§ / §%!-§.§?!I§) * §8N§;
                                       continue loop5;
                                    }
                                 }
                                 continue;
                              }
                           }
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      public function §0!V§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = new Point();
         if(!(_loc5_ && this))
         {
            _loc3_.x = (param1 / §8N§ + §%!-§.§^6§ / §%!-§.§?!I§ - this.§]!Y§.§@!N§) * §%!-§.§?!I§;
            if(_loc6_ || param2)
            {
               _loc3_.y = (param2 / §8N§ + §%!-§.§<!!§ / §%!-§.§?!I§ - this.§]!Y§.§2O§) * §%!-§.§?!I§;
            }
         }
         var _loc4_:Number = Math.max(§]!B§.§^F§,§]!B§.§9$§);
         if(_loc6_ || param2)
         {
            _loc3_.x *= _loc4_;
         }
         do
         {
            _loc3_.y *= _loc4_;
         }
         while(!(_loc6_ || param1));
         
         return _loc3_;
      }
      
      public function §0%§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§5f§.addObject(param1,param2,param3);
         }
      }
      
      public function §%2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§8,§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(this.§8,§);
                     while(true)
                     {
                        §§pop().visible = true;
                        addr87:
                        while(true)
                        {
                           §§push(this.§8,§);
                           if(_loc2_)
                           {
                              continue;
                           }
                           §§pop().alpha = 0;
                           while(true)
                           {
                              §§goto(addr28);
                           }
                        }
                     }
                     addr85:
                  }
                  §§goto(addr87);
               }
               addr28:
               while(true)
               {
                  this.§@_§ = 0;
                  if(_loc1_)
                  {
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     continue loop2;
                  }
                  continue loop3;
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr87);
      }
      
      public function §-!i§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§'!N§ = new §0K§(§&!U§.§=!§,§&!U§.§,!I§);
         }
      }
      
      public function §6!j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§'!N§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§4!6§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§4!6§);
                        addr712:
                        while(true)
                        {
                           §§pop().dispose();
                           addr714:
                           while(true)
                           {
                              this.§4!6§ = null;
                              addr698:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr710:
                  }
                  while(true)
                  {
                     §§push(this.§5f§);
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§5f§);
                                 addr691:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    addr693:
                                    while(true)
                                    {
                                       this.§5f§ = null;
                                       addr671:
                                       while(true)
                                       {
                                          this.§+!Y§ = null;
                                          addr666:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                 }
                              }
                              addr689:
                           }
                           while(true)
                           {
                              §§push(this.mLevelEngine);
                              if(!_loc1_)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.mLevelEngine);
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop().§9o§));
                                                loop35:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop36:
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            loop37:
                                                            while(true)
                                                            {
                                                               §§push(this.mLevelEngine);
                                                               addr659:
                                                               while(true)
                                                               {
                                                                  §§pop().clear();
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     this.mLevelEngine = null;
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        addr603:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§^!2§);
                                                                           if(_loc2_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    continue loop35;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§8!5§);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          continue loop6;
                                                                                       }
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().dispose();
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                this.§8!5§ = null;
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc1_ && _loc1_))
                                                                                                   {
                                                                                                      if(!_loc1_)
                                                                                                      {
                                                                                                         addr565:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§]!Y§);
                                                                                                            if(_loc2_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               loop18:
                                                                                                               while(_loc2_ || _loc2_)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc1_ && this))
                                                                                                                           {
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(this.§]!Y§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().clear();
                                                                                                                                    addr551:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§]!Y§ = null;
                                                                                                                                       addr514:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc1_)
                                                                                                                                          {
                                                                                                                                             continue loop36;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr549:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr693);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(this.§8!5§);
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc1_)
                                                                                                                                 {
                                                                                                                                    break loop30;
                                                                                                                                 }
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                              addr600:
                                                                                                                              addr587:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop29;
                                                                                                                        addr538:
                                                                                                                     }
                                                                                                                     loop20:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§<H§);
                                                                                                                        if(_loc2_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           loop21:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc1_ && _loc1_)
                                                                                                                                    {
                                                                                                                                       continue loop20;
                                                                                                                                    }
                                                                                                                                    if(_loc1_)
                                                                                                                                    {
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    if(_loc1_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop29;
                                                                                                                                    }
                                                                                                                                    §§push(this.§<H§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().dispose();
                                                                                                                                       loop26:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc1_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             this.§<H§ = null;
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop26;
                                                                                                                                                }
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc1_)
                                                                                                                                                   {
                                                                                                                                                      continue loop10;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc1_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue loop9;
                                                                                                                                                      }
                                                                                                                                                      if(_loc1_ && _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr666);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§^!2§);
                                                                                                                                                         addr614:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().clear();
                                                                                                                                                            continue loop10;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr612:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr538);
                                                                                                                                                }
                                                                                                                                                §§goto(addr509);
                                                                                                                                             }
                                                                                                                                             addr509:
                                                                                                                                             §§goto(addr551);
                                                                                                                                             addr452:
                                                                                                                                          }
                                                                                                                                          §§goto(addr551);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop30;
                                                                                                                                 addr482:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(this.sprite));
                                                                                                                                 if(!_loc1_)
                                                                                                                                 {
                                                                                                                                    if(_loc1_ && _loc1_)
                                                                                                                                    {
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(!_loc1_)
                                                                                                                                       {
                                                                                                                                          if(_loc1_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr482);
                                                                                                                                          }
                                                                                                                                          addr394:
                                                                                                                                          §§push(this.sprite);
                                                                                                                                          if(_loc2_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(§§pop().numChildren <= 0)
                                                                                                                                             {
                                                                                                                                                addr407:
                                                                                                                                                if(!(_loc1_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr414:
                                                                                                                                                   this.§@!M§ = 0;
                                                                                                                                                   this.§,6§ = 0;
                                                                                                                                                   this.mReadyToRun = false;
                                                                                                                                                   this.§]!Z§ = false;
                                                                                                                                                   this.§@_§ = §&!U§.§-!B§;
                                                                                                                                                   addr418:
                                                                                                                                                   addr393:
                                                                                                                                                   addr388:
                                                                                                                                                   addr383:
                                                                                                                                                   addr378:
                                                                                                                                                   §§push(this.§,F§);
                                                                                                                                                   if(_loc2_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      addr355:
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr363:
                                                                                                                                                         (this.§,F§ as §'!I§).§0x§.x = 0;
                                                                                                                                                         addr364:
                                                                                                                                                         addr356:
                                                                                                                                                         addr362:
                                                                                                                                                         addr358:
                                                                                                                                                         if(!(_loc1_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§,F§);
                                                                                                                                                            if(!_loc1_)
                                                                                                                                                            {
                                                                                                                                                               §§push((§§pop() as §'!I§).§0x§);
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     addr319:
                                                                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc1_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           addr273:
                                                                                                                                                                           §§push(this.§8,§);
                                                                                                                                                                           if(_loc2_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              addr284:
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              if(!_loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr287:
                                                                                                                                                                                    if(!(_loc1_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr296:
                                                                                                                                                                                       this.§8,§.visible = false;
                                                                                                                                                                                       addr261:
                                                                                                                                                                                       this.§;a§ = null;
                                                                                                                                                                                       addr298:
                                                                                                                                                                                       if(!(_loc1_ && _loc1_))
                                                                                                                                                                                       {
                                                                                                                                                                                          this.§1!^§ = null;
                                                                                                                                                                                          addr234:
                                                                                                                                                                                          addr260:
                                                                                                                                                                                          if(this.§;F§)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr246:
                                                                                                                                                                                                   this.§;F§.removeEventListener(Event.COMPLETE,this.§'k§);
                                                                                                                                                                                                   addr253:
                                                                                                                                                                                                   if(!_loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§;F§);
                                                                                                                                                                                                      if(!_loc1_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().removeEventListener(Event.CANCEL,this.§#!g§);
                                                                                                                                                                                                            addr227:
                                                                                                                                                                                                            if(!_loc1_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr186:
                                                                                                                                                                                                               §§push(Boolean(this.§5B§));
                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr191:
                                                                                                                                                                                                                     this.§5B§.removeEventListener(Event.COMPLETE,this.§2!5§);
                                                                                                                                                                                                                     addr189:
                                                                                                                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc1_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§5B§);
                                                                                                                                                                                                                           if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop().removeEventListener(Event.CANCEL,this.§'p§);
                                                                                                                                                                                                                                 addr179:
                                                                                                                                                                                                                                 if(!_loc1_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr136:
                                                                                                                                                                                                                                    this.§<%§();
                                                                                                                                                                                                                                    addr140:
                                                                                                                                                                                                                                    if(!(_loc1_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Starling.§!!F§);
                                                                                                                                                                                                                                          if(_loc2_ || _loc1_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr113:
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr114:
                                                                                                                                                                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc1_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr131:
                                                                                                                                                                                                                                                      Starling.§!!F§.color = 0;
                                                                                                                                                                                                                                                      addr133:
                                                                                                                                                                                                                                                      if(_loc2_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr38:
                                                                                                                                                                                                                                                         §§push(this.§+!a§);
                                                                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                            if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc1_ && _loc1_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc2_ || _loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc1_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr91:
                                                                                                                                                                                                                                                                                    this.§+!a§.removeEventListeners();
                                                                                                                                                                                                                                                                                    addr93:
                                                                                                                                                                                                                                                                                    if(!(_loc1_ && _loc1_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr24:
                                                                                                                                                                                                                                                                                       this.mReadyToRun = false;
                                                                                                                                                                                                                                                                                       if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc1_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr189);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          return;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr93);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr114);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr364);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr189);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr133);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr93);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr24);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr234);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr186);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr113);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr91);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr140);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr356);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr179);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr38);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr131);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr319);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr227);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr287);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr186);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr191);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr418);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr260);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr136);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr284);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr253);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr234);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr246);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr298);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr246);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr186);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr393);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr407);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr261);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr355);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr296);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr388);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr383);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr363);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr362);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr358);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr378);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr273);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr363);
                                                                                                                                                }
                                                                                                                                                addr447:
                                                                                                                                                §§goto(addr394);
                                                                                                                                             }
                                                                                                                                             §§push(this.sprite);
                                                                                                                                          }
                                                                                                                                          §§pop().removeChildAt(0,true);
                                                                                                                                          §§goto(addr447);
                                                                                                                                       }
                                                                                                                                       §§goto(addr452);
                                                                                                                                    }
                                                                                                                                    §§goto(addr414);
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                                 continue loop21;
                                                                                                                              }
                                                                                                                              §§goto(addr698);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr500);
                                                                                                                     }
                                                                                                                     continue loop36;
                                                                                                                  }
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                               addr528:
                                                                                                            }
                                                                                                            §§goto(addr549);
                                                                                                            §§goto(addr565);
                                                                                                         }
                                                                                                         addr517:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr710);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr689);
                                                                                                   }
                                                                                                   §§goto(addr693);
                                                                                                }
                                                                                                §§goto(addr714);
                                                                                             }
                                                                                             §§goto(addr698);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr612);
                                                                              }
                                                                              continue loop35;
                                                                           }
                                                                           §§goto(addr614);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop37;
                                                               }
                                                            }
                                                            addr657:
                                                         }
                                                         §§goto(addr671);
                                                      }
                                                   }
                                                   §§goto(addr657);
                                                }
                                             }
                                             addr652:
                                          }
                                          §§goto(addr659);
                                       }
                                    }
                                    §§goto(addr603);
                                 }
                              }
                              §§goto(addr652);
                           }
                           if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           }
                           if(§§pop())
                           {
                              §§goto(addr587);
                           }
                           §§goto(addr517);
                        }
                     }
                     §§goto(addr691);
                  }
               }
            }
            §§goto(addr712);
         }
         §§goto(addr551);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §2D§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§1!^§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§1!^§);
                  }
                  else
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr51);
            }
            return §§pop().toString();
         }
         addr51:
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.mReadyToRun);
            if(!(_loc5_ && this))
            {
               §§push(!§§pop());
               while(true)
               {
                  §§push(Boolean(§§pop()));
               }
               addr161:
            }
            loop1:
            while(true)
            {
               §§push(§§pop());
               if(_loc4_ || this)
               {
                  §§push(Boolean(§§pop()));
               }
               loop2:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr173:
                        while(true)
                        {
                           §§push(Starling.§84§());
                           addr130:
                           while(!_loc5_)
                           {
                              §§push(!§§pop());
                              while(!_loc5_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              continue loop3;
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     loop8:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr149:
                           return 0;
                        }
                        addr95:
                        while(true)
                        {
                           §§push(this.§;a§);
                           addr98:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc5_)
                              {
                                 continue loop2;
                              }
                              continue loop8;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            §§push(this.§9!6§);
            if(!(_loc7_ && param2))
            {
               if(§§pop())
               {
                  if(!(_loc7_ && param2))
                  {
                     §§push(param1);
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop() * 0.2);
                        if(!(_loc7_ && param3))
                        {
                           §§push(Number(§§pop()));
                           if(_loc6_ || param3)
                           {
                              addr65:
                              param1 = §§pop();
                              if(!_loc7_)
                              {
                                 §§push(Starling.§1!e§);
                                 if(!(_loc7_ && param2))
                                 {
                                    addr79:
                                    if(§§pop())
                                    {
                                       addr92:
                                       if(_loc6_ || param3)
                                       {
                                          addr87:
                                          §§push(Starling.§1!e§);
                                       }
                                       var _loc5_:* = Number(0);
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(this);
                                          §§push(this.§,6§);
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(§§pop() + param1);
                                          }
                                          §§pop().§,6§ = §§pop();
                                          loop0:
                                          while(true)
                                          {
                                             §§push(param3);
                                             loop1:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   this.§5f§.§2F§(param1);
                                                   continue loop0;
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§@!M§);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() + param1);
                                                   }
                                                   §§pop().§@!M§ = §§pop();
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(this.mLevelEngine.§;Q§(this.§@!M§));
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop6:
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  this.§8!5§.update(param1,param4);
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     this.§@!M§ = _loc5_;
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           §§push(param2);
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 break loop9;
                                                                              }
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              addr153:
                                                                              addr153:
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 break loop9;
                                                                              }
                                                                              addr165:
                                                                              while(!(_loc7_ && this))
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 §§goto(addr153);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     §§push(param1);
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  addr119:
                                                                  return §§pop();
                                                               }
                                                               continue loop10;
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr176);
                                    }
                                    §§goto(addr92);
                                 }
                                 §§pop().speed = 0.2;
                              }
                           }
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr87);
               }
               §§goto(addr92);
            }
            §§goto(addr79);
         }
         §§goto(addr92);
      }
      
      private function § !j§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§?!`§.§&!5§);
         if(_loc7_)
         {
            §§push(§§pop() * 1000);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            if(this.§;a§)
            {
               loop0:
               while(true)
               {
                  §§push(param1);
                  loop1:
                  while(true)
                  {
                     §§push(this.§;a§.speed);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                        loop3:
                        while(true)
                        {
                           param1 = §§pop();
                           addr312:
                           while(true)
                           {
                              §§push(this.§,6§);
                              if(!_loc6_)
                              {
                                 §§push(param1);
                                 if(_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              if(!(_loc6_ && param1))
                              {
                                 if(!_loc6_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc7_ || param3)
                                    {
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           loop18:
                           while(true)
                           {
                              §§push(this.§,6§);
                              if(!_loc6_)
                              {
                                 §§push(_loc4_);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc6_)
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc6_ && param1))
                                          {
                                             if(_loc7_ || param3)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr186:
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(this.§[q§);
                                                         addr188:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§push(§§pop() + _loc4_);
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     loop13:
                                                                     while(_loc7_ || param2)
                                                                     {
                                                                        §§push(this.§;a§);
                                                                        if(_loc6_)
                                                                        {
                                                                           break loop12;
                                                                        }
                                                                        §§pop().step(this);
                                                                        while(_loc7_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§[q§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop() + _loc4_);
                                                                           }
                                                                           §§pop().§[q§ = §§pop();
                                                                           if(_loc6_ && param2)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           §§push(this.§,6§);
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              if(_loc6_ && this)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr122:
                                                                                 addr46:
                                                                                 §§goto(addr48);
                                                                              }
                                                                              addr121:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              break loop13;
                                                                           }
                                                                        }
                                                                        §§push(this);
                                                                        §§push(this.§[q§);
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() + _loc4_);
                                                                        }
                                                                        §§pop().§[q§ = §§pop();
                                                                        §§goto(addr233);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     addr245:
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        §§push(this.§;a§);
                                                                        break;
                                                                     }
                                                                     §§goto(addr215);
                                                                  }
                                                                  §§goto(addr73);
                                                               }
                                                               §§pop().step(this);
                                                               §§goto(addr251);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr245);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this.§,6§);
                                                   if(!_loc6_)
                                                   {
                                                      addr243:
                                                      §§push(§§pop() + _loc4_);
                                                      §§push(this.§[q§);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr245);
                                             }
                                             §§goto(addr243);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr243);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr188);
                              }
                              §§goto(addr186);
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(this.updateWithTime(_loc4_,true,param2,param3));
               if(_loc7_)
               {
                  return §§pop();
               }
            }
            addr48:
            while(true)
            {
               if(!_loc7_)
               {
                  continue loop16;
               }
               if(_loc7_)
               {
                  break;
               }
               addr233:
               while(true)
               {
                  addr215:
                  while(true)
                  {
                     §§push(this.updateWithTime(_loc4_,false,param2,param3));
                  }
                  break loop14;
               }
            }
            addr46:
            §§push(param1);
            while(_loc6_ && param3)
            {
               continue loop5;
               §§goto(addr46);
            }
            return §§pop();
         }
         §§goto(addr312);
      }
      
      private function §=R§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc6_ && this))
         {
            this.§4!6§.update(param1);
            loop0:
            while(true)
            {
               this.§5f§.§8?§(param1,param2);
               loop1:
               while(true)
               {
                  this.§!A§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§@_§);
                     loop3:
                     while(true)
                     {
                        §§push(§&!U§.§-!B§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc5_ || param2)
                              {
                                 §§push(this);
                                 §§push(this.§@_§);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().§@_§ = §§pop();
                              }
                              loop24:
                              while(true)
                              {
                                 §§push(§&!U§.§-!B§);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(§§pop() / 2);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop11:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          loop15:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(-Math.abs(this.§@_§ - _loc3_));
                                             if(!(_loc6_ && param1))
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop10;
                                                }
                                                §§push(_loc3_);
                                                if(_loc5_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§push(§&!U§.§"!O§);
                                                      if(_loc5_)
                                                      {
                                                         addr223:
                                                         §§push(§§pop() / _loc3_);
                                                      }
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         addr233:
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            break loop11;
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   _loc4_ = §§pop();
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(this.§8,§);
                                                      addr171:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               addr121:
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  §§push(this.§'!N§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop24;
                                                                              }
                                                                              §§push(this.§'!N§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§@?§(this.§]!Y§,param1));
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    while(!_loc6_)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    addr113:
                                                                                    addr134:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§6!j§();
                                                                                          addr120:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       addr117:
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                           addr98:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§]!Y§.§7l§(param1);
                                                                           addr68:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 addr173:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§8,§);
                                                                                    addr175:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().alpha = _loc4_;
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr121);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr98);
                                                                              }
                                                                           }
                                                                           continue loop0;
                                                                           §§goto(addr120);
                                                                        }
                                                                     }
                                                                     §§goto(addr113);
                                                                  }
                                                                  §§goto(addr102);
                                                               }
                                                               continue loop3;
                                                               addr87:
                                                            }
                                                            §§goto(addr173);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr223);
                                             }
                                             §§goto(addr233);
                                          }
                                       }
                                       §§goto(addr241);
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§push(this.§8,§);
                              if(!(_loc6_ && param1))
                              {
                                 §§goto(addr134);
                                 §§push(Boolean(§§pop()));
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§pop().visible = false;
                                          while(true)
                                          {
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§goto(addr87);
                                             }
                                             §§goto(addr177);
                                          }
                                          addr160:
                                       }
                                       §§goto(addr171);
                                    }
                                 }
                                 addr154:
                              }
                           }
                           §§goto(addr175);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.objects);
            loop0:
            while(true)
            {
               §§push(param1);
               addr94:
               while(true)
               {
                  §§push(1000);
                  addr95:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr96:
                     while(true)
                     {
                        §§pop().§2F§(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
            addr93:
         }
         while(true)
         {
            §§push(this.objects);
            if(!(_loc3_ && param1))
            {
               §§push(param1);
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     §§push(1000);
                     if(_loc2_ || _loc2_)
                     {
                        addr86:
                        §§push(§§pop() * §§pop());
                        if(!_loc3_)
                        {
                           §§pop().§&e§(§§pop());
                           do
                           {
                              this.§6!e§();
                           }
                           while(!_loc2_);
                           
                           if(_loc2_ || param1)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr96);
               }
               §§goto(addr86);
            }
            else
            {
               §§goto(addr93);
            }
         }
      }
      
      public function §!A§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:LevelObject = null;
         if(_loc4_ || this)
         {
            §§push(this.§,6§);
            §§push(this.§7!S§);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(!(_loc5_ && _loc2_))
               {
                  §§goto(addr59);
               }
            }
            §§goto(addr63);
         }
         addr59:
         if(this.§4I§ != null)
         {
            addr63:
            var _loc2_:int = 0;
            for each(_loc1_ in this.§4I§)
            {
               if(!_loc5_)
               {
                  _loc1_.addTrail();
               }
            }
            if(_loc5_ && _loc2_)
            {
            }
            §§goto(addr106);
         }
         this.§7!S§ = this.§,6§;
         addr106:
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LevelObject = null;
         if(!(_loc3_ && this))
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(_loc4_ || param1)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(_loc4_)
            {
               §§goto(addr42);
            }
            §§goto(addr75);
         }
         addr42:
         §§push(this.mPigsAnimationTimer1);
         if(!_loc3_)
         {
            §§push(0);
            if(_loc4_)
            {
               if(§§pop() <= §§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.§5f§);
                     if(!_loc3_)
                     {
                        §§push(true);
                        if(!_loc3_)
                        {
                           §§push(§§pop().isPigsAlive(§§pop()));
                           if(!(_loc3_ && param1))
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    addr75:
                                    §§push(this.§5f§);
                                    if(_loc4_)
                                    {
                                       addr79:
                                       §§push(true);
                                       if(!(_loc3_ && this))
                                       {
                                          addr87:
                                          §§push(§§pop().§4J§(§§pop()));
                                          if(!_loc3_)
                                          {
                                             _loc2_ = §§pop();
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                _loc2_.§7!O§.mTryToScream = LevelObjectRenderer.§9!g§;
                                                if(_loc4_ || this)
                                                {
                                                }
                                                addr141:
                                                §§push(this);
                                                §§push(this.mPigsAnimationTimer2);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().mPigsAnimationTimer2 = §§pop();
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr179);
                                             }
                                             §§push(this);
                                             §§push(500 + Math.random() * 1000);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() + 4000 / (3 + this.§5f§.§>z§()));
                                             }
                                             §§pop().mPigsAnimationTimer1 = §§pop();
                                             §§goto(addr141);
                                          }
                                       }
                                    }
                                    §§goto(addr180);
                                 }
                                 addr161:
                                 §§goto(addr164);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr75);
               }
               §§goto(addr141);
            }
            addr164:
            §§goto(addr163);
         }
         addr163:
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(_loc4_)
            {
               §§push(this.§5f§);
               if(_loc4_)
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     addr175:
                     if(§§pop().isPigsAlive(§§pop()))
                     {
                        addr180:
                        _loc2_ = this.§5f§.§4J§(true);
                        addr179:
                        if(!(_loc3_ && param1))
                        {
                           _loc2_.§7!O§.mTryToBlink = LevelObjectRenderer.§[W§;
                           if(!_loc3_)
                           {
                              §§push(this);
                              §§push(250 + Math.random() * 500);
                              if(_loc4_ || this)
                              {
                                 §§push(§§pop() + 2000 / (3 + this.§5f§.§>z§()));
                              }
                              §§pop().mPigsAnimationTimer2 = §§pop();
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr179);
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            §§push(param6);
            if(!(_loc8_ && param1))
            {
               §§push(-9999);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     addr198:
                     while(true)
                     {
                        §§push(§0'§.§7!!§);
                        addr201:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr202:
                           while(true)
                           {
                              param6 = §§pop();
                              addr203:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr198:
                  }
                  while(true)
                  {
                     ScoreCollector.addScore(param1,param2);
                     loop2:
                     while(true)
                     {
                        this.§+!a§.addScore(param1);
                        loop3:
                        while(true)
                        {
                           if(!(_loc8_ && this))
                           {
                              §§push(param3);
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop7:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§pop();
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(!(_loc8_ && param3))
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         §§push(0);
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(_loc7_)
                                                            {
                                                               if(_loc8_ && param3)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               if(!(_loc7_ || param3))
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop11:
                                                                  while(!_loc8_)
                                                                  {
                                                                     §§pop();
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(this.§'![§);
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(!(_loc7_ || this))
                                                                              {
                                                                                 addr51:
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    while(§§pop())
                                                                                    {
                                                                                       if(_loc7_ || param1)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             this.§="§(param1.toString(),param4,param5,800,param6,0,0);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr203);
                                                                                          }
                                                                                       }
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                    return;
                                                                                    addr58:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                           }
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr58);
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr202);
                                             }
                                          }
                                          §§goto(addr122);
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr198);
                           }
                           §§goto(addr201);
                        }
                     }
                  }
               }
            }
            §§goto(addr202);
         }
         §§goto(addr198);
      }
      
      public function §="§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            §§push(param5);
            if(_loc8_ || this)
            {
               if(§§pop() == -9999)
               {
                  while(true)
                  {
                     §§push(§0'§.§&!1§);
                     if(_loc8_)
                     {
                        addr85:
                        §§push(int(§§pop()));
                        while(true)
                        {
                           param5 = §§pop();
                           addr86:
                           while(true)
                           {
                           }
                        }
                        addr85:
                     }
                     §§goto(addr85);
                  }
                  addr79:
               }
               while(true)
               {
                  this.§<H§.§@4§(§0'§.§0!8§,LevelParticleManager.§#!k§,§0'§.§=!%§,param2,param3,param4,param1,param5,param6,param7);
                  if(!_loc8_)
                  {
                     continue;
                  }
                  if(!_loc9_)
                  {
                     break;
                  }
                  §§goto(addr79);
               }
               return;
               addr68:
            }
            §§goto(addr85);
         }
         §§goto(addr68);
      }
      
      public function §6Q§(param1:LevelObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§4I§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(_loc2_)
               {
                  while(true)
                  {
                     this.§4I§ = new Array();
                  }
                  addr70:
               }
               while(true)
               {
                  continue loop0;
                  addr53:
                  §§pop().push(param1);
                  if(_loc2_ || param1)
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§8!5§.useMightyEagle();
            while(true)
            {
               this.§5f§.§#!C§();
               while(_loc2_ || _loc1_)
               {
                  this.§'![§ = true;
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
      
      public function §[]§(param1:LevelObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§<H§.§@!X§(LevelParticleManager.§^<§);
            loop0:
            while(true)
            {
               §§push(this.§4I§);
               loop1:
               while(true)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     if(!_loc3_)
                     {
                        §§push(this.§4I§);
                        while(true)
                        {
                           §§pop().splice(this.§4I§.indexOf(param1),1);
                        }
                        addr94:
                     }
                     while(true)
                     {
                     }
                     addr101:
                  }
                  while(true)
                  {
                     §§push(this.§4I§);
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr24);
               }
               while(true)
               {
                  if(_loc2_ || param1)
                  {
                     addr24:
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr62);
      }
      
      public function § a§(param1:LevelSlingshotObject, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§+!Y§ = this.§5f§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!(_loc8_ && param1))
            {
               addr42:
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr47:
                  §§push(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN);
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc8_ && this))
                     {
                        addr60:
                     }
                     addr75:
                     var _loc4_:Number = §§pop();
                     addr74:
                     if(_loc7_)
                     {
                        §§push(param1.§?!h§);
                        if(!(_loc8_ && param1))
                        {
                           §§push(1);
                           loop0:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§+!Y§);
                                    loop2:
                                    while(true)
                                    {
                                       §§pop().§;!4§(param1.§?!h§);
                                       addr172:
                                       while(true)
                                       {
                                          addr136:
                                          while(true)
                                          {
                                             §§push(this.§+!Y§);
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                             §§pop().§7!O§.§&!L§();
                                             while(true)
                                             {
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr166:
                              }
                              while(true)
                              {
                                 §§push(param1.§9S§);
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr179:
                              §§push(§§pop() * param2);
                              addr202:
                              if(!_loc8_)
                              {
                                 addr183:
                                 §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                 if(!(_loc8_ && param2))
                                 {
                                    addr201:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc5_:* = §§pop();
                              §§push(_loc4_);
                              if(!(_loc8_ && param2))
                              {
                                 §§push(§§pop() * param2);
                                 if(_loc7_)
                                 {
                                    addr215:
                                    §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                    if(_loc7_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc6_:* = §§pop();
                                 if(_loc7_)
                                 {
                                    this.§+!Y§.§4g§(new b2Vec2(_loc5_,_loc6_),false,true);
                                 }
                                 do
                                 {
                                    this.camera.§>7§(§%!-§.§]3§);
                                    do
                                    {
                                       §§push(this.§1!^§);
                                       if(_loc7_ || this)
                                       {
                                          if(!§§pop())
                                          {
                                             §§goto(addr238);
                                          }
                                          if(!(_loc7_ || param3))
                                          {
                                             continue;
                                          }
                                          §§push(this.§1!^§);
                                       }
                                       §§pop().§ a§(this.mLevelEngine.§">§,param1.x,param1.y,param2,param3);
                                    }
                                    while(_loc8_);
                                    
                                 }
                                 while(!(_loc7_ || param1));
                                 
                                 addr238:
                                 return;
                              }
                              §§goto(addr215);
                           }
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr60);
               }
               else
               {
                  §§push(LevelSlingshot.BIRD_LAUNCH_FORCE);
                  if(!(_loc8_ && param3))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                        §§goto(addr74);
                     }
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr47);
         }
         §§goto(addr42);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§]!Z§ = true;
         }
      }
      
      private function §6!e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§]!Z§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§]!Z§ = false;
                        loop3:
                        while(true)
                        {
                           §§push(this.activeObject);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() is §4!G§);
                              addr194:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 addr224:
                                 loop16:
                                 while(true)
                                 {
                                    §§pop();
                                    loop17:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(this.activeObject);
                                       if(!(_loc2_ && this))
                                       {
                                          continue loop4;
                                       }
                                       loop18:
                                       while(true)
                                       {
                                          §§push(§§pop().activateSpecialPower(this.§5!B§));
                                          addr183:
                                          loop14:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§>!=§ = true;
                                                   addr187:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr184:
                                             }
                                             while(true)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this.§1!^§);
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      addr38:
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc2_ && this))
                                                               {
                                                                  if(_loc2_ && this)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  if(!(_loc1_ || this))
                                                                  {
                                                                     §§goto(addr237);
                                                                  }
                                                                  addr77:
                                                                  this.§1!^§.§6t§(this.mLevelEngine.§">§);
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr171:
                                                                  while(!(_loc2_ && _loc1_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     §§goto(addr184);
                                                                  }
                                                                  §§goto(addr187);
                                                               }
                                                               addr101:
                                                            }
                                                            §§goto(addr24);
                                                         }
                                                         continue loop16;
                                                      }
                                                      addr98:
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop14;
                                                         }
                                                         §§pop();
                                                         §§goto(addr38);
                                                      }
                                                      §§goto(addr101);
                                                   }
                                                   §§goto(addr77);
                                                }
                                                addr24:
                                                return;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  addr237:
                  return;
               }
            }
         }
         §§goto(addr178);
      }
      
      public function §'!7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§5f§.§'!7§();
         }
      }
      
      public function §[!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§5f§.§8h§();
         }
      }
      
      public function §<!9§() : LevelModel
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:LevelModel = new LevelModel();
         if(_loc2_)
         {
            _loc1_.§;!L§ = this.§0@§.§;!L§;
            while(true)
            {
               _loc1_.§^]§ = this.§0@§.§^]§;
               loop1:
               while(_loc2_)
               {
                  this.§]!Y§.§"^§(_loc1_);
                  loop2:
                  while(true)
                  {
                     this.§5f§.§5!H§(_loc1_);
                     do
                     {
                        this.§8!5§.§!!-§(_loc1_);
                        continue loop2;
                     }
                     while(!_loc2_);
                     
                     if(_loc3_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function §0X§() : int
      {
         return this.§0@§.§^]§;
      }
      
      public function §4w§() : int
      {
         return this.§0@§.§;!L§;
      }
      
      public function §0!0§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§0@§.§^]§ = param1;
         }
      }
      
      public function §]!^§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0@§.§;!L§ = param1;
         }
      }
      
      public function §4,§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§^!@§);
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§^!@§);
                        addr83:
                        while(true)
                        {
                           §§pop().§;0§(param1,param2);
                           addr87:
                           while(true)
                           {
                           }
                        }
                     }
                     addr81:
                  }
                  while(true)
                  {
                     §§push(this.§]!Y§);
                     if(!(_loc4_ || param2))
                     {
                        break;
                     }
                     §§push(Boolean(§§pop()));
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc4_ || this)
                                 {
                                    §§push(this.§]!Y§);
                                    break;
                                 }
                                 §§goto(addr81);
                              }
                              §§goto(addr87);
                           }
                           addr74:
                        }
                        return;
                     }
                     continue loop0;
                  }
                  §§pop().§7l§(0);
                  §§goto(addr74);
               }
            }
            §§goto(addr83);
         }
         §§goto(addr74);
      }
      
      public function get currentLevel() : LevelModel
      {
         return this.§0@§;
      }
      
      public function get §5!B§() : LevelObjectManager
      {
         return this.§5f§;
      }
      
      protected function get starling() : Starling
      {
         return this.§&!J§;
      }
      
      public function get §`A§() : int
      {
         return §1!j§;
      }
   }
}
