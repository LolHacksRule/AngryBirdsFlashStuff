package §40§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import § var§.§ 4§;
   import § var§.§!u§;
   import § var§.§3!5§;
   import § var§.§7!r§;
   import §"!i§.§"!'§;
   import §"!i§.§8!o§;
   import §"!i§.§8z§;
   import §"!i§.LevelManager;
   import §&H§.b2Vec2;
   import §1!B§.§<m§;
   import §2@§.§%E§;
   import §2@§.§+!Y§;
   import §2m§.§<!?§;
   import §48§.§5Y§;
   import §5!Q§.§`!Y§;
   import §5<§.§<n§;
   import §8!A§.§-!i§;
   import §;!y§.§,!s§;
   import §<-§.§2B§;
   import §<8§.§,!J§;
   import §=`§.§ !;§;
   import §=`§.§6!I§;
   import §=`§.§7!V§;
   import §`!M§.§%X§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5G§
   {
      
      private static const §@c§:int = 20;
      
      public static const §&!d§:Number;
      
      public static const §;7§:Number;
      
      public static const §6+§:Number = 0.05;
      
      public static const §1V§:Number;
      
      public static const §;9§:Number;
      
      public static const §'!4§:§2B§;
      
      public static var § !T§:Number = 1;
      
      protected static var §>!F§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@c§ = 20;
            loop0:
            while(true)
            {
               §&!d§ = §,!s§.§!"#§;
               while(true)
               {
                  §;7§ = §,!s§.§8p§;
                  loop2:
                  for(; !_loc1_; while(!(_loc1_ && _loc1_))
                  {
                     § !T§ = 1;
                     §§goto(addr47);
                     §§goto(addr31);
                  })
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     §6+§ = 1 / 20;
                     loop3:
                     while(true)
                     {
                        §1V§ = §,!s§.§8p§ * §6+§;
                        while(true)
                        {
                           §§push(§§findproperty(§;9§));
                           §§push(§&!d§);
                           if(!_loc1_)
                           {
                              §§push(§§pop() * §6+§);
                           }
                           §§pop().§;9§ = §§pop();
                           addr89:
                           addr47:
                           while(true)
                           {
                              §'!4§ = new §2B§(13 - 3);
                              continue loop2;
                           }
                           loop7:
                           while(_loc2_ || _loc1_)
                           {
                              while(true)
                              {
                                 §>!F§ = §"!'§.§0D§;
                                 if(_loc1_)
                                 {
                                    continue loop7;
                                 }
                                 if(_loc1_ && §5G§)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 §§goto(addr89);
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      protected var §0!A§:§ 4§;
      
      private var §1z§:§!u§;
      
      private var §"b§:Array = null;
      
      protected var §5!j§:§-!i§;
      
      public var mLevelEngine:§?S§;
      
      protected var §0B§:§[l§;
      
      protected var §+!#§:§%X§;
      
      protected var §@!4§:§1!g§;
      
      protected var §8!e§:§=!%§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §+T§:Boolean = false;
      
      protected var §-!Y§:Boolean = false;
      
      protected var §'!>§:Boolean = false;
      
      public var §9!u§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §7;§:Number;
      
      public var §0!6§:Number;
      
      private var §?!z§:Number;
      
      public var §!!M§:§8!o§;
      
      public var §[!f§:Boolean = false;
      
      private var §""$§:§,!F§;
      
      private var §"w§:Sprite;
      
      protected var §=g§:§"!'§;
      
      protected var §>!j§:§5Y§ = null;
      
      private var §6t§:EventDispatcher;
      
      private var §"!s§:Array;
      
      private var §#N§:Array;
      
      protected var §+X§:§<!?§;
      
      private var §6L§:§,!J§;
      
      protected var §&!k§:§6!I§;
      
      protected var §1H§:§7!V§;
      
      private var §%!V§:§ !;§;
      
      private var §<p§:§ !;§;
      
      private var §[p§:§ !;§;
      
      private var §@e§:Stage;
      
      private var §+!B§:§73§;
      
      protected var §%!^§:§`!Y§;
      
      protected var §6!<§:§`!Y§;
      
      protected var §-"#§:Number = 0.0;
      
      protected var §?W§:String;
      
      private var §!2§:Boolean;
      
      protected var §]M§:Boolean;
      
      protected var §%!?§:uint = 1.417339207E9;
      
      public var §^7§:Boolean;
      
      public function §5G§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§#N§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§6t§ = new EventDispatcher();
                  loop2:
                  while(true)
                  {
                     this.§!!M§ = new §8!o§();
                     loop3:
                     while(true)
                     {
                        this.§@e§ = param1;
                        while(true)
                        {
                           this.§&!k§ = §6!I§.§[U§;
                           addr95:
                           addr67:
                           loop7:
                           while(!(_loc3_ && param1))
                           {
                              while(true)
                              {
                                 this.§<p§ = this.initThemeSoundsManager();
                                 while(_loc4_ || param1)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    this.§[p§ = this.initCutSceneManager();
                                    if(!(_loc4_ || this))
                                    {
                                       continue;
                                    }
                                    if(!(_loc4_ || _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    if(_loc4_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       while(false)
                                       {
                                          §§goto(addr47);
                                       }
                                       var _loc2_:Stage3D = param1.stage3Ds[0];
                                       if(!(_loc3_ && this))
                                       {
                                          this.§+X§ = new §<!?§(§,!F§,param1,new Rectangle(0,0,§,!s§.§!"#§,§,!s§.§8p§),_loc2_);
                                       }
                                       while(true)
                                       {
                                          §,!s§.§]!J§.addEventListener(Event.ENTER_FRAME,this.§+X§.onEnterFrame);
                                          loop12:
                                          for(; !(_loc3_ && _loc3_); while(!(_loc3_ && _loc3_))
                                          {
                                             §§goto(addr185);
                                             §§push(this.§+X§);
                                          })
                                          {
                                             _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§%!y§,false,0,true);
                                             while(true)
                                             {
                                                §§push(this.§+X§);
                                                addr205:
                                                while(true)
                                                {
                                                   §§push(false);
                                                   addr206:
                                                   while(true)
                                                   {
                                                      §§pop().§>B§ = §§pop();
                                                      continue loop12;
                                                   }
                                                }
                                                loop18:
                                                for(; _loc4_ || _loc3_; if(_loc4_ || this)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop12;
                                                })
                                                {
                                                   §§push(this.§+X§);
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§pop().§^!^§ = 2;
                                                      while(true)
                                                      {
                                                         §§push(this.§+X§);
                                                         if(!_loc4_)
                                                         {
                                                            continue loop19;
                                                         }
                                                         addr154:
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§pop().§>F§();
                                                            if(_loc4_)
                                                            {
                                                               continue loop18;
                                                            }
                                                            continue;
                                                         }
                                                         addr185:
                                                         while(true)
                                                         {
                                                            §§push(false);
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§pop().enableErrorChecking = §§pop();
                                                            continue loop18;
                                                            §§goto(addr154);
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr95);
                                    }
                                 }
                                 continue loop7;
                              }
                              continue loop3;
                           }
                           while(true)
                           {
                              this.§1H§ = this.initAnimationManager(this.§&!k§);
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public static function §7!g§(param1:§!u§, param2:§!u§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§`!v§);
         if(_loc6_ || param1)
         {
            §§push(§§pop() - param2.§`!v§);
            if(!(_loc5_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.§&x§);
         if(_loc6_ || param2)
         {
            §§push(§§pop() - param2.§&x§);
            if(_loc6_)
            {
               addr72:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            return §0!o§(_loc3_,_loc4_);
         }
         §§goto(addr72);
      }
      
      public static function §0!o§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§"w§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr78:
                        while(true)
                        {
                           §§push(Boolean(this.§]!_§));
                           if(_loc2_)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     if(_loc1_)
                     {
                        this.§"w§ = this.§""$§.§1M§;
                     }
                     if(!_loc2_)
                     {
                        break;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function get §]!_§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§""$§);
            do
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     this.§""$§ = this.§+X§.§<!h§ as §,!F§;
                     loop4:
                     while(true)
                     {
                        §§push(this.§""$§);
                        addr57:
                        while(true)
                        {
                           §§pop().§&!U§ = false;
                           if(!(_loc2_ && this))
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           continue loop4;
                        }
                     }
                  }
                  addr77:
               }
               while(true)
               {
                  §§push(this.§""$§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr57);
               }
            }
            while(_loc2_);
            
            return §§pop();
         }
         §§goto(addr77);
      }
      
      private function get §,!n§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§]!_§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.§]!_§);
                  }
                  else
                  {
                     §§goto(addr46);
                  }
               }
               §§goto(addr46);
            }
            return (§§pop() as §,!F§).§,!n§;
         }
         addr46:
         return null;
      }
      
      public function get animationManager() : §7!V§
      {
         return this.§1H§;
      }
      
      public function get textureManager() : §6!I§
      {
         return this.§&!k§;
      }
      
      public function get camera() : §%X§
      {
         return this.§+!#§;
      }
      
      public function get objects() : § 4§
      {
         return this.§0!A§;
      }
      
      public function get particles() : §=!%§
      {
         return this.§8!e§;
      }
      
      public function get background() : §-!i§
      {
         return this.§5!j§;
      }
      
      public function get slingshot() : §1!g§
      {
         return this.§@!4§;
      }
      
      public function get activeObject() : §!u§
      {
         return this.§1z§;
      }
      
      public function get §!#§() : §[l§
      {
         return this.§0B§;
      }
      
      public function get stage() : Stage
      {
         return this.§@e§;
      }
      
      public function get §!n§() : § !;§
      {
         return this.§[p§;
      }
      
      protected function get §7%§() : § !;§
      {
         return this.§%!V§;
      }
      
      public function set activeObject(param1:§!u§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§1z§ = param1;
         }
      }
      
      public function set §7K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§]M§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§6L§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§6L§);
                     addr249:
                     while(true)
                     {
                        §§pop().dispose();
                        addr250:
                        while(true)
                        {
                        }
                     }
                     addr209:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     while(true)
                     {
                        §§push(this.§%!V§);
                        if(_loc2_ || _loc1_)
                        {
                           if(_loc2_)
                           {
                              §§push(§§pop().textureManager);
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop29:
                                 while(true)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.§%!V§);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().textureManager);
                                                         while(true)
                                                         {
                                                            §§pop().dispose();
                                                            addr199:
                                                            while(true)
                                                            {
                                                               addr134:
                                                               while(true)
                                                               {
                                                                  §§push(this.§[p§);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr138:
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc1_ && this))
                                                                                 {
                                                                                    §§pop();
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§[p§);
                                                                                       if(!(_loc1_ && _loc1_))
                                                                                       {
                                                                                          continue loop14;
                                                                                       }
                                                                                       addr131:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().textureManager);
                                                                                          addr132:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().dispose();
                                                                                             addr133:
                                                                                             addr65:
                                                                                             while(true)
                                                                                             {
                                                                                                addr42:
                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                {
                                                                                                   continue loop17;
                                                                                                }
                                                                                             }
                                                                                             addr65:
                                                                                             §§pop().dispose();
                                                                                             addr66:
                                                                                             if(_loc2_ || _loc1_)
                                                                                             {
                                                                                                §§goto(addr20);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr233:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§&!k§);
                                                                                                addr235:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().dispose();
                                                                                                   addr236:
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr200:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§%!V§);
                                                                                                         addr203:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            addr204:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               break loop15;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr66);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop14;
                                                                                 }
                                                                                 continue loop29;
                                                                              }
                                                                              continue loop29;
                                                                              addr147:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr123:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§goto(addr131);
                                                                                       §§push(this.§[p§);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr250);
                                                                                    }
                                                                                    §§goto(addr235);
                                                                                 }
                                                                                 §§goto(addr133);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§+X§);
                                                                              if(_loc2_ || this)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc1_ && this))
                                                                                    {
                                                                                       §§goto(addr42);
                                                                                    }
                                                                                    §§goto(addr65);
                                                                                 }
                                                                                 addr20:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr65);
                                                                              §§goto(addr133);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr197:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         §§goto(addr209);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr236);
                                                      }
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr199);
                                             }
                                             §§goto(addr134);
                                          }
                                       }
                                       §§goto(addr204);
                                    }
                                    §§goto(addr206);
                                 }
                              }
                           }
                           §§goto(addr203);
                        }
                        §§goto(addr197);
                     }
                     addr226:
                  }
               }
               while(true)
               {
                  §§push(this.§&!k§);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        §§goto(addr233);
                     }
                     §§goto(addr200);
                  }
                  §§goto(addr235);
                  §§goto(addr250);
               }
            }
            §§goto(addr249);
         }
         §§goto(addr226);
      }
      
      protected function initThemeGraphicsManager() : § !;§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : § !;§
      {
         return null;
      }
      
      protected function initCutSceneManager() : § !;§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§6!I§) : §7!V§
      {
         return new §7!V§(param1);
      }
      
      public function §!C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(§<!?§.§,=§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(!param1)
                     {
                        §§push(§<!?§.§,=§);
                        while(true)
                        {
                           §§pop().stop();
                           addr74:
                           §§goto(addr93);
                        }
                     }
                  }
                  addr93:
                  addr20:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                  }
                  addr94:
                  §§pop().start();
                  addr20:
                  return;
                  §§push(§<!?§.§,=§);
               }
               §§goto(addr20);
            }
            §§goto(addr93);
         }
         §§goto(addr76);
      }
      
      public function §1!9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.sprite);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     addr47:
                     this.sprite.visible = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      public function §2""§() : §5Y§
      {
         return this.§>!j§;
      }
      
      public function setController(param1:§5Y§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§>!j§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_ || param1)
                  {
                     addr84:
                     §§push(this.§>!j§);
                     while(true)
                     {
                        §§pop().removeEventListeners();
                        addr85:
                        while(true)
                        {
                        }
                     }
                     addr84:
                  }
                  §§goto(addr85);
               }
               loop0:
               while(true)
               {
                  this.§>!j§ = param1;
                  while(this.mReadyToRun)
                  {
                     if(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        §§push(this.§>!j§);
                        if(!(_loc3_ && param1))
                        {
                           §§pop().addEventListeners();
                        }
                        else
                        {
                           §§goto(addr84);
                        }
                     }
                     break;
                  }
                  return;
               }
            }
            §§goto(addr84);
         }
         §§goto(addr85);
      }
      
      public function §0'§() : §`!Y§
      {
         return this.§%!^§;
      }
      
      public function §"!t§(param1:§,!J§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            this.§6L§ = param1;
         }
         §§push(this.§6L§.§8L§);
         if(!(_loc7_ && param3))
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               if(!(_loc7_ && this))
               {
                  if(!_loc7_)
                  {
                     if(param3 != null)
                     {
                        if(_loc6_ || param1)
                        {
                           this.§6t§.addEventListener(Event.INIT,param3);
                           while(_loc6_)
                           {
                              this.§#N§.push(param3);
                              while(true)
                              {
                              }
                           }
                           _loc5_++;
                           addr119:
                           continue;
                           addr119:
                           addr134:
                        }
                        §§goto(addr119);
                     }
                     while(this.§1K§(param2))
                     {
                        if(!_loc7_)
                        {
                           if(_loc6_)
                           {
                              this.§",§();
                           }
                           else
                           {
                              §§goto(addr119);
                           }
                        }
                        if(!(_loc7_ && param1))
                        {
                           break;
                        }
                        §§goto(addr79);
                     }
                     return;
                  }
                  continue;
               }
               §§goto(addr119);
            }
            else
            {
               this.§&!k§.§@!V§(this.§6L§.§#%§(_loc5_));
            }
            §§goto(addr134);
         }
      }
      
      private function §1K§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         if(_loc4_ || this)
         {
            §§push(this.§&!k§);
            if(!_loc5_)
            {
               §§push(§§pop().§`R§());
               loop0:
               for(; !§§pop(); if(!(_loc5_ && _loc2_))
               {
                  return §§pop();
               })
               {
                  loop1:
                  while(true)
                  {
                     this.§"!s§ = param1.concat();
                     if(!(_loc5_ && param1))
                     {
                        if(!(_loc5_ && param1))
                        {
                           §§push(false);
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           loop2:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§&!k§);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(§§pop().§5j§);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(1000);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc4_ || _loc2_)
                                                {
                                                   addr181:
                                                   §§push(int(§§pop()));
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                }
                                                addr200:
                                             }
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                                continue loop3;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr199:
                                          }
                                          §§goto(addr200);
                                       }
                                       §§goto(addr181);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr198:
                                    }
                                    §§goto(addr199);
                                 }
                                 _loc3_ = §§pop();
                                 break loop1;
                              }
                              addr138:
                              while(true)
                              {
                                 this.initializeAnimations(param1);
                                 continue loop2;
                              }
                           }
                           return true;
                        }
                        return §§pop();
                     }
                     if(_loc5_ && _loc2_)
                     {
                        break;
                     }
                     if(_loc5_)
                     {
                        break loop0;
                     }
                  }
                  while(true)
                  {
                     §§push(§<m§);
                     §§push("\n\nMain texture manager memory usage:\n   textures ");
                     if(!_loc5_)
                     {
                        §§push(_loc2_);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc4_ || this)
                           {
                              §§push(" kilobytes\n   bitmaps ");
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc5_)
                                 {
                                    addr127:
                                    §§push(§§pop() + _loc3_);
                                    if(_loc5_ && _loc3_)
                                    {
                                    }
                                    addr137:
                                    §§pop().log(§§pop());
                                    §§goto(addr138);
                                 }
                                 §§push(" kilobytes\n\n");
                              }
                              §§goto(addr137);
                              §§push(§§pop() + §§pop());
                           }
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr127);
                  }
               }
               §§push(this.§&!k§);
            }
            §§goto(addr198);
         }
         §§goto(addr189);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§1H§.initializeAnimations(param1);
         }
      }
      
      private function §%!y§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!k§.§6!U§();
            loop0:
            while(true)
            {
               §§push(this.§7%§);
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
                                 §§push(this.§7%§);
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    §§push(§§pop().textureManager);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       addr346:
                                       while(true)
                                       {
                                          loop44:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop45:
                                                while(true)
                                                {
                                                   §§push(this.§7%§);
                                                   addr350:
                                                   while(!_loc2_)
                                                   {
                                                      §§push(§§pop().textureManager);
                                                      while(true)
                                                      {
                                                         §§pop().§6!U§();
                                                         addr354:
                                                         while(true)
                                                         {
                                                         }
                                                         addr102:
                                                         if(_loc2_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop38:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || this)
                                                               {
                                                                  addr117:
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§push(this.§[p§);
                                                                     loop37:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().textureManager);
                                                                        loop35:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§pop().§6!U§();
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(this.§[p§);
                                                                                    if(!(_loc2_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          loop34:
                                                                                          while(§§pop())
                                                                                          {
                                                                                             if(!(_loc3_ || this))
                                                                                             {
                                                                                                continue loop38;
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§push(this.§[p§);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop37;
                                                                                                   }
                                                                                                   §§push(§§pop().textureManager);
                                                                                                   if(_loc2_ && param1)
                                                                                                   {
                                                                                                      continue loop35;
                                                                                                   }
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      addr95:
                                                                                                      if(_loc3_ || param1)
                                                                                                      {
                                                                                                         §§goto(addr102);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            loop17:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc3_ || _loc2_))
                                                                                                               {
                                                                                                                  continue loop44;
                                                                                                               }
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               loop41:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(_loc3_ || param1)
                                                                                                                     {
                                                                                                                        addr304:
                                                                                                                        §§push(this.§!n§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().textureManager);
                                                                                                                           addr307:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().§6!U§();
                                                                                                                              addr308:
                                                                                                                              while(!(_loc2_ && _loc2_))
                                                                                                                              {
                                                                                                                              }
                                                                                                                              §§goto(addr354);
                                                                                                                           }
                                                                                                                           §§goto(addr304);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                     addr297:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(this.§"!s§)
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           this.§1K§(this.§"!s§);
                                                                                                                           break loop38;
                                                                                                                        }
                                                                                                                        break loop38;
                                                                                                                     }
                                                                                                                     loop23:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§>!j§);
                                                                                                                        loop24:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == null);
                                                                                                                           if(!(_loc2_ && this))
                                                                                                                           {
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 loop25:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!(_loc2_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             loop26:
                                                                                                                                             while(_loc3_)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.mReadyToRun);
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue loop25;
                                                                                                                                                      }
                                                                                                                                                      continue loop26;
                                                                                                                                                      continue loop26;
                                                                                                                                                   }
                                                                                                                                                   addr185:
                                                                                                                                                   addr322:
                                                                                                                                                   if(_loc3_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§>!j§);
                                                                                                                                                               if(!_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§pop().addEventListeners();
                                                                                                                                                               loop30:
                                                                                                                                                               for(; _loc3_; while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop30;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr154);
                                                                                                                                                               })
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop45;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§%!V§);
                                                                                                                                                                        if(_loc3_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§%!V§);
                                                                                                                                                                              }
                                                                                                                                                                              addr144:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop34;
                                                                                                                                                                                 addr154:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().§`R§();
                                                                                                                                                                           continue loop30;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        this.§",§();
                                                                                                                                                                        break loop30;
                                                                                                                                                                     }
                                                                                                                                                                     addr248:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop23;
                                                                                                                                                                  }
                                                                                                                                                                  addr319:
                                                                                                                                                                  addr323:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§!n§);
                                                                                                                                                                     if(_loc3_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc2_ && _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop().textureManager);
                                                                                                                                                                        continue loop16;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr306);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     break loop24;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop38;
                                                                                                                                                            }
                                                                                                                                                            continue loop24;
                                                                                                                                                            addr194:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr133);
                                                                                                                                                      }
                                                                                                                                                      addr192:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      §§goto(addr323);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop25;
                                                                                                                                             }
                                                                                                                                             continue loop17;
                                                                                                                                          }
                                                                                                                                          §§goto(addr192);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop41;
                                                                                                                                    }
                                                                                                                                    §§goto(addr322);
                                                                                                                                 }
                                                                                                                                 addr221:
                                                                                                                                 addr321:
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr221);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr321);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr307);
                                                                                                }
                                                                                                §§goto(addr237);
                                                                                             }
                                                                                             §§goto(addr144);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       addr20:
                                                                                       addr20:
                                                                                       continue;
                                                                                    }
                                                                                    continue loop37;
                                                                                 }
                                                                                 §§goto(addr297);
                                                                              }
                                                                              continue loop37;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc3_ || this)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§"!s§ = null;
                                                                     §§goto(addr248);
                                                                  }
                                                                  addr266:
                                                               }
                                                               break;
                                                               §§goto(addr117);
                                                            }
                                                            §§goto(addr308);
                                                         }
                                                         §§goto(addr20);
                                                      }
                                                      continue loop45;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr319);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr350);
                              }
                           }
                        }
                        §§goto(addr346);
                     }
                  }
               }
            }
         }
         §§goto(addr266);
      }
      
      private function §",§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§6t§.dispatchEvent(new Event(Event.INIT));
            do
            {
               this.§''§();
            }
            while(!_loc2_);
            
         }
      }
      
      private function §''§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Function = null;
         var _loc3_:* = this.§#N§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_)
            {
               this.§6t§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!(_loc4_ && _loc3_))
         {
            this.§#N§ = [];
         }
      }
      
      public function init(param1:§"!'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.mReadyToRun);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.clearLevel();
                     addr276:
                     while(true)
                     {
                     }
                  }
                  addr274:
               }
               while(true)
               {
                  this.§0B§ = new §[l§(this,param1);
                  while(true)
                  {
                     this.§+!#§ = this.§9!x§(param1);
                     while(true)
                     {
                        this.§7;§ = 0;
                        loop6:
                        while(true)
                        {
                           this.§0!6§ = 0;
                           addr250:
                           while(true)
                           {
                              this.§?!z§ = 0;
                              addr245:
                              while(true)
                              {
                                 this.§!2§ = false;
                                 continue loop6;
                              }
                           }
                        }
                        if(_loc2_ || param1)
                        {
                           return;
                        }
                     }
                     if(!(_loc2_ || param1))
                     {
                        continue;
                     }
                     if(_loc2_ || param1)
                     {
                        while(true)
                        {
                           §§goto(addr55);
                        }
                        addr146:
                     }
                     §§goto(addr276);
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      protected function §?!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§%!^§ = new §`!Y§(LevelManager.§"L§);
         }
      }
      
      protected function §5!y§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§%!V§)
            {
               if(_loc2_)
               {
                  addr23:
                  §§push(false);
                  if(_loc2_ || _loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr32:
                  return true;
               }
               return §§pop();
            }
            §§goto(addr32);
         }
         §§goto(addr23);
      }
      
      protected function §8F§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+!Y§ = null;
         if(_loc4_)
         {
            if(this.§<p§)
            {
               §§goto(addr25);
            }
            §§goto(addr103);
         }
         addr25:
         _loc2_ = §%E§.§8!G§(param1);
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc3_)
               {
                  §§push(Boolean(_loc2_.§9E§));
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§goto(addr63);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr85);
                     }
                     addr93:
                     if(§§pop())
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr101:
                           §§push(false);
                        }
                        else
                        {
                           §§goto(addr103);
                        }
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr85);
               }
               §§goto(addr101);
            }
            addr103:
            return true;
         }
         addr63:
         §§push(this.§<p§.§6j§(_loc2_.§9E§));
         if(_loc4_ || _loc3_)
         {
            addr85:
            §§push(!§§pop());
            if(!(_loc3_ && _loc3_))
            {
               §§goto(addr93);
            }
         }
         return §§pop();
      }
      
      protected function §2!_§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§+!Y§ = null;
         if(!_loc3_)
         {
            §§push(this.§%!V§);
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
                        addr290:
                        while(true)
                        {
                           §§pop();
                           addr291:
                           while(true)
                           {
                              §§push(this.§5!y§(param1));
                              addr262:
                              while(!_loc3_)
                              {
                                 §§push(!§§pop());
                              }
                              continue loop1;
                           }
                        }
                        addr290:
                     }
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop18:
                              while(true)
                              {
                                 §§push(this.§<p§);
                                 loop19:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc4_ || _loc2_))
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop26:
                                          while(true)
                                          {
                                             §§pop();
                                             loop27:
                                             while(true)
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(this.§8F§(param1));
                                                   if(!_loc3_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   continue loop26;
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this.§%!V§);
                                                   loop11:
                                                   for(; !_loc3_; while(!(_loc3_ && param1))
                                                   {
                                                      §§pop().addEventListener(Event.CANCEL,this.§4l§);
                                                      §§goto(addr228);
                                                      §§goto(addr230);
                                                   })
                                                   {
                                                      §§pop().removeEventListener(Event.CANCEL,this.§4l§);
                                                      while(true)
                                                      {
                                                         §§push(this.§%!V§);
                                                         continue loop0;
                                                         addr59:
                                                         if(_loc4_ || this)
                                                         {
                                                            addr66:
                                                            if(false)
                                                            {
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  §§push(this.§<p§);
                                                                  addr71:
                                                                  loop30:
                                                                  while(!(_loc3_ && this))
                                                                  {
                                                                     §§pop().addEventListener(Event.COMPLETE,this.§'t§);
                                                                     for(; _loc4_; §§pop().addEventListener(Event.CANCEL,this.§+f§),if(!(_loc4_ || this))
                                                                     {
                                                                        continue;
                                                                     },if(_loc4_ || param1)
                                                                     {
                                                                        §§goto(addr59);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr164);
                                                                     })
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(this.§<p§);
                                                                           if(_loc3_ && _loc2_)
                                                                           {
                                                                              continue loop30;
                                                                           }
                                                                           addr33:
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr159:
                                                                           while(true)
                                                                           {
                                                                              §§pop().removeEventListener(Event.COMPLETE,this.§'t§);
                                                                              addr164:
                                                                              addr205:
                                                                              while(_loc4_ || param1)
                                                                              {
                                                                                 §§push(this.§<p§);
                                                                                 break loop30;
                                                                              }
                                                                              addr267:
                                                                              while(!(_loc3_ && this))
                                                                              {
                                                                                 continue loop18;
                                                                                 §§goto(addr164);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§%!V§);
                                                                                 break loop11;
                                                                              }
                                                                              §§goto(addr33);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§%!V§);
                                                                              continue loop11;
                                                                           }
                                                                           addr246:
                                                                        }
                                                                     }
                                                                     while(_loc4_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           continue loop29;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc3_ && _loc2_)
                                                                        {
                                                                           continue loop27;
                                                                        }
                                                                        if(!_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(this.§%!V§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§pop().§-!a§(param1);
                                                                                 addr230:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr291);
                                                                              }
                                                                           }
                                                                           continue loop0;
                                                                           addr228:
                                                                        }
                                                                        §§goto(addr159);
                                                                        §§push(this.§<p§);
                                                                        §§goto(addr205);
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                            }
                                                            _loc2_ = §%E§.§8!G§(param1);
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     this.§<p§.§-!a§(_loc2_.§9E§);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr308);
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().removeEventListener(Event.COMPLETE,this.§&&§);
                                                      continue loop10;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr290);
                                          addr187:
                                       }
                                       while(§§pop())
                                       {
                                          §§goto(addr138);
                                          §§goto(addr129);
                                       }
                                       addr308:
                                       return;
                                    }
                                    §§goto(addr187);
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr267);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      private function §&&§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§%!V§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§&&§);
               while(true)
               {
                  §§push(this.§%!V§);
                  if(_loc2_ && this)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§4l§);
                  while(_loc3_ || this)
                  {
                     this.§-!Y§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§-!Y§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc3_)
                                    {
                                       this.initialize(this.§=g§);
                                       continue loop3;
                                    }
                                    addr93:
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§'!>§);
                                       if(!(_loc2_ && param1))
                                       {
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             continue loop5;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc3_ || this)
                                       {
                                          continue loop4;
                                       }
                                       addr92:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop8;
                                       }
                                    }
                                 }
                                 addr25:
                                 return;
                                 addr66:
                              }
                              §§goto(addr92);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      private function §4l§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§%!V§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§&&§);
               while(true)
               {
                  §§push(this.§%!V§);
                  if(_loc3_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§4l§);
                  do
                  {
                     this.§+T§ = true;
                  }
                  while(_loc3_);
                  
                  if(!_loc3_)
                  {
                     return;
                     addr56:
                  }
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §'t§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§%!V§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§'t§);
               loop1:
               while(true)
               {
                  §§push(this.§%!V§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§+f§);
                  loop2:
                  while(true)
                  {
                     this.§'!>§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§-!Y§);
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr85:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    addr73:
                                    if(_loc3_ || _loc2_)
                                    {
                                       addr80:
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 return;
                                 addr41:
                              }
                              while(true)
                              {
                                 §§pop();
                                 continue loop3;
                              }
                           }
                           addr34:
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr41);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      private function §+f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§%!V§);
            while(true)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§'t§);
               loop1:
               while(true)
               {
                  §§push(this.§%!V§);
                  if(_loc2_)
                  {
                     break;
                  }
                  §§pop().removeEventListener(Event.CANCEL,this.§+f§);
                  loop2:
                  while(true)
                  {
                     this.§'!>§ = true;
                     loop3:
                     while(true)
                     {
                        §§push(this.§-!Y§);
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(!(_loc2_ && this))
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr110:
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§'!>§);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(!_loc2_)
                                          {
                                             while(§§pop())
                                             {
                                                if(!(_loc2_ && param1))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   this.initialize(this.§=g§);
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop7;
                                             }
                                             addr25:
                                             return;
                                             addr49:
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                                 addr109:
                              }
                              §§goto(addr49);
                           }
                           §§goto(addr109);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function get backgroundTextureManager() : §6!I§
      {
         return this.§&!k§;
      }
      
      protected function initialize(param1:§"!'§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]M§ = false;
            while(true)
            {
               this.§^7§ = false;
               while(true)
               {
                  §§push(§<!?§.§#T§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        continue;
                     }
                     loop3:
                     while(true)
                     {
                        this.mLevelEngine = new §?S§(this);
                        while(true)
                        {
                           §§push(this);
                           §§push(this);
                           §§push(param1.theme);
                           §§push(this.§0B§.§]!L§);
                           if(!(_loc2_ && this))
                           {
                              §§push(§§pop() / §6+§);
                           }
                           §§pop().§5!j§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§+!#§.§25§());
                           while(true)
                           {
                              this.§5!j§.§'6§(§,!s§.§^@§());
                              while(_loc3_)
                              {
                                 this.§0!A§ = this.initLevelObjectManager(param1);
                                 loop7:
                                 while(true)
                                 {
                                    this.§@!4§ = this.initLevelSlingshot(param1);
                                    addr137:
                                    while(true)
                                    {
                                       this.§8!e§ = this.§=!u§(this.§1H§,this.§&!k§);
                                       continue loop7;
                                    }
                                 }
                                 while(!(_loc2_ && _loc3_))
                                 {
                                    this.§'!A§();
                                    §§goto(addr73);
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     addr179:
                  }
                  else
                  {
                     while(true)
                     {
                        §§pop().speed = 1;
                     }
                     addr218:
                  }
                  while(true)
                  {
                     §§goto(addr179);
                  }
               }
               if(_loc2_ && param1)
               {
                  continue;
               }
               §§goto(addr218);
               §§push(§<!?§.§#T§);
            }
         }
         §§goto(addr113);
      }
      
      protected function §'!A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§?W§)
            {
               if(!_loc1_)
               {
                  addr100:
                  this.§6!<§ = §`!Y§.initialize(this.§?W§);
               }
               loop0:
               while(true)
               {
                  §§push(this.§6!<§);
                  while(true)
                  {
                     §§pop().speed = 1;
                     addr94:
                     while(true)
                     {
                        §§push(this.§6!<§);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§pop().play();
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr100);
      }
      
      public function §!!§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§?W§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§6!<§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§6!<§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     if(!param1)
                     {
                        §§push(this.§6!<§);
                        if(!_loc3_)
                        {
                           §§pop().speed = Math.max(this.§6!<§.speed / 1.25,Math.pow(1 / 1.25,10));
                           if(!(_loc3_ && _loc2_))
                           {
                              if(_loc3_)
                              {
                              }
                              §§goto(addr19);
                           }
                           addr102:
                           addr19:
                           return;
                           addr102:
                        }
                        addr90:
                        §§pop().speed = Math.min(this.§6!<§.speed * 1.25,Math.pow(1.25,2));
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr90);
                  §§push(this.§6!<§);
               }
               §§goto(addr19);
            }
            §§goto(addr90);
         }
         §§goto(addr102);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§6!<§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().speed = 1;
         }
         addr44:
         if(!_loc2_)
         {
            §§push(this.§6!<§);
         }
      }
      
      protected function initLevelObjectManager(param1:§"!'§) : § 4§
      {
         return new § 4§(this,param1,new Sprite());
      }
      
      protected function §9!x§(param1:§"!'§) : §%X§
      {
         return new §%X§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§6!I§, param4:Number) : §-!i§
      {
         return new §-!i§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§"!'§) : §1!g§
      {
         return new §1!g§(this,param1,new Sprite());
      }
      
      protected function §=!u§(param1:§7!V§, param2:§6!I§) : §=!%§
      {
         return new §=!%§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(this.mReadyToRun)
            {
               if(_loc6_ || param2)
               {
                  addr28:
                  this.clearLevel();
               }
            }
            var _loc3_:§"!'§ = this.§1j§();
            var _loc4_:§8z§;
            (_loc4_ = new §8z§()).left = 0;
            if(_loc6_)
            {
               §§push(_loc4_);
               §§push(§%X§.§8!@§);
               if(_loc6_)
               {
                  §§push(-§§pop());
                  if(!(_loc7_ && param2))
                  {
                     §§push(10);
                     if(_loc6_ || param1)
                     {
                        addr152:
                        §§push(§§pop() / §§pop());
                        if(_loc6_)
                        {
                           §§push(8);
                        }
                        §§pop().top = §§pop();
                        loop0:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(_loc4_.top);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + §%X§.§8!@§);
                           }
                           §§pop().bottom = §§pop();
                           loop1:
                           while(true)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.left);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(§§pop() + §%X§.§ !9§);
                              }
                              §§pop().right = §§pop();
                              loop2:
                              while(true)
                              {
                                 _loc4_.y = -13.929;
                                 while(true)
                                 {
                                    _loc4_.x = §%X§.§ !9§;
                                    loop4:
                                    for(; _loc6_ || _loc3_; if(!(_loc7_ && _loc3_))
                                    {
                                       continue loop1;
                                    })
                                    {
                                       while(true)
                                       {
                                          _loc4_.id = §%X§.§9C§;
                                          while(_loc6_)
                                          {
                                             if(!_loc7_)
                                             {
                                                _loc3_.§7!x§(_loc4_);
                                                if(_loc6_ || param1)
                                                {
                                                   continue loop4;
                                                }
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                              if(_loc7_ && this)
                              {
                                 continue;
                              }
                              while(false)
                              {
                                 §§goto(addr71);
                              }
                              var _loc5_:§8z§;
                              (_loc5_ = new §8z§()).top = _loc4_.top;
                              if(_loc6_)
                              {
                                 _loc5_.bottom = _loc4_.bottom;
                                 loop8:
                                 while(true)
                                 {
                                    _loc5_.left = 150;
                                    loop9:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       §§push(_loc5_.left);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() + §%X§.§ !9§);
                                       }
                                       §§pop().right = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          §§push(_loc5_.top);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§push(§§pop() + §%X§.§8!@§);
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
                                                if(_loc6_)
                                                {
                                                   §§push(§%X§.§ !9§);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() / 2);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                }
                                                §§pop().x = §§pop();
                                                loop14:
                                                while(_loc6_ || param2)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   _loc3_.§7!x§(_loc5_);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      this.§@R§(_loc3_,param2);
                                                      loop16:
                                                      for(; !_loc7_; if(!(_loc6_ || this))
                                                      {
                                                         continue;
                                                      },§§goto(addr226))
                                                      {
                                                         §§push(param1);
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(null);
                                                            loop18:
                                                            while(§§pop() == §§pop())
                                                            {
                                                               §§push(§>!F§);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(null);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(§§pop() != §§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           _loc3_.theme = §>!F§;
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                        addr212:
                                                                     }
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        this.init(_loc3_);
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              addr187:
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              addr236:
                                                                              while(_loc6_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop21;
                                                                                 }
                                                                                 addr283:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_.id = §%X§.§;l§;
                                                                                    break loop16;
                                                                                 }
                                                                                 §§goto(addr187);
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           §§goto(addr212);
                                                                        }
                                                                        §§goto(addr217);
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop17;
                                                            }
                                                            while(!_loc7_)
                                                            {
                                                               _loc3_.theme = param1;
                                                               §§goto(addr236);
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      continue loop14;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr283);
                           }
                        }
                     }
                     §§push(§§pop() * §§pop());
                  }
               }
               §§goto(addr152);
            }
            §§goto(addr69);
         }
         §§goto(addr28);
      }
      
      protected function §@R§(param1:§"!'§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(param2)
            {
               if(_loc3_ || param2)
               {
                  addr42:
                  this.§=T§(param1);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      protected function §1j§() : §"!'§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§"!'§ = new §"!'§();
         if(!_loc2_)
         {
            _loc1_.§=!M§ = -12;
         }
         return new §"!'§();
      }
      
      protected function §-A§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§%!?§ ^= this.§%!?§ << 21;
         }
         do
         {
            §§push(this);
            §§push(this.§%!?§);
            §§push(this.§%!?§);
            if(!_loc1_)
            {
               §§push(§§pop() >>> 35);
            }
            §§pop().§%!?§ = §§pop() ^ §§pop();
            do
            {
               this.§%!?§ ^= this.§%!?§ << 4;
            }
            while(_loc1_);
            
         }
         while(_loc1_);
         
         return this.§%!?§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §=T§(param1:§"!'§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§<n§ = null;
         if(!(_loc6_ && _loc2_))
         {
            §§push(this);
            §§push(0.33);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§%!?§ = §§pop();
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
                  if(_loc7_)
                  {
                     _loc3_ = §§pop();
                     if(_loc7_)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc6_ && _loc3_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(5);
                              if(_loc6_ && _loc3_)
                              {
                                 break;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    _loc2_++;
                                    if(!(_loc7_ || _loc2_))
                                    {
                                       break loop2;
                                    }
                                 }
                                 continue loop0;
                              }
                              §§push(this.§-A§());
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(§§pop() * 5);
                              }
                              §§push(int(§§pop()));
                              if(_loc6_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 if(!(_loc7_ || param1))
                                 {
                                    continue loop0;
                                 }
                                 §§push(_loc5_ = new §<n§());
                                 §§push(30 + _loc3_ * 10);
                                 if(_loc7_ || _loc3_)
                                 {
                                    §§push(this.§-A§());
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§push(§§pop() * 9);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().x = §§pop();
                                 if(_loc7_ || this)
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
                                             if(_loc7_ || _loc2_)
                                             {
                                                §§push(this.§-A§());
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(§§pop() * 3);
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      addr379:
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(_loc3_ * 8);
                                                      }
                                                      §§pop().y = §§pop();
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§push(_loc3_);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() + §§pop() * _loc3_);
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              addr269:
                                                                              §§push(_loc2_);
                                                                              if(!(_loc6_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    addr286:
                                                                                    §§push(§§pop() % 5);
                                                                                 }
                                                                              }
                                                                              §§goto(addr286);
                                                                           }
                                                                           §§push(int(§§pop()));
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc6_ && param1))
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(2);
                                                                                       addr312:
                                                                                       addr429:
                                                                                       while(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!(_loc6_ && _loc2_))
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            _loc5_.id = "PIG_MUSTACHE";
                                                                                                            loop27:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop15:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  §§push(45);
                                                                                                                  §§push(this.§-A§());
                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * 90);
                                                                                                                  }
                                                                                                                  §§pop().angle = §§pop() - §§pop();
                                                                                                                  addr404:
                                                                                                                  addr418:
                                                                                                                  loop16:
                                                                                                                  while(_loc7_ || _loc3_)
                                                                                                                  {
                                                                                                                     loop17:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        param1.addObject(_loc5_);
                                                                                                                        while(_loc7_ || _loc3_)
                                                                                                                        {
                                                                                                                           _loc3_++;
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 break loop17;
                                                                                                                              }
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 continue loop17;
                                                                                                                              }
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        loop19:
                                                                                                                        for(; !(_loc7_ || param1); while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           §§push(this.§-A§());
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * 360);
                                                                                                                           }
                                                                                                                           §§pop().angle = §§pop();
                                                                                                                           continue loop19;
                                                                                                                        })
                                                                                                                        {
                                                                                                                           if(_loc6_ && param1)
                                                                                                                           {
                                                                                                                              addr228:
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              addr330:
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           if(!(_loc7_ || this))
                                                                                                                           {
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     loop21:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr468:
                                                                                                                        §§push(_loc3_ == 1);
                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           loop22:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 addr478:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr479:
                                                                                                                                    if(_loc7_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr452:
                                                                                                                                          §§push(§§pop() == 2);
                                                                                                                                       }
                                                                                                                                       addr451:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc5_.y = 0;
                                                                                                                                          continue loop21;
                                                                                                                                       }
                                                                                                                                       addr490:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr478:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr478);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop15;
                                                                                                                     §§goto(addr404);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr464:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            break loop9;
                                                                                                         }
                                                                                                      }
                                                                                                      addr443:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc5_.id = "PIG_HELMET";
                                                                                                   }
                                                                                                   §§goto(addr418);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr478);
                                                                                          }
                                                                                          §§goto(addr454);
                                                                                       }
                                                                                       §§goto(addr463);
                                                                                    }
                                                                                    addr311:
                                                                                 }
                                                                                 §§goto(addr452);
                                                                              }
                                                                              §§goto(addr312);
                                                                           }
                                                                           §§goto(addr311);
                                                                        }
                                                                        §§goto(addr286);
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§goto(addr312);
                                                               }
                                                               break;
                                                               if(!(_loc7_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  §§push(3);
                                                                  if(!_loc7_)
                                                                  {
                                                                     §§goto(addr312);
                                                                  }
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              _loc5_.id = "BIRD_YELLOW";
                                                                              §§goto(addr228);
                                                                           }
                                                                           §§goto(addr479);
                                                                        }
                                                                        §§goto(addr228);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc5_.id = "BIRD_BLUE";
                                                                     }
                                                                     §§goto(addr159);
                                                                  }
                                                               }
                                                               §§goto(addr468);
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§goto(addr429);
                                                                  §§push(4);
                                                               }
                                                               §§goto(addr451);
                                                               §§goto(addr464);
                                                            }
                                                         }
                                                         §§goto(addr443);
                                                      }
                                                   }
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             §§goto(addr379);
                                          }
                                          §§goto(addr490);
                                       }
                                    }
                                 }
                                 §§goto(addr175);
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  §§goto(addr70);
               }
               return;
            }
         }
      }
      
      public function §1!j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§-!i§.§>_§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  addr181:
                  while(true)
                  {
                     this.§;F§(this.§5!j§.§8y§,false);
                     addr187:
                     while(true)
                     {
                     }
                  }
                  addr181:
               }
               while(true)
               {
                  this.§;F§(this.§8!e§.§ in§(§=!%§.§3!z§),false);
                  loop2:
                  while(true)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        this.§;F§(this.§8!e§.§ in§(§=!%§.§#,§),true);
                        loop3:
                        while(true)
                        {
                           this.§;F§(this.§8!e§.§ in§(§=!%§.§,V§),true);
                           loop4:
                           while(true)
                           {
                              this.§;F§(this.§0!A§.§1?§,true);
                              loop5:
                              while(_loc2_)
                              {
                                 this.§;F§(this.§@!4§.sprite,true);
                                 loop6:
                                 do
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       this.§;F§(this.§8!e§.§ in§(§=!%§.§2k§),true);
                                       while(_loc2_)
                                       {
                                          this.§;F§(this.§5!j§.§!!u§,false);
                                          while(true)
                                          {
                                             if(!_loc1_)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop2;
                                             }
                                             continue loop5;
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             this.§;F§(this.§8!e§.§ in§(§=!%§.§5+§),true);
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                continue loop6;
                                             }
                                             addr66:
                                             while(true)
                                             {
                                                continue loop10;
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue loop4;
                                       addr103:
                                    }
                                 }
                                 while(!_loc2_);
                                 
                                 return;
                              }
                              continue loop3;
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr181);
                     }
                     §§goto(addr187);
                  }
               }
            }
         }
         §§goto(addr181);
      }
      
      protected function §;F§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.sprite);
            if(!(_loc4_ && param1))
            {
               if(§§pop())
               {
                  if(_loc3_ || param2)
                  {
                     addr52:
                     this.sprite.addChild(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Point = new Point();
         if(_loc5_)
         {
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§,!s§.§8;§);
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr134:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr133:
            }
            loop2:
            while(true)
            {
               param1 = §§pop();
               while(true)
               {
                  §§push(param2);
                  if(!_loc4_)
                  {
                     if(_loc5_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§,!s§.§8;§);
                           if(!_loc4_)
                           {
                              §§push(§§pop() / §§pop());
                              if(!(_loc4_ && _loc3_))
                              {
                                 addr123:
                                 §§push(Number(§§pop()));
                              }
                              param2 = §§pop();
                              loop4:
                              while(!_loc4_)
                              {
                                 while(true)
                                 {
                                    _loc3_.x = (param1 / §%X§.§'!f§ + this.§+!#§.§[!H§ - §%X§.§+!_§ / §%X§.§'!f§) * §6+§;
                                    do
                                    {
                                       _loc3_.y = (param2 / §%X§.§'!f§ + this.§+!#§.§@!6§ - §%X§.§ !o§ / §%X§.§'!f§) * §6+§;
                                    }
                                    while(!_loc5_);
                                    
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 return _loc3_;
                              }
                              continue;
                           }
                           §§goto(addr133);
                        }
                        break;
                     }
                     continue loop2;
                  }
                  §§goto(addr123);
               }
               §§goto(addr134);
            }
         }
         §§goto(addr127);
      }
      
      public function §>C§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc5_ || _loc3_)
         {
            _loc3_.x = (param1 / §6+§ + §%X§.§+!_§ / §%X§.§'!f§ - this.§+!#§.§[!H§) * §%X§.§'!f§;
            if(_loc5_)
            {
               _loc3_.y = (param2 / §6+§ + §%X§.§ !o§ / §%X§.§'!f§ - this.§+!#§.§@!6§) * §%X§.§'!f§;
            }
         }
         var _loc4_:Number = Math.max(§,!s§.§8;§,§,!s§.§#d§);
         if(!(_loc6_ && this))
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
      
      public function §<v§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§0!A§.addObject(param1,param2,param3);
         }
      }
      
      public function §%!=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,!n§);
            while(true)
            {
               if(!§§pop())
               {
                  addr24:
                  while(true)
                  {
                     this.§9!u§ = 0;
                     if(_loc2_ || _loc2_)
                     {
                        if(_loc2_ || this)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     continue loop2;
                  }
               }
               if(!_loc1_)
               {
                  while(true)
                  {
                     §§push(this.§,!n§);
                     addr85:
                     while(true)
                     {
                        §§pop().visible = true;
                     }
                  }
                  addr83:
               }
               while(true)
               {
                  §§push(this.§,!n§);
                  if(!(_loc1_ && this))
                  {
                     if(_loc1_)
                     {
                        break;
                     }
                     §§pop().alpha = 0;
                     while(true)
                     {
                        §§goto(addr24);
                     }
                  }
                  else
                  {
                     §§goto(addr85);
                  }
               }
               continue;
               return;
            }
         }
         §§goto(addr83);
      }
      
      public function §=5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§+!B§ = new §73§(§2!y§.§&-§,§2!y§.§?"§);
         }
      }
      
      public function §0!+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§+!B§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§5!j§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§5!j§);
                     addr583:
                     while(true)
                     {
                        §§pop().dispose();
                        addr584:
                        while(true)
                        {
                           this.§5!j§ = null;
                           addr575:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr581:
               }
               loop1:
               while(true)
               {
                  §§push(this.§0!A§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§0!A§);
                           addr569:
                           while(true)
                           {
                              §§pop().dispose();
                              addr570:
                              while(true)
                              {
                                 this.§0!A§ = null;
                                 addr560:
                                 while(true)
                                 {
                                    this.§1z§ = null;
                                    addr538:
                                    while(true)
                                    {
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr567:
                     }
                     while(true)
                     {
                        §§push(this.mLevelEngine);
                        if(_loc1_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    §§push(this.mLevelEngine);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr528:
                                       if(!§§pop().§'q§)
                                       {
                                       }
                                       while(true)
                                       {
                                          §§push(this.mLevelEngine);
                                       }
                                       addr530:
                                    }
                                    while(true)
                                    {
                                       §§pop().clear();
                                       addr533:
                                       while(true)
                                       {
                                          this.mLevelEngine = null;
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§0B§);
                                                   if(!_loc2_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(this.§@!4§);
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc2_ && _loc2_))
                                                                     {
                                                                        if(_loc1_ || this)
                                                                        {
                                                                           §§push(this.§@!4§);
                                                                           while(true)
                                                                           {
                                                                              §§pop().dispose();
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    this.§@!4§ = null;
                                                                                    continue;
                                                                                 }
                                                                                 addr484:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§0B§);
                                                                                    addr486:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().clear();
                                                                                       continue loop6;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr469:
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop6;
                                                                     if(_loc2_ && this)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr393);
                                                                  }
                                                                  §§goto(addr538);
                                                               }
                                                               §§goto(addr401);
                                                            }
                                                            §§goto(addr469);
                                                            addr477:
                                                            while(true)
                                                            {
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr484);
                                                   }
                                                   §§goto(addr486);
                                                }
                                                addr478:
                                             }
                                             else
                                             {
                                                §§goto(addr581);
                                             }
                                          }
                                          §§goto(addr584);
                                       }
                                       §§goto(addr530);
                                    }
                                 }
                                 §§goto(addr560);
                              }
                              §§goto(addr533);
                           }
                           §§goto(addr478);
                        }
                        §§goto(addr528);
                        §§goto(addr555);
                     }
                  }
                  §§goto(addr569);
               }
            }
            §§goto(addr583);
         }
         §§goto(addr555);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §`!o§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§%!^§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.§%!^§);
                  }
                  else
                  {
                     §§goto(addr45);
                  }
               }
               §§goto(addr45);
            }
            return §§pop().toString();
         }
         addr45:
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §§push(this.mReadyToRun);
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  §§push(§§pop());
                  loop0:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop9:
                        while(true)
                        {
                           §§pop();
                           addr155:
                           while(true)
                           {
                              §§push(§<!?§.§0,§());
                              if(!_loc4_)
                              {
                                 loop2:
                                 while(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§6!<§);
                                       addr99:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          addr100:
                                          while(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 return 0;
                              }
                              addr139:
                              addr139:
                              continue loop9;
                           }
                        }
                        addr154:
                     }
                     while(true)
                     {
                        §§goto(addr139);
                     }
                  }
               }
            }
            §§goto(addr154);
         }
         §§goto(addr94);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(this.§]M§)
            {
               if(!_loc7_)
               {
                  §§push(param1);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop() * 0.2);
                     if(!(_loc7_ && param2))
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_)
                        {
                           addr43:
                           param1 = §§pop();
                           if(_loc6_ || this)
                           {
                              addr51:
                              §§push(§<!?§.§#T§);
                              if(!_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    addr67:
                                    if(_loc6_ || param2)
                                    {
                                       §§push(§<!?§.§#T§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(!_loc7_)
                                    {
                                       §§push(this);
                                       §§push(this.§0!6§);
                                       if(_loc6_ || this)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§0!6§ = §§pop();
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
                                             this.§0!A§.§`!2§(param1);
                                             loop2:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   this.§7;§ = 0;
                                                   while(true)
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr97:
                                                      if(!(_loc6_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      this.§;%§(param1,_loc5_);
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!(_loc7_ && this))
                                                         {
                                                            addr73:
                                                            §§push(param1);
                                                            if(!_loc7_)
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.mLevelEngine.§!!G§(this.§7;§));
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            addr215:
                                                         }
                                                         while(true)
                                                         {
                                                            _loc5_ = §§pop();
                                                            addr186:
                                                            while(true)
                                                            {
                                                               this.§@!4§.update(param1,param4);
                                                               addr170:
                                                               while(true)
                                                               {
                                                                  this.§7;§ = _loc5_;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr186);
                                                }
                                                §§goto(addr170);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§7;§);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§7;§ = §§pop();
                                       §§goto(addr215);
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
                  §§goto(addr43);
               }
               §§goto(addr51);
            }
            §§goto(addr67);
         }
         §§goto(addr51);
      }
      
      private function §`!"§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:Number = NaN;
         §§push(§?S§.§;!Z§);
         if(_loc6_ || param2)
         {
            §§push(§§pop() * 1000);
            if(_loc6_ || param3)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(!_loc7_)
         {
            if(this.§6!<§)
            {
               if(!(_loc7_ && param3))
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§push(this.§6!<§.speed);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr262:
                        §§push(param1);
                        if(!(_loc6_ || param3))
                        {
                           continue;
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc7_)
                        {
                           addr273:
                           if(!_loc7_)
                           {
                              if(_loc6_ || param2)
                              {
                                 addr293:
                                 _loc5_ = §§pop();
                                 if(!(_loc6_ || param3))
                                 {
                                    addr321:
                                    while(true)
                                    {
                                       §§push(this.§0!6§);
                                       if(_loc6_ || param2)
                                       {
                                          §§goto(addr262);
                                       }
                                       §§goto(addr273);
                                    }
                                    addr321:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§0!6§);
                                    loop13:
                                    while(true)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc7_ && param3))
                                          {
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc6_)
                                                   {
                                                      addr176:
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         §§push(_loc5_);
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§push(this.§-"#§);
                                                               if(_loc6_)
                                                               {
                                                                  addr186:
                                                                  §§push(§§pop() + _loc4_);
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           loop1:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    §§push(this.§6!<§);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§pop().step(this);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(this.§-"#§);
                                                                                             if(_loc6_ || param2)
                                                                                             {
                                                                                                §§push(§§pop() + _loc4_);
                                                                                             }
                                                                                             §§pop().§-"#§ = §§pop();
                                                                                             addr139:
                                                                                             break;
                                                                                          }
                                                                                       }
                                                                                       addr81:
                                                                                       §§push(this.§0!6§);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             if(_loc6_ || param2)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      if(!(_loc7_ && param3))
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(_loc5_);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(§§pop() - this.§0!6§);
                                                                                                         }
                                                                                                         §§pop().updateWithTime(§§pop(),true,param2,param3);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr209);
                                                                                                      }
                                                                                                      §§goto(addr139);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                          continue loop14;
                                                                                          §§goto(addr81);
                                                                                       }
                                                                                       addr209:
                                                                                       addr63:
                                                                                       return param1;
                                                                                       addr84:
                                                                                    }
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().step(this);
                                                                                       addr247:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                    }
                                                                                    addr249:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§-"#§);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() + _loc4_);
                                                                                       }
                                                                                       §§pop().§-"#§ = §§pop();
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          addr212:
                                                                                          while(true)
                                                                                          {
                                                                                             this.updateWithTime(_loc4_,false,param2,param3);
                                                                                             continue loop3;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr247);
                                                                                 }
                                                                                 §§goto(addr249);
                                                                              }
                                                                              §§goto(addr219);
                                                                           }
                                                                        }
                                                                        §§goto(addr81);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           addr244:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§-"#§);
                                                                              addr246:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    §§goto(addr247);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr243:
                                                                     }
                                                                     §§goto(addr212);
                                                                  }
                                                                  addr186:
                                                               }
                                                               §§goto(addr186);
                                                            }
                                                            §§goto(addr244);
                                                         }
                                                         addr178:
                                                      }
                                                      else
                                                      {
                                                         addr242:
                                                         §§push(this.§0!6§);
                                                         §§push(_loc4_);
                                                      }
                                                      §§goto(addr243);
                                                   }
                                                   §§goto(addr186);
                                                }
                                                §§goto(addr178);
                                             }
                                             §§goto(addr246);
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr242);
                                    }
                                 }
                                 addr301:
                              }
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                              addr319:
                           }
                           while(true)
                           {
                              param1 = §§pop();
                              §§goto(addr321);
                           }
                        }
                        §§goto(addr293);
                     }
                  }
                  §§goto(addr319);
               }
               §§goto(addr321);
            }
            else
            {
               §§push(this.updateWithTime(_loc4_,true,param2,param3));
               if(_loc6_ || param2)
               {
                  if(_loc6_)
                  {
                     return §§pop();
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr63);
         }
         §§goto(addr301);
      }
      
      private function §;%§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!_loc6_)
         {
            this.§5!j§.update(param1);
            loop0:
            while(true)
            {
               this.§0!A§.§?!5§(param1,param2);
               loop1:
               while(true)
               {
                  this.§"^§();
                  loop2:
                  while(true)
                  {
                     §§push(this.§9!u§);
                     loop3:
                     while(true)
                     {
                        §§push(§2!y§.§"!A§);
                        loop4:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              §§push(this.§,!n§);
                              if(_loc5_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(this.§,!n§);
                                          while(true)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                if(_loc5_ || param2)
                                                {
                                                   §§pop().visible = false;
                                                   continue loop0;
                                                }
                                                loop22:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(this.§,!n§);
                                                         addr165:
                                                         while(true)
                                                         {
                                                            §§pop().alpha = _loc4_;
                                                            addr167:
                                                            while(true)
                                                            {
                                                               addr96:
                                                               loop16:
                                                               while(!(_loc6_ && param2))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        this.§+!#§.§7!I§(param1);
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 this.mLevelEngine.§4!5§();
                                                                                 while(!_loc6_)
                                                                                 {
                                                                                    this.§8!e§.update(param1);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       return;
                                                                                    }
                                                                                    addr260:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§9!u§);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(§§pop() + param1);
                                                                                       }
                                                                                       §§pop().§9!u§ = §§pop();
                                                                                       addr268:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§2!y§.§"!A§);
                                                                                          loop7:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() / 2);
                                                                                             loop8:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop9:
                                                                                                while(_loc5_)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(-Math.abs(this.§9!u§ - _loc3_));
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(_loc6_ && param1)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            addr194:
                                                                                                            if(!(_loc5_ || param1))
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            §§push(§2!y§.§>D§);
                                                                                                            if(!(_loc6_ && param1))
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               §§push(§§pop() / _loc3_);
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         addr230:
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         _loc4_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§,!n§);
                                                                                                            addr71:
                                                                                                            continue loop22;
                                                                                                            if(_loc6_ && this)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§+!B§);
                                                                                                               addr80:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop().§@7§(this.§+!#§,param1))
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        continue loop2;
                                                                                                                     }
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr194);
                                                                                                   }
                                                                                                   continue loop7;
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr253);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      addr58:
                                                      while(true)
                                                      {
                                                         §§push(this.§+!B§);
                                                         if(_loc5_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc5_ || param2))
                                                               {
                                                                  continue loop2;
                                                               }
                                                               §§goto(addr71);
                                                            }
                                                            §§goto(addr48);
                                                         }
                                                         §§goto(addr80);
                                                         addr158:
                                                      }
                                                      continue loop2;
                                                      §§goto(addr167);
                                                   }
                                                }
                                             }
                                             §§goto(addr165);
                                          }
                                          addr125:
                                       }
                                       §§goto(addr268);
                                    }
                                 }
                                 §§goto(addr58);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr260);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.objects);
            loop0:
            while(true)
            {
               §§push(param1);
               addr92:
               while(true)
               {
                  §§push(1000);
                  addr93:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     addr94:
                     while(true)
                     {
                        §§pop().§`!2§(§§pop());
                        continue loop0;
                     }
                  }
               }
            }
            addr91:
         }
         while(true)
         {
            §§push(this.objects);
            if(_loc2_ || this)
            {
               §§push(param1);
               if(_loc2_)
               {
                  §§push(1000);
                  if(!_loc3_)
                  {
                     addr56:
                     §§push(§§pop() * §§pop());
                     if(_loc2_ || param1)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§pop().§^!,§(§§pop());
                           while(_loc2_ || _loc2_)
                           {
                              this.§8!%§();
                              if(!_loc3_)
                              {
                                 return;
                              }
                           }
                           continue;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr93);
               }
               §§goto(addr56);
            }
            else
            {
               §§goto(addr91);
            }
         }
      }
      
      public function §"^§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§!u§ = null;
         if(!(_loc5_ && _loc1_))
         {
            §§push(this.§0!6§);
            §§push(this.§?!z§);
            if(_loc4_)
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
         if(this.§"b§ != null)
         {
            addr58:
            for each(_loc1_ in this.§"b§)
            {
               if(_loc4_)
               {
                  _loc1_.addTrail();
               }
            }
            if(_loc5_ && this)
            {
            }
            §§goto(addr100);
         }
         this.§?!z§ = this.§0!6§;
         addr100:
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§!u§ = null;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(!_loc4_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            if(!(_loc4_ && _loc2_))
            {
               §§push(this.mPigsAnimationTimer1);
               if(!_loc4_)
               {
                  §§push(0);
                  if(!(_loc4_ && this))
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc3_)
                        {
                           §§push(this.§0!A§);
                           if(_loc3_ || this)
                           {
                              §§push(true);
                              if(_loc3_)
                              {
                                 §§push(§§pop().isPigsAlive(§§pop()));
                                 if(!_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          addr74:
                                          §§push(this.§0!A§);
                                          if(!_loc4_)
                                          {
                                             §§push(true);
                                             if(_loc3_ || _loc3_)
                                             {
                                                addr86:
                                                §§push(§§pop().§ !"§(§§pop()));
                                                if(_loc3_)
                                                {
                                                   _loc2_ = §§pop();
                                                   if(_loc3_ || this)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            _loc2_.§+!j§.mTryToScream = §7!r§.§<!c§;
                                                            addr107:
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                            }
                                                            addr152:
                                                            §§push(this);
                                                            §§push(this.mPigsAnimationTimer2);
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop() - param1);
                                                            }
                                                            §§pop().mPigsAnimationTimer2 = §§pop();
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§goto(addr167);
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         §§push(this);
                                                         §§push(500 + Math.random() * 1000);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§push(§§pop() + 4000 / (3 + this.§0!A§.§@P§()));
                                                         }
                                                         §§pop().mPigsAnimationTimer1 = §§pop();
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                   §§goto(addr107);
                                                }
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr177);
                                       }
                                       addr167:
                                       if(this.mPigsAnimationTimer2 <= 0)
                                       {
                                          if(_loc3_)
                                          {
                                             addr173:
                                             §§push(this.§0!A§);
                                             if(!_loc4_)
                                             {
                                                addr177:
                                                §§push(true);
                                                if(!(_loc4_ && this))
                                                {
                                                   §§goto(addr249);
                                                }
                                                addr191:
                                                _loc2_ = §§pop().§ !"§(§§pop());
                                                addr190:
                                                if(_loc3_ || _loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         _loc2_.§+!j§.mTryToBlink = §7!r§.§=2§;
                                                         addr209:
                                                         if(!_loc3_)
                                                         {
                                                         }
                                                         §§goto(addr249);
                                                      }
                                                      §§push(this);
                                                      §§push(250 + Math.random() * 500);
                                                      if(_loc3_ || this)
                                                      {
                                                         §§push(§§pop() + 2000 / (3 + this.§0!A§.§@P§()));
                                                      }
                                                      §§pop().mPigsAnimationTimer2 = §§pop();
                                                   }
                                                   §§goto(addr249);
                                                }
                                                §§goto(addr209);
                                             }
                                             §§goto(addr190);
                                             §§push(true);
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr107);
                                 }
                                 addr249:
                                 if(§§pop().isPigsAlive(§§pop()))
                                 {
                                    addr187:
                                    §§push(this.§0!A§);
                                 }
                                 return;
                              }
                              §§goto(addr86);
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr167);
            }
            §§goto(addr173);
         }
         §§goto(addr74);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            §§push(param6);
            loop0:
            while(true)
            {
               §§push(-9999);
               addr180:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc7_)
                     {
                        §§push(§>p§.§2!Z§);
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr186:
                           while(true)
                           {
                              param6 = §§pop();
                           }
                        }
                        addr185:
                     }
                     while(true)
                     {
                     }
                     addr187:
                  }
                  while(true)
                  {
                     §-!8§.addScore(param1,param2);
                     loop6:
                     while(true)
                     {
                        this.§>!j§.addScore(param1);
                        addr141:
                        if(!(_loc8_ || param2))
                        {
                           continue;
                        }
                        §§push(this.§^7§);
                        if(_loc8_ || param3)
                        {
                           addr39:
                           if(_loc8_ || param2)
                           {
                              if(!_loc7_)
                              {
                                 addr49:
                                 §§push(!§§pop());
                                 if(_loc8_)
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             addr55:
                                             if(!(_loc8_ || param2))
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr141);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param3);
                                                         addr161:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            addr162:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc8_ || param2))
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                        while(!(_loc7_ && param3))
                                                                        {
                                                                           §§pop();
                                                                           continue loop14;
                                                                           §§goto(addr39);
                                                                        }
                                                                     }
                                                                     continue;
                                                                     addr121:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr171:
                                                   }
                                                   §§goto(addr161);
                                                }
                                                continue loop6;
                                             }
                                             this.§%!&§(param1.toString(),param4,param5,800,param6,0,0);
                                             addr72:
                                             if(_loc8_ || this)
                                             {
                                                if(_loc8_ || param3)
                                                {
                                                   §§goto(addr25);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(!_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§goto(addr185);
                                                }
                                                break;
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr72);
                                       }
                                       addr25:
                                       return;
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr49);
                     }
                  }
               }
            }
         }
         §§goto(addr171);
      }
      
      public function §%!&§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param2)
         {
            §§push(param5);
            if(!(_loc8_ && this))
            {
               if(§§pop() == -9999)
               {
                  if(_loc9_ || param1)
                  {
                     addr97:
                     §§push(§>p§.§"T§);
                     if(_loc9_ || this)
                     {
                        addr95:
                        §§push(int(§§pop()));
                     }
                     param5 = §§pop();
                     while(true)
                     {
                     }
                     addr97:
                  }
                  §§goto(addr97);
               }
               while(true)
               {
                  this.§8!e§.§-M§(§>p§.§=Y§,§=!%§.§5+§,§>p§.§6!k§,param2,param3,param4,param1,param5,param6,param7);
                  if(_loc9_)
                  {
                     break;
                  }
                  §§goto(addr97);
               }
               return;
            }
            §§goto(addr95);
         }
         §§goto(addr97);
      }
      
      public function §`6§(param1:§!u§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§"b§);
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
            }
         }
         §§goto(addr74);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§@!4§.useMightyEagle();
            do
            {
               this.§0!A§.§ I§();
               do
               {
                  this.§^7§ = true;
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(!_loc1_);
            
         }
      }
      
      public function §-!7§(param1:§!u§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§8!e§.§ m§(§=!%§.§3!z§);
         }
         while(true)
         {
            §§push(this.§"b§);
            loop1:
            while(true)
            {
               if(§§pop().indexOf(param1) >= 0)
               {
                  while(true)
                  {
                     §§push(this.§"b§);
                     addr99:
                     while(true)
                     {
                        §§pop().splice(this.§"b§.indexOf(param1),1);
                        addr105:
                        while(true)
                        {
                        }
                     }
                  }
                  addr97:
               }
               while(true)
               {
                  §§push(this.§"b§);
                  if(!_loc3_)
                  {
                     continue loop1;
                  }
                  §§goto(addr99);
               }
               §§goto(addr24);
            }
            if(!(_loc3_ && _loc2_))
            {
               addr24:
               return;
            }
         }
      }
      
      public function §`!`§(param1:§<!P§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            this.§1z§ = this.§0!A§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!(_loc7_ && this))
            {
               addr43:
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr48:
                  §§push(§1!g§.BIRD_LAUNCH_FORCE_GREEN);
                  if(!(_loc7_ && param1))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(§1!g§.BIRD_LAUNCH_FORCE);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc7_)
                     {
                        addr68:
                        §§push(Number(§§pop()));
                     }
                     var _loc4_:* = §§pop();
                     if(!_loc7_)
                     {
                        §§push(param1.§'T§);
                        if(!_loc7_)
                        {
                           §§push(1);
                           loop0:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§1z§);
                                    loop2:
                                    while(true)
                                    {
                                       §§pop().§7N§(param1.§'T§);
                                       loop3:
                                       while(true)
                                       {
                                          addr113:
                                          while(true)
                                          {
                                             §§push(this.§1z§);
                                             if(_loc7_ && param1)
                                             {
                                                break;
                                                addr135:
                                             }
                                             §§pop().§+!j§.§=!v§();
                                             while(_loc8_)
                                             {
                                             }
                                             continue loop3;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr144:
                              }
                              while(true)
                              {
                                 §§push(param1.§+_§);
                                 if(_loc7_ && this)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr175:
                              §§push(§§pop() * Math.cos(param3 / (180 / Math.PI)));
                              addr187:
                              if(!_loc7_)
                              {
                                 addr186:
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              §§push(_loc4_);
                              if(_loc8_)
                              {
                                 §§push(§§pop() * param2);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                    if(!_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                              var _loc6_:* = §§pop();
                              if(!(_loc7_ && param3))
                              {
                                 this.§1z§.§5!;§(new b2Vec2(_loc5_,_loc6_),false,true);
                                 loop7:
                                 while(true)
                                 {
                                    this.camera.§?M§(§%X§.§`5§);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§%!^§);
                                       if(_loc8_)
                                       {
                                          if(!§§pop())
                                          {
                                             §§goto(addr216);
                                          }
                                          if(_loc7_)
                                          {
                                             continue;
                                          }
                                          if(_loc7_)
                                          {
                                             continue loop7;
                                          }
                                          while(true)
                                          {
                                             §§push(this.§%!^§);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop().§`!`§(this.mLevelEngine.§[!2§,param1.x,param1.y,param2,param3);
                                          continue loop8;
                                       }
                                    }
                                    addr216:
                                    return;
                                 }
                              }
                              §§goto(addr230);
                           }
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr48);
         }
         §§goto(addr43);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§!2§ = true;
         }
      }
      
      private function §8!%§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§!2§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr158:
               }
               while(true)
               {
                  this.§!2§ = false;
                  loop3:
                  while(true)
                  {
                     §§push(this.activeObject);
                     loop4:
                     while(true)
                     {
                        §§push(§§pop() is §3!5§);
                        addr139:
                        while(!_loc1_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       §§push(this.activeObject);
                                       if(_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       addr116:
                                       while(true)
                                       {
                                          §§push(§§pop().activateSpecialPower(this.§6l§));
                                          addr129:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   this.§[!f§ = true;
                                                   addr133:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr130:
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                addr24:
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(this.§%!^§);
                                                   if(_loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            if(!(_loc2_ || _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§%!^§);
                                                                  break loop11;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr130);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break loop10;
                                                            }
                                                            continue loop10;
                                                         }
                                                         addr49:
                                                      }
                                                      §§goto(addr20);
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§pop().§"z§(this.mLevelEngine.§[!2§);
                                                   §§goto(addr49);
                                                }
                                             }
                                             if(!_loc1_)
                                             {
                                                break loop7;
                                             }
                                             continue loop7;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr158);
                                    }
                                 }
                                 addr20:
                                 return;
                              }
                              addr143:
                           }
                           else
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       §§goto(addr116);
                                       §§push(this.activeObject);
                                    }
                                    §§goto(addr133);
                                 }
                                 else
                                 {
                                    this.§0!A§.§9!4§();
                                 }
                              }
                              addr105:
                           }
                           while(true)
                           {
                              §§goto(addr24);
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §?0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§0!A§.§?0§();
         }
      }
      
      public function §6!Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§0!A§.§+!=§();
         }
      }
      
      public function §4T§() : §"!'§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§"!'§ = new §"!'§();
         if(_loc3_)
         {
            _loc1_.§;"$§ = this.§=g§.§;"$§;
         }
         while(true)
         {
            _loc1_.§2!m§ = this.§=g§.§2!m§;
            loop1:
            for(; !_loc2_; if(_loc2_ && _loc1_)
            {
               continue;
            },§§goto(addr79))
            {
               this.§+!#§.§?!n§(_loc1_);
               loop2:
               while(true)
               {
                  this.§0!A§.§"!;§(_loc1_);
                  loop3:
                  while(true)
                  {
                     this.§@!4§.§#!%§(_loc1_);
                     while(true)
                     {
                        if(_loc3_ || _loc1_)
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                        continue loop3;
                        addr79:
                        _loc1_.theme = this.§5!j§.§ !y§();
                        if(!_loc2_)
                        {
                           return _loc1_;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function §'r§() : int
      {
         return this.§=g§.§2!m§;
      }
      
      public function §>#§() : int
      {
         return this.§=g§.§;"$§;
      }
      
      public function §-q§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=g§.§2!m§ = param1;
         }
      }
      
      public function §?!e§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§=g§.§;"$§ = param1;
         }
      }
      
      public function §6!'§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§""$§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§""$§);
                     addr78:
                     while(true)
                     {
                        §§pop().§[8§(param1,param2);
                        addr81:
                        while(true)
                        {
                        }
                     }
                     addr59:
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     addr68:
                     this.§+!#§.§7!I§(0);
                     addr20:
                     return;
                     addr70:
                     addr66:
                  }
               }
               while(true)
               {
                  §§push(this.§+!#§);
                  if(_loc4_ || param2)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              continue;
                           }
                           §§goto(addr59);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr20);
                  }
                  break;
               }
               §§goto(addr68);
            }
            §§goto(addr78);
         }
         §§goto(addr66);
      }
      
      public function get §?s§() : §"!'§
      {
         return this.§=g§;
      }
      
      public function get §6l§() : § 4§
      {
         return this.§0!A§;
      }
      
      protected function get starling() : §<!?§
      {
         return this.§+X§;
      }
      
      public function get §1![§() : int
      {
         return §@c§;
      }
   }
}
