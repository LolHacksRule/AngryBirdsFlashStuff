package §]!@§
{
   import §#!,§.DisplayObject;
   import §#!,§.Sprite;
   import §,!7§.AnimationManager;
   import §,!7§.DynamicContentManager;
   import §,!7§.TextureManager;
   import §-!b§.Replay;
   import §-s§.LevelBackground;
   import §4!C§.§,!0§;
   import §5=§.Integer;
   import §5u§.§[!,§;
   import §6!!§.§6!f§;
   import §6!!§.LevelObject;
   import §6!!§.LevelObjectManager;
   import §6!!§.LevelObjectRenderer;
   import §6w§.§9!%§;
   import §7!>§.Starling;
   import §91§.§else§;
   import §<u§.Log;
   import §>!8§.b2Vec2;
   import §>!_§.§5!"§;
   import §>!_§.§=E§;
   import §>!_§.LevelManager;
   import §>!_§.LevelModel;
   import §>=§.LevelThemeBackground;
   import §>=§.LevelThemeBackgroundManager;
   import §?!Y§.§`S§;
   import §@!-§.§ !_§;
   import §@!-§.LevelParticleManager;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class LevelMain
   {
      
      private static const §@D§:int = 20;
      
      public static const §;y§:Number;
      
      public static const §@K§:Number;
      
      public static const §@!d§:Number = 0.05;
      
      public static const §4!$§:Number;
      
      public static const §=!c§:Number;
      
      public static const §2!S§:Integer;
      
      protected static var §>!;§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && LevelMain))
         {
            §@D§ = 20;
            loop0:
            while(true)
            {
               §;y§ = §`S§.SCREEN_WIDTH;
               loop1:
               while(true)
               {
                  §@K§ = §`S§.SCREEN_HEIGHT;
                  while(true)
                  {
                     §@!d§ = 1 / 20;
                     continue loop0;
                     addr57:
                     if(_loc2_ || LevelMain)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      protected var §]%§:LevelObjectManager;
      
      private var §`!L§:LevelObject;
      
      private var §+!e§:Array = null;
      
      protected var §9-§:LevelBackground;
      
      public var mLevelEngine:§5L§;
      
      protected var §>!f§:§[6§;
      
      protected var §8!X§:§[!,§;
      
      protected var §]Q§:LevelSlingshot;
      
      protected var §8!6§:LevelParticleManager;
      
      public var mReadyToRun:Boolean = false;
      
      public var §try §:Boolean = false;
      
      protected var §2!@§:Boolean = false;
      
      protected var §]!A§:Boolean = false;
      
      public var §`!8§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §6!;§:Number;
      
      public var §`!>§:Number;
      
      private var §0h§:Number;
      
      public var §1R§:§=E§;
      
      public var static:Boolean = false;
      
      private var §^W§:§9?§;
      
      private var §1!`§:Sprite;
      
      protected var §2!i§:LevelModel;
      
      protected var §9!A§:§else§ = null;
      
      private var §3H§:EventDispatcher;
      
      private var §5!c§:Array;
      
      private var §,`§:Array;
      
      protected var §&!8§:Starling;
      
      private var §3!E§:§9!%§;
      
      protected var §7!`§:TextureManager;
      
      protected var §,!%§:AnimationManager;
      
      private var §3!a§:DynamicContentManager;
      
      private var §9! §:DynamicContentManager;
      
      private var §<I§:DynamicContentManager;
      
      private var §[;§:Stage;
      
      private var § !k§:§#C§;
      
      protected var §>!!§:Replay;
      
      protected var §!=§:Replay;
      
      protected var §;l§:Number = 0.0;
      
      protected var §^!N§:String;
      
      private var §!! §:Boolean;
      
      protected var §&&§:Boolean;
      
      protected var §9!8§:uint = 1.417339207E9;
      
      public var §=§:Boolean;
      
      public function LevelMain(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§,`§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§3H§ = new EventDispatcher();
                  loop2:
                  while(true)
                  {
                     this.§1R§ = new §=E§();
                     while(true)
                     {
                        this.§[;§ = param1;
                        while(_loc4_ || _loc3_)
                        {
                           this.§7!`§ = TextureManager.§7!E§;
                           continue loop2;
                           addr53:
                           if(!(_loc3_ && _loc2_))
                           {
                              loop8:
                              while(true)
                              {
                                 this.§9! § = this.initThemeSoundsManager();
                                 do
                                 {
                                    this.§<I§ = this.initCutSceneManager();
                                 }
                                 while(_loc3_);
                                 
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 while(false)
                                 {
                                    continue loop8;
                                 }
                                 var _loc2_:Stage3D = param1.stage3Ds[0];
                                 if(_loc4_ || this)
                                 {
                                    this.§&!8§ = new Starling(§9?§,param1,new Rectangle(0,0,§`S§.SCREEN_WIDTH,§`S§.SCREEN_HEIGHT),_loc2_);
                                    loop11:
                                    while(true)
                                    {
                                       §`S§.§=F§.addEventListener(Event.ENTER_FRAME,this.§&!8§.onEnterFrame);
                                       while(true)
                                       {
                                          _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§8!<§,false,0,true);
                                          while(!(_loc3_ && _loc2_))
                                          {
                                             §§push(this.§&!8§);
                                             loop14:
                                             while(true)
                                             {
                                                §§push(false);
                                                loop15:
                                                while(true)
                                                {
                                                   §§pop().§;!h§ = §§pop();
                                                   loop16:
                                                   while(_loc4_)
                                                   {
                                                      §§push(this.§&!8§);
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                            addr191:
                                                         }
                                                         §§pop().enableErrorChecking = §§pop();
                                                         while(!(_loc3_ && _loc2_))
                                                         {
                                                            §§push(this.§&!8§);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§pop().§6y§ = 2;
                                                               addr183:
                                                               while(true)
                                                               {
                                                                  §§push(this.§&!8§);
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                               continue loop14;
                                                            }
                                                         }
                                                         continue loop16;
                                                      }
                                                      continue loop15;
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                             if(_loc4_ || this)
                                             {
                                                return;
                                                addr177:
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr177);
                              }
                              while(_loc4_)
                              {
                                 if(!(_loc4_ || param1))
                                 {
                                    continue loop2;
                                 }
                                 §§goto(addr53);
                                 §§goto(addr33);
                              }
                              addr33:
                              while(_loc4_)
                              {
                                 this.§3!a§ = this.initThemeGraphicsManager();
                                 §§goto(addr44);
                              }
                              addr44:
                              continue loop0;
                              addr68:
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr31);
      }
      
      public static function § v§(param1:LevelObject, param2:LevelObject) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.§'l§);
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop() - param2.§'l§);
            if(_loc5_ || param1)
            {
               addr55:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§>z§);
            if(_loc5_)
            {
               §§push(§§pop() - param2.§>z§);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return §=%§(_loc3_,_loc4_);
         }
         §§goto(addr55);
      }
      
      public static function §=%§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§1!`§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc2_)
                  {
                     §§push(§§pop());
                     if(_loc1_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        loop2:
                        while(§§pop())
                        {
                           if(_loc1_ || this)
                           {
                              if(!_loc1_)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(Boolean(this.§!!!§));
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       break;
                                    }
                                    addr93:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop3;
                                    }
                                 }
                                 if(_loc1_ || this)
                                 {
                                    continue;
                                 }
                                 continue loop1;
                              }
                              this.§1!`§ = this.§^W§.§#q§;
                              while(true)
                              {
                                 break loop2;
                              }
                              addr81:
                           }
                           §§goto(addr81);
                        }
                        while(true)
                        {
                           §§push(this.§1!`§);
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr93);
               }
            }
         }
         §§goto(addr81);
      }
      
      public function get §!!!§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§^W§);
            do
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§^W§ = this.§&!8§.§#n§ as §9?§;
                     while(true)
                     {
                        §§push(this.§^W§);
                        addr57:
                        loop3:
                        while(true)
                        {
                           §§pop().§<@§ = false;
                           if(!_loc1_)
                           {
                              break;
                           }
                           if(!_loc1_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§^W§);
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr57);
               }
            }
            while(!_loc1_);
            
            return §§pop();
         }
         §§goto(addr63);
      }
      
      private function get §5e§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§!!!§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(this.§!!!§);
                  }
                  else
                  {
                     §§goto(addr69);
                  }
               }
               §§goto(addr69);
            }
            return (§§pop() as §9?§).§5e§;
         }
         addr69:
         return null;
      }
      
      public function get animationManager() : AnimationManager
      {
         return this.§,!%§;
      }
      
      public function get textureManager() : TextureManager
      {
         return this.§7!`§;
      }
      
      public function get camera() : §[!,§
      {
         return this.§8!X§;
      }
      
      public function get objects() : LevelObjectManager
      {
         return this.§]%§;
      }
      
      public function get particles() : LevelParticleManager
      {
         return this.§8!6§;
      }
      
      public function get background() : LevelBackground
      {
         return this.§9-§;
      }
      
      public function get slingshot() : LevelSlingshot
      {
         return this.§]Q§;
      }
      
      public function get activeObject() : LevelObject
      {
         return this.§`!L§;
      }
      
      public function get §!![§() : §[6§
      {
         return this.§>!f§;
      }
      
      public function get stage() : Stage
      {
         return this.§[;§;
      }
      
      public function get §4!G§() : DynamicContentManager
      {
         return this.§<I§;
      }
      
      protected function get §2h§() : DynamicContentManager
      {
         return this.§3!a§;
      }
      
      public function set activeObject(param1:LevelObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`!L§ = param1;
         }
      }
      
      public function set §@!^§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&&§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§3!E§);
            if(_loc2_ || _loc1_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§push(this.§3!E§);
                        while(true)
                        {
                           §§pop().dispose();
                           addr245:
                           while(true)
                           {
                           }
                        }
                        addr243:
                     }
                     §§goto(addr245);
                  }
                  while(true)
                  {
                     §§push(this.§7!`§);
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§7!`§);
                                 addr225:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    addr227:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr223:
                           }
                           while(true)
                           {
                              §§push(this.§3!a§);
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr202:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr203:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§pop();
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this.§3!a§);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop().textureManager);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr176:
                                                         while(true)
                                                         {
                                                            loop28:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     addr180:
                                                                     §§push(this.§3!a§);
                                                                     while(!_loc1_)
                                                                     {
                                                                        §§push(§§pop().textureManager);
                                                                        while(true)
                                                                        {
                                                                           §§pop().dispose();
                                                                           addr83:
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    if(_loc1_ && this)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop26:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                §§push(this.§<I§);
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().textureManager);
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().dispose();
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc1_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§&!8§);
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           if(_loc2_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(this.§&!8§);
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        addr53:
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           continue loop26;
                                                                                                                        }
                                                                                                                        addr55:
                                                                                                                        if(!(_loc2_ || this))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc1_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(this.§<I§);
                                                                                                                                 if(!(_loc2_ || this))
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 if(_loc2_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().textureManager);
                                                                                                                                    if(_loc1_)
                                                                                                                                    {
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                    §§goto(addr83);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                    addr129:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr245);
                                                                                                                              }
                                                                                                                              §§goto(addr55);
                                                                                                                           }
                                                                                                                           addr161:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  break loop22;
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            §§pop().dispose();
                                                                                                            §§goto(addr53);
                                                                                                            addr29:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc1_ && this)
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr227);
                                                                                                            addr187:
                                                                                                         }
                                                                                                         §§goto(addr129);
                                                                                                      }
                                                                                                      addr156:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         §§pop();
                                                                                                         §§goto(addr161);
                                                                                                      }
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr223);
                                                                                          }
                                                                                          §§goto(addr225);
                                                                                       }
                                                                                       §§goto(addr29);
                                                                                    }
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                        §§goto(addr180);
                                                                     }
                                                                     continue loop5;
                                                                     addr182:
                                                                  }
                                                                  §§goto(addr187);
                                                               }
                                                               §§goto(addr126);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr182);
                                                }
                                             }
                                          }
                                          §§goto(addr176);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr225);
                  }
               }
            }
            §§goto(addr243);
         }
         §§goto(addr245);
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
      
      public function §#!$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(Starling.§7!+§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(param1);
                        addr102:
                        loop2:
                        while(!§§pop())
                        {
                           §§push(Starling.§7!+§);
                           while(_loc3_)
                           {
                              §§pop().stop();
                              while(_loc3_)
                              {
                                 continue loop1;
                                 §§pop().color = 0;
                                 if(!_loc2_)
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       §§goto(addr25);
                                    }
                                    break loop2;
                                 }
                              }
                              §§push(Starling.§7!+§);
                              if(_loc2_)
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr37);
                           }
                           §§pop().start();
                           §§goto(addr108);
                           continue loop1;
                        }
                        §§goto(addr106);
                     }
                  }
                  addr25:
                  return;
               }
               §§goto(addr102);
            }
         }
         §§goto(addr108);
      }
      
      public function §9H§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.sprite);
            if(_loc3_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     addr54:
                     this.sprite.visible = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      public function setController(param1:§else§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§9!A§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(this.§9!A§);
                     while(true)
                     {
                        §§pop().removeEventListeners();
                     }
                     addr86:
                  }
                  while(true)
                  {
                  }
                  addr88:
               }
               while(true)
               {
                  this.§9!A§ = param1;
                  for(; this.mReadyToRun; if(_loc2_ && _loc2_)
                  {
                     continue;
                  })
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        §§push(this.§9!A§);
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              §§pop().addEventListeners();
                              continue;
                           }
                           continue loop0;
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr20);
               }
            }
         }
         addr20:
      }
      
      public function §'m§() : Replay
      {
         return this.§>!!§;
      }
      
      public function §7!Z§(param1:§9!%§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            this.§3!E§ = param1;
         }
         §§push(this.§3!E§.§9q§);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc5_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc5_);
            if(_loc7_ || param1)
            {
               if(_loc7_ || param3)
               {
                  if(_loc7_ || param1)
                  {
                     if(§§pop() >= _loc4_)
                     {
                        loop1:
                        while(true)
                        {
                           if(!(_loc6_ && param2))
                           {
                              if(param3 != null)
                              {
                                 while(_loc7_)
                                 {
                                    this.§3H§.addEventListener(Event.INIT,param3);
                                    while(true)
                                    {
                                       this.§,`§.push(param3);
                                       addr94:
                                       while(true)
                                       {
                                          addr80:
                                          if(_loc7_ || param1)
                                          {
                                             §§goto(addr40);
                                          }
                                       }
                                    }
                                 }
                                 continue loop0;
                                 addr140:
                              }
                              while(true)
                              {
                                 if(this.§<<§(param2))
                                 {
                                    if(_loc7_ || param3)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr140);
                                       }
                                       §§goto(addr150);
                                    }
                                    else
                                    {
                                       §§goto(addr80);
                                    }
                                 }
                                 break;
                                 §§goto(addr94);
                              }
                              addr40:
                              return;
                           }
                        }
                     }
                     else
                     {
                        this.§7!`§.§-M§(this.§3!E§.§+t§(_loc5_));
                     }
                     §§push(_loc5_);
                  }
                  §§push(§§pop() + 1);
               }
               §§push(int(§§pop()));
            }
            _loc5_ = §§pop();
         }
      }
      
      private function §<<§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         if(!_loc4_)
         {
            §§push(this.§7!`§);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop().§!4§());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        this.§5!c§ = param1.concat();
                        if(_loc4_ && _loc2_)
                        {
                           if(!(_loc4_ && this))
                           {
                              if(!(_loc4_ && param1))
                              {
                                 continue;
                              }
                              §§goto(addr208);
                           }
                           break;
                        }
                        if(_loc5_ || _loc3_)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              while(true)
                              {
                                 §§push(false);
                                 if(!(_loc4_ && param1))
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              return §§pop();
                              addr62:
                           }
                           loop3:
                           while(true)
                           {
                              §§push(this.§7!`§);
                              if(!_loc4_)
                              {
                                 §§push(§§pop().§9!d§);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(1000);
                                    if(!(_loc4_ && param1))
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          addr188:
                                          §§push(int(§§pop()));
                                          if(!(_loc5_ || param1))
                                          {
                                             continue;
                                          }
                                          if(_loc5_)
                                          {
                                             addr207:
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                                §§push(Log);
                                                §§push("\n\nMain texture manager memory usage:\n   textures ");
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         §§push(" kilobytes\n   bitmaps ");
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc4_)
                                                            {
                                                               addr145:
                                                               §§push(§§pop() + _loc3_);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  addr154:
                                                                  §§push(§§pop() + " kilobytes\n\n");
                                                               }
                                                            }
                                                            §§pop().log(§§pop());
                                                            break loop1;
                                                         }
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   §§goto(addr145);
                                                }
                                                §§goto(addr154);
                                                §§goto(addr207);
                                             }
                                             addr208:
                                             §§push(true);
                                             continue loop0;
                                             addr100:
                                             addr208:
                                          }
                                          while(true)
                                          {
                                             §§push(1000);
                                             addr224:
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                             }
                                          }
                                          addr223:
                                       }
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          continue loop3;
                                       }
                                    }
                                    §§goto(addr224);
                                 }
                                 §§goto(addr188);
                              }
                              addr222:
                              while(true)
                              {
                                 §§goto(addr223);
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc4_ && _loc2_)
                           {
                              while(true)
                              {
                                 §§goto(addr222);
                              }
                              addr220:
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr208);
                     }
                     while(true)
                     {
                        this.initializeAnimations(param1);
                        §§goto(addr93);
                     }
                  }
                  §§goto(addr220);
               }
               return §§pop();
            }
            §§goto(addr222);
         }
         §§goto(addr62);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§,!%§.initializeAnimations(param1);
         }
      }
      
      private function §8!<§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7!`§.§4!^§();
            loop0:
            while(true)
            {
               §§push(this.§2h§);
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
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§2h§);
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop().textureManager);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr153:
                                       if(!(_loc3_ || param1))
                                       {
                                          continue;
                                       }
                                       §§pop().§4!^§();
                                       loop47:
                                       for(; _loc3_ || _loc3_; §§pop().§!4§(),if(_loc2_ && _loc2_)
                                       {
                                          continue;
                                       },if(!(_loc2_ && _loc2_))
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                §§goto(addr360);
                                             }
                                             addr20:
                                             return;
                                          }
                                          §§goto(addr83);
                                       },§§goto(addr136))
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             §§push(this.§<I§);
                                             if(_loc3_ || this)
                                             {
                                                continue;
                                             }
                                             loop50:
                                             while(true)
                                             {
                                                §§push(§§pop().textureManager);
                                                loop46:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§goto(addr153);
                                                   }
                                                   else
                                                   {
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§pop().§4!^§();
                                                         while(true)
                                                         {
                                                            loop24:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(this.§5!c§));
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§<<§(this.§5!c§));
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop28:
                                                                           while(true)
                                                                           {
                                                                              this.§5!c§ = null;
                                                                              loop29:
                                                                              for(; !_loc2_; if(!(_loc3_ || param1))
                                                                              {
                                                                                 continue;
                                                                              },if(!(_loc3_ || this))
                                                                              {
                                                                                 continue loop28;
                                                                              },if(_loc2_)
                                                                              {
                                                                                 continue loop24;
                                                                              },§§push(this.§<I§),if(!_loc3_)
                                                                              {
                                                                                 continue loop50;
                                                                              },§§push(§§pop().textureManager),if(_loc2_)
                                                                              {
                                                                                 continue loop46;
                                                                              },addr113:,if(!(_loc2_ && this))
                                                                              {
                                                                                 §§goto(addr121);
                                                                                 §§push(Boolean(§§pop()));
                                                                              },while(!(_loc2_ && param1))
                                                                              {
                                                                                 §§goto(addr356);
                                                                                 §§push(Boolean(§§pop()));
                                                                                 §§goto(addr113);
                                                                              },while(true)
                                                                              {
                                                                                 §§pop().§4!^§();
                                                                                 break loop47;
                                                                                 §§goto(addr348);
                                                                              },addr348:)
                                                                              {
                                                                                 this.§0!g§();
                                                                                 loop30:
                                                                                 while(true)
                                                                                 {
                                                                                    addr271:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§9!A§);
                                                                                       loop32:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() == null);
                                                                                          loop33:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   loop34:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      if(_loc2_ && _loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         loop39:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!(_loc2_ && param1))
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  §§push(this.§9!A§);
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§pop().addEventListeners();
                                                                                                               }
                                                                                                               loop40:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  addr83:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        continue loop29;
                                                                                                                     }
                                                                                                                     continue loop40;
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§3!a§);
                                                                                                               if(_loc3_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  loop42:
                                                                                                                  while(!_loc2_)
                                                                                                                  {
                                                                                                                     addr190:
                                                                                                                     if(_loc3_ || param1)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc2_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 if(!(_loc3_ || this))
                                                                                                                                 {
                                                                                                                                    continue loop26;
                                                                                                                                 }
                                                                                                                                 §§push(this.§3!a§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().§!4§();
                                                                                                                                    addr230:
                                                                                                                                    loop43:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr55:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§<I§);
                                                                                                                                          if(_loc2_ && _loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop50;
                                                                                                                                          }
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc3_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue loop42;
                                                                                                                                                }
                                                                                                                                                if(!(_loc3_ || param1))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   §§goto(addr136);
                                                                                                                                                }
                                                                                                                                                §§goto(addr20);
                                                                                                                                             }
                                                                                                                                             continue loop34;
                                                                                                                                             continue loop42;
                                                                                                                                          }
                                                                                                                                          if(_loc3_ || param1)
                                                                                                                                          {
                                                                                                                                             if(!(_loc3_ || _loc3_))
                                                                                                                                             {
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr20);
                                                                                                                                             }
                                                                                                                                             §§goto(addr83);
                                                                                                                                          }
                                                                                                                                          continue loop43;
                                                                                                                                       }
                                                                                                                                       continue loop28;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.mReadyToRun);
                                                                                                                                 }
                                                                                                                                 addr318:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 break loop42;
                                                                                                                                 §§goto(addr68);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr230);
                                                                                                                        }
                                                                                                                        §§goto(addr55);
                                                                                                                     }
                                                                                                                     while(_loc3_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§4!G§);
                                                                                                                              addr362:
                                                                                                                              while(_loc3_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().textureManager);
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              addr376:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 addr377:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       break loop34;
                                                                                                                                    }
                                                                                                                                    break loop34;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr190);
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc2_ && this))
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           if(_loc2_ && param1)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop39;
                                                                                                                        }
                                                                                                                        continue loop33;
                                                                                                                     }
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  §§goto(addr377);
                                                                                                                  addr235:
                                                                                                               }
                                                                                                               §§goto(addr228);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         break loop33;
                                                                                                      }
                                                                                                      §§goto(addr358);
                                                                                                   }
                                                                                                   addr282:
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr282);
                                                                                          }
                                                                                          while(_loc3_)
                                                                                          {
                                                                                             §§pop();
                                                                                             break loop29;
                                                                                          }
                                                                                          addr404:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr405:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§2h§);
                                                                                                   continue loop1;
                                                                                                }
                                                                                                addr405:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr376);
                                                                                                }
                                                                                                addr373:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§4!G§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§goto(addr113);
                                                                                    §§push(§§pop().textureManager);
                                                                                 }
                                                                                 §§goto(addr362);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop50;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          §§goto(addr405);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr373);
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr404);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr417);
      }
      
      private function §0!g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3H§.dispatchEvent(new Event(Event.INIT));
         }
         do
         {
            this.§!!k§();
         }
         while(_loc1_);
         
      }
      
      private function §!!k§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         var _loc3_:* = this.§,`§;
         for each(_loc1_ in _loc3_)
         {
            if(!_loc5_)
            {
               this.§3H§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(_loc4_ || _loc3_)
         {
            this.§,`§ = [];
         }
      }
      
      public function init(param1:LevelModel) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.mReadyToRun);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.clearLevel();
                     addr290:
                     while(true)
                     {
                     }
                  }
                  addr287:
               }
               while(true)
               {
                  this.§>!f§ = new §[6§(this,param1);
                  loop4:
                  while(true)
                  {
                     this.§8!X§ = this.§&!g§(param1);
                     while(true)
                     {
                        this.§6!;§ = 0;
                        addr268:
                        while(true)
                        {
                           this.§`!>§ = 0;
                           addr263:
                           while(true)
                           {
                              this.§0h§ = 0;
                              addr258:
                              while(true)
                              {
                                 this.§!! § = false;
                                 continue loop4;
                              }
                           }
                        }
                        addr43:
                        if(_loc2_ || this)
                        {
                           return;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§2!@§ = this.§ !@§(param1.theme);
            §§goto(addr184);
         }
      }
      
      protected function §^5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>!!§ = new Replay(LevelManager.§1m§);
         }
      }
      
      protected function § !@§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(Boolean(this.§3!a§));
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§push(false);
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr70);
                     }
                  }
                  else
                  {
                     addr71:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr71);
            }
            addr70:
            return §§pop();
         }
         §§goto(addr71);
      }
      
      protected function §20§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LevelThemeBackground = null;
         if(_loc4_ || param1)
         {
            §§push(Boolean(this.§9! §));
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  addr38:
                  _loc2_ = LevelThemeBackgroundManager.§#!W§(param1);
                  if(_loc4_)
                  {
                     §§push(Boolean(_loc2_));
                     if(_loc4_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc3_ && param1))
                           {
                              addr73:
                              §§push(Boolean(_loc2_.§ a§));
                              if(_loc4_ || param1)
                              {
                                 §§push(§§pop());
                                 if(_loc4_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§pop();
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(this.§9! §.§"!Y§(_loc2_.§ a§));
                                          if(!_loc4_)
                                          {
                                          }
                                          addr126:
                                          if(§§pop())
                                          {
                                             if(_loc4_)
                                             {
                                                §§goto(addr130);
                                             }
                                             else
                                             {
                                                addr132:
                                                return true;
                                                addr131:
                                             }
                                          }
                                       }
                                       §§goto(addr131);
                                    }
                                    §§push(!§§pop());
                                    if(_loc4_)
                                    {
                                       addr118:
                                       §§push(Boolean(§§pop()));
                                       if(_loc3_ && _loc3_)
                                       {
                                       }
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr118);
                           }
                        }
                        §§goto(addr131);
                     }
                     addr130:
                     return false;
                  }
                  §§goto(addr73);
               }
               §§goto(addr131);
            }
            §§goto(addr132);
         }
         §§goto(addr38);
      }
      
      protected function §1!J§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:LevelThemeBackground = null;
         if(_loc4_)
         {
            §§push(this.§3!a§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
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
                              §§pop();
                              addr330:
                              loop32:
                              while(true)
                              {
                                 §§push(this.§ !@§(param1));
                                 if(_loc4_ || _loc3_)
                                 {
                                    addr310:
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr311:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr310:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§3!a§);
                                          loop8:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(Event.COMPLETE,this.§>!H§);
                                             while(true)
                                             {
                                                §§push(this.§3!a§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§pop().removeEventListener(Event.CANCEL,this.§ &§);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         §§push(this.§3!a§);
                                                         loop12:
                                                         for(; _loc4_; while(true)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               continue loop10;
                                                            }
                                                            continue loop12;
                                                            §§goto(addr266);
                                                         },continue loop10)
                                                         {
                                                            §§pop().addEventListener(Event.COMPLETE,this.§>!H§);
                                                            while(true)
                                                            {
                                                               §§push(this.§3!a§);
                                                               continue loop12;
                                                               addr259:
                                                               while(!(_loc3_ && this))
                                                               {
                                                                  §§push(this.§3!a§);
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     §§pop().§&!&§(param1);
                                                                     while(!(_loc3_ && _loc2_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§9! §);
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc3_ && this)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       if(!(_loc4_ || _loc2_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§20§(param1));
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          addr137:
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       §§goto(addr310);
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr139);
                                                                                 }
                                                                              }
                                                                              continue loop3;
                                                                              if(_loc3_ && _loc2_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr37);
                                                                           }
                                                                        }
                                                                        if(!(_loc4_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc3_ && _loc3_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        §§goto(addr158);
                                                                        §§push(this.§9! §);
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop32;
                                                   }
                                                   continue loop32;
                                                   if(_loc3_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§pop().addEventListener(Event.CANCEL,this.§ &§);
                                                   §§goto(addr259);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                              }
                           }
                        }
                        §§goto(addr311);
                     }
                  }
               }
            }
         }
         §§goto(addr330);
      }
      
      private function §>!H§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§3!a§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§>!H§);
               loop1:
               while(true)
               {
                  §§push(this.§3!a§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§ &§);
                  while(true)
                  {
                     this.§2!@§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§2!@§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 loop5:
                                 for(; §§pop(); continue loop4)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          this.initialize(this.§2!i§);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          §§push(this.§]!A§);
                                          if(_loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(_loc3_ || this)
                                          {
                                             break;
                                          }
                                          addr108:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop6;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                                 addr20:
                                 return;
                                 addr44:
                              }
                           }
                           §§goto(addr108);
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr44);
                        }
                     }
                     if(_loc2_ && _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      private function § &§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§3!a§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§>!H§);
               while(true)
               {
                  §§push(this.§3!a§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§ &§);
                  while(!(_loc2_ && _loc3_))
                  {
                     this.§try § = true;
                     if(!_loc2_)
                     {
                        return;
                        addr45:
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      private function §;s§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§3!a§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§;s§);
               loop1:
               while(true)
               {
                  §§push(this.§3!a§);
                  if(!(_loc3_ || this))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§1E§);
                  while(true)
                  {
                     this.§]!A§ = true;
                     addr119:
                     loop3:
                     while(true)
                     {
                        §§push(this.§2!@§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc2_)
                           {
                              §§push(§§pop());
                              if(_loc3_ || this)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    addr45:
                                    while(§§pop())
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop3;
                                          }
                                          this.initialize(this.§2!i§);
                                       }
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    return;
                                    continue loop4;
                                 }
                                 continue;
                                 addr44:
                              }
                           }
                           addr89:
                           while(true)
                           {
                              §§pop();
                              continue loop3;
                           }
                        }
                     }
                     if(_loc2_ && this)
                     {
                        continue;
                     }
                     §§push(this.§]!A§);
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr36);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr45);
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      private function §1E§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§3!a§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§;s§);
               loop1:
               while(true)
               {
                  §§push(this.§3!a§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§1E§);
                  while(true)
                  {
                     this.§]!A§ = true;
                     loop3:
                     while(_loc2_ || param1)
                     {
                        §§push(this.§2!@§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc2_ || param1)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    addr101:
                                    while(true)
                                    {
                                       §§push(this.§]!A§);
                                       if(!_loc3_)
                                       {
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop6;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              while(§§pop())
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          continue loop1;
                                       }
                                       this.initialize(this.§2!i§);
                                    }
                                    else
                                    {
                                       §§goto(addr101);
                                    }
                                 }
                                 break;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function get backgroundTextureManager() : TextureManager
      {
         return this.§7!`§;
      }
      
      protected function initialize(param1:LevelModel) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&&§ = false;
            loop0:
            while(true)
            {
               this.§=§ = false;
               loop1:
               while(true)
               {
                  §§push(Starling.§5K§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(Starling.§5K§);
                              addr231:
                              while(true)
                              {
                                 §§pop().speed = 1;
                                 addr233:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr228:
                        }
                        while(true)
                        {
                           this.mLevelEngine = new §5L§(this);
                           addr214:
                           while(true)
                           {
                              §§push(this);
                              §§push(this);
                              §§push(param1.theme);
                              §§push(this.§>!f§.§-!J§);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(§§pop() / §@!d§);
                              }
                              §§pop().§9-§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§8!X§.§-b§());
                              addr197:
                              while(true)
                              {
                                 this.§9-§.§^!D§(§`S§.§-!,§());
                                 continue loop1;
                              }
                           }
                        }
                        addr29:
                        §§push(Boolean(§§pop()));
                        if(!(_loc2_ && this))
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || param1)
                              {
                                 if(_loc3_)
                                 {
                                    addr49:
                                    this.§9!A§.addEventListeners();
                                    if(!_loc2_)
                                    {
                                       addr53:
                                       if(_loc3_ || param1)
                                       {
                                          addr60:
                                          if(_loc3_ || param1)
                                          {
                                             if(!_loc3_)
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   this.§8!X§.init();
                                                   loop11:
                                                   for(; !_loc2_; while(true)
                                                   {
                                                      if(!(_loc2_ && param1))
                                                      {
                                                         this.mReadyToRun = true;
                                                         addr76:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(this.§9!A§);
                                                            if(!_loc2_)
                                                            {
                                                               §§goto(addr29);
                                                            }
                                                            §§goto(addr49);
                                                            §§goto(addr49);
                                                         }
                                                         continue;
                                                         addr76:
                                                      }
                                                      continue loop11;
                                                   },§§goto(addr60))
                                                   {
                                                      this.§-!L§();
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               this.§7=§();
                                                               continue loop11;
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         §§goto(addr214);
                                                         §§goto(addr60);
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   addr139:
                                                   addr153:
                                                   while(!(_loc2_ && _loc2_))
                                                   {
                                                      this.§8!6§ = this.§3-§(this.§,!%§,this.§7!`§);
                                                      continue loop10;
                                                   }
                                                   while(_loc3_)
                                                   {
                                                      this.§]Q§ = this.initLevelSlingshot(param1);
                                                      §§goto(addr139);
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr20);
                                             }
                                             if(!_loc2_)
                                             {
                                                §§goto(addr20);
                                             }
                                             else
                                             {
                                                §§goto(addr233);
                                             }
                                          }
                                          §§goto(addr100);
                                       }
                                       §§goto(addr88);
                                    }
                                    §§goto(addr76);
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr49);
                           }
                           addr20:
                        }
                        continue;
                        return;
                     }
                  }
                  §§goto(addr231);
               }
            }
         }
         §§goto(addr233);
      }
      
      protected function §7=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§^!N§)
            {
               loop0:
               while(true)
               {
                  this.§!=§ = Replay.initialize(this.§^!N§);
                  loop1:
                  while(true)
                  {
                     §§push(this.§!=§);
                     loop2:
                     while(true)
                     {
                        §§pop().speed = 1;
                        addr93:
                        while(_loc2_ || _loc2_)
                        {
                           if(!_loc1_)
                           {
                              continue loop2;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr102);
      }
      
      public function §9!N§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!N§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§!=§ == null);
         if(_loc1_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§!=§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        addr103:
                        if(param1)
                        {
                           break;
                        }
                        §§push(this.§!=§);
                        if(_loc3_ || _loc2_)
                        {
                           continue;
                        }
                        addr106:
                        §§pop().speed = Math.min(this.§!=§.speed * 1.25,Math.pow(1.25,2));
                     }
                     addr120:
                  }
                  addr25:
                  return;
               }
               §§goto(addr103);
            }
         }
         §§goto(addr106);
         §§push(this.§!=§);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§!=§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr43:
                     this.§!=§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      protected function initLevelObjectManager(param1:LevelModel) : LevelObjectManager
      {
         return new LevelObjectManager(this,param1,new Sprite());
      }
      
      protected function §&!g§(param1:LevelModel) : §[!,§
      {
         return new §[!,§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:TextureManager, param4:Number) : LevelBackground
      {
         return new LevelBackground(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:LevelModel) : LevelSlingshot
      {
         return new LevelSlingshot(this,param1,new Sprite());
      }
      
      protected function §3-§(param1:AnimationManager, param2:TextureManager) : LevelParticleManager
      {
         return new LevelParticleManager(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            if(this.mReadyToRun)
            {
               if(_loc6_)
               {
                  addr28:
                  this.clearLevel();
               }
            }
            var _loc3_:LevelModel = this.§[!j§();
            var _loc4_:§5!"§ = new §5!"§();
            if(_loc6_ || param1)
            {
               _loc4_.left = 0;
               loop0:
               while(true)
               {
                  §§push(_loc4_);
                  §§push(§[!,§.§4!@§);
                  if(_loc6_)
                  {
                     §§push(-§§pop());
                     if(_loc6_)
                     {
                        §§push(10);
                        if(!(_loc7_ && param1))
                        {
                           addr159:
                           §§push(§§pop() / §§pop());
                           if(!(_loc7_ && this))
                           {
                              addr157:
                              §§push(8);
                           }
                           §§pop().top = §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.top);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + §[!,§.§4!@§);
                              }
                              §§pop().bottom = §§pop();
                              while(true)
                              {
                                 §§push(_loc4_);
                                 §§push(_loc4_.left);
                                 if(!(_loc7_ && param2))
                                 {
                                    §§push(§§pop() + §[!,§.§5d§);
                                 }
                                 §§pop().right = §§pop();
                                 addr118:
                                 loop3:
                                 while(true)
                                 {
                                    _loc4_.y = -13.929;
                                    addr90:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop3;
                                    }
                                    continue loop1;
                                 }
                                 addr56:
                                 if(_loc7_ && this)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       _loc4_.id = §[!,§.§-!W§;
                                       addr71:
                                       addr85:
                                       while(!(_loc7_ && param1))
                                       {
                                          _loc3_.§=!J§(_loc4_);
                                          if(_loc7_)
                                          {
                                             continue;
                                          }
                                          if(_loc7_)
                                          {
                                             break loop6;
                                          }
                                          §§goto(addr56);
                                       }
                                       while(true)
                                       {
                                          continue loop6;
                                          §§goto(addr71);
                                       }
                                    }
                                    §§goto(addr90);
                                 }
                                 var _loc5_:§5!"§ = new §5!"§();
                                 if(!(_loc7_ && param1))
                                 {
                                    _loc5_.top = _loc4_.top;
                                    _loc5_.bottom = _loc4_.bottom;
                                    _loc5_.left = 150;
                                    addr385:
                                    addr390:
                                 }
                                 §§push(_loc5_);
                                 §§push(_loc5_.left);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() + §[!,§.§5d§);
                                 }
                                 §§pop().right = §§pop();
                                 §§push(_loc5_);
                                 §§push(_loc5_.top);
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() + §[!,§.§4!@§);
                                 }
                                 §§pop().bottom = §§pop();
                                 _loc5_.y = _loc4_.y;
                                 addr362:
                                 addr379:
                                 addr374:
                                 if(_loc6_)
                                 {
                                    §§push(_loc5_);
                                    §§push(_loc5_.left);
                                    if(_loc6_)
                                    {
                                       §§push(§[!,§.§5d§);
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(§§pop() / 2);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().x = §§pop();
                                    _loc5_.id = §[!,§.§5r§;
                                    _loc3_.§=!J§(_loc5_);
                                    addr332:
                                    addr311:
                                    if(!_loc7_)
                                    {
                                       this.§;7§(_loc3_,param2);
                                       addr292:
                                       if(!_loc7_)
                                       {
                                          if(_loc6_)
                                          {
                                             addr260:
                                             addr259:
                                             if(param1 != null)
                                             {
                                                addr261:
                                                if(_loc6_ || _loc3_)
                                                {
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      _loc3_.theme = param1;
                                                      addr278:
                                                      if(_loc6_ || param1)
                                                      {
                                                         addr191:
                                                         this.init(_loc3_);
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§goto(addr332);
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr332);
                                                               }
                                                               §§goto(addr278);
                                                            }
                                                            addr238:
                                                            _loc3_.theme = §>!;§;
                                                         }
                                                         if(_loc6_ || param1)
                                                         {
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                      §§goto(addr385);
                                                   }
                                                   §§goto(addr379);
                                                }
                                                §§goto(addr292);
                                             }
                                             §§push(§>!;§);
                                             if(!(_loc7_ && param1))
                                             {
                                                §§push(null);
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      §§goto(addr238);
                                                   }
                                                   §§goto(addr191);
                                                }
                                                §§goto(addr260);
                                             }
                                             §§goto(addr259);
                                          }
                                          §§goto(addr362);
                                       }
                                       §§goto(addr311);
                                    }
                                    §§goto(addr374);
                                 }
                                 §§goto(addr390);
                              }
                           }
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr157);
               }
            }
            §§goto(addr118);
         }
         §§goto(addr28);
      }
      
      protected function §;7§(param1:LevelModel, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param2)
            {
               if(!_loc3_)
               {
                  this.§%Q§(param1);
               }
            }
         }
      }
      
      protected function §[!j§() : LevelModel
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:LevelModel = new LevelModel();
         if(_loc3_ || this)
         {
            _loc1_.§?!=§ = -12;
         }
         return new LevelModel();
      }
      
      protected function §@1§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§9!8§ ^= this.§9!8§ << 21;
            do
            {
               §§push(this);
               §§push(this.§9!8§);
               §§push(this.§9!8§);
               if(!_loc2_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§9!8§ = §§pop() ^ §§pop();
               do
               {
                  this.§9!8§ ^= this.§9!8§ << 4;
               }
               while(!_loc1_);
               
            }
            while(!_loc1_);
            
         }
         return this.§9!8§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §%Q§(param1:LevelModel) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§,!0§ = null;
         if(!_loc7_)
         {
            §§push(this);
            §§push(0.33);
            if(!_loc7_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§9!8§ = §§pop();
         }
         §§push(0);
         if(!_loc7_)
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
                  if(!(_loc6_ || _loc2_))
                  {
                     continue loop0;
                  }
                  §§push(int(§§pop()));
                  if(!_loc7_)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc7_ && param1))
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc6_ || param1)
                           {
                              §§push(5);
                              if(_loc7_ && param1)
                              {
                                 continue loop2;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    addr556:
                                    break loop2;
                                 }
                                 addr530:
                                 §§push(_loc2_);
                                 if(_loc6_ || param1)
                                 {
                                    break;
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc7_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              §§push(this.§@1§());
                              if(!(_loc7_ && this))
                              {
                                 §§push(§§pop() * 5);
                              }
                              §§push(int(§§pop()));
                              if(!_loc7_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc6_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       _loc5_ = new §,!0§();
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(_loc5_);
                                          §§push(30 + _loc3_ * 10);
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§push(this.§@1§());
                                             if(!_loc7_)
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
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(this.§@1§());
                                                         if(!(_loc7_ && this))
                                                         {
                                                            §§push(§§pop() * 3);
                                                            if(_loc6_)
                                                            {
                                                               addr362:
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  §§push(_loc3_ * 8);
                                                               }
                                                               §§pop().y = §§pop();
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop() * _loc3_);
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr288:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr286:
                                                                                          §§push(5);
                                                                                       }
                                                                                       §§push(int(§§pop()));
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§goto(addr288);
                                                                                    §§push(§§pop() % §§pop());
                                                                                 }
                                                                                 §§goto(addr286);
                                                                              }
                                                                           }
                                                                           §§goto(addr288);
                                                                        }
                                                                        else
                                                                        {
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          addr430:
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   _loc5_.id = "PIG_HELMET";
                                                                                                   loop12:
                                                                                                   for(; _loc6_ || this; if(_loc7_ && this)
                                                                                                   {
                                                                                                      continue;
                                                                                                   },if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§goto(addr153);
                                                                                                   },§§goto(addr488))
                                                                                                   {
                                                                                                      loop13:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         §§push(45);
                                                                                                         §§push(this.§@1§());
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(§§pop() * 90);
                                                                                                         }
                                                                                                         §§pop().angle = §§pop() - §§pop();
                                                                                                         loop14:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               loop15:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1.addObject(_loc5_);
                                                                                                                  loop16:
                                                                                                                  while(_loc6_)
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + 1);
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              addr115:
                                                                                                                              if(!(_loc7_ && param1))
                                                                                                                              {
                                                                                                                                 addr123:
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    loop23:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop6;
                                                                                                                                       }
                                                                                                                                       §§push(3);
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             if(§§pop() != §§pop())
                                                                                                                                             {
                                                                                                                                                _loc5_.id = "BIRD_BLUE";
                                                                                                                                                addr198:
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr163:
                                                                                                                                                      addr184:
                                                                                                                                                      loop20:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         §§push(this.§@1§());
                                                                                                                                                         if(_loc6_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * 360);
                                                                                                                                                         }
                                                                                                                                                         §§pop().angle = §§pop();
                                                                                                                                                         break loop16;
                                                                                                                                                         addr216:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop20;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr184:
                                                                                                                                                      if(!(_loc6_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         addr191:
                                                                                                                                                         break loop23;
                                                                                                                                                      }
                                                                                                                                                      continue loop15;
                                                                                                                                                   }
                                                                                                                                                   addr200:
                                                                                                                                                }
                                                                                                                                                §§goto(addr216);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc5_.id = "BIRD_YELLOW";
                                                                                                                                                §§goto(addr216);
                                                                                                                                             }
                                                                                                                                             addr213:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      loop36:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         loop37:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr479:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  addr480:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     addr440:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(2);
                                                                                                                                                                        addr441:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           if(!(_loc7_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           addr465:
                                                                                                                                                                           §§pop();
                                                                                                                                                                           break loop12;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr479:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               addr451:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(_loc6_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop36;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop28;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop37;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr465);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr479);
                                                                                                                                             }
                                                                                                                                             addr470:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr222:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() < §§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc6_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      _loc5_.id = "BIRD_RED";
                                                                                                                                                      break loop23;
                                                                                                                                                   }
                                                                                                                                                   break loop23;
                                                                                                                                                }
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                             continue loop9;
                                                                                                                                          }
                                                                                                                                          addr222:
                                                                                                                                       }
                                                                                                                                       §§goto(addr480);
                                                                                                                                    }
                                                                                                                                    continue loop8;
                                                                                                                                 }
                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!(_loc7_ && this))
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                                 §§goto(addr198);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(!_loc7_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr222);
                                                                                                                                    §§push(2);
                                                                                                                                 }
                                                                                                                                 §§goto(addr440);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr123);
                                                                                                                        }
                                                                                                                        addr399:
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     §§goto(addr115);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc7_ && _loc3_)
                                                                                                                     {
                                                                                                                        §§goto(addr213);
                                                                                                                     }
                                                                                                                     §§goto(addr184);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop12;
                                                                                                               addr153:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr485:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc5_.y = 0;
                                                                                                               addr488:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  addr469:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr470);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr399);
                                                                                                   §§push(_loc3_);
                                                                                                }
                                                                                                §§goto(addr434);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr479);
                                                                                       }
                                                                                       §§goto(addr451);
                                                                                    }
                                                                                    §§goto(addr465);
                                                                                 }
                                                                                 §§goto(addr430);
                                                                              }
                                                                              §§goto(addr441);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  §§goto(addr469);
                                                               }
                                                            }
                                                         }
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      §§goto(addr362);
                                                   }
                                                   §§goto(addr485);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr200);
                                    }
                                    addr84:
                                 }
                                 else
                                 {
                                    §§goto(addr530);
                                 }
                              }
                              §§goto(addr530);
                              §§goto(addr530);
                           }
                           break;
                        }
                        §§push(§§pop() + 1);
                        if(_loc7_ && param1)
                        {
                           continue loop0;
                        }
                        §§goto(addr556);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr556);
               }
               addr570:
               return;
            }
         }
      }
      
      private function §5M§() : void
      {
      }
      
      public function §-!L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(LevelBackground.§`!,§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§-H§(this.§9-§.§3!I§,false);
                     addr202:
                     while(true)
                     {
                     }
                  }
                  addr195:
               }
               while(true)
               {
                  this.§-H§(this.§8!6§.§&S§(LevelParticleManager.§]!F§),false);
                  loop4:
                  while(true)
                  {
                     this.§-H§(this.§8!6§.§&S§(LevelParticleManager.§%F§),true);
                     loop5:
                     while(true)
                     {
                        this.§-H§(this.§8!6§.§&S§(LevelParticleManager.§;3§),true);
                        loop6:
                        while(true)
                        {
                           this.§-H§(this.§]%§.§%!%§,true);
                           loop7:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 this.§-H§(this.§]Q§.sprite,true);
                                 loop8:
                                 while(_loc2_)
                                 {
                                    this.§-H§(this.§8!6§.§&S§(LevelParticleManager.§9!H§),true);
                                    while(true)
                                    {
                                       this.§-H§(this.§9-§.§1!W§,false);
                                       loop10:
                                       while(_loc2_ || _loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(LevelBackground.§`!,§);
                                             loop12:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      this.§-H§(this.§8!6§.§&S§(LevelParticleManager.§+!K§),true);
                                                      while(!_loc1_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            break loop15;
                                                         }
                                                         continue loop12;
                                                         if(_loc1_ && _loc1_)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc1_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  addr42:
                                                                  return;
                                                               }
                                                               break loop7;
                                                            }
                                                            continue loop5;
                                                         }
                                                         §§goto(addr66);
                                                      }
                                                   }
                                                   continue loop8;
                                                   addr45:
                                                }
                                                while(!_loc1_)
                                                {
                                                   this.§-H§(this.§9-§.§`!d§,false);
                                                }
                                                continue loop10;
                                                addr66:
                                                while(!_loc1_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop7;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop6;
                              }
                              §§goto(addr195);
                           }
                           §§goto(addr202);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      private function §-H§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.sprite);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
               }
               §§goto(addr51);
            }
            §§pop().addChild(param1);
         }
         addr51:
         if(!(_loc4_ && param2))
         {
            §§push(this.sprite);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = new Point();
         if(!_loc4_)
         {
            §§push(param1);
            while(true)
            {
               §§push(§`S§.§`!A§);
               addr148:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr149:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr150:
                     while(true)
                     {
                        param1 = §§pop();
                     }
                  }
               }
            }
            addr145:
         }
         while(true)
         {
            §§push(param2);
            if(_loc5_)
            {
               if(_loc5_ || this)
               {
                  if(!_loc4_)
                  {
                     §§push(§`S§.§`!A§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc5_ || param1)
                        {
                           addr139:
                           §§push(Number(§§pop()));
                        }
                        if(!_loc4_)
                        {
                           param2 = §§pop();
                           do
                           {
                              _loc3_.x = (param1 / §[!,§.§ !7§ + this.§8!X§.§!!P§ - §[!,§.§[!^§ / §[!,§.§ !7§) * §@!d§;
                              do
                              {
                                 _loc3_.y = (param2 / §[!,§.§ !7§ + this.§8!X§.§+x§ - §[!,§.§^j§ / §[!,§.§ !7§) * §@!d§;
                              }
                              while(_loc4_);
                              
                           }
                           while(!(_loc5_ || param1));
                           
                           if(_loc5_ || this)
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     else
                     {
                        §§goto(addr148);
                     }
                     §§goto(addr149);
                  }
                  else
                  {
                     §§goto(addr145);
                  }
               }
               §§goto(addr150);
            }
            §§goto(addr139);
         }
         return _loc3_;
      }
      
      public function §;N§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = new Point();
         if(_loc6_)
         {
            _loc3_.x = (param1 / §@!d§ + §[!,§.§[!^§ / §[!,§.§ !7§ - this.§8!X§.§!!P§) * §[!,§.§ !7§;
            if(_loc6_)
            {
               _loc3_.y = (param2 / §@!d§ + §[!,§.§^j§ / §[!,§.§ !7§ - this.§8!X§.§+x§) * §[!,§.§ !7§;
            }
         }
         var _loc4_:Number = Math.max(§`S§.§`!A§,§`S§.§4+§);
         if(_loc6_)
         {
            _loc3_.x *= _loc4_;
            do
            {
               _loc3_.y *= _loc4_;
            }
            while(_loc5_ && _loc3_);
            
         }
         return _loc3_;
      }
      
      public function §5!f§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§]%§.addObject(param1,param2,param3);
         }
      }
      
      public function §5!K§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§5e§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§`!8§ = 0;
                     if(!_loc2_)
                     {
                        if(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              return;
                           }
                           addr78:
                           while(true)
                           {
                              §§push(this.§5e§);
                              addr80:
                              while(true)
                              {
                                 §§pop().visible = true;
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§5e§);
                           if(_loc1_)
                           {
                              break;
                           }
                           §§goto(addr80);
                        }
                        continue loop0;
                     }
                     addr73:
                  }
                  continue;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §;[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§ !k§ = new §#C§(§ ?§.§@!Q§,§ ?§.§81§);
         }
      }
      
      public function §,g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§ !k§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§9-§);
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§9-§);
                        addr717:
                        while(true)
                        {
                           §§pop().dispose();
                           addr719:
                           while(true)
                           {
                              this.§9-§ = null;
                              addr708:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr715:
                  }
                  while(true)
                  {
                     §§push(this.§]%§);
                     if(!_loc1_)
                     {
                        §§push(Boolean(§§pop()));
                        continue loop0;
                     }
                     loop37:
                     while(true)
                     {
                        §§pop().dispose();
                        loop38:
                        while(true)
                        {
                           this.§]%§ = null;
                           loop39:
                           while(true)
                           {
                              this.§`!L§ = null;
                              loop40:
                              while(true)
                              {
                                 addr629:
                                 while(true)
                                 {
                                    §§push(this.mLevelEngine);
                                    if(!(_loc1_ && this))
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop6:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§push(this.mLevelEngine);
                                                if(_loc2_ || this)
                                                {
                                                   §§push(Boolean(§§pop().§4>§));
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                      }
                                                      addr653:
                                                      loop44:
                                                      while(true)
                                                      {
                                                         §§push(this.mLevelEngine);
                                                         addr655:
                                                         while(true)
                                                         {
                                                            §§pop().clear();
                                                            addr657:
                                                            while(true)
                                                            {
                                                               this.mLevelEngine = null;
                                                               addr619:
                                                               while(true)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     continue loop44;
                                                                  }
                                                                  if(!(_loc2_ || _loc1_))
                                                                  {
                                                                     continue loop39;
                                                                  }
                                                               }
                                                               continue loop44;
                                                            }
                                                            continue loop44;
                                                         }
                                                      }
                                                      addr416:
                                                      if(!(_loc2_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(!(_loc1_ && _loc2_))
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§]Q§);
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           §§pop().dispose();
                                                                           addr569:
                                                                           while(true)
                                                                           {
                                                                              this.§]Q§ = null;
                                                                              loop30:
                                                                              while(true)
                                                                              {
                                                                                 loop15:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§8!X§);
                                                                                    if(!(_loc1_ && this))
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop16:
                                                                                       for(; _loc2_; if(!(_loc2_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       },§§goto(addr402))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc1_ && _loc2_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                §§push(this.§8!X§);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().clear();
                                                                                                   loop27:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         this.§8!X§ = null;
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc2_ || _loc1_))
                                                                                                            {
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(!(_loc1_ && _loc1_))
                                                                                                               {
                                                                                                                  addr512:
                                                                                                                  loop18:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§8!6§);
                                                                                                                     if(!_loc1_)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        loop19:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc1_ && _loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 if(_loc1_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(this.§8!6§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().dispose();
                                                                                                                                    loop24:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc1_ && _loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop25;
                                                                                                                                       }
                                                                                                                                       this.§8!6§ = null;
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc1_ && _loc1_)
                                                                                                                                          {
                                                                                                                                             continue loop24;
                                                                                                                                          }
                                                                                                                                          if(_loc1_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr719);
                                                                                                                                          }
                                                                                                                                          §§goto(addr489);
                                                                                                                                       }
                                                                                                                                       addr489:
                                                                                                                                    }
                                                                                                                                    §§goto(addr657);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc1_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    if(!(_loc1_ && this))
                                                                                                                                    {
                                                                                                                                       if(!_loc1_)
                                                                                                                                       {
                                                                                                                                          this.§>!f§ = null;
                                                                                                                                          break loop18;
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop40;
                                                                                                                                 }
                                                                                                                                 §§goto(addr619);
                                                                                                                              }
                                                                                                                              §§goto(addr708);
                                                                                                                              addr598:
                                                                                                                              addr469:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(this.sprite));
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr480);
                                                                                                                     §§goto(addr512);
                                                                                                                  }
                                                                                                                  loop33:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                     {
                                                                                                                        loop12:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§]Q§);
                                                                                                                           if(_loc2_ || this)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              while(!(_loc1_ && _loc1_))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                                 continue loop15;
                                                                                                                                 if(!(_loc2_ || _loc1_))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 addr409:
                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr416);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§>!f§);
                                                                                                                                       addr596:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().clear();
                                                                                                                                          §§goto(addr598);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr409);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop0;
                                                                                                                              addr557:
                                                                                                                           }
                                                                                                                           continue loop28;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc1_ && _loc1_))
                                                                                                                           {
                                                                                                                              §§push(this.§]%§);
                                                                                                                              continue loop37;
                                                                                                                           }
                                                                                                                           §§goto(addr715);
                                                                                                                           continue loop33;
                                                                                                                        }
                                                                                                                        §§goto(addr719);
                                                                                                                        addr692:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr574:
                                                                                                                  addr462:
                                                                                                               }
                                                                                                               §§goto(addr594);
                                                                                                            }
                                                                                                            §§goto(addr574);
                                                                                                         }
                                                                                                         addr540:
                                                                                                      }
                                                                                                      §§goto(addr657);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr655);
                                                                                          }
                                                                                          §§goto(addr462);
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§goto(addr536);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  if(_loc1_)
                                                                  {
                                                                     continue loop38;
                                                                  }
                                                                  addr371:
                                                                  §§push(this.sprite);
                                                                  if(!(_loc1_ && this))
                                                                  {
                                                                     if(§§pop().numChildren <= 0)
                                                                     {
                                                                        addr385:
                                                                        this.§6!;§ = 0;
                                                                        this.§`!>§ = 0;
                                                                        this.mReadyToRun = false;
                                                                        this.§!! § = false;
                                                                        this.§`!8§ = § ?§.§#!S§;
                                                                        addr388:
                                                                        addr360:
                                                                        addr355:
                                                                        addr365:
                                                                        addr370:
                                                                        if(this.§!!!§)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 addr337:
                                                                                 (this.§!!!§ as §9?§).§<J§.x = 0;
                                                                                 addr338:
                                                                                 addr336:
                                                                                 §§push(this.§!!!§);
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push((§§pop() as §9?§).§<J§);
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§pop().y = §§pop();
                                                                                             addr320:
                                                                                             §§push(this.§5e§);
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                addr283:
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!(_loc1_ && _loc2_))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr293:
                                                                                                      this.§5e§.visible = false;
                                                                                                      addr291:
                                                                                                      if(!(_loc1_ && _loc1_))
                                                                                                      {
                                                                                                         addr272:
                                                                                                         this.§!=§ = null;
                                                                                                         this.§>!!§ = null;
                                                                                                         addr269:
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            addr254:
                                                                                                            if(this.§3!a§)
                                                                                                            {
                                                                                                               addr257:
                                                                                                               this.§3!a§.removeEventListener(Event.COMPLETE,this.§>!H§);
                                                                                                               addr255:
                                                                                                               addr264:
                                                                                                               §§push(this.§3!a§);
                                                                                                               if(_loc2_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     §§pop().removeEventListener(Event.CANCEL,this.§ &§);
                                                                                                                     addr242:
                                                                                                                     if(!(_loc1_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr189:
                                                                                                                        if(this.§9! §)
                                                                                                                        {
                                                                                                                           addr190:
                                                                                                                           if(!(_loc1_ && _loc1_))
                                                                                                                           {
                                                                                                                              if(!_loc1_)
                                                                                                                              {
                                                                                                                                 addr201:
                                                                                                                                 this.§9! §.removeEventListener(Event.COMPLETE,this.§;s§);
                                                                                                                                 addr208:
                                                                                                                                 if(!(_loc1_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    if(_loc2_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§9! §);
                                                                                                                                       if(!(_loc1_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          if(_loc2_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§pop().removeEventListener(Event.CANCEL,this.§1E§);
                                                                                                                                             addr182:
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                addr153:
                                                                                                                                                this.§!!k§();
                                                                                                                                                addr157:
                                                                                                                                                §§push(Starling.§7!+§);
                                                                                                                                                if(!_loc1_)
                                                                                                                                                {
                                                                                                                                                   addr116:
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc1_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr126:
                                                                                                                                                            if(!(_loc1_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc1_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr143:
                                                                                                                                                                  Starling.§7!+§.color = 0;
                                                                                                                                                                  addr145:
                                                                                                                                                                  if(!(_loc1_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     addr56:
                                                                                                                                                                     §§push(this.§9!A§);
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        if(!(_loc1_ && _loc1_))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc2_ || _loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc2_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc2_ || _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr102:
                                                                                                                                                                                             this.§9!A§.removeEventListeners();
                                                                                                                                                                                             addr104:
                                                                                                                                                                                             if(!_loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr24:
                                                                                                                                                                                                   this.mReadyToRun = false;
                                                                                                                                                                                                   if(_loc2_ || _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc1_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc2_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc2_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc1_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc1_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr388);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  return;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr320);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr291);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr190);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr145);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr104);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr182);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr126);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr447:
                                                                                                                                                                                          §§goto(addr371);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr385);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr255);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr104);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr24);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr254);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr116);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr102);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr157);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr338);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr242);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr56);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr283);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr189);
                                                                                                                                                }
                                                                                                                                                §§goto(addr143);
                                                                                                                                             }
                                                                                                                                             §§goto(addr208);
                                                                                                                                          }
                                                                                                                                          §§goto(addr189);
                                                                                                                                       }
                                                                                                                                       §§goto(addr201);
                                                                                                                                    }
                                                                                                                                    §§goto(addr360);
                                                                                                                                 }
                                                                                                                                 §§goto(addr269);
                                                                                                                              }
                                                                                                                              §§goto(addr355);
                                                                                                                           }
                                                                                                                           §§goto(addr291);
                                                                                                                        }
                                                                                                                        §§goto(addr153);
                                                                                                                     }
                                                                                                                     §§goto(addr264);
                                                                                                                  }
                                                                                                                  §§goto(addr254);
                                                                                                               }
                                                                                                               §§goto(addr257);
                                                                                                            }
                                                                                                            §§goto(addr189);
                                                                                                         }
                                                                                                         addr276:
                                                                                                         §§goto(addr276);
                                                                                                      }
                                                                                                      §§goto(addr365);
                                                                                                   }
                                                                                                   §§goto(addr272);
                                                                                                }
                                                                                                §§goto(addr385);
                                                                                             }
                                                                                             §§goto(addr293);
                                                                                          }
                                                                                          §§goto(addr337);
                                                                                       }
                                                                                       §§goto(addr336);
                                                                                    }
                                                                                    §§goto(addr385);
                                                                                 }
                                                                                 addr332:
                                                                                 §§goto(addr332);
                                                                              }
                                                                              §§goto(addr370);
                                                                           }
                                                                           §§goto(addr337);
                                                                        }
                                                                        §§goto(addr320);
                                                                        addr384:
                                                                     }
                                                                     §§push(this.sprite);
                                                                  }
                                                                  §§pop().removeChildAt(0,true);
                                                                  §§goto(addr447);
                                                               }
                                                               §§goto(addr569);
                                                            }
                                                            §§goto(addr469);
                                                         }
                                                         §§goto(addr452);
                                                      }
                                                      §§goto(addr384);
                                                   }
                                                }
                                                §§goto(addr655);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(this.§>!f§);
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                §§goto(addr593);
                                                §§push(Boolean(§§pop()));
                                             }
                                             §§goto(addr596);
                                          }
                                       }
                                    }
                                    §§goto(addr655);
                                    continue loop40;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr717);
         }
         §§goto(addr653);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §-L§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§>!!§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§push(this.§>!!§);
                  }
                  else
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr55);
            }
            return §§pop().toString();
         }
         addr55:
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.mReadyToRun);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc5_ && param2))
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 loop5:
                                 while(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§!=§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop8:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!(_loc5_ && param3))
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(_loc5_ && param1)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(this.§!=§);
                                                            if(_loc5_ && param2)
                                                            {
                                                               continue loop7;
                                                            }
                                                            §§push(§§pop().§?§);
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc4_ || this))
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  while(§§pop())
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc4_ || param3)
                                                                        {
                                                                           §§goto(addr98);
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break loop5;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        addr167:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Starling.§!w§());
                                                                           break loop8;
                                                                        }
                                                                        addr183:
                                                                     }
                                                                  }
                                                                  §§push(this.updateWithTime(param1,true,param2,param3));
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     if(!(_loc5_ && param3))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr164);
                                                                  }
                                                               }
                                                               continue loop1;
                                                               addr98:
                                                               return this.§'0§(param1,param2,param3);
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                            }
                                                            addr182:
                                                            §§goto(addr183);
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   §§goto(addr72);
                                                }
                                                break;
                                             }
                                             continue loop5;
                                          }
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 addr164:
                                 return §§pop();
                              }
                              addr161:
                           }
                        }
                     }
                  }
               }
               §§goto(addr182);
            }
         }
         §§goto(addr167);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §§push(this.§&&§);
            if(_loc6_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc7_)
                  {
                     §§push(param1);
                     if(_loc6_)
                     {
                        §§push(§§pop() * 0.2);
                        if(_loc6_ || this)
                        {
                           addr42:
                           §§push(Number(§§pop()));
                           if(_loc6_)
                           {
                              param1 = §§pop();
                              if(_loc6_)
                              {
                                 addr48:
                                 §§push(Starling.§5K§);
                                 if(!(_loc7_ && param2))
                                 {
                                    addr59:
                                    if(§§pop())
                                    {
                                       addr67:
                                       if(!_loc7_)
                                       {
                                          addr62:
                                          §§push(Starling.§5K§);
                                       }
                                       var _loc5_:* = Number(0);
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(this);
                                          §§push(this.§`!>§);
                                          if(!(_loc7_ && param2))
                                          {
                                             §§push(§§pop() + param1);
                                          }
                                          §§pop().§`!>§ = §§pop();
                                          loop0:
                                          while(true)
                                          {
                                             §§push(param3);
                                             loop1:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   continue loop0;
                                                }
                                                this.§]%§.§]7§(param1);
                                                loop2:
                                                while(true)
                                                {
                                                   this.§6!;§ = 0;
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(param2);
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        this.§%!Z§(param1,_loc5_);
                                                                     }
                                                                  }
                                                                  §§push(param1);
                                                                  if(!_loc7_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  addr146:
                                                                  while(true)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                            addr213:
                                                            while(true)
                                                            {
                                                               §§push(this.mLevelEngine.§&!D§(this.§6!;§));
                                                               if(_loc6_ || param3)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               addr179:
                                                               while(true)
                                                               {
                                                                  this.§]Q§.update(param1,param4);
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc6_ || param2))
                                                               {
                                                                  continue loop0;
                                                               }
                                                               this.§6!;§ = _loc5_;
                                                               §§goto(addr146);
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§6!;§);
                                          if(!(_loc7_ && param3))
                                          {
                                             §§push(§§pop() + param1);
                                          }
                                          §§pop().§6!;§ = §§pop();
                                          §§goto(addr213);
                                       }
                                    }
                                    §§goto(addr67);
                                 }
                                 §§pop().speed = 0.2;
                              }
                              §§goto(addr67);
                           }
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr42);
                  }
                  §§goto(addr48);
               }
               §§goto(addr67);
            }
            §§goto(addr59);
         }
         §§goto(addr62);
      }
      
      private function §'0§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§5L§.§#H§);
         if(_loc7_)
         {
            §§push(§§pop() * 1000);
            if(_loc7_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(_loc7_)
         {
            if(this.§!=§)
            {
               if(_loc7_)
               {
                  §§push(param1);
                  while(true)
                  {
                     §§push(this.§!=§.speed);
                     addr309:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr310:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr311:
                           while(true)
                           {
                              param1 = §§pop();
                           }
                        }
                     }
                  }
                  addr306:
               }
               while(true)
               {
                  §§push(this.§`!>§);
                  if(!_loc6_)
                  {
                     §§push(param1);
                     if(_loc7_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc7_ || param2)
                        {
                           addr268:
                           if(_loc7_ || this)
                           {
                              addr286:
                              §§push(Number(§§pop()));
                              if(_loc7_ || this)
                              {
                                 if(!_loc6_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr306);
                              }
                              §§goto(addr310);
                           }
                           §§goto(addr311);
                        }
                        §§goto(addr286);
                     }
                     §§goto(addr309);
                  }
                  §§goto(addr268);
               }
               while(true)
               {
                  §§push(this.§`!>§);
                  loop11:
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(_loc4_);
                        if(_loc7_ || param2)
                        {
                           if(_loc7_)
                           {
                              §§push(§§pop() + §§pop());
                              while(true)
                              {
                                 §§push(_loc5_);
                                 if(_loc7_)
                                 {
                                    while(§§pop() >= §§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          addr180:
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(_loc5_);
                                             loop18:
                                             while(!_loc6_)
                                             {
                                                §§push(this.§;l§);
                                                while(true)
                                                {
                                                   §§push(§§pop() + _loc4_);
                                                   addr194:
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§!=§);
                                                               if(!_loc6_)
                                                               {
                                                                  §§pop().step(this);
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr246:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§!=§);
                                                                        break loop13;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§;l§);
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        §§push(§§pop() + _loc4_);
                                                                     }
                                                                     §§pop().§;l§ = §§pop();
                                                                     addr235:
                                                                     while(true)
                                                                     {
                                                                        addr212:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.updateWithTime(_loc4_,false,param2,param3));
                                                                           break loop18;
                                                                        }
                                                                        §§goto(addr180);
                                                                     }
                                                                  }
                                                                  addr251:
                                                               }
                                                               break loop13;
                                                            }
                                                            addr197:
                                                         }
                                                         §§goto(addr88);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            break loop11;
                                                         }
                                                         addr242:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().step(this);
                                                      §§goto(addr251);
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                §§goto(addr220);
                                             }
                                          }
                                          §§goto(addr235);
                                       }
                                       §§goto(addr197);
                                    }
                                    addr238:
                                    §§push(this.§`!>§);
                                    while(true)
                                    {
                                       §§goto(addr242);
                                       §§goto(addr238);
                                    }
                                    addr177:
                                    addr241:
                                 }
                                 §§goto(addr194);
                              }
                           }
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 §§goto(addr246);
                              }
                              §§goto(addr212);
                           }
                           addr245:
                        }
                        §§goto(addr177);
                     }
                     break;
                     if(!(_loc7_ || param2))
                     {
                        continue;
                     }
                     §§goto(addr73);
                  }
                  while(true)
                  {
                     §§goto(addr245);
                  }
               }
               addr298:
            }
            else
            {
               §§push(this.updateWithTime(_loc4_,true,param2,param3));
               if(_loc7_)
               {
                  if(!_loc6_)
                  {
                     return §§pop();
                  }
                  §§goto(addr241);
               }
            }
            §§goto(addr55);
         }
         §§goto(addr298);
      }
      
      private function §%!Z§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc5_ || param1)
         {
            this.§9-§.update(param1);
            while(true)
            {
               this.§]%§.§<&§(param1,param2);
               addr265:
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               §§push(-Math.abs(this.§`!8§ - _loc3_));
               if(_loc5_)
               {
                  §§push(_loc3_);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc6_)
                     {
                        §§push(§ ?§.§'!-§);
                        if(!_loc6_)
                        {
                           addr215:
                           §§push(§§pop() / _loc3_);
                        }
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc6_)
                           {
                              addr227:
                              if(_loc5_ || this)
                              {
                                 addr234:
                                 if(_loc5_ || this)
                                 {
                                    addr242:
                                    §§push(Number(§§pop()));
                                    if(!(_loc6_ && this))
                                    {
                                       if(_loc5_)
                                       {
                                          _loc4_ = §§pop();
                                          loop9:
                                          while(!_loc6_)
                                          {
                                             §§push(this.§5e§);
                                             loop22:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop18:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop7:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(this.§5e§);
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§pop().alpha = _loc4_;
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  addr132:
                                                                  while(true)
                                                                  {
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§ !k§);
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr118:
                                                                                    §§push(this.§ !k§.§0V§(this.§8!X§,param1));
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr127:
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§,g§();
                                                                                                addr131:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr91:
                                                                                                   loop14:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§8!X§.§'!C§(param1);
                                                                                                      loop15:
                                                                                                      while(_loc5_)
                                                                                                      {
                                                                                                         this.mLevelEngine.§0!^§();
                                                                                                         while(!(_loc6_ && param1))
                                                                                                         {
                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr83:
                                                                                                                  if(!(_loc5_ || _loc3_))
                                                                                                                  {
                                                                                                                     break loop12;
                                                                                                                  }
                                                                                                                  this.§8!6§.update(param1);
                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc6_ && this)
                                                                                                                     {
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        addr54:
                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                        {
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        addr308:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§`!8§);
                                                                                                                           addr276:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§ ?§.§#!S§);
                                                                                                                              addr279:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                 {
                                                                                                                                    break loop9;
                                                                                                                                 }
                                                                                                                                 §§push(this.§5e§);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop12;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop10;
                                                                                                                                          }
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop7;
                                                                                                                                          }
                                                                                                                                          §§push(this.§5e§);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                    {
                                                                                                                                       §§pop().visible = false;
                                                                                                                                       break loop15;
                                                                                                                                    }
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr234);
                                                                                                                           }
                                                                                                                           §§goto(addr54);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr160);
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  continue;
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr91);
                                                                                       }
                                                                                       §§goto(addr157);
                                                                                    }
                                                                                    §§goto(addr127);
                                                                                 }
                                                                                 §§goto(addr131);
                                                                              }
                                                                              §§goto(addr91);
                                                                           }
                                                                           §§goto(addr127);
                                                                        }
                                                                        §§goto(addr118);
                                                                     }
                                                                     addr316:
                                                                     while(true)
                                                                     {
                                                                        this.§>I§();
                                                                        §§goto(addr308);
                                                                        §§goto(addr83);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         loop8:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr265);
                                                            }
                                                            addr303:
                                                            while(true)
                                                            {
                                                               §§push(§ ?§.§#!S§);
                                                               addr259:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() / 2);
                                                                  addr261:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr262:
                                                                     while(true)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr279);
                                                      }
                                                   }
                                                   §§goto(addr132);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§`!8§);
                                             if(_loc5_ || param2)
                                             {
                                                §§push(§§pop() + param1);
                                             }
                                             §§pop().§`!8§ = §§pop();
                                             §§goto(addr303);
                                          }
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr262);
                                 }
                                 §§goto(addr276);
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr242);
                        }
                        §§goto(addr279);
                     }
                     §§goto(addr227);
                  }
                  §§goto(addr215);
               }
               §§goto(addr242);
            }
         }
         §§goto(addr316);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.objects);
            loop0:
            while(true)
            {
               §§push(param1);
               addr104:
               while(true)
               {
                  §§push(1000);
                  addr105:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr106:
                     while(true)
                     {
                        §§pop().§]7§(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public function §>I§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:LevelObject = null;
         if(_loc4_)
         {
            §§push(this.§`!>§);
            §§push(this.§0h§);
            if(_loc4_ || this)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(!(_loc5_ && _loc3_))
               {
                  §§goto(addr54);
               }
            }
            §§goto(addr58);
         }
         addr54:
         if(this.§+!e§ != null)
         {
            addr58:
            for each(_loc1_ in this.§+!e§)
            {
               if(!(_loc5_ && _loc1_))
               {
                  _loc1_.addTrail();
               }
            }
            if(!_loc4_)
            {
            }
            §§goto(addr101);
         }
         this.§0h§ = this.§`!>§;
         addr101:
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:LevelObject = null;
         if(!(_loc4_ && this))
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(!_loc4_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(_loc3_)
            {
               §§push(this.mPigsAnimationTimer1);
               if(_loc3_)
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!(_loc4_ && this))
                        {
                           addr51:
                           §§push(this.§]%§);
                           if(!_loc4_)
                           {
                              §§push(true);
                              if(_loc3_)
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          addr64:
                                          §§push(this.§]%§);
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(true);
                                             if(!(_loc4_ && this))
                                             {
                                                §§push(§§pop().§9!Z§(§§pop()));
                                                if(!(_loc4_ && this))
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc3_)
                                                   {
                                                      _loc2_.§`!P§.mTryToScream = LevelObjectRenderer.§9I§;
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this);
                                                         §§push(500 + Math.random() * 1000);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() + 4000 / (3 + this.§]%§.§,§()));
                                                         }
                                                         §§pop().mPigsAnimationTimer1 = §§pop();
                                                         addr130:
                                                         §§push(this);
                                                         §§push(this.mPigsAnimationTimer2);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().mPigsAnimationTimer2 = §§pop();
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr148:
                                                            if(this.mPigsAnimationTimer2 <= 0)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  addr151:
                                                                  §§push(this.§]%§);
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     addr160:
                                                                     §§push(true);
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        §§goto(addr225);
                                                                     }
                                                                     addr174:
                                                                     _loc2_ = §§pop().§9!Z§(§§pop());
                                                                     §§goto(addr173);
                                                                  }
                                                                  addr173:
                                                                  if(!_loc4_)
                                                                  {
                                                                     _loc2_.§`!P§.mTryToBlink = LevelObjectRenderer.§;B§;
                                                                     if(_loc4_ && _loc2_)
                                                                     {
                                                                     }
                                                                     §§goto(addr225);
                                                                  }
                                                                  §§push(this);
                                                                  §§push(250 + Math.random() * 500);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() + 2000 / (3 + this.§]%§.§,§()));
                                                                  }
                                                                  §§pop().mPigsAnimationTimer2 = §§pop();
                                                                  addr225:
                                                                  if(§§pop().isPigsAlive(§§pop()))
                                                                  {
                                                                     addr170:
                                                                     §§push(this.§]%§);
                                                                  }
                                                                  return;
                                                                  §§push(true);
                                                               }
                                                               §§goto(addr170);
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                   }
                                                   §§goto(addr130);
                                                }
                                                §§goto(addr174);
                                             }
                                             §§goto(addr225);
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr130);
                                 }
                                 §§goto(addr225);
                              }
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr130);
                  }
               }
               §§goto(addr148);
            }
            §§goto(addr51);
         }
         §§goto(addr64);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param1)
         {
            §§push(param6);
            if(!_loc7_)
            {
               §§push(-9999);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc7_)
                     {
                        §§push(§ !_§.§`!9§);
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr208:
                           while(true)
                           {
                              param6 = §§pop();
                              addr209:
                              while(true)
                              {
                              }
                           }
                        }
                        addr207:
                     }
                     §§goto(addr209);
                  }
                  while(true)
                  {
                     ScoreCollector.addScore(param1,param2);
                     loop3:
                     while(true)
                     {
                        this.§9!A§.addScore(param1);
                        loop4:
                        while(true)
                        {
                           §§push(param3);
                           if(!(_loc7_ && param2))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc7_ && param1))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop6:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc7_)
                                       {
                                          continue loop6;
                                       }
                                       addr133:
                                       if(§§pop())
                                       {
                                          addr134:
                                          while(true)
                                          {
                                             §§pop();
                                             §§goto(addr135);
                                          }
                                          addr134:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc8_ || param1)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   this.§!8§(param1.toString(),param4,param5,800,param6,0,0);
                                                }
                                                §§goto(addr209);
                                             }
                                             if(!_loc7_)
                                             {
                                                continue loop4;
                                             }
                                             addr135:
                                             §§goto(addr25);
                                          }
                                          addr25:
                                          while(true)
                                          {
                                             if(_loc8_ || param3)
                                             {
                                                §§push(this.§=§);
                                                if(_loc8_)
                                                {
                                                   §§push(!§§pop());
                                                   if(!_loc7_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                if(_loc7_)
                                                {
                                                   continue loop5;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      §§push(param1);
                                                      if(_loc8_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr207);
                                                      }
                                                      break;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr208);
                                                addr164:
                                             }
                                             §§goto(addr209);
                                          }
                                          return;
                                       }
                                    }
                                    continue;
                                    addr121:
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                 }
                                 §§goto(addr164);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr208);
         }
         §§goto(addr209);
      }
      
      public function §!8§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param5);
            if(!(_loc8_ && this))
            {
               if(§§pop() == -9999)
               {
                  while(true)
                  {
                     §§push(§ !_§.§!M§);
                     if(!(_loc8_ && param1))
                     {
                        addr96:
                        §§push(int(§§pop()));
                        while(true)
                        {
                           param5 = §§pop();
                           addr97:
                           while(true)
                           {
                           }
                        }
                        addr96:
                     }
                     §§goto(addr96);
                  }
                  addr85:
               }
               while(true)
               {
                  this.§8!6§.§?`§(§ !_§.§<x§,LevelParticleManager.§+!K§,§ !_§.§?D§,param2,param3,param4,param1,param5,param6,param7);
                  if(!(_loc9_ || this))
                  {
                     continue;
                  }
                  if(!_loc8_)
                  {
                     break;
                  }
                  §§goto(addr85);
               }
               return;
               addr74:
            }
            §§goto(addr96);
         }
         §§goto(addr74);
      }
      
      public function §8!`§(param1:LevelObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§+!e§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§]Q§.useMightyEagle();
         }
         while(true)
         {
            this.§]%§.§get §();
            while(!(_loc2_ && _loc2_))
            {
               this.§=§ = true;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §6B§(param1:LevelObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§8!6§.§switch§(LevelParticleManager.§]!F§);
            loop0:
            while(true)
            {
               §§push(this.§+!e§);
               if(!_loc3_)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     while(true)
                     {
                        §§push(this.§+!e§);
                        addr94:
                        while(true)
                        {
                           §§pop().splice(this.§+!e§.indexOf(param1),1);
                           addr101:
                           while(true)
                           {
                           }
                        }
                     }
                     addr92:
                  }
                  while(true)
                  {
                     §§push(this.§+!e§);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(§§pop().length != 0)
                        {
                           break;
                        }
                        if(_loc2_ || this)
                        {
                           if(!_loc3_)
                           {
                              this.§+!e§ = null;
                           }
                           else
                           {
                              §§goto(addr92);
                           }
                        }
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                  }
                  §§goto(addr24);
               }
               §§goto(addr94);
            }
         }
         addr24:
      }
      
      public function §!!E§(param1:LevelSlingshotObject, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.§`!L§ = this.§]%§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!_loc8_)
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr42:
                  §§push(LevelSlingshot.BIRD_LAUNCH_FORCE_GREEN);
                  if(_loc7_ || this)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_)
                     {
                        addr75:
                        var _loc4_:* = Number(§§pop());
                        if(!(_loc8_ && param2))
                        {
                           §§push(param1.§1F§);
                           if(_loc7_)
                           {
                              §§push(1);
                              loop0:
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    loop1:
                                    while(true)
                                    {
                                       §§push(this.§`!L§);
                                       loop2:
                                       while(true)
                                       {
                                          §§pop().§+!c§(param1.§1F§);
                                          loop3:
                                          while(true)
                                          {
                                             loop4:
                                             while(true)
                                             {
                                                §§push(this.§`!L§);
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                §§pop().§`!P§.§%H§();
                                                while(!(_loc8_ && param2))
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   if(!(_loc7_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(param1.§>#§);
                                                   if(_loc7_ || this)
                                                   {
                                                      addr123:
                                                      §§push(Number(§§pop()));
                                                      if(_loc7_)
                                                      {
                                                         addr126:
                                                         _loc4_ = §§pop();
                                                         if(false)
                                                         {
                                                            continue loop4;
                                                         }
                                                         addr168:
                                                         §§push(_loc4_);
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            addr176:
                                                            §§push(-§§pop());
                                                            if(_loc8_ && param1)
                                                            {
                                                            }
                                                            addr193:
                                                            §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                                            if(_loc7_ || param1)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc5_:* = §§pop();
                                                            §§push(_loc4_);
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§pop() * param2);
                                                               if(_loc7_ || param3)
                                                               {
                                                                  §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr238:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc6_:* = §§pop();
                                                               if(_loc7_ || this)
                                                               {
                                                                  this.§`!L§.§'x§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                               }
                                                               loop7:
                                                               do
                                                               {
                                                                  this.camera.§5!<§(§[!,§.§2f§);
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§>!!§);
                                                                     if(_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        return;
                                                                     }
                                                                     addr248:
                                                                     if(!(_loc8_ && param3))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  §§pop().§!!E§(this.mLevelEngine.§8!?§,param1.x,param1.y,param2,param3);
                                                               }
                                                               while(!_loc7_);
                                                               
                                                               §§goto(addr248);
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                         §§push(§§pop() * param2);
                                                         if(_loc8_ && param3)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                   §§goto(addr126);
                                                }
                                                continue loop1;
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(param1.§>#§);
                                    if(!_loc8_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr193);
                              }
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr75);
                  }
                  addr66:
                  §§push(Number(§§pop()));
                  if(!(_loc8_ && param3))
                  {
                     §§goto(addr75);
                  }
               }
               else
               {
                  §§push(LevelSlingshot.BIRD_LAUNCH_FORCE);
                  if(_loc7_ || param3)
                  {
                     §§goto(addr66);
                  }
               }
               §§goto(addr75);
            }
         }
         §§goto(addr42);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§!! § = true;
         }
      }
      
      private function §;e§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§!! §);
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
                        this.§!! § = false;
                        loop3:
                        while(true)
                        {
                           §§push(this.activeObject);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() is §6!f§);
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr189:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             if(_loc2_ && this)
                                             {
                                                §§goto(addr217);
                                             }
                                             §§push(this.activeObject);
                                             if(!_loc2_)
                                             {
                                                continue loop4;
                                             }
                                             loop18:
                                             while(true)
                                             {
                                                §§push(§§pop().activateSpecialPower(this.§`5§));
                                                addr156:
                                                loop16:
                                                while(!_loc2_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(_loc1_)
                                                      {
                                                         this.static = true;
                                                         while(!(_loc2_ && this))
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop8;
                                                      addr159:
                                                   }
                                                   while(true)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(this.§>!!§);
                                                         if(_loc1_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        addr41:
                                                                        if(_loc1_ || _loc2_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              §§push(this.§>!!§);
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           addr151:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc1_ || this)
                                                                              {
                                                                                 if(_loc1_ || _loc2_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 §§goto(addr159);
                                                                              }
                                                                              §§goto(addr164);
                                                                              §§goto(addr41);
                                                                           }
                                                                           addr81:
                                                                        }
                                                                     }
                                                                     addr57:
                                                                     if(_loc2_ && this)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                               addr150:
                                                               addr150:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(this.§]%§.§0!=§());
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ && _loc2_)
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§pop();
                                                                        §§goto(addr81);
                                                                     }
                                                                     continue loop0;
                                                                     addr71:
                                                                  }
                                                               }
                                                               §§goto(addr151);
                                                            }
                                                            §§goto(addr71);
                                                         }
                                                         break;
                                                      }
                                                      §§pop().§+!-§(this.mLevelEngine.§8!?§);
                                                      §§goto(addr57);
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       addr199:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr149:
                                    }
                                    §§goto(addr150);
                                 }
                              }
                           }
                        }
                     }
                  }
                  addr217:
                  return;
               }
            }
         }
         §§goto(addr171);
      }
      
      public function §3!h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§]%§.§3!h§();
         }
      }
      
      public function §]!`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§]%§.§9l§();
         }
      }
      
      public function § use§() : LevelModel
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:LevelModel = new LevelModel();
         if(_loc2_ || this)
         {
            _loc1_.§<q§ = this.§2!i§.§<q§;
         }
         loop0:
         while(true)
         {
            _loc1_.§4!4§ = this.§2!i§.§4!4§;
            while(true)
            {
               this.§8!X§.§,#§(_loc1_);
               loop2:
               while(!_loc3_)
               {
                  this.§]%§.§-I§(_loc1_);
                  while(!_loc3_)
                  {
                     this.§]Q§.§ !g§(_loc1_);
                     while(_loc2_)
                     {
                        _loc1_.theme = this.§9-§.§>6§();
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc3_)
                           {
                              return _loc1_;
                           }
                           continue loop2;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §;h§() : int
      {
         return this.§2!i§.§4!4§;
      }
      
      public function §?z§() : int
      {
         return this.§2!i§.§<q§;
      }
      
      public function §9C§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§2!i§.§4!4§ = param1;
         }
      }
      
      public function §9K§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2!i§.§<q§ = param1;
         }
      }
      
      public function §[!2§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§^W§);
            if(_loc3_ || param1)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§^W§);
                        addr87:
                        while(true)
                        {
                           §§pop().§]!b§(param1,param2);
                           addr91:
                           while(true)
                           {
                           }
                        }
                     }
                     addr85:
                  }
                  while(true)
                  {
                     §§push(this.§8!X§);
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    addr68:
                                    this.§8!X§.§'!C§(0);
                                 }
                                 §§goto(addr91);
                              }
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr85);
                           }
                           §§goto(addr24);
                        }
                        continue loop0;
                     }
                     §§goto(addr68);
                  }
                  addr24:
                  return;
               }
            }
            §§goto(addr87);
         }
         §§goto(addr91);
      }
      
      public function get currentLevel() : LevelModel
      {
         return this.§2!i§;
      }
      
      public function get §`5§() : LevelObjectManager
      {
         return this.§]%§;
      }
      
      protected function get starling() : Starling
      {
         return this.§&!8§;
      }
      
      public function get §>5§() : int
      {
         return §@D§;
      }
   }
}
