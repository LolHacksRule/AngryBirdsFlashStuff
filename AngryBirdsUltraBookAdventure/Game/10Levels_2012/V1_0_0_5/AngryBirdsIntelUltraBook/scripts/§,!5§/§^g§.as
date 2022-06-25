package §,!5§
{
   import § use§.§0!D§;
   import §"m§.§3!`§;
   import §%Q§.§'!%§;
   import §%Q§.§3L§;
   import §%Q§.§=[§;
   import §%Q§.§`!<§;
   import §&!'§.§>C§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §,!Q§.§ !P§;
   import §,!Q§.§0@§;
   import §-w§.§,Q§;
   import §-w§.§6!O§;
   import §-w§.§^!&§;
   import §0!M§.§#!d§;
   import §0!N§.§4!=§;
   import §0!N§.§=+§;
   import §0!N§.LevelManager;
   import §0!N§.§var§;
   import §0X§.§&'§;
   import §2!R§.§#C§;
   import §68§.§+!`§;
   import §<&§.§^b§;
   import §>H§.b2Vec2;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §^_§.§!>§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §true§.§ _§;
   
   public class §^g§
   {
      
      private static const §false§:int = 20;
      
      public static const §<!"§:Number;
      
      public static const §9-§:Number;
      
      public static const §^!S§:Number = 0.05;
      
      public static const §29§:Number;
      
      public static const §1!"§:Number;
      
      public static const §>p§:§&'§;
      
      protected static var §9r§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §false§ = 20;
         }
         while(true)
         {
            §<!"§ = § _§.§[o§;
            loop1:
            while(true)
            {
               §9-§ = § _§.§-S§;
               while(true)
               {
                  §^!S§ = 1 / 20;
                  loop3:
                  while(true)
                  {
                     §29§ = § _§.§-S§ * §^!S§;
                     addr114:
                     while(true)
                     {
                        §§push(§§findproperty(§1!"§));
                        §§push(§<!"§);
                        if(!_loc1_)
                        {
                           §§push(§§pop() * §^!S§);
                        }
                        §§pop().§1!"§ = §§pop();
                        continue loop3;
                        addr71:
                        if(_loc2_ || §^g§)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
            if(_loc2_ || _loc2_)
            {
               return;
            }
         }
      }
      
      protected var §4#§:§=[§;
      
      private var §%c§:§`!<§;
      
      private var §&!`§:Array = null;
      
      protected var §[!-§:§+!`§;
      
      public var mLevelEngine:§&!s§;
      
      protected var §&m§:§[$§;
      
      protected var §1!>§:§#C§;
      
      protected var §!E§:§>!A§;
      
      protected var §=§:§+F§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §%!Z§:Boolean = false;
      
      protected var §`!>§:Boolean = false;
      
      protected var §;!w§:Boolean = false;
      
      public var §>k§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §8%§:Number;
      
      public var § i§:Number;
      
      private var §0!l§:Number;
      
      public var §@!A§:§var§;
      
      public var §"!j§:Boolean = false;
      
      private var §#!6§:§@l§;
      
      private var §#!+§:Sprite;
      
      protected var §?9§:§=+§;
      
      protected var §-§:§3!`§ = null;
      
      private var §+B§:EventDispatcher;
      
      private var § !+§:Array;
      
      private var §&v§:Array;
      
      protected var §%!O§:§^b§;
      
      private var §@!`§:§#!d§;
      
      protected var §;!t§:§,Q§;
      
      protected var § 4§:§^!&§;
      
      private var §6!i§:§6!O§;
      
      private var §^!l§:§6!O§;
      
      private var §]!>§:§6!O§;
      
      private var §;p§:Stage;
      
      private var §;!u§:§+!c§;
      
      protected var §-i§:§>C§;
      
      protected var §6m§:§>C§;
      
      protected var §`M§:Number = 0.0;
      
      protected var §?4§:String;
      
      private var §?#§:Boolean;
      
      protected var §#!f§:Boolean;
      
      protected var §"_§:uint = 1.417339207E9;
      
      public var §7!b§:Boolean;
      
      public function §^g§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§&v§ = [];
         }
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.§+B§ = new EventDispatcher();
               loop2:
               while(true)
               {
                  this.§@!A§ = new §var§();
                  while(true)
                  {
                     this.§;p§ = param1;
                     while(_loc4_)
                     {
                        this.§;!t§ = §,Q§.§<d§;
                        continue loop1;
                        loop7:
                        while(_loc4_ || param1)
                        {
                           continue loop2;
                           loop9:
                           while(true)
                           {
                              if(_loc3_ && _loc3_)
                              {
                                 continue loop7;
                              }
                              if(_loc4_)
                              {
                                 addr48:
                                 if(_loc3_ && _loc3_)
                                 {
                                    break;
                                 }
                                 this.§]!>§ = this.initCutSceneManager();
                                 if(_loc3_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 addr32:
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       this.§^!l§ = this.initThemeSoundsManager();
                                       continue loop9;
                                       §§goto(addr32);
                                    }
                                    addr136:
                                    var _loc2_:Stage3D = param1.stage3Ds[0];
                                    §§push(_loc3_ && _loc2_);
                                    addr34:
                                 }
                                 else
                                 {
                                    §§goto(addr136);
                                 }
                                 if(!§§pop())
                                 {
                                    this.§%!O§ = new §^b§(§@l§,param1,new Rectangle(0,0,§ _§.§[o§,§ _§.§-S§),_loc2_);
                                    § _§.§1s§.addEventListener(Event.ENTER_FRAME,this.§%!O§.onEnterFrame);
                                    _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§!!X§,false,0,true);
                                    addr268:
                                    if(_loc4_)
                                    {
                                       addr218:
                                       this.§%!O§.§7J§ = false;
                                       addr219:
                                       addr217:
                                       §§push(this.§%!O§);
                                       §§push(false);
                                       if(_loc4_ || param1)
                                       {
                                          §§pop().enableErrorChecking = §§pop();
                                          addr209:
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr178:
                                                §§push(this.§%!O§);
                                                if(_loc4_ || param1)
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      §§pop().§`8§ = 2;
                                                      addr194:
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.§%!O§);
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            §§pop().§#[§();
                                                            if(_loc4_)
                                                            {
                                                               if(!(_loc4_ || _loc2_))
                                                               {
                                                                  §§goto(addr209);
                                                               }
                                                               return;
                                                               addr174:
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         §§goto(addr178);
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr219);
                                             }
                                          }
                                          §§goto(addr268);
                                       }
                                       §§goto(addr218);
                                    }
                                    addr252:
                                    §§goto(addr252);
                                 }
                                 §§goto(addr174);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§6!i§ = this.initThemeGraphicsManager();
                                    continue loop7;
                                 }
                                 addr83:
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public static function §[&§(param1:§`!<§, param2:§`!<§) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.§]!0§);
         if(_loc5_)
         {
            §§push(§§pop() - param2.§]!0§);
            if(!(_loc6_ && param1))
            {
               addr50:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§""§);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() - param2.§""§);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return §8&§(_loc3_,_loc4_);
         }
         §§goto(addr50);
      }
      
      public static function §8&§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§#!+§);
            while(true)
            {
               §§push(!§§pop());
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr88:
                        while(true)
                        {
                           §§push(Boolean(this.§2i§));
                           if(_loc1_ || _loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr87:
                  }
                  loop1:
                  for(; §§pop(); §§goto(addr88))
                  {
                     if(!_loc2_)
                     {
                        if(!(_loc1_ || _loc2_))
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§#!+§ = this.§#!6§.§&J§;
                        }
                     }
                     while(true)
                     {
                        break loop1;
                     }
                  }
                  continue;
               }
               §§goto(addr87);
            }
            return §§pop();
         }
         §§goto(addr74);
      }
      
      public function get §2i§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§#!6§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§#!6§);
                     if(!(_loc2_ && _loc1_))
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
                  addr24:
               }
               while(true)
               {
                  this.§#!6§ = this.§%!O§.§=q§ as §@l§;
               }
            }
         }
         while(true)
         {
            §§goto(addr50);
         }
      }
      
      private function get §[g§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§2i§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr47);
                  }
               }
               return null;
            }
            §§goto(addr47);
         }
         addr47:
         return (this.§2i§ as §@l§).§[g§;
      }
      
      public function get animationManager() : §^!&§
      {
         return this.§ 4§;
      }
      
      public function get textureManager() : §,Q§
      {
         return this.§;!t§;
      }
      
      public function get camera() : §#C§
      {
         return this.§1!>§;
      }
      
      public function get objects() : §=[§
      {
         return this.§4#§;
      }
      
      public function get particles() : §+F§
      {
         return this.§=§;
      }
      
      public function get background() : §+!`§
      {
         return this.§[!-§;
      }
      
      public function get slingshot() : §>!A§
      {
         return this.§!E§;
      }
      
      public function get activeObject() : §`!<§
      {
         return this.§%c§;
      }
      
      public function get § !p§() : §[$§
      {
         return this.§&m§;
      }
      
      public function get stage() : Stage
      {
         return this.§;p§;
      }
      
      public function get §8!,§() : §6!O§
      {
         return this.§]!>§;
      }
      
      protected function get §8!Z§() : §6!O§
      {
         return this.§6!i§;
      }
      
      public function set activeObject(param1:§`!<§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§%c§ = param1;
         }
      }
      
      public function set §2!w§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#!f§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§@!`§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§@!`§);
                     addr213:
                     while(true)
                     {
                        §§pop().dispose();
                        addr214:
                        while(true)
                        {
                        }
                     }
                     loop8:
                     while(true)
                     {
                        if(!(_loc1_ || _loc1_))
                        {
                           continue loop0;
                        }
                        §§push(this.§6!i§);
                        if(_loc1_ || this)
                        {
                           if(!_loc2_)
                           {
                              §§push(§§pop().textureManager);
                              loop9:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop10:
                                 while(_loc1_ || _loc1_)
                                 {
                                    loop25:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop26:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                break loop8;
                                             }
                                             addr154:
                                             §§push(this.§6!i§);
                                             while(true)
                                             {
                                                §§push(§§pop().textureManager);
                                                loop12:
                                                while(true)
                                                {
                                                   §§pop().dispose();
                                                   loop13:
                                                   while(true)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§]!>§);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop16:
                                                               while(_loc1_)
                                                               {
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§]!>§);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    §§push(§§pop().textureManager);
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§]!>§);
                                                                                                addr84:
                                                                                                while(!_loc2_)
                                                                                                {
                                                                                                   addr86:
                                                                                                   §§push(§§pop().textureManager);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         §§pop().dispose();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop8;
                                                                                                         addr90:
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                      §§goto(addr86);
                                                                                                   }
                                                                                                   continue loop26;
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                             addr82:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§%!O§);
                                                                                             if(_loc1_ || _loc1_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         if(_loc1_ || this)
                                                                                                         {
                                                                                                            addr47:
                                                                                                            this.§%!O§.dispose();
                                                                                                            addr48:
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               if(!(_loc2_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc1_ || this)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            §§goto(addr82);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop28:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr161:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§6!i§);
                                                                                                                  addr164:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     addr165:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        addr166:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              break loop10;
                                                                                                                           }
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                            }
                                                                                                            addr200:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr90);
                                                                                                   }
                                                                                                   §§goto(addr48);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr47);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr87);
                                                                                 }
                                                                                 §§goto(addr84);
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                        §§goto(addr80);
                                                                     }
                                                                     §§goto(addr166);
                                                                  }
                                                                  §§goto(addr165);
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                         addr105:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§;!t§);
                                                            addr199:
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                            }
                                                         }
                                                         addr197:
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                }
                                                §§goto(addr154);
                                             }
                                          }
                                       }
                                       §§goto(addr105);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop8;
                                 }
                              }
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr214);
                  }
               }
               while(true)
               {
                  §§push(this.§;!t§);
                  if(_loc1_ || this)
                  {
                     if(§§pop())
                     {
                        §§goto(addr197);
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr199);
                  §§goto(addr214);
               }
            }
            §§goto(addr213);
         }
         §§goto(addr104);
      }
      
      protected function initThemeGraphicsManager() : §6!O§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §6!O§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §6!O§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§,Q§) : §^!&§
      {
         return new §^!&§(param1);
      }
      
      public function §2!d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(§^b§.§9E§);
            loop0:
            for(; §§pop(); if(!(_loc2_ || this))
            {
               continue;
            },§§pop().stop(),§§goto(addr78))
            {
               loop1:
               while(!param1)
               {
                  §§push(§^b§.§9E§);
                  while(!_loc3_)
                  {
                     continue loop0;
                     addr84:
                     §§push(§^b§.§9E§);
                     if(_loc2_ || _loc3_)
                     {
                        §§pop().color = 0;
                        if(!_loc2_)
                        {
                           while(!_loc3_)
                           {
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr84);
                           }
                           break loop0;
                           addr93:
                           addr78:
                        }
                        break loop0;
                     }
                  }
                  §§pop().start();
                  §§goto(addr93);
               }
               §§goto(addr92);
               §§push(§^b§.§9E§);
            }
            return;
         }
         §§goto(addr90);
      }
      
      public function §"C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.sprite);
            if(_loc2_ || param1)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().visible = param1;
         }
         addr49:
         if(!_loc3_)
         {
            §§push(this.sprite);
         }
      }
      
      public function setController(param1:§3!`§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§-§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  while(true)
                  {
                     §§push(this.§-§);
                     addr100:
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr101:
                        while(true)
                        {
                        }
                     }
                  }
                  addr98:
               }
               while(true)
               {
                  this.§-§ = param1;
                  loop5:
                  while(this.mReadyToRun)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc3_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           §§push(this.§-§);
                           if(!(_loc2_ && param1))
                           {
                              continue loop0;
                           }
                           §§goto(addr100);
                        }
                     }
                     else
                     {
                        while(true)
                        {
                           if(_loc3_ || this)
                           {
                              if(_loc3_ || param1)
                              {
                                 break loop5;
                              }
                              §§goto(addr98);
                           }
                        }
                        addr74:
                     }
                     §§goto(addr101);
                  }
                  return;
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §2!a§() : §>C§
      {
         return this.§-i§;
      }
      
      public function §#!"§(param1:§#!d§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§@!`§ = param1;
         }
         §§push(this.§@!`§.§2P§);
         if(!(_loc6_ && param3))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               if(_loc7_)
               {
                  if(param3 == null)
                  {
                     while(true)
                     {
                        if(this.§3!v§(param2))
                        {
                           if(!_loc6_)
                           {
                              if(_loc7_)
                              {
                                 this.§0!+§();
                              }
                              else
                              {
                                 §§goto(addr68);
                              }
                           }
                           break;
                        }
                        break;
                        §§goto(addr84);
                     }
                     return;
                  }
                  loop1:
                  for(; _loc7_ || param3; if(_loc6_ && param1)
                  {
                     continue;
                  },if(_loc7_)
                  {
                     addr84:
                  },_loc5_++,break,addr130:)
                  {
                     this.§+B§.addEventListener(Event.INIT,param3);
                     loop4:
                     while(true)
                     {
                        this.§&v§.push(param3);
                        addr68:
                        while(true)
                        {
                           if(_loc7_ || param3)
                           {
                              continue loop1;
                           }
                           continue loop4;
                        }
                     }
                  }
                  continue;
               }
               §§goto(addr117);
            }
            else
            {
               this.§;!t§.§9!$§(this.§@!`§.§@y§(_loc5_));
            }
            §§goto(addr130);
         }
      }
      
      private function §3!v§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§;!t§);
            loop0:
            while(true)
            {
               §§push(§§pop().§]!b§());
               loop1:
               while(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§ !+§ = param1.concat();
                     if(_loc5_ && this)
                     {
                        if(_loc4_ || this)
                        {
                           if(!_loc5_)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    continue loop2;
                                 }
                                 addr86:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(§!>§);
                                    §§push("\n\nMain texture manager memory usage:\n   textures ");
                                    if(_loc4_)
                                    {
                                       §§push(_loc2_);
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr118:
                                             §§push(" kilobytes\n   bitmaps ");
                                             if(!(_loc5_ && param1))
                                             {
                                                addr135:
                                                §§push(§§pop() + §§pop());
                                                if(_loc4_)
                                                {
                                                   addr129:
                                                   §§push(§§pop() + _loc3_);
                                                   if(!_loc5_)
                                                   {
                                                      addr134:
                                                      §§push(§§pop() + " kilobytes\n\n");
                                                   }
                                                }
                                                §§pop().log(§§pop());
                                                while(_loc5_)
                                                {
                                                   break loop1;
                                                   §§goto(addr135);
                                                }
                                                this.initializeAnimations(param1);
                                                break loop2;
                                                addr136:
                                             }
                                             §§goto(addr134);
                                          }
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr118);
                                 }
                                 addr189:
                              }
                           }
                           §§goto(addr136);
                        }
                        break;
                     }
                     if(!(_loc5_ && this))
                     {
                        §§push(false);
                        if(_loc5_ && _loc2_)
                        {
                           return §§pop();
                        }
                        addr69:
                        if(!(_loc5_ && _loc3_))
                        {
                           return §§pop();
                        }
                        continue loop1;
                     }
                     loop9:
                     while(true)
                     {
                        §§push(this.§;!t§);
                        if(_loc4_ || _loc2_)
                        {
                           continue loop0;
                        }
                        addr196:
                        addr196:
                        while(true)
                        {
                           §§push(§§pop().§4!l§);
                           if(!(_loc4_ || _loc2_))
                           {
                              continue loop9;
                           }
                           §§push(1000);
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr206:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 continue loop9;
                              }
                           }
                           continue loop9;
                        }
                     }
                  }
                  §§goto(addr69);
                  §§push(true);
               }
               while(true)
               {
                  §§goto(addr196);
               }
            }
         }
         §§goto(addr86);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§ 4§.initializeAnimations(param1);
         }
      }
      
      private function §!!X§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§;!t§.§2f§();
            loop0:
            while(true)
            {
               §§push(this.§8!Z§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop44:
                           while(true)
                           {
                              §§pop();
                              loop45:
                              while(true)
                              {
                                 §§push(this.§8!Z§);
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(§§pop().textureManager);
                                    loop46:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr339:
                                       while(true)
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§8!Z§);
                                                   addr343:
                                                   while(!_loc2_)
                                                   {
                                                      §§push(§§pop().textureManager);
                                                      while(true)
                                                      {
                                                         §§pop().§2f§();
                                                         addr347:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                                addr341:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§8!,§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop11:
                                                   while(!_loc2_)
                                                   {
                                                      §§push(§§pop());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(this.§8!,§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  loop41:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().textureManager);
                                                                     addr305:
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§2f§();
                                                                        while(true)
                                                                        {
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(this.§ !+§)
                                                                              {
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§3!v§(this.§ !+§);
                                                                                    addr276:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§ !+§ = null;
                                                                                       addr267:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§0!+§();
                                                                                          continue loop19;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§-§);
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() == null);
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       continue loop12;
                                                                                    }
                                                                                    addr234:
                                                                                    while(_loc3_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                §§push(this.mReadyToRun);
                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                addr165:
                                                                                                if(!(_loc3_ || this))
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   while(!(_loc2_ && param1))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                   addr293:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop27:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§-§);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§pop().addEventListeners();
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  if(_loc3_ || this)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§6!i§);
                                                                                                                        if(_loc3_ || this)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              loop30:
                                                                                                                              while(!_loc2_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§6!i§);
                                                                                                                                    addr143:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().§]!b§();
                                                                                                                                       addr144:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc2_ && param1)
                                                                                                                                          {
                                                                                                                                             continue loop45;
                                                                                                                                          }
                                                                                                                                          addr151:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 loop32:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc2_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§]!>§);
                                                                                                                                          loop33:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().textureManager);
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         return;
                                                                                                                                                         addr111:
                                                                                                                                                      }
                                                                                                                                                      if(_loc3_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_ && _loc3_)
                                                                                                                                                         {
                                                                                                                                                            continue loop27;
                                                                                                                                                         }
                                                                                                                                                         §§push(this.§]!>§);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().textureManager);
                                                                                                                                                            addr103:
                                                                                                                                                            while(_loc3_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§pop().§2f§();
                                                                                                                                                            }
                                                                                                                                                            continue loop16;
                                                                                                                                                         }
                                                                                                                                                         addr102:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_ && this)
                                                                                                                                                         {
                                                                                                                                                            break loop32;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc3_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop14;
                                                                                                                                                            }
                                                                                                                                                            §§push(this.§]!>§);
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop33;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr102);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr255);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop45;
                                                                                                                                                      addr25:
                                                                                                                                                   }
                                                                                                                                                   continue loop46;
                                                                                                                                                }
                                                                                                                                                §§goto(addr346);
                                                                                                                                             }
                                                                                                                                             §§goto(addr103);
                                                                                                                                          }
                                                                                                                                          continue loop46;
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    addr302:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop41;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr144);
                                                                                                                              }
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§]!>§);
                                                                                                                              if(_loc3_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr65);
                                                                                                                                 }
                                                                                                                                 §§goto(addr25);
                                                                                                                              }
                                                                                                                              §§goto(addr102);
                                                                                                                              §§goto(addr151);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr143);
                                                                                                                     }
                                                                                                                     addr128:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr341);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr276);
                                                                                                            }
                                                                                                            §§goto(addr267);
                                                                                                         }
                                                                                                         §§goto(addr343);
                                                                                                      }
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   §§goto(addr128);
                                                                                                }
                                                                                                §§goto(addr302);
                                                                                             }
                                                                                             §§goto(addr347);
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       continue loop44;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop10;
                                                            }
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr343);
                              }
                           }
                           addr361:
                        }
                        §§goto(addr339);
                        if(_loc2_ && _loc3_)
                        {
                           continue;
                        }
                        if(§§pop())
                        {
                           §§goto(addr234);
                        }
                        §§goto(addr184);
                     }
                  }
                  §§goto(addr361);
               }
            }
         }
         §§goto(addr141);
      }
      
      private function §0!+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§+B§.dispatchEvent(new Event(Event.INIT));
            do
            {
               this.§">§();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private function §">§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§&v§)
         {
            if(!_loc4_)
            {
               this.§+B§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!_loc4_)
         {
            this.§&v§ = [];
         }
      }
      
      public function init(param1:§=+§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.mReadyToRun);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.clearLevel();
                     addr317:
                     while(true)
                     {
                     }
                  }
                  addr315:
               }
               while(true)
               {
                  this.§&m§ = new §[$§(this,param1);
                  loop3:
                  while(true)
                  {
                     this.§1!>§ = this.§6![§(param1);
                     loop4:
                     while(true)
                     {
                        this.§8%§ = 0;
                        loop5:
                        while(true)
                        {
                           this.§ i§ = 0;
                           while(true)
                           {
                              this.§0!l§ = 0;
                              loop7:
                              while(!_loc2_)
                              {
                                 this.§?#§ = false;
                                 loop8:
                                 while(!_loc2_)
                                 {
                                    this.mReadyToRun = false;
                                    while(_loc3_ || param1)
                                    {
                                       this.§%!Z§ = false;
                                       continue loop4;
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(!(_loc2_ && param1))
                                          {
                                             return;
                                          }
                                          continue loop7;
                                          continue loop7;
                                       }
                                    }
                                    §§goto(addr315);
                                    while(true)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc2_ && this)
                                          {
                                             break;
                                          }
                                          this.§`!>§ = this.§7!I§(param1.theme);
                                          continue;
                                       }
                                       continue loop8;
                                    }
                                    continue loop3;
                                 }
                                 continue loop5;
                              }
                              if(!(_loc3_ || _loc2_))
                              {
                                 continue;
                              }
                              §§goto(addr158);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr317);
      }
      
      protected function §>7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-i§ = new §>C§(LevelManager.§4Y§);
         }
      }
      
      protected function §7!I§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§6!i§)
            {
               if(_loc3_ || this)
               {
                  addr44:
                  §§push(false);
                  if(_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr44);
      }
      
      protected function §3!G§(param1:String) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0@§ = null;
         if(_loc3_ || _loc3_)
         {
            if(this.§^!l§)
            {
               addr29:
               _loc2_ = § !P§.§^!'§(param1);
               if(!(_loc4_ && param1))
               {
                  if(_loc2_)
                  {
                     if(!(_loc4_ && this))
                     {
                        §§push(Boolean(_loc2_.§-r§));
                        if(!(_loc4_ && param1))
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§pop();
                                 if(!_loc4_)
                                 {
                                    addr87:
                                    §§push(this.§^!l§.§@!s§(_loc2_.§-r§));
                                    if(_loc3_ || _loc2_)
                                    {
                                    }
                                    addr107:
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr111);
                                       }
                                       else
                                       {
                                          §§goto(addr112);
                                       }
                                    }
                                 }
                                 §§goto(addr112);
                              }
                              §§push(!§§pop());
                              if(_loc3_ || _loc2_)
                              {
                                 §§goto(addr107);
                              }
                              addr111:
                              return false;
                           }
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr87);
                  }
               }
            }
            addr112:
            return true;
         }
         §§goto(addr29);
      }
      
      protected function §"K§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0@§ = null;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§6!i§);
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
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§7!I§(param1));
                              while(true)
                              {
                                 §§push(!§§pop());
                                 continue loop3;
                                 addr160:
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 §§push(§§pop());
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop())
                                 {
                                    loop24:
                                    while(true)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          addr185:
                                          §§pop();
                                          loop23:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      §§push(this.§3!G§(param1));
                                                      if(_loc3_ || this)
                                                      {
                                                         if(_loc4_ && param1)
                                                         {
                                                            continue loop24;
                                                         }
                                                         addr119:
                                                         §§push(!§§pop());
                                                         while(true)
                                                         {
                                                            break loop23;
                                                            §§goto(addr119);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(this.§6!i§);
                                                      while(_loc3_)
                                                      {
                                                         §§pop().removeEventListener(Event.CANCEL,this.§6p§);
                                                         while(true)
                                                         {
                                                            §§push(this.§6!i§);
                                                            addr240:
                                                            while(true)
                                                            {
                                                               §§pop().addEventListener(Event.COMPLETE,this.§]=§);
                                                            }
                                                         }
                                                         addr205:
                                                         if(_loc4_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            §§pop().§<!I§(param1);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(!(_loc3_ || param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§^!l§);
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        §§goto(addr160);
                                                                        addr63:
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           §§pop().addEventListener(Event.COMPLETE,this.§@d§);
                                                                           loop32:
                                                                           for(; _loc3_ || this; §§pop().addEventListener(Event.CANCEL,this.§]W§),if(!(_loc3_ || _loc3_))
                                                                           {
                                                                              continue;
                                                                           },addr49:,if(!(_loc4_ && this))
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 _loc2_ = § !P§.§^!'§(param1);
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       if(_loc3_ || param1)
                                                                                       {
                                                                                          this.§^!l§.§<!I§(_loc2_.§-r§);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr61);
                                                                                 §§goto(addr49);
                                                                              }
                                                                              addr58:
                                                                           },§§goto(addr136))
                                                                           {
                                                                              §§push(this.§^!l§);
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr61:
                                                                              addr131:
                                                                              while(_loc3_)
                                                                              {
                                                                                 §§goto(addr63);
                                                                              }
                                                                              while(_loc3_)
                                                                              {
                                                                                 §§pop().removeEventListener(Event.CANCEL,this.§]W§);
                                                                                 break loop32;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().removeEventListener(Event.COMPLETE,this.§@d§);
                                                                                 addr136:
                                                                                 while(_loc3_ || param1)
                                                                                 {
                                                                                    §§goto(addr86);
                                                                                    §§push(this.§^!l§);
                                                                                 }
                                                                                 addr271:
                                                                                 loop16:
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    §§push(this.§6!i§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§goto(addr205);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr240);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().addEventListener(Event.CANCEL,this.§6p§);
                                                                                       continue loop16;
                                                                                       §§goto(addr236);
                                                                                    }
                                                                                    addr236:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§6!i§);
                                                                                    addr273:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().removeEventListener(Event.COMPLETE,this.§]=§);
                                                                                       continue loop10;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr86:
                                                                           }
                                                                           while(!(_loc4_ && param1))
                                                                           {
                                                                              §§goto(addr58);
                                                                              §§goto(addr75);
                                                                           }
                                                                           addr75:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_ && _loc3_)
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr131);
                                                                              }
                                                                           }
                                                                           continue loop17;
                                                                           addr122:
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr256);
                                                               }
                                                            }
                                                            continue loop4;
                                                            addr216:
                                                         }
                                                         §§goto(addr273);
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr229);
                                                }
                                             }
                                             §§goto(addr216);
                                          }
                                       }
                                       continue loop3;
                                       while(§§pop())
                                       {
                                          §§goto(addr122);
                                       }
                                       addr322:
                                       return;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr120);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr271);
                        }
                        §§goto(addr144);
                     }
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      private function §]=§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§6!i§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§]=§);
               loop1:
               while(true)
               {
                  §§push(this.§6!i§);
                  if(!(_loc2_ || this))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§6p§);
                  while(true)
                  {
                     this.§`!>§ = true;
                     loop3:
                     while(!(_loc3_ && _loc3_))
                     {
                        §§push(this.§`!>§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    addr90:
                                    while(!(_loc3_ && param1))
                                    {
                                       §§push(this.§;!w§);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(_loc3_ && this)
                                          {
                                             continue loop5;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!(_loc2_ || this))
                                       {
                                          continue loop6;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                              loop8:
                              while(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       this.initialize(this.§?9§);
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       break loop8;
                                    }
                                    §§goto(addr90);
                                 }
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      private function §6p§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§6!i§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§]=§);
               while(true)
               {
                  §§push(this.§6!i§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§6p§);
                  do
                  {
                     this.§%!Z§ = true;
                  }
                  while(!_loc3_);
                  
                  if(!_loc2_)
                  {
                     return;
                     addr42:
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      private function §@d§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§6!i§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§@d§);
               loop1:
               while(true)
               {
                  §§push(this.§6!i§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§]W§);
                  loop2:
                  while(true)
                  {
                     this.§;!w§ = true;
                     loop3:
                     for(; _loc2_ || param1; while(_loc2_ || param1)
                     {
                        continue loop2;
                     })
                     {
                        §§push(this.§`!>§);
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr80:
                           addr28:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop8:
                                 while(§§pop())
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       while(true)
                                       {
                                          this.initialize(this.§?9§);
                                       }
                                       addr54:
                                    }
                                    while(true)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          break loop8;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 return;
                                 addr45:
                              }
                              while(true)
                              {
                                 §§pop();
                                 continue loop3;
                              }
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           §§push(Boolean(§§pop()));
                           if(!_loc3_)
                           {
                              if(_loc3_ && this)
                              {
                                 §§goto(addr80);
                              }
                              §§goto(addr45);
                           }
                           §§goto(addr82);
                        }
                     }
                     continue loop1;
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     §§push(this.§;!w§);
                     if(!_loc3_)
                     {
                        §§goto(addr28);
                     }
                     §§goto(addr36);
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §]W§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§6!i§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§@d§);
               while(true)
               {
                  §§push(this.§6!i§);
                  if(!(_loc3_ || _loc3_))
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§]W§);
                  loop2:
                  for(; _loc3_; for(; !(_loc2_ && this); §§goto(addr85))
                  {
                     §§push(this.§;!w§);
                     if(!_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr42);
                  })
                  {
                     this.§;!w§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§`!>§);
                        if(_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    addr76:
                                    if(_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                                 return;
                                 addr49:
                              }
                              addr42:
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              §§goto(addr49);
                           }
                        }
                        addr85:
                        while(true)
                        {
                           §§pop();
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      public function get backgroundTextureManager() : §,Q§
      {
         return this.§;!t§;
      }
      
      protected function initialize(param1:§=+§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#!f§ = false;
            loop0:
            while(true)
            {
               this.§7!b§ = false;
               while(true)
               {
                  §§push(§^b§.§&#§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(§^b§.§&#§);
                           addr223:
                           while(true)
                           {
                              §§pop().speed = 1;
                              addr225:
                              while(true)
                              {
                              }
                           }
                        }
                        addr221:
                     }
                     while(true)
                     {
                        this.mLevelEngine = new §&!s§(this);
                        loop4:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              §§push(this);
                              §§push(this);
                              §§push(param1.theme);
                              §§push(this.§&m§.§>6§);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(§§pop() / §^!S§);
                              }
                              §§pop().§[!-§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§1!>§.§0!1§());
                              loop5:
                              while(true)
                              {
                                 this.§[!-§.§"$§(§ _§.§1_§());
                                 loop6:
                                 while(true)
                                 {
                                    this.§4#§ = this.initLevelObjectManager(param1);
                                    addr161:
                                    loop9:
                                    while(true)
                                    {
                                       this.§!E§ = this.initLevelSlingshot(param1);
                                       loop10:
                                       while(true)
                                       {
                                          this.§=§ = this.§[B§(this.§ 4§,this.§;!t§);
                                          loop11:
                                          while(_loc3_)
                                          {
                                             this.§1!>§.init();
                                             loop12:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop11;
                                                }
                                                if(!_loc3_)
                                                {
                                                   break;
                                                }
                                                this.§>!F§();
                                                while(true)
                                                {
                                                   this.§<!8§();
                                                   continue loop10;
                                                   addr44:
                                                   if(_loc3_ || param1)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                                addr73:
                                                while(true)
                                                {
                                                   if(_loc3_ || param1)
                                                   {
                                                      continue loop9;
                                                   }
                                                   continue loop12;
                                                   addr37:
                                                   if(_loc2_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr44);
                                                }
                                                continue loop5;
                                             }
                                             continue loop4;
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr221);
                           }
                        }
                        §§goto(addr225);
                     }
                  }
                  §§goto(addr223);
                  if(_loc2_ && param1)
                  {
                     continue;
                  }
                  §§push(this.§-§);
                  if(_loc3_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           §§goto(addr37);
                        }
                        §§goto(addr61);
                     }
                     §§goto(addr20);
                  }
                  §§goto(addr60);
               }
            }
         }
         §§goto(addr161);
      }
      
      protected function §<!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§?4§)
            {
               loop0:
               while(true)
               {
                  this.§6m§ = §>C§.initialize(this.§?4§);
                  loop1:
                  while(true)
                  {
                     §§push(this.§6m§);
                     while(true)
                     {
                        §§pop().speed = 1;
                        while(true)
                        {
                           §§push(this.§6m§);
                           if(!_loc1_)
                           {
                              break;
                           }
                           §§pop().play();
                           loop4:
                           do
                           {
                              this.§`M§ = -1000;
                              while(_loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    this.§?4§ = null;
                                    if(!_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           while(!(_loc1_ || this));
                           
                           if(!_loc2_)
                           {
                              §§goto(addr24);
                           }
                        }
                     }
                  }
               }
               addr89:
            }
            addr24:
            return;
         }
         §§goto(addr89);
      }
      
      public function §#=§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§?4§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§6m§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§6m§);
            loop0:
            while(§§pop())
            {
               if(!(_loc3_ && _loc3_))
               {
                  while(true)
                  {
                     if(param1)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(this.§6m§);
                           break;
                        }
                     }
                     else
                     {
                        §§push(this.§6m§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        §§pop().speed = Math.max(this.§6m§.speed / 1.25,Math.pow(1 / 1.25,10));
                        if(!(_loc3_ && this))
                        {
                           break loop0;
                        }
                     }
                  }
                  §§pop().speed = Math.min(this.§6m§.speed * 1.25,Math.pow(1.25,2));
                  addr84:
               }
               break;
            }
            return;
         }
         §§goto(addr84);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§6m§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr42:
                     this.§6m§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      protected function initLevelObjectManager(param1:§=+§) : §=[§
      {
         return new §=[§(this,param1,new Sprite());
      }
      
      protected function §6![§(param1:§=+§) : §#C§
      {
         return new §#C§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§,Q§, param4:Number) : §+!`§
      {
         return new §+!`§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§=+§) : §>!A§
      {
         return new §>!A§(this,param1,new Sprite());
      }
      
      protected function §[B§(param1:§^!&§, param2:§,Q§) : §+F§
      {
         return new §+F§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(this.mReadyToRun)
            {
               if(!(_loc7_ && this))
               {
                  addr28:
                  this.clearLevel();
               }
            }
            var _loc3_:§=+§ = this.§"f§();
            var _loc4_:§4!=§;
            (_loc4_ = new §4!=§()).left = 0;
            if(!_loc7_)
            {
               §§push(_loc4_);
               §§push(§#C§.§&R§);
               if(_loc6_ || _loc3_)
               {
                  §§push(-§§pop());
                  if(!(_loc7_ && param2))
                  {
                     §§push(10);
                     if(!_loc7_)
                     {
                        §§push(§§pop() / §§pop());
                        if(_loc6_ || _loc3_)
                        {
                           addr146:
                           §§push(§§pop() * 8);
                        }
                        §§pop().top = §§pop();
                        loop0:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.top);
                           if(_loc6_)
                           {
                              §§push(§§pop() + §#C§.§&R§);
                           }
                           §§pop().bottom = §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.left);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(§§pop() + §#C§.§!!v§);
                              }
                              §§pop().right = §§pop();
                              while(true)
                              {
                                 _loc4_.y = -13.929;
                                 while(_loc6_)
                                 {
                                    _loc4_.x = §#C§.§!!v§;
                                    loop4:
                                    while(_loc6_)
                                    {
                                       continue loop0;
                                       loop6:
                                       while(true)
                                       {
                                          _loc3_.§&!=§(_loc4_);
                                          if(!(_loc6_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(!_loc6_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc7_)
                                          {
                                             continue loop1;
                                          }
                                          if(true)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             _loc4_.id = §#C§.§^a§;
                                             continue loop6;
                                          }
                                       }
                                       var _loc5_:§4!=§;
                                       (_loc5_ = new §4!=§()).top = _loc4_.top;
                                       if(_loc6_)
                                       {
                                          _loc5_.bottom = _loc4_.bottom;
                                          loop7:
                                          while(true)
                                          {
                                             _loc5_.left = 150;
                                             loop8:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                §§push(_loc5_.left);
                                                if(_loc6_ || param2)
                                                {
                                                   §§push(§§pop() + §#C§.§!!v§);
                                                }
                                                §§pop().right = §§pop();
                                                addr240:
                                                if(_loc7_ && param2)
                                                {
                                                   continue;
                                                }
                                                _loc3_.theme = param1;
                                                addr250:
                                                if(!(_loc7_ && param2))
                                                {
                                                   this.init(_loc3_);
                                                   addr164:
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         addr182:
                                                         if(_loc7_ && param1)
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               _loc3_.§&!=§(_loc5_);
                                                               addr268:
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     this.§+5§(_loc3_,param2);
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1);
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(null);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 §§push(§9r§);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(null);
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       if(§§pop() != §§pop())
                                                                                       {
                                                                                          addr205:
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             _loc3_.theme = §9r§;
                                                                                             addr210:
                                                                                             if(!(_loc6_ || param1))
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                §§push(_loc5_.left);
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§#C§.§!!v§);
                                                                                                   if(!(_loc7_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() / 2);
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                                §§pop().x = §§pop();
                                                                                                addr308:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_.id = §#C§.§#P§;
                                                                                                   continue loop13;
                                                                                                }
                                                                                             }
                                                                                             addr314:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             §§push(_loc5_.top);
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() + §#C§.§&R§);
                                                                                             }
                                                                                             §§pop().bottom = §§pop();
                                                                                             addr340:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_.y = _loc4_.y;
                                                                                                §§goto(addr314);
                                                                                                §§goto(addr233);
                                                                                             }
                                                                                          }
                                                                                          addr356:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              if(!(_loc6_ || param2))
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              addr233:
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr240);
                                                                              }
                                                                              §§goto(addr340);
                                                                           }
                                                                           §§goto(addr164);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr308);
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                   §§goto(addr210);
                                                }
                                                §§goto(addr268);
                                             }
                                          }
                                       }
                                       §§goto(addr356);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr146);
                  }
               }
               §§goto(addr146);
            }
            §§goto(addr66);
         }
         §§goto(addr28);
      }
      
      protected function §+5§(param1:§=+§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2)
            {
               if(!(_loc4_ && param2))
               {
                  addr27:
                  this.§>!n§(param1);
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      protected function §"f§() : §=+§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§=+§ = new §=+§();
         if(!_loc2_)
         {
            _loc1_.§8!r§ = -12;
         }
         return new §=+§();
      }
      
      protected function §-! §() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"_§ ^= this.§"_§ << 21;
            while(true)
            {
               §§push(this);
               §§push(this.§"_§);
               §§push(this.§"_§);
               if(!_loc1_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§"_§ = §§pop() ^ §§pop();
               §§goto(addr83);
            }
         }
         addr83:
         while(true)
         {
            this.§"_§ ^= this.§"_§ << 4;
            if(!(_loc1_ && this))
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return this.§"_§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §>!n§(param1:§=+§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§0!D§ = null;
         if(_loc6_ || this)
         {
            §§push(this);
            §§push(0.33);
            if(_loc6_ || param1)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§"_§ = §§pop();
         }
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(10);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(!(_loc7_ && _loc3_))
                     {
                        _loc3_ = §§pop();
                        if(!_loc6_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!(_loc6_ || _loc3_))
                           {
                              break;
                           }
                           §§push(5);
                           if(!_loc6_)
                           {
                              continue loop2;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(!(_loc7_ && _loc2_))
                              {
                                 _loc2_++;
                                 if(!_loc7_)
                                 {
                                    break loop2;
                                 }
                                 §§goto(addr473);
                              }
                              break loop2;
                           }
                           §§push(this.§-! §());
                           if(_loc6_ || param1)
                           {
                              §§push(§§pop() * 5);
                           }
                           §§push(int(§§pop()));
                           if(_loc7_ && _loc2_)
                           {
                              break;
                           }
                           §§goto(addr473);
                        }
                        continue loop1;
                        addr448:
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        if(_loc6_ || _loc3_)
                        {
                           §§push(_loc5_ = new §0!D§());
                           §§push(30 + _loc3_ * 10);
                           if(!_loc7_)
                           {
                              §§push(this.§-! §());
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() * 9);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().x = §§pop();
                           if(_loc6_ || _loc3_)
                           {
                              §§push(_loc2_);
                              loop5:
                              while(true)
                              {
                                 §§push(0);
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(_loc5_);
                                       §§push(-100 + _loc2_ * 6);
                                       if(!_loc7_)
                                       {
                                          §§push(this.§-! §());
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() * 3);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(!_loc7_)
                                                {
                                                   addr350:
                                                   §§push(§§pop() - _loc3_ * 8);
                                                }
                                                §§pop().y = §§pop();
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         loop27:
                                                         while(true)
                                                         {
                                                            §§push(2);
                                                            addr394:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(_loc3_);
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(4);
                                                                                       addr382:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                _loc5_.id = "PIG_HELMET";
                                                                                                loop11:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      §§push(45);
                                                                                                      §§push(this.§-! §());
                                                                                                      if(_loc6_ || _loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop() * 90);
                                                                                                      }
                                                                                                      §§pop().angle = §§pop() - §§pop();
                                                                                                      loop13:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            loop14:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1.addObject(_loc5_);
                                                                                                               loop15:
                                                                                                               while(!(_loc7_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc6_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     _loc3_++;
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(_loc6_ || this)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                              §§goto(addr448);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 addr425:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    addr426:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                       addr427:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          break loop26;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr447:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        loop25:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           continue loop27;
                                                                                                                           addr429:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr430:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    break loop14;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc5_.id = "BIRD_RED";
                                                                                                                                    continue loop13;
                                                                                                                                 }
                                                                                                                                 addr303:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr219:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              §§push(this.§-! §());
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * 360);
                                                                                                                              }
                                                                                                                              §§pop().angle = §§pop();
                                                                                                                              break loop15;
                                                                                                                              addr324:
                                                                                                                           }
                                                                                                                           addr390:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr181:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc5_.id = "BIRD_YELLOW";
                                                                                                                     }
                                                                                                                     addr216:
                                                                                                                  }
                                                                                                                  §§goto(addr219);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc6_ || _loc2_))
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         addr434:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc5_.y = 0;
                                                                                                         }
                                                                                                         §§goto(addr447);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr387);
                                                                                          }
                                                                                          continue loop28;
                                                                                       }
                                                                                    }
                                                                                    addr422:
                                                                                    addr381:
                                                                                 }
                                                                                 §§goto(addr427);
                                                                              }
                                                                              addr414:
                                                                           }
                                                                           §§goto(addr385);
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§goto(addr429);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr409);
                                                                        }
                                                                     }
                                                                     addr409:
                                                                  }
                                                                  §§goto(addr429);
                                                               }
                                                               §§goto(addr414);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr381);
                                                   }
                                                   else
                                                   {
                                                      loop29:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         while(_loc6_ || _loc3_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            loop31:
                                                            while(_loc6_ || _loc3_)
                                                            {
                                                               §§push(2);
                                                               while(true)
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop31;
                                                                  }
                                                                  §§goto(addr303);
                                                               }
                                                               continue loop29;
                                                            }
                                                            §§goto(addr425);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr426);
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                       §§goto(addr350);
                                    }
                                    §§goto(addr434);
                                 }
                              }
                           }
                           §§goto(addr174);
                        }
                     }
                  }
                  addr473:
                  addr473:
                  return;
               }
               continue loop0;
            }
         }
      }
      
      private function §@!5§() : void
      {
      }
      
      public function §>!F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§+!`§.§1+§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§ W§(this.§[!-§.§@4§,false);
                     addr209:
                     while(true)
                     {
                     }
                  }
                  addr203:
               }
               while(true)
               {
                  this.§ W§(this.§=§.§7B§(§+F§.§1^§),false);
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        this.§ W§(this.§=§.§7B§(§+F§.§%!W§),true);
                        loop4:
                        while(!_loc1_)
                        {
                           this.§ W§(this.§=§.§7B§(§+F§.§7!t§),true);
                           loop5:
                           while(true)
                           {
                              this.§ W§(this.§4#§.§'^§,true);
                              loop6:
                              while(true)
                              {
                                 this.§ W§(this.§!E§.sprite,true);
                                 while(true)
                                 {
                                    this.§ W§(this.§=§.§7B§(§+F§.§+!X§),true);
                                    while(true)
                                    {
                                       this.§ W§(this.§[!-§.§8!t§,false);
                                       loop9:
                                       for(; !_loc1_; while(true)
                                       {
                                          if(_loc1_ && _loc1_)
                                          {
                                             continue loop9;
                                          }
                                          if(_loc1_)
                                          {
                                             continue loop4;
                                          }
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§goto(addr69);
                                       })
                                       {
                                          if(_loc1_)
                                          {
                                             continue loop6;
                                          }
                                          §§push(§+!`§.§1+§);
                                          loop10:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   this.§ W§(this.§[!-§.§-!O§,false);
                                                }
                                                continue loop9;
                                             }
                                             addr69:
                                             while(true)
                                             {
                                                this.§ W§(this.§=§.§7B§(§+F§.§5!2§),true);
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                    if(_loc2_ || _loc2_)
                                    {
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     §§goto(addr203);
                  }
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               if(§§pop())
               {
                  §§goto(addr43);
               }
               §§goto(addr66);
            }
         }
         §§goto(addr209);
      }
      
      private function § W§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.sprite);
            if(_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().addChild(param1);
         }
         addr44:
         if(!_loc4_)
         {
            §§push(this.sprite);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = new Point();
         if(!(_loc5_ && param1))
         {
            addr148:
            §§push(param1);
            if(_loc4_ || param2)
            {
               §§push(§ _§.§0!2§);
               while(true)
               {
                  §§push(§§pop() / §§pop());
               }
               addr147:
            }
            while(true)
            {
               §§push(Number(§§pop()));
               addr149:
               while(true)
               {
                  param1 = §§pop();
               }
            }
            addr148:
         }
         loop3:
         while(true)
         {
            §§push(param2);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§ _§.§0!2§);
               if(!_loc5_)
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        addr133:
                        §§push(Number(§§pop()));
                        if(!_loc5_)
                        {
                           param2 = §§pop();
                           while(true)
                           {
                              _loc3_.x = (param1 / §#C§.§-!k§ + this.§1!>§.§9!^§ - §#C§.§]!J§ / §#C§.§-!k§) * §^!S§;
                              while(_loc4_ || _loc3_)
                              {
                                 _loc3_.y = (param2 / §#C§.§-!k§ + this.§1!>§.§[q§ - §#C§.§#v§ / §#C§.§-!k§) * §^!S§;
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr148);
                        }
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr133);
               }
               else
               {
                  §§goto(addr147);
               }
            }
            §§goto(addr133);
         }
         return _loc3_;
      }
      
      public function §6V§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc5_ || param1)
         {
            _loc3_.x = (param1 / §^!S§ + §#C§.§]!J§ / §#C§.§-!k§ - this.§1!>§.§9!^§) * §#C§.§-!k§;
            if(!_loc6_)
            {
               addr57:
               _loc3_.y = (param2 / §^!S§ + §#C§.§#v§ / §#C§.§-!k§ - this.§1!>§.§[q§) * §#C§.§-!k§;
            }
            var _loc4_:Number = Math.max(§ _§.§0!2§,§ _§.§[!Y§);
            if(_loc5_)
            {
               _loc3_.x *= _loc4_;
            }
            do
            {
               _loc3_.y *= _loc4_;
            }
            while(!(_loc5_ || param1));
            
            return _loc3_;
         }
         §§goto(addr57);
      }
      
      public function §?!$§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            this.§4#§.addObject(param1,param2,param3);
         }
      }
      
      public function §#S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§[g§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop5:
                  while(true)
                  {
                     this.§>k§ = 0;
                     if(!_loc1_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(this.§[g§);
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr87:
                     }
                     else
                     {
                        while(_loc2_ || _loc2_)
                        {
                           while(true)
                           {
                              continue loop5;
                           }
                        }
                        while(true)
                        {
                           §§push(this.§[g§);
                        }
                        addr83:
                        addr72:
                     }
                     while(true)
                     {
                        §§pop().visible = true;
                        §§goto(addr87);
                     }
                  }
                  return;
               }
               §§goto(addr83);
            }
         }
         §§goto(addr79);
      }
      
      public function §9!g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§;!u§ = new §+!c§(§0;§.§]t§,§0;§.§9y§);
         }
      }
      
      public function §,2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;!u§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§[!-§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr569:
                     this.§[!-§.dispose();
                  }
                  loop0:
                  while(true)
                  {
                     this.§[!-§ = null;
                     addr554:
                     while(true)
                     {
                        loop9:
                        for(; !(_loc1_ && _loc2_); while(true)
                        {
                           if(_loc1_ && this)
                           {
                              continue loop9;
                           }
                           §§goto(addr436);
                        })
                        {
                           §§push(this.§&m§);
                           loop24:
                           while(true)
                           {
                              §§pop().clear();
                              loop25:
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    this.§&m§ = null;
                                    loop26:
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(this.§!E§);
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§1!>§);
                                                   if(!(_loc1_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               addr403:
                                                               if(!(_loc1_ && this))
                                                               {
                                                                  addr410:
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(this.§1!>§);
                                                                        while(true)
                                                                        {
                                                                           §§pop().clear();
                                                                           loop19:
                                                                           while(!_loc1_)
                                                                           {
                                                                              this.§1!>§ = null;
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    addr384:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§=§);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   addr364:
                                                                                                   this.§=§.dispose();
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop32:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr492:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.mLevelEngine);
                                                                                                         if(_loc2_ || this)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.mLevelEngine);
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop().§8s§)
                                                                                                                        {
                                                                                                                           if(_loc1_ && _loc1_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           break loop13;
                                                                                                                        }
                                                                                                                        §§push(this.mLevelEngine);
                                                                                                                     }
                                                                                                                     addr507:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().clear();
                                                                                                                     break loop13;
                                                                                                                  }
                                                                                                                  §§goto(addr410);
                                                                                                               }
                                                                                                               addr503:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§&m§);
                                                                                                               if(!(_loc1_ && _loc1_))
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                            addr459:
                                                                                                         }
                                                                                                         §§goto(addr507);
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                   }
                                                                                                   addr524:
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc2_ || this))
                                                                                                {
                                                                                                   continue loop25;
                                                                                                }
                                                                                                this.§=§ = null;
                                                                                             }
                                                                                             continue loop25;
                                                                                             addr365:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(this.sprite)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      if(!_loc1_)
                                                                                                      {
                                                                                                         addr300:
                                                                                                         §§push(this.sprite);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            if(§§pop().numChildren <= 0)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(this.sprite);
                                                                                                         }
                                                                                                         §§pop().removeChildAt(0,true);
                                                                                                         §§goto(addr300);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§!E§);
                                                                                                            addr450:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().dispose();
                                                                                                               addr451:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     this.§!E§ = null;
                                                                                                                     break loop19;
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr448:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr365);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc2_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                             addr309:
                                                                                             this.§8%§ = 0;
                                                                                             this.§ i§ = 0;
                                                                                             this.mReadyToRun = false;
                                                                                             addr299:
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                this.§?#§ = false;
                                                                                                this.§>k§ = §0;§.§1!s§;
                                                                                                addr254:
                                                                                                addr287:
                                                                                                addr282:
                                                                                                if(this.§2i§)
                                                                                                {
                                                                                                   addr261:
                                                                                                   (this.§2i§ as §@l§).§5!4§.x = 0;
                                                                                                   addr262:
                                                                                                   addr255:
                                                                                                   addr260:
                                                                                                   addr257:
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         §§push(this.§2i§);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            if(_loc2_ || _loc2_)
                                                                                                            {
                                                                                                               §§push((§§pop() as §@l§).§5!4§);
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     addr243:
                                                                                                                     if(_loc2_ || _loc1_)
                                                                                                                     {
                                                                                                                        addr211:
                                                                                                                        §§push(this.§[g§);
                                                                                                                        if(!_loc1_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              addr219:
                                                                                                                              this.§[g§.visible = false;
                                                                                                                              addr217:
                                                                                                                           }
                                                                                                                           this.§6m§ = null;
                                                                                                                           this.§-i§ = null;
                                                                                                                           addr210:
                                                                                                                           addr205:
                                                                                                                           §§push(this.§6!i§);
                                                                                                                           if(!_loc1_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr195:
                                                                                                                                 this.§6!i§.removeEventListener(Event.COMPLETE,this.§]=§);
                                                                                                                                 addr193:
                                                                                                                                 addr200:
                                                                                                                                 §§push(this.§6!i§);
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    §§pop().removeEventListener(Event.CANCEL,this.§6p§);
                                                                                                                                    addr179:
                                                                                                                                    if(_loc2_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       addr158:
                                                                                                                                       if(this.§^!l§)
                                                                                                                                       {
                                                                                                                                          addr159:
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             addr163:
                                                                                                                                             this.§^!l§.removeEventListener(Event.COMPLETE,this.§@d§);
                                                                                                                                             addr168:
                                                                                                                                             §§push(this.§^!l§);
                                                                                                                                             if(!(_loc1_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(!_loc1_)
                                                                                                                                                {
                                                                                                                                                   §§pop().removeEventListener(Event.CANCEL,this.§]W§);
                                                                                                                                                   addr145:
                                                                                                                                                   if(!_loc1_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc1_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr113:
                                                                                                                                                         this.§">§();
                                                                                                                                                         addr116:
                                                                                                                                                         if(!(_loc1_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc1_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§^b§.§9E§);
                                                                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr90:
                                                                                                                                                                        if(_loc2_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc1_ && _loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 addr108:
                                                                                                                                                                                 §^b§.§9E§.color = 0;
                                                                                                                                                                                 addr110:
                                                                                                                                                                                 if(!_loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr52:
                                                                                                                                                                                    §§push(this.§-§);
                                                                                                                                                                                    if(!_loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr68:
                                                                                                                                                                                                      this.§-§.removeEventListeners();
                                                                                                                                                                                                      addr69:
                                                                                                                                                                                                      if(!_loc1_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr29:
                                                                                                                                                                                                            this.mReadyToRun = false;
                                                                                                                                                                                                            if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc1_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc1_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr299);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     return;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr217);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr90);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr69);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr309);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr110);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr217);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr159);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr116);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr69);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr29);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr68);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr193);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr243);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr210);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr179);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr52);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr108);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr300);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr262);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr145);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr200);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr168);
                                                                                                                                                }
                                                                                                                                                §§goto(addr158);
                                                                                                                                             }
                                                                                                                                             §§goto(addr163);
                                                                                                                                          }
                                                                                                                                          §§goto(addr255);
                                                                                                                                       }
                                                                                                                                       §§goto(addr113);
                                                                                                                                    }
                                                                                                                                    §§goto(addr205);
                                                                                                                                 }
                                                                                                                                 §§goto(addr195);
                                                                                                                              }
                                                                                                                              §§goto(addr158);
                                                                                                                           }
                                                                                                                           §§goto(addr195);
                                                                                                                        }
                                                                                                                        §§goto(addr219);
                                                                                                                     }
                                                                                                                     §§goto(addr309);
                                                                                                                  }
                                                                                                                  §§goto(addr261);
                                                                                                               }
                                                                                                               §§goto(addr260);
                                                                                                            }
                                                                                                            §§goto(addr254);
                                                                                                         }
                                                                                                         §§goto(addr257);
                                                                                                      }
                                                                                                      §§goto(addr287);
                                                                                                   }
                                                                                                   §§goto(addr282);
                                                                                                }
                                                                                                §§goto(addr211);
                                                                                             }
                                                                                             addr312:
                                                                                             §§goto(addr312);
                                                                                             addr313:
                                                                                          }
                                                                                          §§goto(addr335);
                                                                                       }
                                                                                       §§goto(addr364);
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    addr352:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§4#§);
                                                                                       addr548:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().dispose();
                                                                                          addr549:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§4#§ = null;
                                                                                             addr529:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§%c§ = null;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop20;
                                                                                    }
                                                                                    addr546:
                                                                                 }
                                                                                 §§goto(addr524);
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        addr421:
                                                                     }
                                                                     §§goto(addr549);
                                                                  }
                                                                  §§goto(addr503);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr451);
                                                         }
                                                         while(true)
                                                         {
                                                            this.mLevelEngine = null;
                                                            addr489:
                                                            while(!_loc1_)
                                                            {
                                                               §§goto(addr459);
                                                            }
                                                            §§goto(addr529);
                                                            §§goto(addr403);
                                                         }
                                                      }
                                                      §§goto(addr352);
                                                   }
                                                   §§goto(addr421);
                                                   addr436:
                                                }
                                                continue loop26;
                                             }
                                             §§goto(addr448);
                                          }
                                          §§goto(addr450);
                                       }
                                    }
                                 }
                                 §§goto(addr489);
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§4#§);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr546);
                     }
                     §§goto(addr492);
                  }
                  §§goto(addr548);
                  §§goto(addr554);
               }
            }
            §§goto(addr569);
         }
         §§goto(addr351);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §7!G§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§-i§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.§-i§);
                  }
                  else
                  {
                     §§goto(addr30);
                  }
               }
               §§goto(addr30);
            }
            return §§pop().toString();
         }
         addr30:
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.mReadyToRun);
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
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(§^b§.§@@§());
                              loop5:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr51:
                                 if(!(_loc4_ || param1))
                                 {
                                    continue;
                                 }
                                 if(!(_loc4_ || param2))
                                 {
                                    continue loop1;
                                 }
                                 addr76:
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_ || param1)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       loop10:
                                       while(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§goto(addr98);
                                             }
                                             return 0;
                                          }
                                          if(_loc4_)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                addr108:
                                                break;
                                             }
                                             addr109:
                                             while(true)
                                             {
                                                §§push(this.§6m§);
                                                addr112:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc5_ && param1)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(§§pop());
                                                      if(!_loc4_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         continue loop10;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                      }
                                                      addr136:
                                                   }
                                                   §§goto(addr136);
                                                }
                                                continue loop4;
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(this.§6m§);
                                             if(_loc4_ || param3)
                                             {
                                                §§push(§§pop().§;J§);
                                                if(_loc4_ || param1)
                                                {
                                                   §§goto(addr51);
                                                }
                                                §§goto(addr76);
                                             }
                                             §§goto(addr112);
                                             §§goto(addr136);
                                          }
                                          continue loop5;
                                       }
                                       §§push(this.updateWithTime(param1,true,param2,param3));
                                       if(!_loc4_)
                                       {
                                          addr98:
                                          return this.§]k§(param1,param2,param3);
                                       }
                                       if(_loc4_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr147);
                                    }
                                    while(!§§pop())
                                    {
                                       §§goto(addr109);
                                    }
                                    §§goto(addr147);
                                    addr145:
                                 }
                                 §§goto(addr136);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§goto(addr145);
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            if(this.§#!f§)
            {
               if(_loc7_)
               {
                  §§push(param1);
                  if(_loc7_)
                  {
                     §§push(§§pop() * 0.2);
                     if(_loc7_ || param1)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                           param1 = §§pop();
                           if(!_loc6_)
                           {
                              addr47:
                              §§push(§^b§.§&#§);
                              if(_loc7_ || param2)
                              {
                                 if(§§pop())
                                 {
                                    addr68:
                                    if(!(_loc6_ && param3))
                                    {
                                       addr64:
                                       §§push(§^b§.§&#§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(_loc7_ || this)
                                    {
                                       §§push(this);
                                       §§push(this.§ i§);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§ i§ = §§pop();
                                    }
                                    loop0:
                                    while(true)
                                    {
                                       §§push(param3);
                                       loop1:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§4#§.§?!k§(param1);
                                             loop2:
                                             while(true)
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   this.§8%§ = 0;
                                                   while(true)
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr113:
                                                      if(_loc6_ && param3)
                                                      {
                                                         continue;
                                                      }
                                                      this.§%!B§(param1,_loc5_);
                                                      if(!_loc7_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         addr79:
                                                         §§push(param1);
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            return §§pop();
                                                         }
                                                         loop7:
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            addr197:
                                                            addr199:
                                                            while(_loc6_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.mLevelEngine.§!!]§(this.§8%§));
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                            this.§!E§.update(param1,param4);
                                                         }
                                                      }
                                                      while(!_loc7_)
                                                      {
                                                         §§goto(addr197);
                                                         §§goto(addr199);
                                                      }
                                                      this.§8%§ = _loc5_;
                                                      while(true)
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr162:
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§8%§);
                                                      if(_loc7_)
                                                      {
                                                         §§push(§§pop() + param1);
                                                      }
                                                      §§pop().§8%§ = §§pop();
                                                      §§goto(addr211);
                                                   }
                                                   addr203:
                                                }
                                                §§goto(addr162);
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr203);
                                       }
                                    }
                                 }
                                 §§goto(addr68);
                              }
                              §§pop().speed = 0.2;
                              §§goto(addr68);
                           }
                           §§goto(addr64);
                        }
                     }
                  }
                  §§goto(addr68);
               }
               §§goto(addr47);
            }
         }
         §§goto(addr68);
      }
      
      private function §]k§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         §§push(§&!s§.§+!=§);
         if(_loc6_ || this)
         {
            §§push(§§pop() * 1000);
            if(!_loc7_)
            {
               addr31:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc7_ && this))
            {
               if(this.§6m§)
               {
                  if(_loc6_)
                  {
                     addr334:
                     §§push(param1);
                     while(true)
                     {
                        §§push(this.§6m§.speed);
                        addr338:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr339:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr340:
                              while(true)
                              {
                                 param1 = §§pop();
                              }
                           }
                        }
                     }
                     addr335:
                  }
                  while(true)
                  {
                     §§push(this.§ i§);
                     if(_loc6_ || this)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              §§push(param1);
                              if(_loc6_ || param2)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_ || param3)
                                 {
                                    addr318:
                                    §§push(Number(§§pop()));
                                    if(_loc6_)
                                    {
                                       _loc5_ = §§pop();
                                       if(!(_loc7_ && param1))
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                 }
                                 §§goto(addr318);
                              }
                              else
                              {
                                 §§goto(addr338);
                              }
                           }
                           else
                           {
                              §§goto(addr335);
                           }
                           §§goto(addr338);
                        }
                        §§goto(addr340);
                     }
                     §§goto(addr318);
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§ i§);
                     if(_loc6_ || param2)
                     {
                        §§push(_loc4_);
                        if(!_loc7_)
                        {
                           if(_loc6_ || param3)
                           {
                              if(_loc6_ || param1)
                              {
                                 §§push(§§pop() + §§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       §§push(_loc5_);
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this.§`M§);
                                                   if(!_loc7_)
                                                   {
                                                      addr217:
                                                      §§push(§§pop() + _loc4_);
                                                      loop2:
                                                      while(true)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(_loc6_ || param3)
                                                               {
                                                                  §§push(this.§6m§);
                                                                  if(!(_loc7_ && param3))
                                                                  {
                                                                     §§pop().step(this);
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§`M§);
                                                                        if(_loc6_ || param3)
                                                                        {
                                                                           §§push(§§pop() + _loc4_);
                                                                        }
                                                                        §§pop().§`M§ = §§pop();
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ || param1))
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§ i§);
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(!(_loc7_ && param1))
                                                                                    {
                                                                                       if(_loc6_ || param3)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             §§push(param1);
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr269:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§`M§);
                                                                                                   addr271:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() > §§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§6m§);
                                                                                                            addr274:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().step(this);
                                                                                                               §§push(this);
                                                                                                               §§push(this.§`M§);
                                                                                                               if(_loc6_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() + _loc4_);
                                                                                                               }
                                                                                                               §§pop().§`M§ = §§pop();
                                                                                                               addr261:
                                                                                                               while(true)
                                                                                                               {
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr272:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.updateWithTime(_loc4_,false,param2,param3);
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr59:
                                                                                             addr61:
                                                                                          }
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!(_loc6_ || param2))
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             §§push(this);
                                                                                             §§push(_loc5_);
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() - this.§ i§);
                                                                                             }
                                                                                             §§pop().updateWithTime(§§pop(),true,param2,param3);
                                                                                          }
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             continue loop4;
                                                                                             return §§pop();
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              addr267:
                                                                              §§goto(addr269);
                                                                           }
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     addr238:
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               §§goto(addr261);
                                                            }
                                                            §§goto(addr238);
                                                         }
                                                         §§goto(addr83);
                                                      }
                                                      addr217:
                                                   }
                                                   §§goto(addr217);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(this.§ i§);
                                          }
                                       }
                                    }
                                    §§goto(addr267);
                                 }
                                 addr206:
                              }
                              §§goto(addr267);
                           }
                           §§goto(addr271);
                        }
                        §§goto(addr217);
                     }
                     §§goto(addr206);
                  }
               }
               else
               {
                  §§push(this.updateWithTime(_loc4_,true,param2,param3));
                  if(_loc6_ || this)
                  {
                     return §§pop();
                  }
               }
               §§goto(addr61);
            }
            §§goto(addr334);
         }
         §§goto(addr31);
      }
      
      private function §%!B§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_)
         {
            this.§[!-§.update(param1);
            while(true)
            {
               this.§4#§.§!!7§(param1,param2);
               loop1:
               while(true)
               {
                  this.§^!n§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§>k§);
                     loop3:
                     while(true)
                     {
                        §§push(§0;§.§1!s§);
                        addr259:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc6_)
                              {
                                 continue loop2;
                              }
                              addr289:
                              while(true)
                              {
                                 §§push(§0;§.§1!s§);
                                 loop15:
                                 while(true)
                                 {
                                    §§push(§§pop() / 2);
                                    addr251:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop17:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr253:
                                          addr242:
                                          while(true)
                                          {
                                             §§push(-Math.abs(this.§>k§ - _loc3_));
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   continue loop3;
                                                }
                                                continue loop15;
                                             }
                                             continue loop17;
                                          }
                                          _loc4_ = §§pop();
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                §§push(this.§[g§);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr161:
                                                      while(true)
                                                      {
                                                         §§push(this.§[g§);
                                                         addr163:
                                                         while(true)
                                                         {
                                                            §§pop().alpha = _loc4_;
                                                            addr165:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      addr161:
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr86);
                                                   }
                                                }
                                                §§goto(addr163);
                                             }
                                             else
                                             {
                                                §§goto(addr253);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              §§push(this.§[g§);
                              if(_loc6_ || param2)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr122);
                                 }
                                 addr86:
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§;!u§);
                                    if(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this.§;!u§);
                                             addr94:
                                             while(true)
                                             {
                                                if(!§§pop().§5!§(this.§1!>§,param1))
                                                {
                                                   continue loop1;
                                                }
                                             }
                                             loop13:
                                             while(true)
                                             {
                                                if(_loc5_ && _loc3_)
                                                {
                                                   continue loop11;
                                                }
                                                if(!(_loc5_ && param1))
                                                {
                                                   this.mLevelEngine.§,!Y§();
                                                   while(true)
                                                   {
                                                      if(_loc5_ && param1)
                                                      {
                                                         break loop13;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      this.§=§.update(param1);
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            break loop10;
                                                         }
                                                         addr122:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§push(this.§[g§);
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     §§pop().visible = false;
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        continue loop21;
                                                                     }
                                                                     addr137:
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr161);
                                                            }
                                                            §§goto(addr163);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            addr66:
                                                            while(true)
                                                            {
                                                               this.§1!>§.§5!u§(param1);
                                                               continue loop13;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr108:
                                                      }
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr137);
                                             }
                                             continue loop1;
                                          }
                                       }
                                       §§goto(addr66);
                                    }
                                    §§goto(addr94);
                                 }
                                 return;
                              }
                           }
                           §§goto(addr128);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr161);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.objects);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc3_ || _loc3_)
               {
                  §§push(1000);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr77:
                     §§push(1000);
                     if(!(_loc2_ && _loc2_))
                     {
                        addr86:
                        §§pop().§6s§(§§pop() * §§pop());
                        do
                        {
                           this.§1A§();
                        }
                        while(!(_loc3_ || _loc3_));
                        
                        if(_loc3_)
                        {
                           return;
                           addr36:
                        }
                        continue loop0;
                     }
                  }
               }
               addr100:
               while(true)
               {
                  §§pop().§?!k§(§§pop());
                  continue loop0;
               }
            }
         }
         §§goto(addr36);
      }
      
      public function §^!n§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§`!<§ = null;
         if(!_loc4_)
         {
            §§push(this.§ i§);
            §§push(this.§0!l§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(_loc5_ || this)
               {
                  §§goto(addr55);
               }
            }
            §§goto(addr59);
         }
         addr55:
         if(this.§&!`§ != null)
         {
            addr59:
            for each(_loc1_ in this.§&!`§)
            {
               if(!_loc4_)
               {
                  _loc1_.addTrail();
               }
            }
            if(_loc4_ && _loc1_)
            {
            }
            §§goto(addr101);
         }
         this.§0!l§ = this.§ i§;
         addr101:
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§`!<§ = null;
         if(!(_loc4_ && this))
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(!(_loc4_ && this))
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(_loc3_ || param1)
            {
               §§push(this.mPigsAnimationTimer1);
               if(!_loc4_)
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(this.§4#§);
                           if(_loc3_)
                           {
                              §§push(true);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          addr79:
                                          §§push(this.§4#§);
                                          if(_loc3_)
                                          {
                                             addr83:
                                             §§push(true);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop().§;l§(§§pop()));
                                                if(!_loc4_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      _loc2_.§?!M§.mTryToScream = §'!%§.§2<§;
                                                      if(_loc3_)
                                                      {
                                                         §§push(this);
                                                         §§push(500 + Math.random() * 1000);
                                                         if(_loc3_)
                                                         {
                                                            §§push(§§pop() + 4000 / (3 + this.§4#§.§"!i§()));
                                                         }
                                                         §§pop().mPigsAnimationTimer1 = §§pop();
                                                         addr133:
                                                         §§push(this);
                                                         §§push(this.mPigsAnimationTimer2);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().mPigsAnimationTimer2 = §§pop();
                                                         if(!_loc4_)
                                                         {
                                                            addr146:
                                                            if(this.mPigsAnimationTimer2 <= 0)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  addr154:
                                                                  §§push(this.§4#§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(true);
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        §§goto(addr221);
                                                                     }
                                                                     addr172:
                                                                     _loc2_ = §§pop().§;l§(§§pop());
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        _loc2_.§?!M§.mTryToBlink = §'!%§.§?r§;
                                                                        if(_loc4_ && this)
                                                                        {
                                                                        }
                                                                        §§goto(addr221);
                                                                     }
                                                                     §§push(this);
                                                                     §§push(250 + Math.random() * 500);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§pop() + 2000 / (3 + this.§4#§.§"!i§()));
                                                                     }
                                                                     §§pop().mPigsAnimationTimer2 = §§pop();
                                                                  }
                                                               }
                                                               §§goto(addr170);
                                                            }
                                                            §§goto(addr221);
                                                         }
                                                         §§goto(addr154);
                                                      }
                                                   }
                                                   §§goto(addr133);
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr221);
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr221);
                              }
                              addr221:
                              if(§§pop().isPigsAlive(§§pop()))
                              {
                                 addr170:
                                 §§push(this.§4#§);
                                 §§push(true);
                              }
                              return;
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr133);
                  }
               }
               §§goto(addr146);
            }
            §§goto(addr170);
         }
         §§goto(addr79);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            §§push(param6);
            if(_loc8_)
            {
               §§push(-9999);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(§1!e§.§3!4§);
                        if(_loc8_ || param1)
                        {
                           addr171:
                           §§push(int(§§pop()));
                           while(true)
                           {
                              param6 = §§pop();
                              addr172:
                              while(true)
                              {
                              }
                           }
                           addr171:
                        }
                        §§goto(addr171);
                     }
                     addr161:
                  }
                  while(true)
                  {
                     §;v§.addScore(param1,param2);
                     loop3:
                     while(true)
                     {
                        this.§-§.addScore(param1);
                        loop4:
                        while(true)
                        {
                           §§push(param3);
                           loop5:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc8_)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr130:
                                       while(true)
                                       {
                                          §§pop();
                                          addr131:
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(param1);
                                             if(!_loc7_)
                                             {
                                                §§push(0);
                                                if(!_loc8_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(§§pop() > §§pop());
                                             }
                                             §§goto(addr171);
                                          }
                                       }
                                       addr130:
                                    }
                                    while(true)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             loop9:
                                             for(; _loc8_; if(_loc7_ && param3)
                                             {
                                                continue;
                                             },§§goto(addr42),§§push(!§§pop()))
                                             {
                                                §§pop();
                                                loop10:
                                                for(; _loc8_ || this; if(!(_loc8_ || param1))
                                                {
                                                   continue;
                                                },if(!(_loc7_ && this))
                                                {
                                                   while(true)
                                                   {
                                                      this.§0§(param1.toString(),param4,param5,800,param6,0,0);
                                                      §§goto(addr94);
                                                   }
                                                   addr84:
                                                }
                                                else
                                                {
                                                   §§goto(addr131);
                                                })
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(this.§7!b§);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         continue loop9;
                                                      }
                                                      addr42:
                                                      if(!(_loc8_ || this))
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(_loc8_ || param3)
                                                      {
                                                         loop11:
                                                         while(§§pop())
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            addr94:
                                                            while(true)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  break loop11;
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         return;
                                                         addr56:
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr161);
                                                   }
                                                }
                                                §§goto(addr172);
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr56);
                                       }
                                       continue loop6;
                                    }
                                    continue loop3;
                                 }
                              }
                              §§goto(addr130);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr171);
         }
         §§goto(addr84);
      }
      
      public function §0§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param5);
            if(!_loc8_)
            {
               if(§§pop() == -9999)
               {
                  while(true)
                  {
                     §§push(§1!e§.§+!S§);
                     if(!(_loc8_ && param2))
                     {
                        while(true)
                        {
                           §§push(int(§§pop()));
                        }
                        addr80:
                     }
                     while(true)
                     {
                        param5 = §§pop();
                        while(true)
                        {
                           §§goto(addr24);
                        }
                     }
                  }
               }
               addr24:
               §§goto(addr65);
            }
            §§goto(addr80);
         }
         addr65:
         while(true)
         {
            this.§=§.§ K§(§1!e§.§%+§,§+F§.§5!2§,§1!e§.§>`§,param2,param3,param4,param1,param5,param6,param7);
            if(!_loc8_)
            {
               if(!_loc8_)
               {
                  break;
               }
               continue loop0;
            }
            continue loop1;
         }
      }
      
      public function §=!Z§(param1:§`!<§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§&!`§);
            while(true)
            {
               if(§§pop() == null)
               {
                  if(!_loc3_)
                  {
                     this.§&!`§ = new Array();
                     addr58:
                     while(true)
                     {
                     }
                     addr58:
                  }
                  §§goto(addr58);
               }
               while(true)
               {
                  §§push(this.§&!`§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().push(param1);
                  if(!_loc3_)
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!E§.useMightyEagle();
            while(true)
            {
               this.§4#§.§2G§();
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     this.§7!b§ = true;
                     if(_loc1_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §'Y§(param1:§`!<§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=§.§0#§(§+F§.§1^§);
            loop0:
            while(true)
            {
               §§push(this.§&!`§);
               if(!_loc2_)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     while(true)
                     {
                        §§push(this.§&!`§);
                        addr85:
                        while(true)
                        {
                           §§pop().splice(this.§&!`§.indexOf(param1),1);
                           addr91:
                           while(true)
                           {
                           }
                        }
                     }
                     addr83:
                  }
                  while(true)
                  {
                     §§push(this.§&!`§);
                     if(_loc3_)
                     {
                        if(§§pop().length == 0)
                        {
                           if(!(_loc2_ && this))
                           {
                              this.§&!`§ = null;
                           }
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr83);
                        }
                        break;
                     }
                  }
                  return;
               }
               §§goto(addr85);
            }
         }
         §§goto(addr91);
      }
      
      public function §%!1§(param1:§7!,§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§%c§ = this.§4#§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!_loc8_)
            {
               addr37:
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr42:
                  §§push(§>!A§.BIRD_LAUNCH_FORCE_GREEN);
                  if(!_loc8_)
                  {
                     addr63:
                     §§push(Number(§§pop()));
                     if(_loc7_)
                     {
                        addr62:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     if(_loc7_)
                     {
                        §§push(param1.§%! §);
                        if(!(_loc8_ && param2))
                        {
                           §§push(1);
                           loop0:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(this.§%c§);
                                    while(true)
                                    {
                                       §§pop().§+!4§(param1.§%! §);
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.§%c§);
                                          if(_loc8_ && this)
                                          {
                                             break;
                                          }
                                          §§pop().§?!M§.§]w§();
                                          loop4:
                                          while(true)
                                          {
                                             addr67:
                                             loop5:
                                             while(true)
                                             {
                                                §§push(param1.§5!6§);
                                                if(_loc7_)
                                                {
                                                   §§push(0);
                                                   if(_loc8_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(param1.§5!6§);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc7_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!_loc8_)
                                                                              {
                                                                                 break loop5;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr144:
                                                                           }
                                                                           continue loop3;
                                                                           break loop8;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     addr98:
                                                                  }
                                                                  break loop5;
                                                               }
                                                               break;
                                                            }
                                                            addr150:
                                                            §§push(§§pop() * param2);
                                                            if(_loc7_ || param2)
                                                            {
                                                               addr159:
                                                               §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                                               if(_loc7_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc5_:* = §§pop();
                                                            §§push(_loc4_);
                                                            if(_loc7_ || this)
                                                            {
                                                               §§push(§§pop() * param2);
                                                               if(_loc7_ || param3)
                                                               {
                                                                  §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                                  if(!(_loc8_ && param1))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                            var _loc6_:* = §§pop();
                                                            if(!(_loc8_ && param2))
                                                            {
                                                               this.§%c§.§&!-§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  this.camera.§>!E§(§#C§.§]S§);
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(this.§-i§);
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(this.§-i§);
                                                                                    break;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              addr251:
                                                                           }
                                                                           return;
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  §§pop().§%!1§(this.mLevelEngine.§?!Z§,param1.x,param1.y,param2,param3);
                                                               }
                                                            }
                                                            §§goto(addr251);
                                                            addr90:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr143:
                                                         }
                                                      }
                                                      §§goto(addr98);
                                                   }
                                                   §§goto(addr144);
                                                }
                                                break;
                                             }
                                             §§push(-§§pop());
                                             if(_loc8_)
                                             {
                                             }
                                             §§goto(addr150);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr67);
                           }
                        }
                        §§goto(addr159);
                     }
                     §§goto(addr90);
                  }
               }
               else
               {
                  §§push(§>!A§.BIRD_LAUNCH_FORCE);
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_ || param3)
                     {
                        §§goto(addr62);
                     }
                     §§goto(addr63);
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr42);
         }
         §§goto(addr37);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?#§ = true;
         }
      }
      
      private function §1A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§?#§);
            loop0:
            for(; §§pop(); if(!(_loc2_ || _loc1_))
            {
               continue;
            },if(§§pop())
            {
               if(!_loc1_)
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.§"!j§ = true;
                     §§goto(addr167);
                  }
                  §§goto(addr179);
               }
               §§goto(addr167);
            },§§goto(addr67))
            {
               while(true)
               {
                  this.§?#§ = false;
                  loop2:
                  while(true)
                  {
                     §§push(this.activeObject);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() is §3L§);
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || this)
                                    {
                                       §§push(this.activeObject);
                                       while(true)
                                       {
                                          §§push(§§pop().activateSpecialPower(this.§'h§));
                                          addr123:
                                          while(true)
                                          {
                                             if(_loc2_ || this)
                                             {
                                                if(!(_loc1_ && this))
                                                {
                                                   continue loop0;
                                                }
                                                continue loop4;
                                             }
                                             addr175:
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                          }
                                       }
                                       addr120:
                                    }
                                    else
                                    {
                                       addr167:
                                       while(true)
                                       {
                                          addr67:
                                          loop8:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§-i§);
                                                if(!(_loc1_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(!(_loc1_ && _loc2_))
                                                               {
                                                                  §§push(this.§-i§);
                                                                  break;
                                                               }
                                                               addr176:
                                                               while(true)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(this.activeObject);
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr120);
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue;
                                                      }
                                                      addr64:
                                                      if(_loc1_)
                                                      {
                                                         break loop0;
                                                      }
                                                      addr66:
                                                   }
                                                   return;
                                                }
                                                break;
                                             }
                                             §§pop().§ do§(this.mLevelEngine.§?!Z§);
                                             §§goto(addr64);
                                          }
                                       }
                                       addr167:
                                    }
                                    §§goto(addr176);
                                 }
                                 else
                                 {
                                    this.§4#§.§8L§();
                                 }
                                 §§goto(addr73);
                              }
                              addr109:
                           }
                           §§goto(addr175);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function §1W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4#§.§1W§();
         }
      }
      
      public function §?!s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4#§.§;!>§();
         }
      }
      
      public function §`!L§() : §=+§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§=+§ = new §=+§();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.§>!o§ = this.§?9§.§>!o§;
         }
         loop0:
         while(true)
         {
            _loc1_.§8!l§ = this.§?9§.§8!l§;
            while(true)
            {
               this.§1!>§.§ +§(_loc1_);
               while(_loc2_)
               {
                  continue loop0;
                  while(_loc2_ || _loc1_)
                  {
                     this.§!E§.§`!9§(_loc1_);
                     do
                     {
                        _loc1_.theme = this.§[!-§.§@!W§();
                     }
                     while(!(_loc2_ || this));
                     
                     if(_loc2_ || _loc1_)
                     {
                        return _loc1_;
                     }
                  }
               }
            }
         }
      }
      
      public function §&!W§() : int
      {
         return this.§?9§.§8!l§;
      }
      
      public function §"c§() : int
      {
         return this.§?9§.§>!o§;
      }
      
      public function §-!9§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?9§.§8!l§ = param1;
         }
      }
      
      public function § [§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?9§.§>!o§ = param1;
         }
      }
      
      public function §5!]§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§#!6§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr87:
                     this.§#!6§.§"o§(param1,param2);
                     addr90:
                     while(true)
                     {
                     }
                     addr90:
                  }
                  §§goto(addr90);
               }
               while(true)
               {
                  §§push(this.§1!>§);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && this))
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(this.§1!>§);
                              break;
                           }
                           continue;
                        }
                        addr72:
                     }
                     return;
                  }
                  break;
               }
               §§pop().§5!u§(0);
               §§goto(addr72);
            }
         }
         §§goto(addr87);
      }
      
      public function get §7!^§() : §=+§
      {
         return this.§?9§;
      }
      
      public function get §'h§() : §=[§
      {
         return this.§4#§;
      }
      
      protected function get starling() : §^b§
      {
         return this.§%!O§;
      }
      
      public function get §5!T§() : int
      {
         return §false§;
      }
   }
}
