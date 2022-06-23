package §?b§
{
   import §!!>§.§!8§;
   import §!!>§.§#C§;
   import §!+§.§#-§;
   import §!+§.§=H§;
   import §!+§.§>G§;
   import §!+§.override;
   import §#!;§.§;T§;
   import §'!E§.§]g§;
   import §'k§.§ >§;
   import §'k§.§#k§;
   import §'k§.§;[§;
   import §+!"§.§5!<§;
   import §+n§.§2_§;
   import §0!5§.include;
   import §4!H§.§?_§;
   import §5!%§.§%p§;
   import §5!%§.§`Z§;
   import §5H§.§[k§;
   import §6!'§.§2!<§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §6J§.§]<§;
   import §6J§.§^0§;
   import §9W§.DisplayObject;
   import §9W§.Sprite;
   import §@!!§.§=_§;
   import §@!H§.§!!1§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!,§
   {
      
      private static const §0a§:int = 20;
      
      public static const §[>§:Number;
      
      public static const §14§:Number;
      
      public static const § '§:Number = 0.05;
      
      public static const §-4§:Number;
      
      public static const §]f§:Number;
      
      public static const §6s§:§?_§ = new §?_§(13 - 3);
      
      protected static var §`A§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0a§ = 20;
            if(_loc2_ || §7!,§)
            {
               §[>§ = §[k§.§>§;
               §14§ = §[k§.§%i§;
               § '§ = 1 / 20;
               §§goto(addr37);
            }
            §§goto(addr59);
         }
         addr37:
         if(_loc2_ || _loc1_)
         {
            addr59:
            §-4§ = §[k§.§%i§ * § '§;
            §§push(§§findproperty(§]f§));
            §§push(§[>§);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() * § '§);
            }
            §§pop().§]f§ = §§pop();
            if(_loc2_ || _loc1_)
            {
               §§goto(addr94);
            }
            §§goto(addr103);
         }
         addr94:
         if(!_loc1_)
         {
            addr103:
            §`A§ = §&!;§.§7D§;
         }
      }
      
      protected var §]K§:§#-§;
      
      private var § !6§:§>G§;
      
      private var §@E§:Array = null;
      
      protected var §+'§:§2!<§;
      
      public var §^<§:§[A§;
      
      protected var §3w§:§9H§;
      
      protected var §%U§:§=_§;
      
      protected var §3l§:§4K§;
      
      protected var §7!4§:§#C§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §+!'§:Boolean = false;
      
      protected var §?&§:Boolean = false;
      
      protected var §]!F§:Boolean = false;
      
      public var §%+§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §2R§:Number;
      
      public var §2!,§:Number;
      
      private var §'Y§:Number;
      
      public var §"U§:§^0§;
      
      public var §]L§:Boolean = false;
      
      private var §26§:§32§;
      
      private var §%9§:Sprite;
      
      protected var §!!5§:§&!;§;
      
      protected var §!0§:§!!1§ = null;
      
      private var §[#§:EventDispatcher;
      
      private var §4!§:Array;
      
      private var §?!<§:Array;
      
      protected var §'=§:§;T§;
      
      private var §%!§:include;
      
      protected var §`!8§:§ >§;
      
      protected var §!m§:§#k§;
      
      private var §!!§:§;[§;
      
      private var §8q§:§;[§;
      
      private var §6v§:§;[§;
      
      private var §%E§:Stage;
      
      private var §1T§:§%T§;
      
      protected var §;!A§:§2_§;
      
      protected var §0W§:§2_§;
      
      protected var §0J§:Number = 0.0;
      
      protected var §&5§:String;
      
      private var §"p§:Boolean;
      
      protected var §`!1§:Boolean;
      
      protected var §]R§:uint = 1.417339207E9;
      
      public var § §:Boolean;
      
      public function §7!,§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§?!<§ = [];
         if(_loc4_ || _loc2_)
         {
            super();
            this.§[#§ = new EventDispatcher();
         }
         this.§"U§ = new §^0§();
         if(_loc4_)
         {
            this.§%E§ = param1;
         }
         this.§`!8§ = § >§.§^n§;
         this.§!m§ = this.initAnimationManager(this.§`!8§);
         this.§!!§ = this.initThemeGraphicsManager();
         this.§8q§ = this.§2y§();
         this.§6v§ = this.§ var§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§'=§ = new §;T§(§32§,param1,new Rectangle(0,0,§[k§.§>§,§[k§.§%i§),_loc2_);
         if(_loc4_ || param1)
         {
            §[k§.§;!+§.addEventListener(Event.ENTER_FRAME,this.§'=§.onEnterFrame);
            if(!_loc3_)
            {
               _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§'!0§,false,0,true);
               if(!(_loc3_ && param1))
               {
                  §§goto(addr128);
               }
               §§goto(addr146);
            }
            §§goto(addr172);
         }
         addr128:
         §§push(this.§'=§);
         if(!_loc3_)
         {
            §§push(false);
            if(!_loc3_)
            {
               §§pop().§ 4§ = §§pop();
               addr146:
               §§push(this.§'=§);
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr156);
               }
               §§goto(addr172);
            }
            addr156:
            §§pop().enableErrorChecking = false;
            §§goto(addr155);
         }
         addr155:
         if(_loc4_)
         {
            §§push(this.§'=§);
            if(_loc4_ || this)
            {
               §§pop().§&2§ = 2;
               addr172:
               this.§'=§.§3k§();
            }
            §§goto(addr172);
         }
      }
      
      public static function §1-§(param1:§>G§, param2:§>G§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§>t§);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.§>t§);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.§0!4§);
         if(_loc6_ || param2)
         {
            §§push(§§pop() - param2.§0!4§);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         return §!!C§(_loc3_,_loc4_);
      }
      
      public static function §!!C§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§%9§);
            if(_loc2_)
            {
               §§push(!§§pop());
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        §§goto(addr60);
                     }
                  }
                  §§goto(addr71);
               }
               §§goto(addr60);
            }
            addr60:
            §§pop();
            if(_loc2_ || _loc2_)
            {
               addr71:
               if(this.§;1§)
               {
                  if(_loc2_)
                  {
                     this.§%9§ = this.§26§.§>s§;
                  }
               }
            }
            return this.§%9§;
         }
         §§goto(addr71);
      }
      
      public function get §;1§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§26§);
            if(!(_loc1_ && this))
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this.§26§ = this.§'=§.§ !D§ as §32§;
                     if(!_loc1_)
                     {
                        addr65:
                        §§push(this.§26§);
                        if(!_loc1_)
                        {
                           §§pop().§=O§ = false;
                        }
                        §§goto(addr73);
                     }
                  }
               }
               §§push(this.§26§);
            }
            addr73:
            return §§pop();
         }
         §§goto(addr65);
      }
      
      private function get §"`§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§;1§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§;1§);
                  }
                  else
                  {
                     §§goto(addr52);
                  }
               }
               §§goto(addr52);
            }
            return (§§pop() as §32§).§"`§;
         }
         addr52:
         return null;
      }
      
      public function get §!`§() : §#k§
      {
         return this.§!m§;
      }
      
      public function get textureManager() : § >§
      {
         return this.§`!8§;
      }
      
      public function get camera() : §=_§
      {
         return this.§%U§;
      }
      
      public function get objects() : §#-§
      {
         return this.§]K§;
      }
      
      public function get particles() : §#C§
      {
         return this.§7!4§;
      }
      
      public function get background() : §2!<§
      {
         return this.§+'§;
      }
      
      public function get slingshot() : §4K§
      {
         return this.§3l§;
      }
      
      public function get activeObject() : §>G§
      {
         return this.§ !6§;
      }
      
      public function get §+4§() : §9H§
      {
         return this.§3w§;
      }
      
      public function get stage() : Stage
      {
         return this.§%E§;
      }
      
      public function get §6_§() : §;[§
      {
         return this.§6v§;
      }
      
      protected function get §1!B§() : §;[§
      {
         return this.§!!§;
      }
      
      public function set activeObject(param1:§>G§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§ !6§ = param1;
         }
      }
      
      public function set §`u§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§`!1§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§%!§);
         if(!(_loc1_ && _loc2_))
         {
            if(§§pop())
            {
               if(_loc2_ || _loc1_)
               {
                  addr36:
                  this.§%!§.dispose();
                  if(_loc2_)
                  {
                     addr39:
                     §§push(this.§`!8§);
                     if(!_loc1_)
                     {
                        addr47:
                        if(§§pop())
                        {
                           §§push(this.§`!8§);
                        }
                        §§push(this.§!!§);
                        if(!(_loc1_ && _loc2_))
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop());
                              if(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc1_)
                                    {
                                       §§pop();
                                       if(_loc2_)
                                       {
                                          §§push(this.§!!§);
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             addr92:
                                             §§push(§§pop().textureManager);
                                             if(_loc2_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc2_ || _loc2_)
                                                {
                                                   addr103:
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         addr108:
                                                         §§push(this.§!!§.textureManager);
                                                         if(_loc2_)
                                                         {
                                                            addr111:
                                                            §§pop().dispose();
                                                            if(_loc2_)
                                                            {
                                                               addr114:
                                                               §§push(this.§6v§);
                                                               if(!(_loc1_ && _loc2_))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     addr131:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc1_)
                                                                        {
                                                                           addr135:
                                                                           §§pop();
                                                                           addr136:
                                                                           §§push(this.§6v§);
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              §§goto(addr145);
                                                                           }
                                                                           §§goto(addr169);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr164);
                                                               }
                                                               addr145:
                                                               §§push(§§pop().textureManager);
                                                               if(!(_loc1_ && _loc1_))
                                                               {
                                                                  addr164:
                                                                  if(§§pop())
                                                                  {
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                               §§pop().dispose();
                                                               if(_loc2_ || this)
                                                               {
                                                                  addr178:
                                                                  if(_loc2_)
                                                                  {
                                                                     addr169:
                                                                     §§push(this.§6v§.textureManager);
                                                                  }
                                                                  §§push(this.§'=§);
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     §§goto(addr191);
                                                                  }
                                                                  §§pop().dispose();
                                                               }
                                                               §§goto(addr191);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§goto(addr164);
                                                      }
                                                      addr191:
                                                      if(§§pop())
                                                      {
                                                         §§push(this.§'=§);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr114);
                                                }
                                                §§goto(addr131);
                                             }
                                             §§goto(addr111);
                                          }
                                          §§goto(addr108);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr131);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr92);
                     }
                     §§pop().dispose();
                  }
                  §§goto(addr47);
               }
               §§goto(addr114);
            }
            §§goto(addr39);
         }
         §§goto(addr36);
      }
      
      protected function initThemeGraphicsManager() : §;[§
      {
         return null;
      }
      
      protected function §2y§() : §;[§
      {
         return null;
      }
      
      protected function § var§() : §;[§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§ >§) : §#k§
      {
         return new §#k§(param1);
      }
      
      public function §`!G§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(§;T§.§,H§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     if(param1)
                     {
                        if(!_loc2_)
                        {
                           §§push(§;T§.§,H§);
                           if(!_loc2_)
                           {
                              §§pop().start();
                              if(!(_loc3_ || this))
                              {
                                 addr82:
                                 §;T§.§,H§.color = 0;
                                 addr84:
                                 return;
                                 addr80:
                              }
                              §§goto(addr84);
                           }
                        }
                        §§goto(addr82);
                     }
                     else
                     {
                        §§push(§;T§.§,H§);
                        if(!_loc2_)
                        {
                           addr77:
                           §§pop().stop();
                           if(!_loc2_)
                           {
                              §§goto(addr80);
                           }
                           §§goto(addr82);
                        }
                     }
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr77);
         }
         §§goto(addr82);
      }
      
      public function §%7§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.sprite);
            if(_loc2_ || _loc3_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr54);
            }
            §§pop().visible = param1;
         }
         addr54:
         if(_loc2_ || param1)
         {
            §§push(this.sprite);
         }
      }
      
      public function §^L§(param1:§!!1§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§!0§);
            if(_loc3_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(this.§!0§);
                     if(_loc3_ || param1)
                     {
                        §§pop().removeEventListeners();
                        if(!(_loc2_ && _loc2_))
                        {
                           addr69:
                           this.§!0§ = param1;
                           if(_loc3_)
                           {
                              addr74:
                              if(this.mReadyToRun)
                              {
                                 if(_loc2_)
                                 {
                                 }
                              }
                           }
                           §§goto(addr82);
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr74);
               }
               §§goto(addr69);
            }
            addr81:
            this.§!0§.addEventListeners();
            §§goto(addr82);
         }
         addr82:
      }
      
      public function §#E§() : §2_§
      {
         return this.§;!A§;
      }
      
      public function § <§(param1:include, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§%!§ = param1;
         }
         §§push(this.§%!§.§5<§);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ >= _loc4_)
            {
               if(param3 != null)
               {
                  if(_loc6_)
                  {
                     this.§[#§.addEventListener(Event.INIT,param3);
                     break;
                  }
                  §§goto(addr91);
               }
               if(this.§<H§(param2))
               {
                  this.§;D§();
               }
               addr91:
            }
            continue;
            return;
         }
         this.§?!<§.push(param3);
         §§goto(addr85);
      }
      
      private function §<H§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         §§push(this.§`!8§);
         if(_loc4_ || this)
         {
            §§push(§§pop().§]!A§());
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  §§push(this.§`!8§);
                  if(!_loc5_)
                  {
                     §§push(§§pop().§!!+§);
                     if(_loc4_)
                     {
                        §§push(1000);
                        if(!_loc5_)
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc4_)
                           {
                              §§push(int(§§pop()));
                              if(_loc4_ || param1)
                              {
                                 _loc2_ = §§pop();
                                 if(!_loc5_)
                                 {
                                    addr74:
                                    §§push(this.§`!8§.§??§);
                                    if(!(_loc5_ && param1))
                                    {
                                       addr82:
                                       §§push(int(§§pop() / 1000));
                                    }
                                    _loc3_ = §§pop();
                                 }
                                 §§push(§5!<§);
                                 §§push("\n\nMain texture manager memory usage:\n   textures ");
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§push(_loc2_);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr106:
                                          §§push(" kilobytes\n   bitmaps ");
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc4_)
                                             {
                                                addr128:
                                                §§push(§§pop() + _loc3_);
                                                if(_loc4_)
                                                {
                                                   addr131:
                                                   §§push(§§pop() + " kilobytes\n\n");
                                                }
                                                §§pop().log(§§pop());
                                                this.initializeAnimations(param1);
                                                if(_loc4_)
                                                {
                                                   §§push(true);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr153);
                                                }
                                                else
                                                {
                                                   addr152:
                                                   addr153:
                                                   return §§pop();
                                                   §§push(false);
                                                }
                                                §§goto(addr153);
                                             }
                                          }
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr106);
                              }
                           }
                        }
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr74);
               }
               else
               {
                  this.§4!§ = param1.concat();
               }
               §§goto(addr152);
            }
            §§goto(addr153);
         }
         §§goto(addr74);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!m§.initializeAnimations(param1);
         }
      }
      
      private function §'!0§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§`!8§.§!! §();
         if(!_loc2_)
         {
            §§push(this.§1!B§);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               if(_loc3_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        §§pop();
                        §§push(this.§1!B§);
                        if(!_loc2_)
                        {
                           addr48:
                           §§push(§§pop().textureManager);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr57:
                              if(§§pop())
                              {
                                 if(_loc3_ || this)
                                 {
                                    addr67:
                                    §§push(this.§1!B§.textureManager);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop().§!! §();
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr83:
                                          §§push(this.§6_§);
                                          if(_loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc2_ && this))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr99:
                                                      §§pop();
                                                      if(!_loc2_)
                                                      {
                                                         §§push(this.§6_§);
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop().textureManager);
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               addr125:
                                                               if(§§pop())
                                                               {
                                                                  addr128:
                                                                  §§push(this.§6_§.textureManager);
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr131:
                                                                     §§pop().§!! §();
                                                                     addr132:
                                                                     if(this.§4!§)
                                                                     {
                                                                        this.§<H§(this.§4!§);
                                                                        this.§4!§ = null;
                                                                        this.§;D§();
                                                                     }
                                                                     §§push(this.§!0§);
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        §§push(§§pop() == null);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr160:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                 }
                                                                                 addr172:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr175:
                                                                                    this.§!0§.addEventListeners();
                                                                                 }
                                                                                 §§push(this.§!!§);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc3_ || param1)
                                                                                       {
                                                                                          addr195:
                                                                                          this.§!!§.§]!A§();
                                                                                          if(_loc3_ || this)
                                                                                          {
                                                                                             addr213:
                                                                                             §§push(this.§6v§);
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§push(this.§6v§);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop().textureManager);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr230:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr239:
                                                                                                            §§push(this.§6v§);
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§push(§§pop().textureManager);
                                                                                                            }
                                                                                                            §§pop().§]!A§();
                                                                                                         }
                                                                                                         §§goto(addr240);
                                                                                                      }
                                                                                                      §§pop().§!! §();
                                                                                                      addr237:
                                                                                                      §§push(this.§6v§);
                                                                                                   }
                                                                                                }
                                                                                                addr240:
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr239);
                                                                                          }
                                                                                          §§goto(addr237);
                                                                                       }
                                                                                       §§goto(addr239);
                                                                                    }
                                                                                    §§goto(addr213);
                                                                                 }
                                                                                 §§goto(addr195);
                                                                              }
                                                                              §§goto(addr172);
                                                                           }
                                                                           §§pop();
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr167:
                                                                              §§push(this.mReadyToRun);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§goto(addr172);
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              §§goto(addr172);
                                                                           }
                                                                           §§goto(addr213);
                                                                        }
                                                                        §§goto(addr160);
                                                                     }
                                                                     §§goto(addr175);
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                               §§goto(addr132);
                                                            }
                                                            §§goto(addr131);
                                                         }
                                                         §§goto(addr128);
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                §§goto(addr125);
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr128);
                                       }
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr195);
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr67);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr57);
               }
               §§goto(addr160);
            }
            §§goto(addr48);
         }
         §§goto(addr175);
      }
      
      private function §;D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[#§.dispatchEvent(new Event(Event.INIT));
            if(!_loc1_)
            {
               addr28:
               this.§>d§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      private function §>d§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§?!<§)
         {
            if(_loc4_)
            {
               this.§[#§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!_loc5_)
         {
            this.§?!<§ = [];
         }
      }
      
      public function init(param1:§&!;§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.mReadyToRun);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  this.clearLevel();
                  if(_loc2_ || param1)
                  {
                     addr42:
                     this.§3w§ = new §9H§(this,param1);
                  }
                  this.§%U§ = this.initLevelCamera(param1);
                  this.§2R§ = 0;
                  this.§2!,§ = 0;
                  if(!(_loc3_ && this))
                  {
                     this.§'Y§ = 0;
                     this.§"p§ = false;
                     if(!_loc3_)
                     {
                        addr74:
                        this.mReadyToRun = false;
                        this.§+!'§ = false;
                        if(_loc2_)
                        {
                           this.mPigsAnimationTimer1 = 2000;
                           if(_loc2_ || _loc2_)
                           {
                              this.mPigsAnimationTimer2 = 1000;
                              §§goto(addr105);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr126);
                  }
                  addr105:
                  §`A§ = param1.theme;
                  this.§!!5§ = param1;
                  this.§?&§ = this.§@"§(param1.theme);
                  if(!_loc3_)
                  {
                     this.§]!F§ = this.§35§(param1.theme);
                     addr126:
                     §§push(this.§?&§);
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc2_ || param1)
                        {
                           if(§§pop())
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§pop();
                                 §§goto(addr190);
                              }
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           this.initialize(param1);
                           addr181:
                           this.§@!-§();
                           if(!(_loc3_ && _loc2_))
                           {
                              §§goto(addr190);
                           }
                           addr176:
                        }
                        §§goto(addr190);
                     }
                     else
                     {
                        this.§4%§(param1.theme);
                     }
                     §§goto(addr181);
                  }
                  addr190:
                  if(!_loc3_)
                  {
                     addr150:
                     §§push(this.§]!F§);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr169:
                        §§push(Boolean(§§pop()));
                     }
                  }
                  §3$§.init();
                  return;
               }
               §§goto(addr42);
            }
            §§goto(addr169);
         }
         §§goto(addr74);
      }
      
      protected function §@!-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§;!A§ = new §2_§(§5j§.§%V§);
         }
      }
      
      protected function §@"§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§!!§)
            {
               if(_loc3_ || this)
               {
                  addr44:
                  §§push(false);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  §§push(true);
               }
               return §§pop();
            }
            §§goto(addr48);
         }
         §§goto(addr44);
      }
      
      protected function §35§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`Z§ = null;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§8q§)
            {
               addr30:
               _loc2_ = §%p§.§9F§(param1);
               if(!_loc3_)
               {
                  if(_loc2_)
                  {
                     if(!(_loc3_ && param1))
                     {
                        addr56:
                        §§push(Boolean(_loc2_.§1q§));
                        if(_loc4_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc3_ && this))
                              {
                                 §§goto(addr75);
                              }
                              return §§pop();
                           }
                           §§goto(addr108);
                        }
                        addr75:
                        §§pop();
                        if(_loc4_)
                        {
                           addr78:
                           §§push(this.§8q§.§-!,§(_loc2_.§1q§));
                           if(_loc4_ || param1)
                           {
                              §§push(!§§pop());
                              if(!(_loc3_ && param1))
                              {
                                 §§goto(addr108);
                              }
                           }
                           addr108:
                           if(§§pop())
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 §§push(false);
                              }
                              else
                              {
                                 §§goto(addr118);
                              }
                           }
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr118);
               }
               §§goto(addr56);
            }
            addr118:
            return true;
         }
         §§goto(addr30);
      }
      
      protected function §4%§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§`Z§ = null;
         §§push(this.§!!§);
         if(_loc3_ || _loc3_)
         {
            §§push(Boolean(§§pop()));
            §§push(Boolean(§§pop()));
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§pop();
                     if(!_loc4_)
                     {
                        §§push(this.§@"§(param1));
                        if(!_loc4_)
                        {
                           addr54:
                           if(!§§pop())
                           {
                              §§push(this.§!!§);
                              if(_loc3_ || param1)
                              {
                                 addr64:
                                 §§pop().removeEventListener(Event.COMPLETE,this.§ try§);
                                 §§push(this.§!!§);
                                 if(_loc3_ || this)
                                 {
                                    addr78:
                                    §§pop().removeEventListener(Event.CANCEL,this.§>h§);
                                    §§push(this.§!!§);
                                    if(_loc3_)
                                    {
                                       addr87:
                                       §§pop().addEventListener(Event.COMPLETE,this.§ try§);
                                       §§push(this.§!!§);
                                       if(!_loc4_)
                                       {
                                          §§pop().addEventListener(Event.CANCEL,this.§>h§);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr120:
                                             this.§!!§.§5&§(param1);
                                             §§push(this.§8q§);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                addr133:
                                                §§push(Boolean(§§pop()));
                                                if(Boolean(§§pop()))
                                                {
                                                   §§pop();
                                                   §§push(this.§35§(param1));
                                                   if(!_loc3_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr141);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr170);
                                       }
                                    }
                                    §§goto(addr120);
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr78);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr78);
                  }
                  addr141:
                  if(!§§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§push(this.§8q§);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§,%§);
                           if(!(_loc4_ && _loc3_))
                           {
                              addr170:
                              §§push(this.§8q§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop().removeEventListener(Event.CANCEL,this.§9m§);
                              }
                              addr212:
                              §§pop().addEventListener(Event.CANCEL,this.§9m§);
                              §§goto(addr217);
                           }
                           §§push(this.§8q§);
                           if(_loc3_ || _loc3_)
                           {
                              §§pop().addEventListener(Event.COMPLETE,this.§,%§);
                              addr193:
                              if(!_loc4_)
                              {
                                 §§push(this.§8q§);
                              }
                              addr217:
                              _loc2_ = §%p§.§9F§(param1);
                              if(!_loc4_)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                    }
                                 }
                                 §§goto(addr233);
                              }
                              this.§8q§.§5&§(_loc2_.§1q§);
                              §§goto(addr233);
                           }
                        }
                     }
                     §§goto(addr212);
                  }
                  addr233:
                  return;
               }
               §§goto(addr54);
            }
            §§goto(addr133);
         }
         §§goto(addr64);
      }
      
      private function § try§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§!!§);
         if(!_loc3_)
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§ try§);
            §§push(this.§!!§);
         }
         §§pop().removeEventListener(Event.CANCEL,this.§>h§);
         if(!(_loc3_ && this))
         {
            this.§?&§ = true;
            if(_loc2_ || param1)
            {
               §§push(this.§?&§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr90:
                           §§pop();
                           §§goto(addr101);
                        }
                        §§goto(addr97);
                     }
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr101);
                        }
                     }
                     addr101:
                     if(!_loc3_)
                     {
                        addr93:
                        §§push(this.§]!F§);
                        if(!_loc3_)
                        {
                           addr97:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     this.initialize(this.§!!5§);
                     return;
                  }
                  §§goto(addr90);
               }
               §§goto(addr97);
            }
            §§goto(addr90);
         }
         §§goto(addr93);
      }
      
      private function §>h§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§!!§);
            if(!_loc3_)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§ try§);
               if(_loc2_)
               {
                  addr56:
                  this.§!!§.removeEventListener(Event.CANCEL,this.§>h§);
                  if(!(_loc3_ && param1))
                  {
                     this.§+!'§ = true;
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      private function §,%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§!!§);
         if(_loc3_)
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§,%§);
            if(!(_loc2_ && param1))
            {
               addr45:
               this.§!!§.removeEventListener(Event.CANCEL,this.§9m§);
               if(_loc3_)
               {
                  this.§]!F§ = true;
                  addr52:
               }
               §§push(this.§?&§);
               if(!_loc2_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           addr76:
                           §§pop();
                           §§push(this.§]!F§);
                           if(!(_loc2_ && this))
                           {
                              addr86:
                              §§push(Boolean(§§pop()));
                           }
                        }
                        §§goto(addr86);
                     }
                     if(§§pop())
                     {
                        this.initialize(this.§!!5§);
                     }
                     return;
                  }
                  §§goto(addr76);
               }
               §§goto(addr86);
            }
            §§goto(addr52);
         }
         §§goto(addr45);
      }
      
      private function §9m§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§!!§);
            if(_loc2_)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§,%§);
               §§push(this.§!!§);
            }
            §§pop().removeEventListener(Event.CANCEL,this.§9m§);
            this.§]!F§ = true;
         }
         §§push(this.§?&§);
         if(!_loc3_)
         {
            §§push(Boolean(§§pop()));
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr73:
                     §§pop();
                     §§push(this.§]!F§);
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
               if(§§pop())
               {
                  this.initialize(this.§!!5§);
               }
               return;
            }
         }
         §§goto(addr73);
      }
      
      public function get backgroundTextureManager() : § >§
      {
         return this.§`!8§;
      }
      
      protected function initialize(param1:§&!;§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`!1§ = false;
            this.§ § = false;
            if(_loc2_ || param1)
            {
               §§push(§;T§.§1I§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr40:
                        §;T§.§1I§.speed = 1;
                     }
                  }
                  this.§^<§ = new §[A§(this);
                  if(!(_loc3_ && param1))
                  {
                     §§push(this);
                     §§push(this);
                     §§push(param1.theme);
                     §§push(this.§3w§.§6o§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() / § '§);
                     }
                     §§pop().§+'§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§%U§.§'!8§());
                     this.§+'§.§^v§(§[k§.§,V§());
                  }
                  this.§]K§ = this.initLevelObjectManager(param1);
                  if(_loc2_)
                  {
                     addr94:
                     this.§3l§ = this.initLevelSlingshot(param1);
                     §§goto(addr99);
                  }
                  §§goto(addr152);
               }
               §§goto(addr40);
            }
            addr99:
            this.§7!4§ = this.§@!7§(this.§!m§,this.§`!8§);
            if(!_loc3_)
            {
               this.§%U§.init();
               if(_loc2_)
               {
                  this.§'F§();
                  this.§9u§();
                  if(!(_loc3_ && param1))
                  {
                     this.mReadyToRun = true;
                     if(_loc2_)
                     {
                        §§push(this.§!0§);
                        if(!(_loc3_ && this))
                        {
                           if(!§§pop())
                           {
                           }
                           §§goto(addr155);
                        }
                        §§pop().addEventListeners();
                     }
                  }
               }
            }
            addr155:
            if(_loc2_)
            {
               addr152:
               §§push(this.§!0§);
            }
            return;
         }
         §§goto(addr94);
      }
      
      protected function §9u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§&5§)
            {
               this.§0W§ = §2_§.initialize(this.§&5§);
               addr22:
               if(!_loc1_)
               {
                  §§push(this.§0W§);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§pop().speed = 1;
                     §§push(this.§0W§);
                  }
                  §§pop().play();
                  if(!(_loc1_ && _loc1_))
                  {
                     this.§0J§ = -1000;
                     if(_loc2_ || this)
                     {
                     }
                     §§goto(addr84);
                  }
                  this.§&5§ = null;
               }
            }
            addr84:
            return;
         }
         §§goto(addr22);
      }
      
      public function §?!B§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&5§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§0W§ == null);
         if(!(_loc2_ && this))
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§0W§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     if(param1)
                     {
                        if(!_loc3_)
                        {
                           §§push(this.§0W§);
                           if(_loc2_ || this)
                           {
                              §§pop().speed = Math.min(this.§0W§.speed * 1.25,Math.pow(1.25,2));
                              if(_loc2_ || this)
                              {
                                 addr87:
                              }
                           }
                           else
                           {
                              addr90:
                              §§pop().speed = Math.max(this.§0W§.speed / 1.25,Math.pow(1 / 1.25,10));
                           }
                        }
                        §§goto(addr87);
                     }
                     else
                     {
                        §§goto(addr90);
                        §§push(this.§0W§);
                     }
                     §§goto(addr90);
                  }
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr87);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§0W§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr43:
                     this.§0W§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      protected function initLevelObjectManager(param1:§&!;§) : §#-§
      {
         return new §#-§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§&!;§) : §=_§
      {
         return new §=_§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§ >§, param4:Number) : §2!<§
      {
         return new §2!<§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§&!;§) : §4K§
      {
         return new §4K§(this,param1,new Sprite());
      }
      
      protected function §@!7§(param1:§#k§, param2:§ >§) : §#C§
      {
         return new §#C§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            if(this.mReadyToRun)
            {
               if(_loc7_ || param1)
               {
                  this.clearLevel();
               }
            }
         }
         var _loc3_:§&!;§ = this.§>f§();
         var _loc4_:§]<§;
         (_loc4_ = new §]<§()).left = 0;
         if(!_loc6_)
         {
            §§push(_loc4_);
            §§push(§=_§.§6!?§);
            if(_loc7_ || param1)
            {
               §§push(-§§pop());
               if(!_loc6_)
               {
                  addr62:
                  §§push(10);
                  if(!_loc6_)
                  {
                     addr70:
                     §§push(§§pop() / §§pop());
                     if(_loc7_)
                     {
                        §§push(8);
                     }
                     §§pop().top = §§pop();
                     §§push(_loc4_);
                     §§push(_loc4_.top);
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(§§pop() + §=_§.§6!?§);
                     }
                     §§pop().bottom = §§pop();
                     if(_loc7_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.left);
                        if(_loc7_ || this)
                        {
                           §§push(§§pop() + §=_§.§^J§);
                        }
                        §§pop().right = §§pop();
                        if(_loc7_)
                        {
                           _loc4_.y = -13.929;
                        }
                        _loc4_.x = §=_§.§^J§;
                        if(_loc7_)
                        {
                           addr112:
                           _loc4_.id = §=_§.§0!D§;
                           if(!_loc6_)
                           {
                              _loc3_.§<!1§(_loc4_);
                           }
                        }
                     }
                     var _loc5_:§]<§;
                     (_loc5_ = new §]<§()).top = _loc4_.top;
                     _loc5_.bottom = _loc4_.bottom;
                     _loc5_.left = 150;
                     if(_loc7_ || param1)
                     {
                        §§push(_loc5_);
                        §§push(_loc5_.left);
                        if(!(_loc6_ && param2))
                        {
                           §§push(§§pop() + §=_§.§^J§);
                        }
                        §§pop().right = §§pop();
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           §§push(_loc5_.top);
                           if(_loc7_)
                           {
                              §§push(§§pop() + §=_§.§6!?§);
                           }
                           §§pop().bottom = §§pop();
                           if(!(_loc6_ && param1))
                           {
                              _loc5_.y = _loc4_.y;
                              if(_loc7_)
                              {
                                 §§push(_loc5_);
                                 §§push(_loc5_.left);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(§=_§.§^J§);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(§§pop() / 2);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().x = §§pop();
                                 addr214:
                                 _loc5_.id = §=_§.§43§;
                                 _loc3_.§<!1§(_loc5_);
                                 if(_loc7_ || _loc3_)
                                 {
                                    addr228:
                                    this.§7W§(_loc3_,param2);
                                    if(_loc7_)
                                    {
                                       §§push(param1);
                                       if(_loc7_)
                                       {
                                          §§push(null);
                                          if(_loc7_ || this)
                                          {
                                             if(§§pop() != §§pop())
                                             {
                                                if(_loc7_ || _loc3_)
                                                {
                                                   _loc3_.theme = param1;
                                                   if(_loc7_)
                                                   {
                                                      addr284:
                                                      this.init(_loc3_);
                                                      addr268:
                                                   }
                                                   §§goto(addr287);
                                                }
                                                §§goto(addr268);
                                             }
                                             else
                                             {
                                                addr270:
                                                §§push(§`A§);
                                                §§push(null);
                                             }
                                             §§goto(addr284);
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr274:
                                                _loc3_.theme = §`A§;
                                                if(_loc7_ || param2)
                                                {
                                                   §§goto(addr284);
                                                }
                                             }
                                             addr287:
                                             return;
                                          }
                                          §§goto(addr284);
                                       }
                                       §§goto(addr270);
                                    }
                                    §§goto(addr274);
                                 }
                              }
                              §§goto(addr284);
                           }
                           §§goto(addr228);
                        }
                     }
                     §§goto(addr214);
                  }
                  §§push(§§pop() * §§pop());
               }
               §§goto(addr70);
            }
            §§goto(addr62);
         }
         §§goto(addr112);
      }
      
      protected function §7W§(param1:§&!;§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§1>§(param1);
               }
            }
         }
      }
      
      protected function §>f§() : §&!;§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§&!;§ = new §&!;§();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§0_§ = -12;
         }
         return new §&!;§();
      }
      
      protected function §]'§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§]R§ ^= this.§]R§ << 21;
            if(_loc2_)
            {
               §§push(this);
               §§push(this.§]R§);
               §§push(this.§]R§);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§]R§ = §§pop() ^ §§pop();
               if(_loc1_)
               {
               }
               §§goto(addr82);
            }
            this.§]R§ ^= this.§]R§ << 4;
         }
         addr82:
         return this.§]R§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §1>§(param1:§&!;§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§]g§ = null;
         if(!(_loc6_ && this))
         {
            §§push(this);
            §§push(0.33);
            if(!_loc6_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§]R§ = §§pop();
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
                  if(!(_loc7_ || this))
                  {
                     continue loop1;
                  }
                  _loc3_ = §§pop();
                  if(_loc7_)
                  {
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc6_ && this)
                        {
                           continue loop1;
                        }
                        §§push(5);
                        if(!(_loc7_ || param1))
                        {
                           continue loop2;
                        }
                        if(§§pop() >= §§pop())
                        {
                           break;
                        }
                        §§push(this.§]'§());
                        if(_loc7_)
                        {
                           §§push(§§pop() * 5);
                        }
                        §§push(int(§§pop()));
                        if(!(_loc7_ || this))
                        {
                           continue loop1;
                        }
                        _loc4_ = §§pop();
                        if(!(_loc7_ || _loc3_))
                        {
                           continue loop0;
                        }
                     }
                     addr322:
                     if(!_loc6_)
                     {
                        _loc2_++;
                        if(!(_loc7_ || _loc3_))
                        {
                           break;
                        }
                     }
                     continue loop0;
                     addr322:
                  }
                  while(true)
                  {
                     §§push(_loc5_ = new §]g§());
                     §§push(30 + _loc3_ * 10);
                     if(_loc7_)
                     {
                        §§push(this.§]'§());
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() * 9);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().x = §§pop();
                     if(!(_loc6_ && _loc3_))
                     {
                        §§push(_loc2_);
                        if(!(_loc6_ && param1))
                        {
                           if(§§pop() == 0)
                           {
                              if(_loc7_)
                              {
                                 _loc5_.y = 0;
                                 if(_loc7_)
                                 {
                                    §§push(_loc3_ == 1);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr143:
                                                §§pop();
                                                §§push(_loc3_);
                                                if(_loc7_)
                                                {
                                                   §§push(2);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc7_)
                                                      {
                                                         addr153:
                                                         if(!§§pop())
                                                         {
                                                            if(!(_loc6_ && this))
                                                            {
                                                               addr162:
                                                               §§pop();
                                                               §§push(_loc3_);
                                                               if(_loc7_)
                                                               {
                                                                  addr178:
                                                                  if(§§pop() == 4)
                                                                  {
                                                                     addr179:
                                                                     _loc5_.id = "PIG_MUSTACHE";
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc5_.id = "PIG_HELMET";
                                                                  }
                                                                  §§push(_loc5_);
                                                                  §§push(45);
                                                                  §§push(this.§]'§());
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(§§pop() * 90);
                                                                  }
                                                                  §§pop().angle = §§pop() - §§pop();
                                                               }
                                                               else
                                                               {
                                                                  addr282:
                                                                  if(§§pop() == 3)
                                                                  {
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        addr291:
                                                                        _loc5_.id = "BIRD_YELLOW";
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           addr305:
                                                                           §§push(_loc5_);
                                                                           §§push(this.§]'§());
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() * 360);
                                                                           }
                                                                           §§pop().angle = §§pop();
                                                                           addr318:
                                                                           param1.addObject(_loc5_);
                                                                           addr321:
                                                                           _loc3_++;
                                                                        }
                                                                        §§goto(addr322);
                                                                     }
                                                                     §§goto(addr321);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc5_.id = "BIRD_BLUE";
                                                                     §§goto(addr305);
                                                                  }
                                                               }
                                                               §§goto(addr318);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   else
                                                   {
                                                      addr270:
                                                      _loc4_ = §§pop();
                                                      if(_loc7_)
                                                      {
                                                         addr274:
                                                         if(§§pop() < 2)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               _loc5_.id = "BIRD_RED";
                                                               addr280:
                                                               §§goto(addr305);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr291);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc4_);
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                   }
                                                   §§goto(addr282);
                                                }
                                                else
                                                {
                                                   addr236:
                                                   §§push(§§pop() * _loc3_);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() + §§pop() * _loc3_);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc6_ && this)
                                                               {
                                                               }
                                                               addr261:
                                                               §§push(int(§§pop()));
                                                               §§push(int(§§pop()));
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§goto(addr270);
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            addr260:
                                                            §§goto(addr261);
                                                            §§push(§§pop() % §§pop());
                                                         }
                                                         §§push(5);
                                                      }
                                                      §§goto(addr260);
                                                   }
                                                   §§goto(addr261);
                                                }
                                             }
                                             §§goto(addr162);
                                          }
                                       }
                                       §§goto(addr153);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr280);
                              }
                              §§goto(addr179);
                           }
                           else
                           {
                              §§push(_loc5_);
                              §§push(-100 + _loc2_ * 6);
                              if(_loc7_)
                              {
                                 §§push(this.§]'§());
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() * 3);
                                    if(_loc7_)
                                    {
                                       addr225:
                                       §§push(§§pop() - §§pop());
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(_loc3_ * 8);
                                       }
                                       §§pop().y = §§pop();
                                       if(_loc7_ || this)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr236);
                                          }
                                          §§goto(addr282);
                                       }
                                       §§goto(addr305);
                                    }
                                 }
                                 §§push(§§pop() - §§pop());
                              }
                              §§goto(addr225);
                           }
                        }
                        §§goto(addr261);
                     }
                     §§goto(addr305);
                  }
               }
               return;
            }
         }
      }
      
      private function §2!@§() : void
      {
      }
      
      public function §'F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§2!<§.§?V§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     this.§"!A§(this.§+'§.§=d§,false);
                     if(_loc1_)
                     {
                        addr43:
                        this.§"!A§(this.§7!4§.§`U§(§#C§.§5C§),false);
                        if(_loc1_ || _loc1_)
                        {
                           this.§"!A§(this.§7!4§.§`U§(§#C§.§=!7§),true);
                           this.§"!A§(this.§7!4§.§`U§(§#C§.§3!0§),true);
                           addr58:
                           if(_loc1_)
                           {
                              this.§"!A§(this.§]K§.§[t§,true);
                              if(!_loc2_)
                              {
                                 this.§"!A§(this.§3l§.sprite,true);
                                 addr100:
                                 this.§"!A§(this.§7!4§.§`U§(§#C§.§#!'§),true);
                                 if(!_loc2_)
                                 {
                                    addr110:
                                    this.§"!A§(this.§+'§.§?1§,false);
                                    §§push(§2!<§.§?V§);
                                    if(!(_loc2_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          this.§"!A§(this.§+'§.§4$§,false);
                                          if(!(_loc2_ && this))
                                          {
                                             addr149:
                                             this.§"!A§(this.§7!4§.§`U§(§#C§.§3"§),true);
                                             addr159:
                                             if(!§[A§.§4!!§)
                                             {
                                             }
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr149);
                              }
                           }
                           §§goto(addr100);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr58);
               }
               §§goto(addr43);
            }
            §§goto(addr149);
         }
         §§goto(addr43);
      }
      
      private function §"!A§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.sprite);
            if(_loc4_ || param2)
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().addChild(param1);
         }
         addr55:
         if(!(_loc3_ && this))
         {
            §§push(this.sprite);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = new Point();
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_ || _loc3_)
            {
               §§push(§[k§.§3!5§);
               if(!_loc5_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_)
                     {
                        param1 = §§pop();
                        §§goto(addr80);
                     }
                     param2 = §§pop();
                     if(_loc4_ || this)
                     {
                        §§goto(addr80);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr71);
               }
            }
            §§goto(addr63);
         }
         addr80:
         if(!(_loc5_ && param1))
         {
            §§push(param2);
            if(_loc4_)
            {
               addr63:
               §§push(§§pop() / §[k§.§3!5§);
               if(!(_loc5_ && param1))
               {
                  addr71:
                  §§push(Number(§§pop()));
               }
            }
         }
         _loc3_.x = (param1 / §=_§.§&!?§ + this.§%U§.§3!3§ - §=_§.§[!#§ / §=_§.§&!?§) * § '§;
         if(!_loc5_)
         {
            addr110:
            _loc3_.y = (param2 / §=_§.§&!?§ + this.§%U§.§@A§ - §=_§.§<9§ / §=_§.§&!?§) * § '§;
         }
         return _loc3_;
      }
      
      public function §>!0§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc5_ || this)
         {
            _loc3_.x = (param1 / § '§ + §=_§.§[!#§ / §=_§.§&!?§ - this.§%U§.§3!3§) * §=_§.§&!?§;
            if(!(_loc6_ && _loc3_))
            {
               _loc3_.y = (param2 / § '§ + §=_§.§<9§ / §=_§.§&!?§ - this.§%U§.§@A§) * §=_§.§&!?§;
            }
         }
         var _loc4_:Number = Math.max(§[k§.§3!5§,§[k§.§@$§);
         if(!(_loc6_ && param1))
         {
            _loc3_.x *= _loc4_;
            if(!_loc6_)
            {
               _loc3_.y *= _loc4_;
            }
         }
         return _loc3_;
      }
      
      public function §6$§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§]K§.addObject(param1,param2,param3);
         }
      }
      
      public function §1!,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§"`§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr55:
                     §§push(this.§"`§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop().visible = true;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr75:
                           this.§"`§.alpha = 0;
                           if(!_loc2_)
                           {
                              addr79:
                              this.§%+§ = 0;
                           }
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr75);
                  }
                  return;
               }
               §§goto(addr79);
            }
            §§goto(addr75);
         }
         §§goto(addr55);
      }
      
      public function §-z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§1T§ = new §%T§(§&z§.§=G§,§&z§.§<q§);
         }
      }
      
      public function §@;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§1T§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§+'§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr43:
                     this.§+'§.dispose();
                     if(_loc2_)
                     {
                        this.§+'§ = null;
                        if(!(_loc1_ && _loc1_))
                        {
                           addr56:
                           §§push(this.§]K§);
                           if(_loc2_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    addr75:
                                    this.§]K§.dispose();
                                    this.§]K§ = null;
                                    addr79:
                                    this.§ !6§ = null;
                                    if(!_loc1_)
                                    {
                                       addr84:
                                       §§push(this.§^<§);
                                       if(!_loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc1_)
                                             {
                                                §§push(this.§^<§);
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   addr100:
                                                   if(!§§pop().§]E§)
                                                   {
                                                   }
                                                   §§push(this.§^<§);
                                                }
                                                §§pop().clear();
                                                if(!_loc1_)
                                                {
                                                   this.§^<§ = null;
                                                   addr110:
                                                   §§push(this.§3w§);
                                                   if(!_loc1_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_ || this)
                                                         {
                                                            addr124:
                                                            this.§3w§.clear();
                                                            addr125:
                                                            this.§3w§ = null;
                                                            addr128:
                                                            §§push(this.§3l§);
                                                            if(_loc2_ || this)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr140:
                                                                  this.§3l§.dispose();
                                                                  this.§3l§ = null;
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     addr151:
                                                                     §§push(this.§%U§);
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr163:
                                                                           this.§%U§.clear();
                                                                           this.§%U§ = null;
                                                                           addr161:
                                                                           if(!_loc2_)
                                                                           {
                                                                           }
                                                                           addr188:
                                                                           this.§7!4§.dispose();
                                                                           addr186:
                                                                           if(!(_loc1_ && _loc1_))
                                                                           {
                                                                              this.§7!4§ = null;
                                                                              addr209:
                                                                              if(this.sprite)
                                                                              {
                                                                                 addr212:
                                                                                 loop0:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.sprite);
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop().numChildren > 0)
                                                                                       {
                                                                                          §§push(this.sprite);
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr240:
                                                                                          this.§2R§ = 0;
                                                                                          this.§2!,§ = 0;
                                                                                          if(!(_loc1_ && _loc2_))
                                                                                          {
                                                                                             this.mReadyToRun = false;
                                                                                             addr256:
                                                                                             this.§"p§ = false;
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                this.§%+§ = §&z§.§`-§;
                                                                                                §§push(this.§;1§);
                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§push(this.§;1§);
                                                                                                      if(!(_loc1_ && _loc1_))
                                                                                                      {
                                                                                                         addr284:
                                                                                                         §§push((§§pop() as §32§).§5!;§);
                                                                                                         if(!_loc1_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(_loc2_ || _loc1_)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               addr303:
                                                                                                               §§push((this.§;1§ as §32§).§5!;§);
                                                                                                               §§push(0);
                                                                                                            }
                                                                                                            §§pop().y = §§pop();
                                                                                                            addr305:
                                                                                                            §§push(this.§"`§);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr312:
                                                                                                                  this.§"`§.visible = false;
                                                                                                                  if(_loc2_ || this)
                                                                                                                  {
                                                                                                                     addr321:
                                                                                                                     this.§0W§ = null;
                                                                                                                     this.§;!A§ = null;
                                                                                                                     §§push(this.§!!§);
                                                                                                                     if(_loc2_ || this)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc2_ || this)
                                                                                                                           {
                                                                                                                              §§push(this.§!!§);
                                                                                                                              if(!_loc1_)
                                                                                                                              {
                                                                                                                                 addr348:
                                                                                                                                 §§pop().removeEventListener(Event.COMPLETE,this.§ try§);
                                                                                                                                 §§push(this.§!!§);
                                                                                                                              }
                                                                                                                              §§pop().removeEventListener(Event.CANCEL,this.§>h§);
                                                                                                                              if(!_loc1_)
                                                                                                                              {
                                                                                                                                 addr362:
                                                                                                                                 §§push(this.§8q§);
                                                                                                                                 if(!_loc1_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§8q§);
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             §§pop().removeEventListener(Event.COMPLETE,this.§,%§);
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                addr382:
                                                                                                                                                this.§8q§.removeEventListener(Event.CANCEL,this.§9m§);
                                                                                                                                                if(_loc2_ || this)
                                                                                                                                                {
                                                                                                                                                   addr404:
                                                                                                                                                   this.§>d§();
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§push(§;T§.§,H§);
                                                                                                                                             if(!_loc1_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr415:
                                                                                                                                                      §;T§.§,H§.color = 0;
                                                                                                                                                   }
                                                                                                                                                   addr424:
                                                                                                                                                   this.§!0§.removeEventListeners();
                                                                                                                                                   addr422:
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(this.§!0§);
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr422);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr424);
                                                                                                                                             }
                                                                                                                                             §§goto(addr415);
                                                                                                                                          }
                                                                                                                                          §§goto(addr382);
                                                                                                                                       }
                                                                                                                                       §§goto(addr424);
                                                                                                                                    }
                                                                                                                                    §§goto(addr404);
                                                                                                                                 }
                                                                                                                                 §§goto(addr382);
                                                                                                                              }
                                                                                                                              §§goto(addr424);
                                                                                                                           }
                                                                                                                           §§goto(addr428);
                                                                                                                        }
                                                                                                                        §§goto(addr362);
                                                                                                                     }
                                                                                                                     §§goto(addr348);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr321);
                                                                                                            }
                                                                                                            §§goto(addr312);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr303);
                                                                                                   }
                                                                                                   §§goto(addr305);
                                                                                                }
                                                                                                §§goto(addr284);
                                                                                             }
                                                                                             §§goto(addr415);
                                                                                          }
                                                                                          §§goto(addr428);
                                                                                       }
                                                                                       §§goto(addr256);
                                                                                    }
                                                                                    addr425:
                                                                                    this.mReadyToRun = false;
                                                                                    addr428:
                                                                                    return;
                                                                                 }
                                                                              }
                                                                              §§goto(addr240);
                                                                           }
                                                                           §§goto(addr212);
                                                                        }
                                                                        §§push(this.§7!4§);
                                                                        if(_loc2_ || _loc1_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc1_ && _loc1_))
                                                                              {
                                                                                 §§goto(addr186);
                                                                              }
                                                                           }
                                                                           §§goto(addr209);
                                                                        }
                                                                        §§goto(addr188);
                                                                     }
                                                                     §§goto(addr163);
                                                                  }
                                                                  §§goto(addr161);
                                                               }
                                                               §§goto(addr151);
                                                            }
                                                            §§goto(addr140);
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   §§goto(addr124);
                                                }
                                             }
                                             §§goto(addr125);
                                          }
                                          §§goto(addr110);
                                       }
                                    }
                                    §§goto(addr100);
                                 }
                                 §§goto(addr79);
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr212);
               }
               §§goto(addr56);
            }
            §§goto(addr43);
         }
         §§goto(addr75);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §+s§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§;!A§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§push(this.§;!A§);
                  }
                  else
                  {
                     §§goto(addr50);
                  }
               }
               §§goto(addr50);
            }
            return §§pop().toString();
         }
         addr50:
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(!this.mReadyToRun);
         §§push(!this.mReadyToRun);
         if(!_loc4_)
         {
            if(!§§pop())
            {
               if(!(_loc4_ && param1))
               {
                  §§pop();
                  if(_loc5_ || param1)
                  {
                     §§push(§;T§.§>!@§());
                     if(_loc5_)
                     {
                        addr43:
                        §§push(!§§pop());
                        if(!(_loc4_ && param2))
                        {
                           addr61:
                           if(§§pop())
                           {
                              §§push(0);
                              if(_loc5_ || param1)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§push(this.§0W§);
                              if(_loc5_ || this)
                              {
                                 addr93:
                                 §§goto(addr107);
                                 §§push(§§pop() && this.§^K§(param1,true,param2,param3));
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr108);
               }
               §§goto(addr43);
            }
            §§goto(addr61);
         }
         §§goto(addr93);
      }
      
      protected function §^K§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            if(this.§`!1§)
            {
               if(_loc7_ || this)
               {
                  §§push(param1);
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop() * 0.2);
                     if(_loc7_ || param2)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                           addr54:
                           param1 = §§pop();
                           if(!_loc6_)
                           {
                              §§push(§;T§.§1I§);
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    addr68:
                                    if(!_loc6_)
                                    {
                                       addr64:
                                       §§push(§;T§.§1I§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(!_loc6_)
                                    {
                                       §§push(this);
                                       §§push(this.§2!,§);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§2!,§ = §§pop();
                                       if(_loc7_ || param3)
                                       {
                                          §§push(param3);
                                          if(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                §§push(this);
                                                §§push(this.§2R§);
                                                if(!(_loc6_ && param3))
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§2R§ = §§pop();
                                                §§push(this.§^<§.§3!=§(this.§2R§));
                                                if(_loc7_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc7_ || param1)
                                                   {
                                                      _loc5_ = §§pop();
                                                      this.§3l§.update(param1,param4);
                                                      if(_loc7_)
                                                      {
                                                         this.§2R§ = _loc5_;
                                                         addr159:
                                                         addr160:
                                                         if(param2)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               addr163:
                                                               this.§>9§(param1,_loc5_);
                                                            }
                                                         }
                                                         §§push(param1);
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                }
                                                return §§pop();
                                             }
                                             this.§]K§.§69§(param1);
                                             this.§2R§ = 0;
                                             §§goto(addr159);
                                             §§goto(addr159);
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr68);
                              }
                              §§pop().speed = 0.2;
                           }
                        }
                        §§goto(addr68);
                     }
                  }
                  §§goto(addr54);
               }
               §§goto(addr64);
            }
            §§goto(addr68);
         }
         §§goto(addr64);
      }
      
      private function § z§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         §§push(§[A§.§7I§);
         if(_loc6_)
         {
            §§push(§§pop() * 1000);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(!_loc7_)
         {
            if(this.§0W§)
            {
               if(!(_loc7_ && param3))
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§push(this.§0W§.speed);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_)
                        {
                           addr51:
                           §§push(Number(§§pop()));
                           if(_loc6_ || param1)
                           {
                              param1 = §§pop();
                              if(_loc6_)
                              {
                                 addr62:
                                 §§push(this.§2!,§);
                                 if(!_loc7_)
                                 {
                                    addr67:
                                    §§push(§§pop() + param1);
                                    if(_loc6_ || param1)
                                    {
                                    }
                                    addr76:
                                    _loc5_ = §§pop();
                                    addr77:
                                    loop0:
                                    while(true)
                                    {
                                       §§push(this.§2!,§);
                                       if(_loc6_)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             addr137:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                             }
                                          }
                                          addr136:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(_loc6_ || param3)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc5_ > this.§0J§ + _loc4_)
                                                {
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      addr162:
                                                      this.§0W§.step(this);
                                                   }
                                                   §§push(this);
                                                   §§push(this.§0J§);
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§push(§§pop() + _loc4_);
                                                   }
                                                   §§pop().§0J§ = §§pop();
                                                   if(_loc6_ || param3)
                                                   {
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§push(this.§2!,§);
                                                if(_loc6_ || param2)
                                                {
                                                   §§push(_loc5_);
                                                   break;
                                                }
                                                §§goto(addr232);
                                             }
                                             else
                                             {
                                                §§push(this.§2!,§);
                                                §§push(_loc4_);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      if(§§pop() > this.§0J§)
                                                      {
                                                         §§push(this.§0W§);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§pop().step(this);
                                                            §§push(this);
                                                            §§push(this.§0J§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() + _loc4_);
                                                            }
                                                            §§pop().§0J§ = §§pop();
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr162);
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      this.§^K§(_loc4_,false,param2,param3);
                                                      if(!_loc7_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr205);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr136);
                                                   }
                                                }
                                                §§goto(addr137);
                                             }
                                          }
                                          break;
                                       }
                                       if(§§pop() < §§pop())
                                       {
                                          §§goto(addr205);
                                       }
                                       addr205:
                                       §§push(this);
                                       §§push(_loc5_);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() - this.§2!,§);
                                       }
                                       §§pop().§^K§(§§pop(),true,param2,param3);
                                       §§push(param1);
                                       if(_loc6_ || param2)
                                       {
                                          return §§pop();
                                       }
                                       addr232:
                                       addr232:
                                       return §§pop();
                                    }
                                 }
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr77);
                           }
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr51);
               }
               §§goto(addr67);
            }
            else
            {
               §§push(this.§^K§(_loc4_,true,param2,param3));
            }
            §§goto(addr232);
         }
         §§goto(addr62);
      }
      
      private function §>9§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(_loc5_ || this)
         {
            this.§+'§.update(param1);
            if(_loc5_ || _loc3_)
            {
               this.§]K§.§=u§(param1,param2);
               if(!_loc6_)
               {
                  this.§&!3§();
                  if(_loc5_)
                  {
                     §§push(this.§%+§);
                     §§push(§&z§.§`-§);
                     if(!_loc6_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!(_loc6_ && param2))
                           {
                              §§push(this);
                              §§push(this.§%+§);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§%+§ = §§pop();
                              §§push(§&z§.§`-§);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop() / 2);
                                 if(!(_loc6_ && param1))
                                 {
                                    addr94:
                                    _loc3_ = §§pop();
                                    §§push(-Math.abs(this.§%+§ - _loc3_));
                                    if(_loc5_ || param1)
                                    {
                                       addr120:
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          addr123:
                                          §§push(§§pop() + §§pop());
                                          if(_loc5_)
                                          {
                                             §§push(§&z§.§0<§);
                                             if(_loc5_)
                                             {
                                                addr130:
                                                §§push(§§pop() / _loc3_);
                                             }
                                             §§push(§§pop() * §§pop());
                                             if(_loc5_ || this)
                                             {
                                                addr140:
                                                §§push(Number(§§pop()));
                                             }
                                             _loc4_ = §§pop();
                                             if(_loc5_)
                                             {
                                                addr144:
                                                §§push(this.§"`§);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr149:
                                                      §§push(this.§"`§);
                                                      if(_loc5_ || this)
                                                      {
                                                         §§pop().alpha = _loc4_;
                                                         if(!_loc6_)
                                                         {
                                                            addr179:
                                                            §§push(this.§1T§);
                                                            if(_loc5_ || this)
                                                            {
                                                               §§goto(addr215);
                                                            }
                                                            if(!§§pop().§[D§(this.§%U§,param1))
                                                            {
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr213:
                                                                  this.§@;§();
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                            addr162:
                                                         }
                                                         addr215:
                                                         if(§§pop())
                                                         {
                                                            addr189:
                                                            §§push(this.§1T§);
                                                         }
                                                         this.§%U§.§6e§(param1);
                                                         if(_loc5_ || this)
                                                         {
                                                            this.§^<§.§8>§();
                                                            addr229:
                                                            this.§7!4§.update(param1);
                                                         }
                                                         return;
                                                      }
                                                      addr177:
                                                      §§pop().visible = false;
                                                      §§goto(addr179);
                                                      §§goto(addr179);
                                                   }
                                                   §§goto(addr162);
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr140);
                                       }
                                       §§goto(addr130);
                                    }
                                    §§goto(addr140);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr94);
                           }
                           else
                           {
                              addr175:
                              §§push(this.§"`§);
                           }
                        }
                        else
                        {
                           §§push(this.§"`§);
                           if(!(_loc6_ && param2))
                           {
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr175);
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr179);
                           }
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr229);
               }
               §§goto(addr144);
            }
            §§goto(addr149);
         }
         §§goto(addr179);
      }
      
      public function §default§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.objects);
            if(_loc3_ || _loc3_)
            {
               §§push(param1);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(1000);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc3_ || _loc2_)
                     {
                        §§pop().§69§(§§pop());
                        if(_loc3_ || param1)
                        {
                           addr87:
                           §§push(this.objects);
                           §§push(param1);
                           if(!(_loc2_ && _loc2_))
                           {
                              addr95:
                              §§push(§§pop() * 1000);
                           }
                           §§pop().§#+§(§§pop());
                           if(!_loc2_)
                           {
                              this.§<^§();
                           }
                        }
                        §§goto(addr102);
                     }
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr87);
         }
         addr102:
      }
      
      public function §&!3§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§>G§ = null;
         if(!_loc5_)
         {
            §§push(this.§2!,§);
            §§push(this.§'Y§);
            if(!(_loc5_ && _loc1_))
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(_loc4_)
               {
                  if(this.§@E§ != null)
                  {
                     var _loc3_:* = this.§@E§;
                     §§goto(addr53);
                  }
                  this.§'Y§ = this.§2!,§;
               }
            }
            §§goto(addr53);
         }
         addr53:
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               _loc1_.addTrail();
            }
         }
         if(!_loc4_)
         {
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§>G§ = null;
         if(_loc3_ || param1)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(!_loc4_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            §§push(this.mPigsAnimationTimer1);
            if(!_loc4_)
            {
               §§push(0);
               if(_loc3_)
               {
                  if(§§pop() <= §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(this.§]K§);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(true);
                           if(_loc3_ || this)
                           {
                              §§push(§§pop().isPigsAlive(§§pop()));
                              if(_loc3_ || this)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr77:
                                       §§push(this.§]K§);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(true);
                                          if(!_loc4_)
                                          {
                                             addr89:
                                             §§push(§§pop().§;#§(§§pop()));
                                             if(_loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc3_)
                                                {
                                                   _loc2_.§'j§.mTryToScream = override.§`=§;
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§push(this);
                                                      §§push(500 + Math.random() * 1000);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() + 4000 / (3 + this.§]K§.§3G§()));
                                                      }
                                                      §§pop().mPigsAnimationTimer1 = §§pop();
                                                      addr136:
                                                      §§push(this);
                                                      §§push(this.mPigsAnimationTimer2);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() - param1);
                                                      }
                                                      §§pop().mPigsAnimationTimer2 = §§pop();
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§goto(addr151);
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                }
                                                §§goto(addr136);
                                             }
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr171);
                                    }
                                    addr151:
                                    §§goto(addr154);
                                 }
                                 §§goto(addr136);
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr136);
               }
               addr154:
               §§goto(addr153);
            }
            addr153:
            if(this.mPigsAnimationTimer2 <= 0)
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(this.§]K§);
                  if(_loc3_ || param1)
                  {
                     addr171:
                     §§push(true);
                     if(!_loc4_)
                     {
                        addr175:
                        if(§§pop().isPigsAlive(§§pop()))
                        {
                           addr180:
                           _loc2_ = this.§]K§.§;#§(true);
                           addr179:
                           if(_loc3_)
                           {
                              _loc2_.§'j§.mTryToBlink = override.§for §;
                              if(_loc3_)
                              {
                                 §§push(this);
                                 §§push(250 + Math.random() * 500);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(§§pop() + 2000 / (3 + this.§]K§.§3G§()));
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
            return;
         }
         §§goto(addr151);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param6);
         if(!_loc7_)
         {
            §§push(-9999);
            if(_loc8_ || this)
            {
               if(§§pop() == §§pop())
               {
                  §§push(§!8§.§true §);
                  if(!(_loc7_ && param1))
                  {
                     §§push(int(§§pop()));
                     if(_loc8_ || param2)
                     {
                        addr56:
                        param6 = §§pop();
                        if(_loc8_)
                        {
                           addr59:
                           §3$§.addScore(param1,param2);
                           if(_loc8_)
                           {
                              this.§!0§.addScore(param1);
                              §§push(Boolean(param3));
                              §§push(Boolean(param3));
                              if(_loc8_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       §§pop();
                                       §§goto(addr96);
                                    }
                                    §§goto(addr108);
                                 }
                                 addr96:
                                 §§goto(addr97);
                              }
                              addr97:
                              §§goto(addr94);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr99);
                     }
                  }
                  addr94:
                  §§goto(addr95);
               }
               §§goto(addr59);
            }
            addr95:
            §§push(param1 > 0);
            if(param1 > 0)
            {
               §§pop();
               addr99:
               §§push(this.§ §);
               if(!(_loc7_ && this))
               {
                  addr108:
                  §§push(!§§pop());
               }
            }
            if(§§pop())
            {
               if(!_loc7_)
               {
                  addr112:
                  this.§ #§(param1.toString(),param4,param5,800,param6,0,0);
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function § #§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            §§push(param5);
            if(_loc9_ || param3)
            {
               if(§§pop() == -9999)
               {
                  if(!(_loc8_ && param2))
                  {
                     §§push(§!8§.§%6§);
                     if(_loc9_ || param1)
                     {
                        addr66:
                        param5 = §§pop();
                        if(!(_loc8_ && param2))
                        {
                           addr74:
                           this.§7!4§.§'!;§(§!8§.§=>§,§#C§.§3"§,§!8§.§'!B§,param2,param3,param4,param1,param5,param6,param7);
                        }
                     }
                     §§goto(addr66);
                  }
                  return;
               }
               §§goto(addr74);
            }
            §§goto(addr66);
         }
         §§goto(addr74);
      }
      
      public function §+r§(param1:§>G§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§@E§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() == null)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§@E§ = new Array();
                     if(_loc2_ || param1)
                     {
                        addr69:
                        this.§@E§.push(param1);
                        addr67:
                     }
                  }
                  return;
               }
               §§goto(addr67);
            }
         }
         §§goto(addr69);
      }
      
      public function §7!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§3l§.§7!;§();
            if(_loc2_)
            {
               §§goto(addr39);
            }
            §§goto(addr44);
         }
         addr39:
         this.§]K§.§][§();
         if(!_loc1_)
         {
            addr44:
            this.§ § = true;
         }
      }
      
      public function §+!?§(param1:§>G§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§7!4§.§!a§(§#C§.§5C§);
            if(!_loc3_)
            {
               §§push(this.§@E§);
               if(!_loc3_)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     if(_loc2_ || param1)
                     {
                        §§push(this.§@E§);
                        if(!_loc3_)
                        {
                           §§pop().splice(this.§@E§.indexOf(param1),1);
                           if(_loc2_ || param1)
                           {
                              addr79:
                              if(this.§@E§.length == 0)
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                 }
                              }
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr79);
                     }
                     this.§@E§ = null;
                     §§goto(addr92);
                  }
               }
            }
            §§goto(addr79);
         }
         addr92:
      }
      
      public function §6U§(param1:§+$§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            this.§ !6§ = this.§]K§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!_loc8_)
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr47:
                  §§push(§4K§.§ m§);
                  if(!(_loc8_ && param2))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                        addr68:
                        var _loc4_:* = Number(§§pop());
                        if(_loc7_)
                        {
                           §§push(param1.§4@§);
                           §§push(1);
                           if(_loc7_ || param1)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(this.§ !6§);
                                    if(_loc7_ || param2)
                                    {
                                       §§pop().§2B§(param1.§4@§);
                                       if(_loc7_ || param2)
                                       {
                                          addr105:
                                          this.§ !6§.§'j§.§<!8§();
                                          addr103:
                                          if(!(_loc8_ && param3))
                                          {
                                             addr114:
                                             if(param1.§#!9§ != 0)
                                             {
                                                if(_loc8_)
                                                {
                                                }
                                                addr148:
                                                §§push(-_loc4_);
                                                if(!(_loc8_ && param3))
                                                {
                                                   addr159:
                                                   §§push(Number(§§pop() * param2 * Math.cos(param3 / (180 / Math.PI))));
                                                }
                                                var _loc5_:* = §§pop();
                                                §§push(_loc4_);
                                                if(!(_loc8_ && this))
                                                {
                                                   §§push(§§pop() * param2);
                                                   if(_loc7_ || param3)
                                                   {
                                                      addr187:
                                                      §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                      if(!_loc8_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc6_:* = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      this.§ !6§.§4<§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         this.camera.§=!1§(§=_§.§7Y§);
                                                         addr218:
                                                         if(_loc7_)
                                                         {
                                                            §§push(this.§;!A§);
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§pop().§6U§(this.§^<§.§'U§,param1.x,param1.y,param2,param3);
                                                            §§goto(addr259);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      addr259:
                                                      if(_loc7_)
                                                      {
                                                         addr247:
                                                         §§push(this.§;!A§);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr148);
                                          }
                                          §§push(param1.§#!9§);
                                          if(_loc7_ || param3)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc7_ || param3)
                                             {
                                                _loc4_ = §§pop();
                                                §§goto(addr148);
                                             }
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr105);
                                 }
                                 §§goto(addr103);
                              }
                           }
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr68);
                  }
                  addr64:
                  §§push(Number(§§pop()));
                  if(!_loc8_)
                  {
                     §§goto(addr68);
                  }
               }
               else
               {
                  §§push(§4K§.§9=§);
                  if(_loc7_)
                  {
                     §§goto(addr64);
                  }
               }
               §§goto(addr68);
            }
         }
         §§goto(addr47);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§"p§ = true;
         }
      }
      
      private function §<^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§"p§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  return;
               }
               this.§"p§ = false;
               if(_loc1_)
               {
                  §§push(this.activeObject);
                  if(_loc1_ || this)
                  {
                     §§push(§§pop() is §=H§);
                     if(_loc1_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           if(_loc1_ || _loc2_)
                           {
                              addr73:
                              §§pop();
                              §§push(this.activeObject);
                              if(_loc1_)
                              {
                                 addr78:
                                 §§push((§§pop() as §=H§).§^`§);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr88:
                                    §§push(!§§pop());
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       addr96:
                                       if(§§pop())
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr109:
                                             if(this.activeObject.activateSpecialPower(this.§='§))
                                             {
                                                if(!_loc2_)
                                                {
                                                   this.§]L§ = true;
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      addr132:
                                                   }
                                                }
                                                §§goto(addr138);
                                             }
                                             §§goto(addr132);
                                          }
                                       }
                                       else
                                       {
                                          this.§]K§.§93§();
                                          if(!_loc2_)
                                          {
                                             addr138:
                                             §§push(this.§;!A§);
                                             if(_loc1_ || this)
                                             {
                                                if(!§§pop())
                                                {
                                                }
                                                §§goto(addr156);
                                             }
                                             §§pop().§]o§(this.§^<§.§'U§);
                                             §§goto(addr156);
                                          }
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr109);
                                 }
                                 §§goto(addr96);
                              }
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr78);
               }
               §§goto(addr132);
            }
            §§goto(addr73);
         }
         addr156:
         if(!_loc2_)
         {
            addr150:
            §§push(this.§;!A§);
         }
      }
      
      public function §1_§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§]K§.§1_§();
         }
      }
      
      public function §45§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§]K§.§^U§();
         }
      }
      
      public function §20§() : §&!;§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§&!;§ = new §&!;§();
         if(_loc3_)
         {
            _loc1_.§'T§ = this.§!!5§.§'T§;
            _loc1_.§=N§ = this.§!!5§.§=N§;
            if(_loc3_)
            {
               §§goto(addr55);
            }
            §§goto(addr61);
         }
         addr55:
         this.§%U§.§[s§(_loc1_);
         if(_loc3_)
         {
            addr61:
            this.§]K§.§"!!§(_loc1_);
            if(_loc3_ || _loc2_)
            {
               this.§3l§.§]Z§(_loc1_);
               _loc1_.theme = this.§+'§.§]m§();
            }
         }
         return _loc1_;
      }
      
      public function §0!#§() : int
      {
         return this.§!!5§.§=N§;
      }
      
      public function § G§() : int
      {
         return this.§!!5§.§'T§;
      }
      
      public function §6"§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!!5§.§=N§ = param1;
         }
      }
      
      public function §`!9§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§!!5§.§'T§ = param1;
         }
      }
      
      public function §"&§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§26§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr38:
                     this.§26§.§;s§(param1,param2);
                     if(!_loc4_)
                     {
                     }
                     addr57:
                     this.§%U§.§6e§(0);
                     addr59:
                     return;
                     addr55:
                  }
               }
               §§push(this.§%U§);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || param1)
                     {
                        §§goto(addr55);
                     }
                  }
                  §§goto(addr59);
               }
               §§goto(addr57);
            }
         }
         §§goto(addr38);
      }
      
      public function get §7!C§() : §&!;§
      {
         return this.§!!5§;
      }
      
      public function get §='§() : §#-§
      {
         return this.§]K§;
      }
      
      protected function get starling() : §;T§
      {
         return this.§'=§;
      }
      
      public function get §%t§() : int
      {
         return §0a§;
      }
   }
}
