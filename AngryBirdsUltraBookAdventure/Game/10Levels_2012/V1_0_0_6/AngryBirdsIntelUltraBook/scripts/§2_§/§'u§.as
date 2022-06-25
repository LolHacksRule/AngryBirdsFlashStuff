package §2_§
{
   import §!!K§.§else§;
   import §"!,§.§9!B§;
   import §"!,§.§^z§;
   import §"x§.§-8§;
   import §,!!§.§#!Y§;
   import §-%§.§#!J§;
   import §3!G§.§ y§;
   import §3!G§.§'Z§;
   import §3!G§.§?c§;
   import §3!G§.LevelManager;
   import §4!O§.;
   import §5!k§.§+!n§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §;%§.b2Vec2;
   import §<x§.§-^§;
   import §=b§.§ 6§;
   import §=b§.§0d§;
   import §=b§.§>!e§;
   import §=b§.§`!_§;
   import §>! §.§^!c§;
   import §@^§.§"i§;
   import §@^§.§#<§;
   import §]+§.§=E§;
   import §]o§.§"!Z§;
   import §^!Y§.§'R§;
   import §^!Y§.§]e§;
   import §^!Y§.§else §;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'u§
   {
      
      private static const §3!b§:int = 20;
      
      public static const §?!8§:Number;
      
      public static const §4o§:Number;
      
      public static const §18§:Number = 0.05;
      
      public static const §-q§:Number;
      
      public static const §?!!§:Number;
      
      public static const §@`§:§=E§;
      
      protected static var §%1§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §'u§))
         {
            §3!b§ = 20;
            loop0:
            while(true)
            {
               §?!8§ = §^!c§.§"!c§;
               while(true)
               {
                  §4o§ = §^!c§.§%g§;
                  loop2:
                  for(; _loc2_ || _loc2_; loop4:
                  while(!_loc1_)
                  {
                     §§push(§§findproperty(§?!!§));
                     §§push(§?!8§);
                     if(_loc2_ || §'u§)
                     {
                        §§push(§§pop() * §18§);
                     }
                     §§pop().§?!!§ = §§pop();
                     loop5:
                     while(!_loc1_)
                     {
                        while(true)
                        {
                           §@`§ = new §=E§(13 - 3);
                           while(_loc2_ || §'u§)
                           {
                              §%1§ = § y§.§!n§;
                              if(!(_loc1_ && §'u§))
                              {
                                 if(_loc1_ && _loc1_)
                                 {
                                    continue loop4;
                                 }
                                 if(_loc2_)
                                 {
                                    §§goto(addr50);
                                 }
                                 else
                                 {
                                    §§goto(addr119);
                                 }
                              }
                           }
                           continue loop5;
                        }
                        return;
                     }
                     continue loop0;
                  })
                  {
                     §18§ = 1 / 20;
                     while(true)
                     {
                        §-q§ = §^!c§.§%g§ * §18§;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      protected var §[!E§:§>!e§;
      
      private var §3!S§:§`!_§;
      
      private var §1r§:Array = null;
      
      protected var §%'§:§-^§;
      
      public var mLevelEngine:§%!;§;
      
      protected var §--§:§'r§;
      
      protected var §-M§:§#!Y§;
      
      protected var §;!,§:§8![§;
      
      protected var §`s§:§^z§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §>Y§:Boolean = false;
      
      protected var §8o§:Boolean = false;
      
      protected var §'8§:Boolean = false;
      
      public var §]!v§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §14§:Number;
      
      public var §[!t§:Number;
      
      private var §2!!§:Number;
      
      public var §?b§:§?c§;
      
      public var §6u§:Boolean = false;
      
      private var §^V§:§;!b§;
      
      private var §7[§:Sprite;
      
      protected var §0!l§:§ y§;
      
      protected var §0!@§:§#!J§ = null;
      
      private var §0v§:EventDispatcher;
      
      private var §'4§:Array;
      
      private var §@V§:Array;
      
      protected var §3!<§:§else§;
      
      private var §0!g§:§"!Z§;
      
      protected var §+]§:§'R§;
      
      protected var §5P§:§else §;
      
      private var §;-§:§]e§;
      
      private var §9n§:§]e§;
      
      private var §&!M§:§]e§;
      
      private var §8!x§:Stage;
      
      private var §=M§:§-!B§;
      
      protected var §9U§:§+!n§;
      
      protected var §'§:§+!n§;
      
      protected var §<B§:Number = 0.0;
      
      protected var §4u§:String;
      
      private var §@!;§:Boolean;
      
      protected var §>!5§:Boolean;
      
      protected var §^!3§:uint = 1.417339207E9;
      
      public var §=!J§:Boolean;
      
      public function §'u§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            this.§@V§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§0v§ = new EventDispatcher();
                  while(true)
                  {
                     this.§?b§ = new §?c§();
                     addr106:
                     while(true)
                     {
                        this.§8!x§ = param1;
                        continue loop1;
                     }
                     loop10:
                     while(!(_loc3_ && _loc2_))
                     {
                        this.§&!M§ = this.initCutSceneManager();
                        if(!_loc4_)
                        {
                           continue;
                        }
                        addr32:
                        if(!(_loc3_ && param1))
                        {
                           if(_loc4_)
                           {
                              addr41:
                              if(!(_loc3_ && param1))
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 if(false)
                                 {
                                    addr70:
                                    while(true)
                                    {
                                       this.§9n§ = this.initThemeSoundsManager();
                                       continue loop10;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr52);
                                       §§goto(addr32);
                                    }
                                    addr52:
                                    addr70:
                                 }
                                 else
                                 {
                                    var _loc2_:Stage3D = param1.stage3Ds[0];
                                    if(_loc4_ || param1)
                                    {
                                       this.§3!<§ = new §else§(§;!b§,param1,new Rectangle(0,0,§^!c§.§"!c§,§^!c§.§%g§),_loc2_);
                                       §^!c§.§2!w§.addEventListener(Event.ENTER_FRAME,this.§3!<§.onEnterFrame);
                                       _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§3!r§,false,0,true);
                                       addr198:
                                       this.§3!<§.§catch§ = false;
                                       addr199:
                                       addr232:
                                       addr222:
                                       addr197:
                                       if(!_loc3_)
                                       {
                                          addr183:
                                          §§push(this.§3!<§);
                                          if(!_loc3_)
                                          {
                                             §§push(false);
                                             if(!_loc3_)
                                             {
                                                §§pop().enableErrorChecking = §§pop();
                                                addr189:
                                                if(_loc4_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      addr175:
                                                      this.§3!<§.§ do§ = 2;
                                                      addr177:
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.§3!<§);
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§pop().§2!§();
                                                               if(_loc4_)
                                                               {
                                                                  if(!(_loc4_ || param1))
                                                                  {
                                                                     §§goto(addr189);
                                                                  }
                                                                  return;
                                                                  addr171:
                                                               }
                                                               §§goto(addr177);
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                         §§goto(addr175);
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr197);
                                       }
                                       addr248:
                                       §§goto(addr248);
                                    }
                                    §§goto(addr171);
                                 }
                              }
                              else
                              {
                                 while(_loc4_)
                                 {
                                    this.§5P§ = this.initAnimationManager(this.§+]§);
                                    §§goto(addr41);
                                 }
                                 §§goto(addr106);
                                 addr86:
                              }
                              §§goto(addr70);
                           }
                           while(_loc4_)
                           {
                              while(true)
                              {
                                 this.§;-§ = this.initThemeGraphicsManager();
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr70);
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public static function §#$§(param1:§`!_§, param2:§`!_§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§7E§);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() - param2.§7E§);
            if(_loc6_ || param1)
            {
               addr56:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§1u§);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() - param2.§1u§);
               if(_loc6_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return §@p§(_loc3_,_loc4_);
         }
         §§goto(addr56);
      }
      
      public static function §@p§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§7[§);
            loop0:
            do
            {
               §§push(!§§pop());
               if(_loc1_ || this)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr93:
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(this.§#!C§));
                           if(!(_loc2_ && this))
                           {
                              while(§§pop())
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    this.§7[§ = this.§^V§.§ !J§;
                                 }
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                              addr53:
                           }
                        }
                     }
                     addr92:
                  }
                  §§goto(addr53);
               }
               §§goto(addr92);
            }
            while(§§push(this.§7[§), !_loc1_);
            
            return §§pop();
         }
         §§goto(addr93);
      }
      
      public function get §#!C§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§^V§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr25:
                  while(true)
                  {
                     §§push(this.§^V§);
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
               }
               if(!(_loc1_ && _loc1_))
               {
                  this.§^V§ = this.§3!<§.§]'§ as §;!b§;
               }
               while(true)
               {
                  §§push(this.§^V§);
                  continue loop0;
                  addr63:
                  §§pop().§]!F§ = false;
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§goto(addr25);
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private function get §5!,§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§#!C§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§push(this.§#!C§);
                  }
                  else
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr51);
            }
            return (§§pop() as §;!b§).§5!,§;
         }
         addr51:
         return null;
      }
      
      public function get animationManager() : §else §
      {
         return this.§5P§;
      }
      
      public function get textureManager() : §'R§
      {
         return this.§+]§;
      }
      
      public function get camera() : §#!Y§
      {
         return this.§-M§;
      }
      
      public function get objects() : §>!e§
      {
         return this.§[!E§;
      }
      
      public function get particles() : §^z§
      {
         return this.§`s§;
      }
      
      public function get background() : §-^§
      {
         return this.§%'§;
      }
      
      public function get slingshot() : §8![§
      {
         return this.§;!,§;
      }
      
      public function get activeObject() : §`!_§
      {
         return this.§3!S§;
      }
      
      public function get §!!"§() : §'r§
      {
         return this.§--§;
      }
      
      public function get stage() : Stage
      {
         return this.§8!x§;
      }
      
      public function get §&c§() : §]e§
      {
         return this.§&!M§;
      }
      
      protected function get §"#§() : §]e§
      {
         return this.§;-§;
      }
      
      public function set activeObject(param1:§`!_§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3!S§ = param1;
         }
      }
      
      public function set §,V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>!5§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§0!g§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§0!g§);
                     addr239:
                     while(true)
                     {
                        §§pop().dispose();
                        addr240:
                        while(true)
                        {
                        }
                     }
                     addr67:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
               }
               loop1:
               while(true)
               {
                  §§push(this.§+]§);
                  if(_loc2_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§+]§);
                           addr230:
                           while(true)
                           {
                              §§pop().dispose();
                              addr231:
                              while(true)
                              {
                              }
                           }
                           loop15:
                           while(true)
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              §§push(this.§&!M§);
                              if(_loc2_)
                              {
                                 §§push(§§pop().textureManager);
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr95:
                                       §§push(Boolean(§§pop()));
                                       if(_loc2_ || this)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr185:
                                                loop14:
                                                while(true)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   §§push(this.§&!M§);
                                                   if(!(_loc1_ && this))
                                                   {
                                                      §§push(§§pop().textureManager);
                                                      break loop15;
                                                   }
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc1_)
                                                      {
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop13;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     if(_loc1_ && this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§pop();
                                                                     continue loop15;
                                                                  }
                                                                  addr184:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                     addr129:
                                                                     while(true)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  break loop12;
                                                               }
                                                               addr213:
                                                               addr151:
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr216:
                                                            while(true)
                                                            {
                                                               §§push(this.§;-§);
                                                               if(!(_loc1_ && this))
                                                               {
                                                                  addr190:
                                                                  §§push(§§pop().textureManager);
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr184);
                                                                     }
                                                                     addr183:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop().dispose();
                                                                     addr191:
                                                                     while(!(_loc1_ && this))
                                                                     {
                                                                        §§goto(addr129);
                                                                     }
                                                                     §§goto(addr231);
                                                                  }
                                                                  addr190:
                                                               }
                                                               addr187:
                                                               addr212:
                                                               while(_loc2_)
                                                               {
                                                                  §§goto(addr190);
                                                                  §§push(§§pop().textureManager);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr213);
                                                               }
                                                            }
                                                         }
                                                         addr215:
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr215);
                                                      }
                                                      §§goto(addr183);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr187);
                                                }
                                                addr115:
                                                addr185:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§3!<§);
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            if(!(_loc1_ && _loc1_))
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  addr55:
                                                                  this.§3!<§.dispose();
                                                                  addr56:
                                                                  if(_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr115);
                                                         }
                                                      }
                                                      §§goto(addr56);
                                                   }
                                                   addr20:
                                                   return;
                                                }
                                                §§goto(addr55);
                                             }
                                             if(!_loc1_)
                                             {
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §§goto(addr67);
                                                }
                                                else
                                                {
                                                   §§goto(addr185);
                                                }
                                             }
                                             §§goto(addr191);
                                          }
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr190);
                                 }
                                 break;
                              }
                              §§goto(addr119);
                           }
                           §§pop().dispose();
                           §§goto(addr128);
                        }
                     }
                     while(true)
                     {
                        §§goto(addr212);
                        §§goto(addr231);
                     }
                  }
                  §§goto(addr230);
               }
            }
            §§goto(addr239);
         }
         §§goto(addr185);
      }
      
      protected function initThemeGraphicsManager() : §]e§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §]e§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §]e§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§'R§) : §else §
      {
         return new §else §(param1);
      }
      
      public function §@!v§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(§else§.§^!A§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(!param1)
               {
                  §§push(§else§.§^!A§);
                  loop2:
                  while(!_loc3_)
                  {
                     §§pop().stop();
                     while(true)
                     {
                        if(!(_loc2_ || param1))
                        {
                           break loop1;
                        }
                        if(_loc2_)
                        {
                           §§push(§else§.§^!A§);
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop2;
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §§pop().color = 0;
                           if(_loc3_)
                           {
                              §§goto(addr75);
                           }
                           if(_loc2_ || _loc3_)
                           {
                              break loop0;
                           }
                           §§goto(addr93);
                           continue loop2;
                        }
                        continue loop1;
                     }
                     break loop0;
                  }
                  §§pop().start();
                  §§goto(addr93);
               }
               §§goto(addr92);
               §§push(§else§.§^!A§);
            }
            return;
         }
         §§goto(addr90);
      }
      
      public function §"!B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.sprite);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr30);
            }
            §§pop().visible = param1;
         }
         addr30:
         if(_loc3_)
         {
            §§push(this.sprite);
         }
      }
      
      public function setController(param1:§#!J§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§0!@§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  if(_loc3_)
                  {
                     while(true)
                     {
                        §§push(this.§0!@§);
                        addr95:
                        while(true)
                        {
                           §§pop().removeEventListeners();
                        }
                     }
                     addr93:
                  }
                  while(true)
                  {
                  }
                  addr96:
               }
               while(true)
               {
                  this.§0!@§ = param1;
                  while(this.mReadyToRun)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     addr81:
                     if(_loc2_ && param1)
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        §§push(this.§0!@§);
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr96);
                  }
                  return;
               }
            }
         }
         §§goto(addr93);
      }
      
      public function §?D§() : §+!n§
      {
         return this.§9U§;
      }
      
      public function §-f§(param1:§"!Z§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            this.§0!g§ = param1;
         }
         §§push(this.§0!g§.§]t§);
         if(!(_loc7_ && param3))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               if(!_loc7_)
               {
                  if(param3 != null)
                  {
                     loop3:
                     while(true)
                     {
                        this.§0v§.addEventListener(Event.INIT,param3);
                        loop4:
                        while(true)
                        {
                           this.§@V§.push(param3);
                           addr79:
                           addr93:
                           while(true)
                           {
                              if(_loc6_ || param3)
                              {
                                 if(_loc6_ || this)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           if(_loc7_ && param2)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr120:
                  }
                  while(true)
                  {
                     if(this.§>!`§(param2))
                     {
                        if(!_loc7_)
                        {
                           if(_loc6_)
                           {
                              if(!(_loc6_ || param2))
                              {
                                 _loc5_++;
                                 break;
                                 addr139:
                              }
                              this.§7!-§();
                           }
                           else
                           {
                              §§goto(addr79);
                           }
                        }
                     }
                     return;
                     §§goto(addr93);
                  }
                  continue;
               }
               §§goto(addr120);
            }
            else
            {
               this.§+]§.§8!k§(this.§0!g§.§0!>§(_loc5_));
            }
            §§goto(addr139);
         }
      }
      
      private function §>!`§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            §§push(this.§+]§);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop().§!>§());
               loop0:
               do
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        this.§'4§ = param1.concat();
                        if(!_loc4_)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                                 continue;
                              }
                              §§goto(addr178);
                           }
                           break;
                        }
                        if(_loc4_)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(false);
                              if(_loc4_)
                              {
                                 return §§pop();
                              }
                              continue loop0;
                           }
                           addr173:
                           addr171:
                           §§push(this.§+]§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§7<§);
                              addr174:
                              while(true)
                              {
                                 §§push(1000);
                                 addr175:
                                 while(true)
                                 {
                                    §§push(§§pop() / §§pop());
                                    addr176:
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                       addr177:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr159);
                        §§goto(addr178);
                     }
                     while(true)
                     {
                        if(_loc5_ && _loc2_)
                        {
                           §§goto(addr118);
                        }
                        §§goto(addr68);
                     }
                  }
                  §§goto(addr171);
               }
               while(!_loc4_);
               
               return §§pop();
            }
            §§goto(addr173);
         }
         §§goto(addr178);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§5P§.initializeAnimations(param1);
         }
      }
      
      private function §3!r§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§+]§.§ !f§();
            loop0:
            while(true)
            {
               §§push(this.§"#§);
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
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§"#§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop().textureManager);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr333:
                                       while(true)
                                       {
                                          loop41:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr335:
                                                loop42:
                                                while(true)
                                                {
                                                   §§push(this.§"#§);
                                                   addr337:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().textureManager);
                                                      addr338:
                                                      while(true)
                                                      {
                                                         §§pop().§ !f§();
                                                         addr339:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      continue loop42;
                                                   }
                                                }
                                                addr335:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§&c§);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop12:
                                                   while(_loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      loop13:
                                                      for(; _loc3_ || param1; §§push(§§pop()),if(_loc2_ && param1)
                                                      {
                                                         continue;
                                                      },if(§§pop())
                                                      {
                                                         §§goto(addr208);
                                                      },§§goto(addr146))
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop38:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(this.§'4§)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§>!`§(this.§'4§);
                                                                           addr247:
                                                                           while(true)
                                                                           {
                                                                              this.§'4§ = null;
                                                                              addr236:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 this.§7!-§();
                                                                                 while(true)
                                                                                 {
                                                                                    addr230:
                                                                                    if(_loc2_ && this)
                                                                                    {
                                                                                       §§goto(addr335);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr231:
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr243:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§0!@§);
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() == null);
                                                                           if(!(_loc2_ && _loc3_))
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(!_loc3_)
                                                                              {
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(_loc2_ && _loc3_)
                                                                                       {
                                                                                          continue loop41;
                                                                                       }
                                                                                       §§pop();
                                                                                       loop24:
                                                                                       for(; !_loc2_; while(true)
                                                                                       {
                                                                                          if(!(_loc3_ || this))
                                                                                          {
                                                                                             continue loop24;
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§goto(addr135);
                                                                                          }
                                                                                          §§goto(addr236);
                                                                                       })
                                                                                       {
                                                                                          §§push(this.mReadyToRun);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                while(!_loc2_)
                                                                                                {
                                                                                                   continue loop38;
                                                                                                }
                                                                                                continue loop12;
                                                                                                addr276:
                                                                                             }
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             continue loop23;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop25:
                                                                                                while(!_loc2_)
                                                                                                {
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(this.§0!@§);
                                                                                                      if(_loc3_ || this)
                                                                                                      {
                                                                                                         §§pop().addEventListeners();
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§;-§);
                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§&!M§);
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 continue loop26;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr91);
                                                                                                                           }
                                                                                                                           §§goto(addr25);
                                                                                                                           addr135:
                                                                                                                        }
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§;-§);
                                                                                                                        addr82:
                                                                                                                        if(_loc2_ && param1)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(this.§&!M§);
                                                                                                                        loop33:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().textureManager);
                                                                                                                           addr92:
                                                                                                                           loop32:
                                                                                                                           while(_loc3_ || this)
                                                                                                                           {
                                                                                                                              §§pop().§ !f§();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc2_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(this.§&!M§);
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             §§pop().§!>§();
                                                                                                                                             if(!(_loc2_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                addr42:
                                                                                                                                                if(_loc3_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr25:
                                                                                                                                                   return;
                                                                                                                                                }
                                                                                                                                                continue loop26;
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                       addr308:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§&c§);
                                                                                                                                          if(!(_loc2_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc2_ && param1)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop().textureManager);
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                break loop32;
                                                                                                                                             }
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                          addr282:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().textureManager);
                                                                                                                                             break loop32;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                              §§goto(addr236);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().§ !f§();
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr91:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().§!>§();
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr224);
                                                                                                            }
                                                                                                            §§goto(addr230);
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   §§goto(addr339);
                                                                                                }
                                                                                                §§goto(addr247);
                                                                                             }
                                                                                             §§goto(addr112);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr282);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                       }
                                                                                       addr307:
                                                                                    }
                                                                                    §§goto(addr308);
                                                                                 }
                                                                                 §§goto(addr335);
                                                                                 addr208:
                                                                              }
                                                                           }
                                                                           if(_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        continue loop2;
                                                                        §§goto(addr231);
                                                                     }
                                                                  }
                                                                  addr239:
                                                               }
                                                               §§goto(addr280);
                                                            }
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr337);
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr333);
                     }
                  }
               }
            }
         }
         §§goto(addr247);
      }
      
      private function §7!-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§0v§.dispatchEvent(new Event(Event.INIT));
         }
         do
         {
            this.§9!L§();
         }
         while(!_loc2_);
         
      }
      
      private function §9!L§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§@V§)
         {
            if(_loc5_)
            {
               this.§0v§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(_loc5_ || _loc1_)
         {
            this.§@V§ = [];
         }
      }
      
      public function init(param1:§ y§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.mReadyToRun);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.clearLevel();
                     addr301:
                     while(true)
                     {
                     }
                  }
                  addr299:
               }
               while(true)
               {
                  this.§--§ = new §'r§(this,param1);
                  loop4:
                  while(true)
                  {
                     this.§-M§ = this.§null§(param1);
                     loop5:
                     while(true)
                     {
                        this.§14§ = 0;
                        loop6:
                        while(true)
                        {
                           this.§[!t§ = 0;
                           loop7:
                           while(true)
                           {
                              this.§2!!§ = 0;
                              while(_loc2_ || _loc2_)
                              {
                                 this.§@!;§ = false;
                                 while(_loc2_)
                                 {
                                 }
                                 continue loop6;
                                 loop12:
                                 for(; !(_loc3_ && this); if(_loc2_ || param1)
                                 {
                                    this.§8o§ = this.§;!M§(param1.theme);
                                    continue loop4;
                                 })
                                 {
                                    this.mPigsAnimationTimer1 = 2000;
                                    loop13:
                                    while(true)
                                    {
                                       this.mPigsAnimationTimer2 = 1000;
                                       addr219:
                                       addr180:
                                       while(true)
                                       {
                                          §%1§ = param1.theme;
                                          addr200:
                                          addr241:
                                          while(!(_loc3_ && _loc3_))
                                          {
                                             continue loop5;
                                          }
                                          while(true)
                                          {
                                             this.§>Y§ = false;
                                             continue loop12;
                                             §§goto(addr200);
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc2_ || _loc2_)
                                          {
                                             continue loop12;
                                          }
                                          continue loop13;
                                          addr72:
                                          if(!(_loc2_ || this))
                                          {
                                             continue;
                                          }
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop7;
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr200);
                                       }
                                       continue loop12;
                                    }
                                 }
                              }
                              §§goto(addr301);
                           }
                        }
                     }
                     while(!(_loc3_ && _loc3_))
                     {
                        this.§'8§ = this.§7!Q§(param1.theme);
                        §§goto(addr160);
                     }
                  }
               }
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
               §§goto(addr120);
            }
         }
         while(true)
         {
            this.mReadyToRun = false;
            §§goto(addr241);
         }
      }
      
      protected function §^;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§9U§ = new §+!n§(LevelManager.§%n§);
         }
      }
      
      protected function §;!M§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§;-§)
            {
               if(_loc2_ || param1)
               {
                  §§push(false);
                  if(!(_loc3_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr47:
                  return true;
               }
               return §§pop();
            }
         }
         §§goto(addr47);
      }
      
      protected function §7!Q§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§#<§ = null;
         if(_loc4_ || _loc3_)
         {
            if(this.§9n§)
            {
               addr30:
               _loc2_ = §"i§.§<!F§(param1);
               if(_loc4_)
               {
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                     }
                  }
                  §§goto(addr98);
               }
               §§push(Boolean(_loc2_.§8%§));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        addr75:
                        §§pop();
                        if(_loc4_ || this)
                        {
                           §§push(this.§9n§.§7!6§(_loc2_.§8%§));
                           if(!_loc3_)
                           {
                              addr90:
                              §§push(!§§pop());
                              if(!_loc3_)
                              {
                                 §§goto(addr93);
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr90);
                  }
                  addr93:
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr96:
                        §§push(false);
                     }
                     else
                     {
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr98);
               }
               §§goto(addr75);
            }
            addr98:
            return true;
         }
         §§goto(addr30);
      }
      
      protected function §'7§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§#<§ = null;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§;-§);
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
                              §§push(this.§;!M§(param1));
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr250:
                                 do
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 while(!(_loc4_ && _loc3_));
                                 
                                 continue loop1;
                                 addr166:
                                 if(!(_loc4_ && this))
                                 {
                                    §§pop();
                                    loop22:
                                    while(true)
                                    {
                                       §§push(this.§7!Q§(param1));
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(!§§pop());
                                                while(true)
                                                {
                                                   addr128:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         addr307:
                                                         return;
                                                      }
                                                      loop23:
                                                      while(!(_loc4_ && this))
                                                      {
                                                         §§push(this.§9n§);
                                                         loop24:
                                                         while(true)
                                                         {
                                                            §§pop().removeEventListener(Event.COMPLETE,this.§true §);
                                                            loop25:
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(this.§9n§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().removeEventListener(Event.CANCEL,this.§5!3§);
                                                                     continue loop22;
                                                                  }
                                                                  addr91:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§;-§);
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        §§pop().removeEventListener(Event.COMPLETE,this.§8!0§);
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§;-§);
                                                                           while(true)
                                                                           {
                                                                              §§pop().removeEventListener(Event.CANCEL,this.§0'§);
                                                                              addr244:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§;-§);
                                                                                 continue loop0;
                                                                              }
                                                                              addr187:
                                                                              if(_loc4_ && this)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§pop().§]6§(param1);
                                                                              while(_loc3_ || _loc2_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§9n§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       break loop22;
                                                                                       addr36:
                                                                                       if(!(_loc3_ || _loc3_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§pop().addEventListener(Event.CANCEL,this.§5!3§);
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          if(!(_loc3_ || param1))
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§9n§);
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().addEventListener(Event.COMPLETE,this.§true §);
                                                                                                   addr74:
                                                                                                   while(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§;-§);
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               while(_loc3_ || param1)
                                                                                                               {
                                                                                                                  §§pop().addEventListener(Event.CANCEL,this.§0'§);
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               continue loop9;
                                                                                                               addr207:
                                                                                                            }
                                                                                                            if(!(_loc3_ || param1))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr187);
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§push(this.§9n§);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            continue loop24;
                                                                                                         }
                                                                                                         §§goto(addr36);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr91);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop25;
                                                                                                }
                                                                                             }
                                                                                             addr66:
                                                                                          }
                                                                                          _loc2_ = §"i§.§<!F§(param1);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                {
                                                                                                   addr302:
                                                                                                   this.§9n§.§]6§(_loc2_.§8%§);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr307);
                                                                                          }
                                                                                          §§goto(addr302);
                                                                                       }
                                                                                       §§goto(addr74);
                                                                                    }
                                                                                 }
                                                                                 if(_loc4_ && param1)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr66);
                                                                                 }
                                                                              }
                                                                              §§goto(addr244);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr261:
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr207);
                                                         §§goto(addr129);
                                                      }
                                                      addr129:
                                                      addr235:
                                                   }
                                                }
                                                addr127:
                                             }
                                             break;
                                          }
                                          while(!_loc4_)
                                          {
                                             §§goto(addr166);
                                          }
                                          §§goto(addr250);
                                          addr164:
                                       }
                                       §§goto(addr128);
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          §§goto(addr164);
                                       }
                                       §§goto(addr127);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr156);
                        }
                        §§goto(addr261);
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      private function §8!0§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§;-§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§8!0§);
               while(true)
               {
                  §§push(this.§;-§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§0'§);
                  loop2:
                  for(; _loc2_ || _loc3_; if(!(_loc2_ || param1))
                  {
                     continue;
                  },this.initialize(this.§0!l§),§§goto(addr77))
                  {
                     this.§8o§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§8o§);
                        addr81:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr82:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(_loc3_ && _loc2_)
                                    {
                                       break;
                                    }
                                    addr77:
                                    addr77:
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 return;
                                 addr40:
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
            }
         }
         §§goto(addr77);
      }
      
      private function §0'§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§;-§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§8!0§);
               while(true)
               {
                  §§push(this.§;-§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§0'§);
                  while(!(_loc3_ && _loc2_))
                  {
                     this.§>Y§ = true;
                     if(!_loc3_)
                     {
                        return;
                        addr54:
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §true §(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§;-§);
            loop0:
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§true §);
               addr134:
               while(true)
               {
                  §§push(this.§;-§);
                  if(!_loc2_)
                  {
                     §§pop().removeEventListener(Event.CANCEL,this.§5!3§);
                     while(_loc3_ || param1)
                     {
                        this.§'8§ = true;
                        loop3:
                        while(true)
                        {
                           §§push(this.§8o§);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_ || param1)
                                          {
                                             continue loop3;
                                          }
                                          addr76:
                                          if(_loc2_ && _loc2_)
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§push(this.§'8§);
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                if(!_loc2_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   break;
                                                }
                                                addr92:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop6;
                                                }
                                             }
                                             continue;
                                          }
                                       }
                                       return;
                                    }
                                    continue;
                                    addr39:
                                 }
                              }
                              §§goto(addr92);
                           }
                        }
                        if(!(_loc3_ || param1))
                        {
                           continue;
                        }
                        this.initialize(this.§0!l§);
                        §§goto(addr76);
                     }
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr134);
      }
      
      private function §5!3§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§;-§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§true §);
               while(true)
               {
                  §§push(this.§;-§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§5!3§);
                  loop2:
                  while(true)
                  {
                     this.§'8§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§8o§);
                        if(!_loc3_)
                        {
                           §§push(Boolean(§§pop()));
                        }
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
                                    §§push(this.§'8§);
                                    if(!_loc3_)
                                    {
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue loop5;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          break loop6;
                                       }
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          continue loop2;
                                       }
                                       addr70:
                                       if(_loc2_ || this)
                                       {
                                          if(!_loc3_)
                                          {
                                             addr79:
                                             break loop6;
                                          }
                                          continue loop3;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 return;
                              }
                           }
                           §§goto(addr38);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function get backgroundTextureManager() : §'R§
      {
         return this.§+]§;
      }
      
      protected function initialize(param1:§ y§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§>!5§ = false;
            loop0:
            while(true)
            {
               this.§=!J§ = false;
               loop1:
               while(true)
               {
                  §§push(§else§.§]!#§);
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(§else§.§]!#§);
                           addr202:
                           while(true)
                           {
                              §§pop().speed = 1;
                              addr204:
                              while(true)
                              {
                              }
                           }
                           addr171:
                           loop4:
                           while(true)
                           {
                              if(_loc2_ || this)
                              {
                                 §§push(this);
                                 §§push(this);
                                 §§push(param1.theme);
                                 §§push(this.§--§.§%!^§);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() / §18§);
                                 }
                                 §§pop().§%'§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§-M§.§#!m§());
                                 while(!(_loc3_ && _loc2_))
                                 {
                                    this.§%'§.§9!p§(§^!c§.§ !?§());
                                    loop6:
                                    while(_loc2_)
                                    {
                                       this.§[!E§ = this.initLevelObjectManager(param1);
                                       while(true)
                                       {
                                          this.§;!,§ = this.initLevelSlingshot(param1);
                                          loop8:
                                          for(; !_loc3_; if(!(_loc2_ || param1))
                                          {
                                             continue;
                                          },§§goto(addr61))
                                          {
                                             this.§`s§ = this.§[!8§(this.§5P§,this.§+]§);
                                             while(true)
                                             {
                                                this.§-M§.init();
                                                addr90:
                                                while(!_loc3_)
                                                {
                                                   this.§>!f§();
                                                   while(true)
                                                   {
                                                      this.§<#§();
                                                      do
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               break loop4;
                                                            }
                                                            continue loop1;
                                                         }
                                                         continue loop6;
                                                      }
                                                      while(_loc3_);
                                                      
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         continue loop8;
                                                      }
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                                 continue;
                                 addr157:
                              }
                              continue loop2;
                           }
                           §§goto(addr204);
                        }
                     }
                     while(true)
                     {
                        this.mLevelEngine = new §%!;§(this);
                        §§goto(addr171);
                        §§goto(addr204);
                     }
                  }
                  §§goto(addr202);
               }
            }
         }
         §§goto(addr85);
      }
      
      protected function §<#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§4u§)
            {
               while(true)
               {
                  this.§'§ = §+!n§.initialize(this.§4u§);
                  loop1:
                  while(true)
                  {
                     §§push(this.§'§);
                     loop2:
                     while(true)
                     {
                        §§pop().speed = 1;
                        addr99:
                        while(!_loc1_)
                        {
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §§goto(addr71);
               }
            }
            return;
         }
         §§goto(addr101);
      }
      
      public function §8!2§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§4u§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§'§ == null);
         if(_loc1_ || this)
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
            §§push(this.§'§);
            while(§§pop())
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(param1)
                  {
                     addr93:
                     §§push(this.§'§);
                  }
                  else
                  {
                     §§push(this.§'§);
                     if(!(_loc3_ && param1))
                     {
                        if(_loc3_ && _loc3_)
                        {
                           continue;
                        }
                        §§pop().speed = Math.max(this.§'§.speed / 1.25,Math.pow(1 / 1.25,10));
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              addr80:
                              break;
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr107);
                        continue;
                     }
                  }
                  §§pop().speed = Math.min(this.§'§.speed * 1.25,Math.pow(1.25,2));
               }
               break;
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§'§);
            if(_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().speed = 1;
         }
         addr50:
         if(!(_loc1_ && this))
         {
            §§push(this.§'§);
         }
      }
      
      protected function initLevelObjectManager(param1:§ y§) : §>!e§
      {
         return new §>!e§(this,param1,new Sprite());
      }
      
      protected function §null§(param1:§ y§) : §#!Y§
      {
         return new §#!Y§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§'R§, param4:Number) : §-^§
      {
         return new §-^§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§ y§) : §8![§
      {
         return new §8![§(this,param1,new Sprite());
      }
      
      protected function §[!8§(param1:§else §, param2:§'R§) : §^z§
      {
         return new §^z§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(this.mReadyToRun)
            {
               if(!_loc7_)
               {
                  addr23:
                  this.clearLevel();
               }
            }
            var _loc3_:§ y§ = this.§#E§();
            var _loc4_:§'Z§;
            (_loc4_ = new §'Z§()).left = 0;
            if(_loc6_ || param2)
            {
               §§push(_loc4_);
               §§push(§#!Y§.§`5§);
               if(_loc6_ || param1)
               {
                  §§push(-§§pop());
                  if(_loc6_)
                  {
                     §§push(10);
                     if(!_loc7_)
                     {
                        addr147:
                        §§push(§§pop() / §§pop());
                        if(_loc6_ || param2)
                        {
                           addr145:
                           §§push(8);
                        }
                        §§pop().top = §§pop();
                        loop0:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.top);
                           if(_loc6_ || this)
                           {
                              §§push(§§pop() + §#!Y§.§`5§);
                           }
                           §§pop().bottom = §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.left);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(§§pop() + §#!Y§.§";§);
                              }
                              §§pop().right = §§pop();
                              while(true)
                              {
                                 _loc4_.y = -13.929;
                                 while(_loc6_ || _loc3_)
                                 {
                                    if(_loc6_)
                                    {
                                       _loc4_.x = §#!Y§.§";§;
                                       loop4:
                                       for(; _loc6_; while(true)
                                       {
                                          _loc4_.id = §#!Y§.§7j§;
                                          do
                                          {
                                             _loc3_.§+'§(_loc4_);
                                          }
                                          while(_loc7_ && param2);
                                          
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          if(false)
                                          {
                                             continue;
                                          }
                                          var _loc5_:§'Z§;
                                          (_loc5_ = new §'Z§()).top = _loc4_.top;
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             _loc5_.bottom = _loc4_.bottom;
                                             while(true)
                                             {
                                                _loc5_.left = 150;
                                                loop9:
                                                for(; _loc6_ || param1; while(_loc6_ || _loc3_)
                                                {
                                                   this.§'!e§(_loc3_,param2);
                                                   §§goto(addr254);
                                                   §§goto(addr227);
                                                })
                                                {
                                                   §§push(_loc5_);
                                                   §§push(_loc5_.left);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + §#!Y§.§";§);
                                                   }
                                                   §§pop().right = §§pop();
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      §§push(_loc5_.top);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         §§push(§§pop() + §#!Y§.§`5§);
                                                      }
                                                      §§pop().bottom = §§pop();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         _loc5_.y = _loc4_.y;
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            §§push(_loc5_.left);
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               §§push(§#!Y§.§";§);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop() / 2);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                            §§pop().x = §§pop();
                                                            loop13:
                                                            while(!_loc7_)
                                                            {
                                                               _loc5_.id = §#!Y§.§27§;
                                                               while(true)
                                                               {
                                                                  _loc3_.§+'§(_loc5_);
                                                                  continue loop9;
                                                               }
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           this.init(_loc3_);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr213:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       if(_loc7_ && param1)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_.theme = param1;
                                                                                             continue loop24;
                                                                                          }
                                                                                          addr236:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr279);
                                                                                       }
                                                                                    }
                                                                                    continue loop9;
                                                                                    addr225:
                                                                                 }
                                                                                 _loc3_.theme = §%1§;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              continue loop24;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        return;
                                                                        addr179:
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr236);
                                       })
                                       {
                                          if(_loc7_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       continue;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     §§push(§§pop() * §§pop());
                  }
                  §§goto(addr147);
               }
               §§goto(addr145);
            }
            §§goto(addr74);
         }
         §§goto(addr23);
      }
      
      protected function §'!e§(param1:§ y§, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(param2)
            {
               if(!(_loc3_ && this))
               {
                  addr43:
                  this.§<7§(param1);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      protected function §#E§() : § y§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§ y§ = new § y§();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§=1§ = -12;
         }
         return new § y§();
      }
      
      protected function §4H§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^!3§ ^= this.§^!3§ << 21;
            while(true)
            {
               §§push(this);
               §§push(this.§^!3§);
               §§push(this.§^!3§);
               if(_loc2_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§^!3§ = §§pop() ^ §§pop();
               §§goto(addr83);
            }
         }
         addr83:
         while(true)
         {
            this.§^!3§ ^= this.§^!3§ << 4;
            if(_loc2_ || this)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return this.§^!3§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §<7§(param1:§ y§) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§#4§ = null;
         if(!_loc7_)
         {
            §§push(this);
            §§push(0.33);
            if(!(_loc7_ && param1))
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§^!3§ = §§pop();
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
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(!(_loc7_ && this))
                  {
                     _loc3_ = §§pop();
                     if(_loc6_ || param1)
                     {
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              break;
                           }
                           §§push(5);
                           if(_loc6_ || this)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    _loc2_++;
                                    if(!(_loc6_ || _loc2_))
                                    {
                                       break loop2;
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(this.§4H§());
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() * 5);
                                 }
                                 §§push(int(§§pop()));
                                 if(!_loc6_)
                                 {
                                    break;
                                    addr69:
                                 }
                                 do
                                 {
                                    _loc4_ = §§pop();
                                 }
                                 while(_loc6_ || _loc2_);
                                 
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        continue loop1;
                        addr483:
                     }
                     while(true)
                     {
                        §§push(_loc5_ = new §#4§());
                        §§push(30 + _loc3_ * 10);
                        if(_loc6_ || param1)
                        {
                           §§push(this.§4H§());
                           if(!(_loc7_ && _loc2_))
                           {
                              §§push(§§pop() * 9);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().x = §§pop();
                        if(_loc6_ || this)
                        {
                           §§push(_loc2_);
                           loop5:
                           while(true)
                           {
                              §§push(0);
                              loop6:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    §§push(_loc5_);
                                    §§push(-100 + _loc2_ * 6);
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§push(this.§4H§());
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(§§pop() * 3);
                                          if(_loc6_ || this)
                                          {
                                             addr365:
                                             §§push(§§pop() - §§pop());
                                             if(_loc6_ || _loc3_)
                                             {
                                                addr376:
                                                §§push(§§pop() - _loc3_ * 8);
                                             }
                                             §§pop().y = §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                if(!_loc7_)
                                                {
                                                   §§push(_loc3_);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§push(§§pop() + §§pop() * _loc3_);
                                                            if(_loc6_)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc6_)
                                                               {
                                                                  addr290:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr288:
                                                                     §§push(5);
                                                                  }
                                                                  §§push(int(§§pop()));
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop9:
                                                                     while(!(_loc7_ && this))
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        while(!_loc7_)
                                                                        {
                                                                           §§push(2);
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc6_ || _loc2_)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§push(3);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          loop34:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(1);
                                                                                             loop29:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop32:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               loop33:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(2);
                                                                                                                  addr441:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     if(!(_loc7_ && this))
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 continue loop26;
                                                                                                                              }
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 loop27:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr457:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       addr402:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc7_ && param1)
                                                                                                                                          {
                                                                                                                                             continue loop33;
                                                                                                                                          }
                                                                                                                                          §§push(4);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc7_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             continue loop29;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr456:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    _loc5_.id = "PIG_HELMET";
                                                                                                                                    loop15:
                                                                                                                                    while(!_loc7_)
                                                                                                                                    {
                                                                                                                                       loop16:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          §§push(45);
                                                                                                                                          §§push(this.§4H§());
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * 90);
                                                                                                                                          }
                                                                                                                                          §§pop().angle = §§pop() - §§pop();
                                                                                                                                          loop17:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr130:
                                                                                                                                             loop18:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                param1.addObject(_loc5_);
                                                                                                                                                loop19:
                                                                                                                                                while(_loc6_ || param1)
                                                                                                                                                {
                                                                                                                                                   _loc3_++;
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_)
                                                                                                                                                      {
                                                                                                                                                         continue loop17;
                                                                                                                                                      }
                                                                                                                                                      loop20:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc7_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc7_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  continue loop18;
                                                                                                                                                               }
                                                                                                                                                               addr226:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc5_.id = "BIRD_YELLOW";
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc5_.y = 0;
                                                                                                                                                                        break loop15;
                                                                                                                                                                     }
                                                                                                                                                                     addr469:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_ && _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop16;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop20;
                                                                                                                                                                  }
                                                                                                                                                                  addr255:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc5_.id = "PIG_MUSTACHE";
                                                                                                                                                                     continue loop16;
                                                                                                                                                                  }
                                                                                                                                                                  addr434:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc6_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop15;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc6_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop20;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop32;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr457);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc5_.id = "BIRD_RED";
                                                                                                                                                                     break loop19;
                                                                                                                                                                  }
                                                                                                                                                                  addr320:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr179:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop33;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop7;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop34;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr434);
                                                                                                                                 §§goto(addr425);
                                                                                                                              }
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           continue loop31;
                                                                                                                           addr451:
                                                                                                                        }
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     §§goto(addr456);
                                                                                                                     continue loop33;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr451);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr402);
                                                                                    }
                                                                                    §§goto(addr320);
                                                                                 }
                                                                                 §§goto(addr441);
                                                                              }
                                                                              §§goto(addr410);
                                                                           }
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               §§push(§§pop() % §§pop());
                                                            }
                                                         }
                                                         §§goto(addr290);
                                                      }
                                                      §§goto(addr288);
                                                   }
                                                }
                                                §§goto(addr307);
                                             }
                                          }
                                          §§goto(addr376);
                                       }
                                       §§goto(addr365);
                                    }
                                    §§goto(addr376);
                                 }
                                 §§goto(addr469);
                              }
                           }
                        }
                        §§goto(addr255);
                     }
                  }
                  §§goto(addr69);
               }
               return;
            }
         }
      }
      
      private function §#a§() : void
      {
      }
      
      public function §>!f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§-^§.§+a§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§[H§(this.§%'§.§'<§,false);
                     addr191:
                     while(true)
                     {
                     }
                  }
                  addr185:
               }
               while(true)
               {
                  this.§[H§(this.§`s§.§"!r§(§^z§.§[h§),false);
                  while(true)
                  {
                     this.§[H§(this.§`s§.§"!r§(§^z§.§#1§),true);
                     while(true)
                     {
                        this.§[H§(this.§`s§.§"!r§(§^z§.§=@§),true);
                        loop6:
                        while(true)
                        {
                           this.§[H§(this.§[!E§.§[![§,true);
                           addr141:
                           while(true)
                           {
                              this.§[H§(this.§;!,§.sprite,true);
                              continue loop6;
                           }
                        }
                        addr72:
                        if(!(_loc1_ || _loc2_))
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§[H§(this.§`s§.§"!r§(§^z§.§4!c§),true);
                           if(_loc1_)
                           {
                              break;
                           }
                           addr70:
                           addr70:
                           while(!_loc2_)
                           {
                              §§goto(addr72);
                           }
                           §§goto(addr97);
                        }
                        if(!_loc2_)
                        {
                           return;
                        }
                        §§goto(addr191);
                     }
                     addr57:
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.§[H§(this.§%'§.§%o§,false);
                        §§goto(addr70);
                     }
                  }
               }
               §§push(§-^§.§+a§);
               if(!(_loc1_ || this))
               {
                  continue;
               }
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     if(_loc1_)
                     {
                        §§goto(addr57);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr70);
               }
               §§goto(addr28);
            }
         }
         §§goto(addr64);
      }
      
      private function §[H§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.sprite);
            if(!_loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().addChild(param1);
         }
         addr50:
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.sprite);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = new Point();
         if(!(_loc4_ && param1))
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(§^!c§.§#!M§);
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr149:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr104:
                  §§push(§^!c§.§#!M§);
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  §§push(§§pop() / §§pop());
                  if(_loc5_ || this)
                  {
                     addr131:
                     §§push(Number(§§pop()));
                  }
                  if(!(_loc4_ && this))
                  {
                     if(_loc5_)
                     {
                        param2 = §§pop();
                        loop4:
                        while(true)
                        {
                           _loc3_.x = (param1 / §#!Y§.§0!_§ + this.§-M§.§^E§ - §#!Y§.§%!H§ / §#!Y§.§0!_§) * §18§;
                           loop5:
                           while(!_loc4_)
                           {
                              while(true)
                              {
                                 _loc3_.y = (param2 / §#!Y§.§0!_§ + this.§-M§.§7u§ - §#!Y§.§[^§ / §#!Y§.§0!_§) * §18§;
                                 if(!_loc4_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              return _loc3_;
                           }
                           addr151:
                           while(true)
                           {
                              §§push(param2);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§goto(addr104);
                              }
                              §§goto(addr131);
                           }
                        }
                     }
                     §§goto(addr149);
                  }
                  while(true)
                  {
                     param1 = §§pop();
                     §§goto(addr151);
                  }
                  addr150:
               }
            }
            §§goto(addr150);
         }
         §§goto(addr94);
      }
      
      public function §-!S§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = new Point();
         if(!(_loc5_ && _loc3_))
         {
            _loc3_.x = (param1 / §18§ + §#!Y§.§%!H§ / §#!Y§.§0!_§ - this.§-M§.§^E§) * §#!Y§.§0!_§;
            if(!(_loc5_ && param2))
            {
               addr63:
               _loc3_.y = (param2 / §18§ + §#!Y§.§[^§ / §#!Y§.§0!_§ - this.§-M§.§7u§) * §#!Y§.§0!_§;
            }
            var _loc4_:Number = Math.max(§^!c§.§#!M§,§^!c§.§6W§);
            if(_loc6_)
            {
               _loc3_.x *= _loc4_;
               do
               {
                  _loc3_.y *= _loc4_;
               }
               while(_loc5_);
               
            }
            return _loc3_;
         }
         §§goto(addr63);
      }
      
      public function §0!y§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§[!E§.addObject(param1,param2,param3);
         }
      }
      
      public function §7!u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§5!,§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     this.§]!v§ = 0;
                     if(!_loc1_)
                     {
                        if(!_loc1_)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              break;
                           }
                        }
                        loop4:
                        while(true)
                        {
                           §§push(this.§5!,§);
                           if(_loc2_ || _loc1_)
                           {
                              continue loop0;
                           }
                           addr90:
                           while(true)
                           {
                              §§pop().visible = true;
                              continue loop4;
                           }
                        }
                        addr92:
                     }
                     else
                     {
                        while(true)
                        {
                           continue loop3;
                        }
                        addr84:
                     }
                  }
                  return;
               }
               while(true)
               {
                  §§goto(addr90);
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §6#§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=M§ = new §-!B§(§,L§.§@L§,§,L§.§^!`§);
         }
      }
      
      public function §"!d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§=M§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§%'§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§%'§);
                     addr618:
                     while(true)
                     {
                        §§pop().dispose();
                        addr619:
                        while(true)
                        {
                           this.§%'§ = null;
                           addr605:
                           while(true)
                           {
                           }
                        }
                     }
                     addr439:
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     addr448:
                     this.§-M§.clear();
                     loop13:
                     while(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_ || _loc1_)
                        {
                           addr463:
                           if(_loc1_ || _loc2_)
                           {
                              this.§-M§ = null;
                              loop14:
                              for(; !(_loc2_ && _loc2_); while(true)
                              {
                                 if(_loc2_ && _loc1_)
                                 {
                                    continue loop14;
                                 }
                                 §§goto(addr413);
                              })
                              {
                                 loop15:
                                 while(true)
                                 {
                                    §§push(this.§`s§);
                                    if(!_loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          loop17:
                                          do
                                          {
                                             if(this.sprite)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            addr334:
                                                            §§push(this.sprite);
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               if(§§pop().numChildren <= 0)
                                                               {
                                                                  addr348:
                                                                  this.§14§ = 0;
                                                                  this.§[!t§ = 0;
                                                                  if(_loc1_ || _loc2_)
                                                                  {
                                                                     this.mReadyToRun = false;
                                                                     addr319:
                                                                     if(!_loc2_)
                                                                     {
                                                                        this.§@!;§ = false;
                                                                        addr307:
                                                                        if(_loc1_ || this)
                                                                        {
                                                                           this.§]!v§ = §,L§.§;!L§;
                                                                           addr292:
                                                                           if(this.§#!C§)
                                                                           {
                                                                              addr278:
                                                                              (this.§#!C§ as §;!b§).§#"§.x = 0;
                                                                              addr279:
                                                                              addr272:
                                                                              addr277:
                                                                              addr274:
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 §§push(this.§#!C§);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push((§§pop() as §;!b§).§#"§);
                                                                                       if(_loc1_ || _loc1_)
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(_loc1_ || _loc1_)
                                                                                          {
                                                                                             §§pop().y = §§pop();
                                                                                             addr265:
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr223:
                                                                                                §§push(this.§5!,§);
                                                                                                if(!(_loc2_ && this))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr236:
                                                                                                      this.§5!,§.visible = false;
                                                                                                      addr234:
                                                                                                   }
                                                                                                   this.§'§ = null;
                                                                                                   addr218:
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         this.§9U§ = null;
                                                                                                         addr206:
                                                                                                         if(_loc1_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(this.§;-§);
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc1_ || this)
                                                                                                                  {
                                                                                                                     addr182:
                                                                                                                     this.§;-§.removeEventListener(Event.COMPLETE,this.§8!0§);
                                                                                                                  }
                                                                                                                  addr187:
                                                                                                                  if(!(_loc2_ && this))
                                                                                                                  {
                                                                                                                     if(!(_loc2_ && this))
                                                                                                                     {
                                                                                                                        §§push(this.§;-§);
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           §§pop().removeEventListener(Event.CANCEL,this.§0'§);
                                                                                                                           addr159:
                                                                                                                           if(_loc1_ || this)
                                                                                                                           {
                                                                                                                              addr123:
                                                                                                                              §§push(this.§9n§);
                                                                                                                              if(_loc1_ || _loc1_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr136:
                                                                                                                                    this.§9n§.removeEventListener(Event.COMPLETE,this.§true §);
                                                                                                                                    addr134:
                                                                                                                                    if(_loc1_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(this.§9n§);
                                                                                                                                       if(_loc1_ || this)
                                                                                                                                       {
                                                                                                                                          §§pop().removeEventListener(Event.CANCEL,this.§5!3§);
                                                                                                                                          addr120:
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             addr92:
                                                                                                                                             this.§9!L§();
                                                                                                                                             addr95:
                                                                                                                                             if(!(_loc2_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(§else§.§^!A§);
                                                                                                                                                   if(!(_loc2_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr76:
                                                                                                                                                         §else§.§^!A§.color = 0;
                                                                                                                                                         addr74:
                                                                                                                                                         if(!_loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc1_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc2_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     addr35:
                                                                                                                                                                     §§push(this.§0!@§);
                                                                                                                                                                     if(_loc1_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc1_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr57:
                                                                                                                                                                                 this.§0!@§.removeEventListeners();
                                                                                                                                                                                 addr58:
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr23);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr74);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr206);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr58);
                                                                                                                                                                        }
                                                                                                                                                                        addr23:
                                                                                                                                                                        this.mReadyToRun = false;
                                                                                                                                                                        if(_loc2_ && _loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr58);
                                                                                                                                                                        }
                                                                                                                                                                        return;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr57);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr348);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr159);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr134);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr95);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr35);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr76);
                                                                                                                                                }
                                                                                                                                                §§goto(addr134);
                                                                                                                                             }
                                                                                                                                             §§goto(addr120);
                                                                                                                                          }
                                                                                                                                          §§goto(addr187);
                                                                                                                                       }
                                                                                                                                       §§goto(addr136);
                                                                                                                                    }
                                                                                                                                    §§goto(addr265);
                                                                                                                                 }
                                                                                                                                 §§goto(addr92);
                                                                                                                              }
                                                                                                                              §§goto(addr136);
                                                                                                                           }
                                                                                                                           §§goto(addr292);
                                                                                                                        }
                                                                                                                        §§goto(addr182);
                                                                                                                     }
                                                                                                                     §§goto(addr348);
                                                                                                                  }
                                                                                                                  §§goto(addr218);
                                                                                                               }
                                                                                                               §§goto(addr123);
                                                                                                            }
                                                                                                            §§goto(addr182);
                                                                                                         }
                                                                                                         §§goto(addr279);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr234);
                                                                                                }
                                                                                                §§goto(addr236);
                                                                                             }
                                                                                             §§goto(addr272);
                                                                                          }
                                                                                          §§goto(addr278);
                                                                                       }
                                                                                       §§goto(addr277);
                                                                                    }
                                                                                    §§goto(addr292);
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                           §§goto(addr223);
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     addr373:
                                                                     §§goto(addr334);
                                                                  }
                                                                  addr351:
                                                                  §§goto(addr351);
                                                                  addr347:
                                                               }
                                                               §§push(this.sprite);
                                                            }
                                                            §§pop().removeChildAt(0,true);
                                                            §§goto(addr373);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr605);
                                                         }
                                                      }
                                                      loop31:
                                                      while(true)
                                                      {
                                                         this.§3!S§ = null;
                                                         addr563:
                                                         addr597:
                                                         while(_loc1_ || _loc1_)
                                                         {
                                                            addr570:
                                                            while(true)
                                                            {
                                                               §§push(this.mLevelEngine);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.mLevelEngine);
                                                                        if(!_loc2_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop().§02§)
                                                                              {
                                                                              }
                                                                              addr555:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.mLevelEngine);
                                                                              }
                                                                           }
                                                                           addr553:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().clear();
                                                                           addr558:
                                                                           while(true)
                                                                           {
                                                                              this.mLevelEngine = null;
                                                                              addr537:
                                                                              while(true)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr549:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§--§);
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           while(!_loc2_)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(this.§--§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().clear();
                                                                                    addr525:
                                                                                    while(!(_loc2_ && this))
                                                                                    {
                                                                                       this.§--§ = null;
                                                                                       break loop17;
                                                                                    }
                                                                                    addr600:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§[!E§ = null;
                                                                                       continue loop31;
                                                                                    }
                                                                                 }
                                                                                 addr524:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr549);
                                                                              }
                                                                              §§goto(addr463);
                                                                           }
                                                                           continue;
                                                                           addr518:
                                                                        }
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§;!,§);
                                                                           if(_loc1_ || this)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§;!,§);
                                                                                    addr498:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().dispose();
                                                                                       break loop13;
                                                                                    }
                                                                                 }
                                                                                 addr496:
                                                                              }
                                                                              do
                                                                              {
                                                                                 §§push(this.§-M§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    if(!(_loc1_ || this))
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    §§goto(addr439);
                                                                                 }
                                                                                 §§goto(addr448);
                                                                              }
                                                                              while(_loc1_);
                                                                              
                                                                              §§goto(addr619);
                                                                           }
                                                                           §§goto(addr498);
                                                                           addr506:
                                                                           while(true)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr524);
                                                                  }
                                                               }
                                                               §§goto(addr553);
                                                               §§goto(addr570);
                                                            }
                                                         }
                                                         loop2:
                                                         while(true)
                                                         {
                                                            §§push(this.§[!E§);
                                                            addr599:
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                               §§goto(addr600);
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(this.§`s§);
                                                         while(true)
                                                         {
                                                            §§pop().dispose();
                                                            continue loop14;
                                                         }
                                                      }
                                                      addr396:
                                                   }
                                                   §§goto(addr555);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         continue loop17;
                                                      }
                                                      addr413:
                                                      this.§`s§ = null;
                                                   }
                                                }
                                                §§goto(addr496);
                                             }
                                             §§goto(addr347);
                                          }
                                          while(_loc1_ || this);
                                          
                                          while(_loc1_)
                                          {
                                             §§goto(addr506);
                                          }
                                          §§goto(addr558);
                                       }
                                       §§goto(addr396);
                                    }
                                    §§goto(addr405);
                                 }
                              }
                              while(true)
                              {
                                 if(_loc1_ || this)
                                 {
                                    §§goto(addr482);
                                 }
                                 §§goto(addr563);
                              }
                              addr475:
                           }
                           §§goto(addr518);
                        }
                        §§goto(addr525);
                     }
                     while(true)
                     {
                        this.§;!,§ = null;
                        §§goto(addr475);
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§[!E§);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        §§goto(addr597);
                     }
                     §§goto(addr538);
                  }
                  §§goto(addr599);
                  §§goto(addr605);
               }
            }
            §§goto(addr618);
         }
         §§goto(addr506);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §4!=§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9U§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.§9U§);
                  }
                  else
                  {
                     §§goto(addr44);
                  }
               }
               §§goto(addr44);
            }
            return §§pop().toString();
         }
         addr44:
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
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
                           addr166:
                           while(true)
                           {
                              §§push(§else§.§9!i§());
                              addr140:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 addr141:
                                 while(!(_loc4_ && param1))
                                 {
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     loop7:
                     while(!§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§push(this.§'§);
                           loop9:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop10:
                              while(!_loc4_)
                              {
                                 §§push(§§pop());
                                 if(_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 if(!§§pop())
                                 {
                                    loop12:
                                    for(; §§pop(); continue loop0)
                                    {
                                       if(!(_loc5_ || param2))
                                       {
                                          if(!(_loc4_ && param3))
                                          {
                                             break;
                                          }
                                          break loop7;
                                       }
                                       if(!(_loc4_ && param1))
                                       {
                                          if(!_loc4_)
                                          {
                                             §§goto(addr104);
                                          }
                                          if(!(_loc4_ && this))
                                          {
                                             continue loop8;
                                          }
                                          §§goto(addr166);
                                       }
                                       else
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             §§push(this.§'§);
                                             if(_loc5_ || param3)
                                             {
                                                §§push(§§pop().§;,§);
                                                if(_loc5_)
                                                {
                                                   addr52:
                                                   if(_loc5_ || this)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr141);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      while(!_loc4_)
                                                      {
                                                         §§pop();
                                                         continue loop13;
                                                         §§goto(addr52);
                                                      }
                                                      §§goto(addr140);
                                                      addr123:
                                                   }
                                                   §§goto(addr140);
                                                }
                                                if(_loc5_)
                                                {
                                                   continue loop12;
                                                }
                                                continue loop10;
                                             }
                                             continue loop9;
                                          }
                                          addr136:
                                       }
                                       §§goto(addr140);
                                    }
                                    §§push(this.updateWithTime(param1,true,param2,param3));
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr151);
                                    }
                                    addr104:
                                    return this.§4!r§(param1,param2,param3);
                                    addr81:
                                 }
                                 §§goto(addr123);
                              }
                              continue loop1;
                           }
                        }
                     }
                     addr151:
                     return §§pop();
                  }
               }
               if(!(_loc5_ || this))
               {
                  continue;
               }
               §§goto(addr81);
            }
         }
         §§goto(addr136);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(this.§>!5§)
            {
               if(_loc7_)
               {
                  addr24:
                  §§push(param1);
                  if(!(_loc6_ && this))
                  {
                     §§push(§§pop() * 0.2);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc7_ || this)
                        {
                        }
                        addr65:
                        var _loc5_:* = §§pop();
                        if(_loc7_)
                        {
                           §§push(this);
                           §§push(this.§[!t§);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§[!t§ = §§pop();
                           loop0:
                           while(true)
                           {
                              §§push(param3);
                              loop1:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    this.§[!E§.§#!#§(param1);
                                    loop2:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                continue loop1;
                                             }
                                             continue loop0;
                                          }
                                          addr80:
                                          return §§pop();
                                          addr159:
                                       }
                                       this.§14§ = 0;
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                             addr144:
                                          }
                                          addr110:
                                          if(!(_loc6_ && param1))
                                          {
                                             this.§ !q§(param1,_loc5_);
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§14§);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(§§pop() + param1);
                                    }
                                    §§pop().§14§ = §§pop();
                                    §§goto(addr216);
                                 }
                              }
                           }
                        }
                        §§goto(addr144);
                     }
                     param1 = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        §§push(§else§.§]!#§);
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              addr63:
                              if(!_loc6_)
                              {
                                 addr59:
                                 §§push(§else§.§]!#§);
                              }
                              §§goto(addr65);
                              §§push(Number(0));
                           }
                           §§goto(addr63);
                        }
                        §§pop().speed = 0.2;
                        §§goto(addr63);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr65);
               }
               §§goto(addr59);
            }
            §§goto(addr63);
         }
         §§goto(addr24);
      }
      
      private function §4!r§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§%!;§.§4h§);
         if(_loc7_ || param1)
         {
            §§push(§§pop() * 1000);
            if(!_loc6_)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param1))
            {
               if(this.§'§)
               {
                  if(_loc7_ || this)
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push(this.§'§.speed);
                        addr317:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc6_ && param1))
                           {
                              §§push(Number(§§pop()));
                           }
                           addr326:
                           while(true)
                           {
                              param1 = §§pop();
                           }
                        }
                     }
                     addr314:
                  }
                  while(true)
                  {
                     §§push(this.§[!t§);
                     if(!_loc6_)
                     {
                        §§push(param1);
                        if(_loc7_ || param2)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc6_ && param3))
                           {
                              if(!_loc6_)
                              {
                                 addr287:
                                 §§push(Number(§§pop()));
                                 if(!_loc6_)
                                 {
                                    _loc5_ = §§pop();
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr314);
                              }
                              §§goto(addr326);
                           }
                           §§goto(addr287);
                        }
                        §§goto(addr317);
                     }
                     §§goto(addr287);
                  }
                  loop19:
                  while(true)
                  {
                     §§push(this.§[!t§);
                     loop15:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           §§push(_loc4_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + §§pop());
                              while(true)
                              {
                                 §§push(_loc5_);
                              }
                              addr195:
                           }
                           loop17:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop18:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    addr198:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(this.§<B§);
                                          loop1:
                                          while(true)
                                          {
                                             if(!(_loc6_ && param3))
                                             {
                                                §§push(§§pop() + _loc4_);
                                                loop2:
                                                for(; !(_loc6_ && param2); §§push(_loc5_),if(!(_loc6_ && param2))
                                                {
                                                   continue loop1;
                                                })
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      loop3:
                                                      for(; _loc7_; if(!(_loc7_ || param1))
                                                      {
                                                         continue;
                                                      },§§goto(addr64),§§push(param1))
                                                      {
                                                         §§push(this.§'§);
                                                         if(_loc7_)
                                                         {
                                                            §§pop().step(this);
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§<B§);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(§§pop() + _loc4_);
                                                               }
                                                               §§pop().§<B§ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  if(_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§[!t§);
                                                                        loop7:
                                                                        while(!_loc6_)
                                                                        {
                                                                           continue loop2;
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc6_ && param3))
                                                                              {
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr195);
                                                                     }
                                                                     addr87:
                                                                  }
                                                                  addr122:
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     if(!(_loc7_ || param2))
                                                                     {
                                                                        addr162:
                                                                        §§push(this);
                                                                        §§push(this.§<B§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() + _loc4_);
                                                                        }
                                                                        §§pop().§<B§ = §§pop();
                                                                     }
                                                                     else
                                                                     {
                                                                        addr262:
                                                                        addr245:
                                                                     }
                                                                     §§push(this);
                                                                     §§push(_loc5_);
                                                                     if(_loc7_ || param2)
                                                                     {
                                                                        §§push(§§pop() - this.§[!t§);
                                                                     }
                                                                     §§pop().updateWithTime(§§pop(),true,param2,param3);
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop4;
                                                                        this.updateWithTime(_loc4_,false,param2,param3);
                                                                     }
                                                                     continue loop3;
                                                                     break loop3;
                                                                  }
                                                               }
                                                               continue loop18;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr260:
                                                            §§pop().step(this);
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      continue loop19;
                                                   }
                                                   §§goto(addr87);
                                                }
                                                addr253:
                                                §§push(§§pop() + §§pop());
                                                while(true)
                                                {
                                                   §§push(this.§<B§);
                                                   break loop1;
                                                }
                                                addr253:
                                             }
                                             break;
                                             if(!(_loc7_ || param3))
                                             {
                                                continue;
                                             }
                                             if(!(_loc7_ || this))
                                             {
                                                continue loop17;
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                if(!(_loc6_ && param3))
                                                {
                                                   §§goto(addr122);
                                                }
                                                §§goto(addr162);
                                             }
                                             §§goto(addr62);
                                          }
                                          while(true)
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   §§goto(addr260);
                                                   §§push(this.§'§);
                                                }
                                             }
                                             §§goto(addr262);
                                             §§goto(addr253);
                                          }
                                       }
                                       §§goto(addr253);
                                       continue loop18;
                                    }
                                 }
                              }
                              else
                              {
                                 addr251:
                                 §§push(this.§[!t§);
                                 §§push(_loc4_);
                              }
                              §§goto(addr253);
                           }
                        }
                        §§goto(addr251);
                     }
                  }
                  addr302:
               }
               else
               {
                  §§push(this.updateWithTime(_loc4_,true,param2,param3));
                  if(!(_loc6_ && param2))
                  {
                     if(!_loc6_)
                     {
                        return §§pop();
                     }
                     §§goto(addr198);
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr302);
         }
         §§goto(addr32);
      }
      
      private function § !q§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc5_ && param2))
         {
            this.§%'§.update(param1);
            loop0:
            while(true)
            {
               this.§[!E§.§'!A§(param1,param2);
               loop1:
               while(true)
               {
                  this.§=!X§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§]!v§);
                     addr263:
                     while(true)
                     {
                        §§push(§,L§.§;!L§);
                        addr275:
                        addr215:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(this.§5!,§);
                              if(!_loc5_)
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§=M§);
                                       if(_loc6_ || this)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_ || param2)
                                             {
                                                addr99:
                                                if(!this.§=M§.§>h§(this.§-M§,param1))
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      this.§"!d§();
                                                   }
                                                   addr104:
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   this.§-M§.§6A§(param1);
                                                   loop9:
                                                   while(!(_loc5_ && param1))
                                                   {
                                                      this.mLevelEngine.§+!C§();
                                                      while(true)
                                                      {
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr104);
                                                      }
                                                      continue loop2;
                                                      if(!(_loc6_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break loop6;
                                                            }
                                                            addr276:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§]!v§);
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§push(§§pop() + param1);
                                                               }
                                                               §§pop().§]!v§ = §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  addr165:
                                                                  §§push(this.§5!,§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().alpha = _loc4_;
                                                                     break loop9;
                                                                  }
                                                                  addr165:
                                                               }
                                                               else
                                                               {
                                                                  while(!(_loc5_ && param2))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr223:
                                                               }
                                                            }
                                                            addr161:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§,L§.§;!L§);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(§§pop() / 2);
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               addr250:
                                                            }
                                                            addr251:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               continue loop1;
                                                            }
                                                            addr149:
                                                            while(true)
                                                            {
                                                               continue loop6;
                                                            }
                                                         }
                                                         addr108:
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   while(true)
                                                   {
                                                      addr118:
                                                      while(true)
                                                      {
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                                addr66:
                                             }
                                             §§goto(addr108);
                                          }
                                          §§goto(addr66);
                                       }
                                       §§goto(addr99);
                                    }
                                    return;
                                 }
                                 continue loop1;
                              }
                              addr135:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    §§pop().visible = false;
                                    §§goto(addr149);
                                 }
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr276);
                        }
                        addr215:
                        if(_loc5_ && param1)
                        {
                           continue;
                        }
                        _loc4_ = §§pop();
                        §§goto(addr223);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§5!,§);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop())
               {
                  §§goto(addr161);
               }
               §§goto(addr118);
            }
            §§goto(addr165);
         }
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
               if(_loc3_ || param1)
               {
                  §§push(1000);
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                  }
                  addr89:
               }
               addr90:
               while(true)
               {
                  §§pop().§#!#§(§§pop());
                  continue loop0;
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §=!X§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§`!_§ = null;
         if(!_loc4_)
         {
            §§push(this.§[!t§);
            §§push(this.§2!!§);
            if(_loc5_)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(!_loc4_)
               {
                  if(this.§1r§ != null)
                  {
                     §§goto(addr49);
                  }
                  this.§2!!§ = this.§[!t§;
               }
            }
            §§goto(addr49);
         }
         addr49:
         var _loc2_:int = 0;
         for each(_loc1_ in this.§1r§)
         {
            if(_loc5_ || _loc2_)
            {
               _loc1_.addTrail();
            }
         }
         if(_loc4_)
         {
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`!_§ = null;
         if(_loc4_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(_loc4_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(!(_loc3_ && _loc3_))
            {
               §§push(this.mPigsAnimationTimer1);
               if(_loc4_ || param1)
               {
                  §§push(0);
                  if(!(_loc3_ && param1))
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!_loc3_)
                        {
                           §§push(this.§[!E§);
                           if(_loc4_)
                           {
                              §§push(true);
                              if(_loc4_)
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(this.§[!E§);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(true);
                                             if(_loc4_ || param1)
                                             {
                                                §§push(§§pop().§4O§(§§pop()));
                                                if(_loc4_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(!(_loc3_ && this))
                                                   {
                                                      _loc2_.§7![§.mTryToScream = § 6§.§8!3§;
                                                      if(_loc3_)
                                                      {
                                                      }
                                                      addr139:
                                                      §§push(this);
                                                      §§push(this.mPigsAnimationTimer2);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§push(§§pop() - param1);
                                                      }
                                                      §§pop().mPigsAnimationTimer2 = §§pop();
                                                      if(!_loc3_)
                                                      {
                                                         addr157:
                                                         if(this.mPigsAnimationTimer2 <= 0)
                                                         {
                                                            if(!(_loc3_ && this))
                                                            {
                                                               addr165:
                                                               §§push(this.§[!E§);
                                                               if(_loc4_)
                                                               {
                                                                  addr169:
                                                                  §§push(true);
                                                                  if(_loc4_ || param1)
                                                                  {
                                                                     §§goto(addr232);
                                                                  }
                                                                  addr183:
                                                                  _loc2_ = §§pop().§4O§(§§pop());
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     _loc2_.§7![§.mTryToBlink = § 6§.§;3§;
                                                                     if(!_loc4_)
                                                                     {
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                                  §§push(this);
                                                                  §§push(250 + Math.random() * 500);
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() + 2000 / (3 + this.§[!E§.§@Q§()));
                                                                  }
                                                                  §§pop().mPigsAnimationTimer2 = §§pop();
                                                               }
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                      §§goto(addr165);
                                                   }
                                                   §§push(this);
                                                   §§push(500 + Math.random() * 1000);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop() + 4000 / (3 + this.§[!E§.§@Q§()));
                                                   }
                                                   §§pop().mPigsAnimationTimer1 = §§pop();
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr183);
                                             }
                                             §§goto(addr232);
                                          }
                                          §§goto(addr169);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr232);
                              }
                              addr232:
                              if(§§pop().isPigsAlive(§§pop()))
                              {
                                 addr181:
                                 §§push(this.§[!E§);
                                 §§push(true);
                              }
                              return;
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr139);
                  }
               }
            }
            §§goto(addr157);
         }
         §§goto(addr181);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            §§push(param6);
            if(_loc8_ || param1)
            {
               §§push(-9999);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     while(true)
                     {
                        §§push(§9!B§.§!!S§);
                        addr170:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr171:
                           while(true)
                           {
                              param6 = §§pop();
                              addr172:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr168:
                  }
                  while(true)
                  {
                     §@!6§.addScore(param1,param2);
                     loop4:
                     while(true)
                     {
                        this.§0!@§.addScore(param1);
                        loop5:
                        for(; !(_loc7_ && param1); if(!(_loc8_ || param1))
                        {
                           continue;
                        },this.§#z§(param1.toString(),param4,param5,800,param6,0,0),§§goto(addr88))
                        {
                           §§push(param3);
                           if(_loc8_ || param1)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc8_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             while(§§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr128:
                                                      addr128:
                                                      while(true)
                                                      {
                                                         §§push(param1);
                                                         if(_loc8_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      addr128:
                                                   }
                                                   else
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§push(this.§=!J§);
                                                         if(!_loc8_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(_loc8_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(_loc8_ || param3)
                                                            {
                                                               §§push(!§§pop());
                                                               continue loop6;
                                                            }
                                                            addr127:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               break loop12;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop12;
                                                            }
                                                            addr111:
                                                         }
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   §§goto(addr128);
                                                }
                                                else
                                                {
                                                   addr88:
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr168);
                                                }
                                             }
                                             return;
                                             addr53:
                                          }
                                          §§goto(addr111);
                                       }
                                       continue loop7;
                                    }
                                    addr106:
                                 }
                                 §§goto(addr127);
                              }
                           }
                        }
                        §§goto(addr172);
                     }
                  }
               }
            }
            §§goto(addr171);
         }
         §§goto(addr128);
      }
      
      public function §#z§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param5);
            if(!(_loc8_ && param2))
            {
               if(§§pop() == -9999)
               {
                  while(true)
                  {
                     §§push(§9!B§.§3=§);
                     if(_loc9_)
                     {
                        addr81:
                        §§push(int(§§pop()));
                        while(true)
                        {
                           param5 = §§pop();
                           addr82:
                           while(true)
                           {
                           }
                        }
                        addr81:
                     }
                     §§goto(addr81);
                  }
                  addr76:
               }
               while(true)
               {
                  this.§`s§.§#Z§(§9!B§.§?!1§,§^z§.§4!c§,§9!B§.§ x§,param2,param3,param4,param1,param5,param6,param7);
                  if(!_loc9_)
                  {
                     continue;
                  }
                  if(_loc9_)
                  {
                     break;
                  }
                  §§goto(addr76);
               }
               return;
               addr65:
            }
            §§goto(addr81);
         }
         §§goto(addr65);
      }
      
      public function §?!C§(param1:§`!_§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§1r§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               while(true)
               {
                  this.§1r§ = new Array();
               }
            }
         }
         while(true)
         {
            §§goto(addr38);
         }
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§;!,§.useMightyEagle();
            while(true)
            {
               this.§[!E§.§8!7§();
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§=!J§ = true;
            if(_loc2_ || _loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §+N§(param1:§`!_§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`s§.§0I§(§^z§.§[h§);
            loop0:
            while(true)
            {
               §§push(this.§1r§);
               if(!_loc3_)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(this.§1r§);
                        while(true)
                        {
                           §§pop().splice(this.§1r§.indexOf(param1),1);
                        }
                        addr89:
                     }
                     while(true)
                     {
                     }
                     addr95:
                  }
                  while(true)
                  {
                     §§push(this.§1r§);
                     if(!(_loc3_ && this))
                     {
                        if(§§pop().length != 0)
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           this.§1r§ = null;
                        }
                        if(_loc2_ || _loc3_)
                        {
                           if(!_loc3_)
                           {
                              addr60:
                              break;
                           }
                           continue loop0;
                        }
                        continue;
                     }
                  }
                  return;
               }
               §§goto(addr89);
            }
         }
         §§goto(addr60);
      }
      
      public function §^!x§(param1:§>-§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            this.§3!S§ = this.§[!E§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!(_loc7_ && param3))
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr48:
                  §§push(§8![§.BIRD_LAUNCH_FORCE_GREEN);
                  if(_loc8_ || param1)
                  {
                     §§push(Number(§§pop()));
                     if(_loc8_ || param2)
                     {
                        addr65:
                     }
                     addr74:
                     var _loc4_:Number = §§pop();
                     addr73:
                     if(_loc8_)
                     {
                        §§push(param1.§8f§);
                        loop0:
                        while(true)
                        {
                           §§push(1);
                           loop1:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(_loc8_)
                                 {
                                    §§push(this.§3!S§);
                                    loop2:
                                    while(true)
                                    {
                                       §§pop().§=!K§(param1.§8f§);
                                       addr159:
                                       loop6:
                                       while(true)
                                       {
                                          addr128:
                                          while(true)
                                          {
                                             §§push(this.§3!S§);
                                             if(_loc7_)
                                             {
                                                continue loop2;
                                             }
                                             §§pop().§7![§.§7!c§();
                                             while(!_loc8_)
                                             {
                                                continue loop6;
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr159);
                              }
                              while(true)
                              {
                                 §§push(param1.§@N§);
                                 if(_loc7_ && param3)
                                 {
                                    continue loop0;
                                 }
                                 §§push(0);
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop() != §§pop())
                                 {
                                    if(_loc8_ || param3)
                                    {
                                       §§push(param1.§@N§);
                                       if(_loc8_ || this)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       addr119:
                                       if(_loc8_ || param2)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr128);
                                          }
                                          else
                                          {
                                             addr160:
                                             §§push(_loc4_);
                                             if(!(_loc7_ && param3))
                                             {
                                                addr168:
                                                §§push(-§§pop());
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                addr192:
                                                var _loc5_:* = §§pop();
                                                §§push(_loc4_);
                                                if(!(_loc7_ && this))
                                                {
                                                   §§push(§§pop() * param2);
                                                   if(_loc8_ || this)
                                                   {
                                                      addr210:
                                                      §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                      if(!_loc7_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc6_:* = §§pop();
                                                   if(!_loc7_)
                                                   {
                                                      this.§3!S§.§=!`§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                   }
                                                   this.camera.§+!T§(§#!Y§.§use§);
                                                   addr279:
                                                   if(_loc8_ || param2)
                                                   {
                                                      §§push(this.§9U§);
                                                      if(_loc8_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               addr245:
                                                               this.§9U§.§^!x§(this.mLevelEngine.§"!$§,param1.x,param1.y,param2,param3);
                                                            }
                                                            if(_loc7_ && this)
                                                            {
                                                               §§goto(addr279);
                                                            }
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   addr296:
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr210);
                                             }
                                             §§goto(addr192);
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr160);
                              }
                              addr171:
                              §§push(§§pop() * param2);
                              if(_loc8_ || this)
                              {
                                 §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                                 if(_loc8_)
                                 {
                                    §§goto(addr160);
                                 }
                              }
                              §§goto(addr168);
                           }
                        }
                     }
                     §§goto(addr159);
                  }
                  §§goto(addr65);
               }
               else
               {
                  §§push(§8![§.BIRD_LAUNCH_FORCE);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc7_)
                     {
                        §§goto(addr73);
                     }
                  }
               }
               §§goto(addr74);
            }
         }
         §§goto(addr48);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§@!;§ = true;
         }
      }
      
      private function §^N§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§@!;§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§@!;§ = false;
                     loop2:
                     while(true)
                     {
                        §§push(this.activeObject);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() is §0d§);
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
                                       if(!_loc1_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(this.activeObject);
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          continue loop3;
                                       }
                                       loop14:
                                       while(true)
                                       {
                                          §§push(§§pop().activateSpecialPower(this.§;n§));
                                          addr134:
                                          loop7:
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop4;
                                             }
                                             if(§§pop())
                                             {
                                                while(_loc1_ || this)
                                                {
                                                   this.§6u§ = true;
                                                   do
                                                   {
                                                      if(!(_loc1_ || this))
                                                      {
                                                         continue loop6;
                                                      }
                                                   }
                                                   while(_loc1_ || _loc2_);
                                                   
                                                   return;
                                                }
                                                continue loop2;
                                                addr137:
                                             }
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§9U§);
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            if(!(_loc1_ || this))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc1_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(this.§9U§);
                                                                  break;
                                                               }
                                                               §§goto(addr137);
                                                            }
                                                            §§goto(addr147);
                                                         }
                                                         addr63:
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            break loop7;
                                                         }
                                                         addr129:
                                                         while(true)
                                                         {
                                                            continue loop14;
                                                         }
                                                      }
                                                      §§goto(addr24);
                                                   }
                                                   break;
                                                }
                                                §§pop().§7!x§(this.mLevelEngine.§"!$§);
                                                §§goto(addr63);
                                             }
                                             continue loop14;
                                          }
                                          addr24:
                                          return;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 addr179:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    addr128:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          this.§[!E§.§%!K§();
                                          §§goto(addr77);
                                       }
                                    }
                                 }
                                 addr127:
                              }
                              §§goto(addr129);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr191);
      }
      
      public function §4!l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[!E§.§4!l§();
         }
      }
      
      public function §;T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§[!E§.§1%§();
         }
      }
      
      public function §"M§() : § y§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§ y§ = new § y§();
         if(_loc2_ || this)
         {
            _loc1_.§+h§ = this.§0!l§.§+h§;
         }
         loop0:
         while(true)
         {
            _loc1_.§3!4§ = this.§0!l§.§3!4§;
            loop1:
            while(true)
            {
               this.§-M§.§?!3§(_loc1_);
               while(!_loc3_)
               {
                  this.§[!E§.§>V§(_loc1_);
                  while(_loc2_ || _loc1_)
                  {
                     this.§;!,§.§'@§(_loc1_);
                     continue loop1;
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function §1!5§() : int
      {
         return this.§0!l§.§3!4§;
      }
      
      public function §4s§() : int
      {
         return this.§0!l§.§+h§;
      }
      
      public function §5!U§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§0!l§.§3!4§ = param1;
         }
      }
      
      public function §0!e§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§0!l§.§+h§ = param1;
         }
      }
      
      public function §;X§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§^V§);
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  addr80:
                  while(true)
                  {
                     §§push(this.§^V§);
                     addr82:
                     while(true)
                     {
                        §§pop().§;!W§(param1,param2);
                        addr85:
                        while(true)
                        {
                        }
                     }
                  }
                  addr80:
               }
               while(true)
               {
                  §§push(this.§-M§);
                  if(_loc3_)
                  {
                     if(!§§pop())
                     {
                        return;
                     }
                     if(_loc3_ || _loc3_)
                     {
                        if(!_loc4_)
                        {
                           addr60:
                           this.§-M§.§6A§(0);
                        }
                        else
                        {
                           §§goto(addr80);
                        }
                     }
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     continue;
                     addr19:
                  }
                  §§goto(addr60);
               }
               §§goto(addr19);
            }
            §§goto(addr82);
         }
         §§goto(addr80);
      }
      
      public function get §4V§() : § y§
      {
         return this.§0!l§;
      }
      
      public function get §;n§() : §>!e§
      {
         return this.§[!E§;
      }
      
      protected function get starling() : §else§
      {
         return this.§3!<§;
      }
      
      public function get §>F§() : int
      {
         return §3!b§;
      }
   }
}
