package §%x§
{
   import § !;§.§`! §;
   import §"!5§.§,!!§;
   import §#k§.§"!D§;
   import §%$§.§3V§;
   import §%$§.§<]§;
   import §&p§.§'_§;
   import §-!0§.§'!3§;
   import §-!0§.§2h§;
   import §-!0§.§`Q§;
   import §0!<§.§#y§;
   import §14§.§0E§;
   import §6!@§.§5l§;
   import §<!B§.§<O§;
   import §>!C§.§'H§;
   import §>!C§.§5!&§;
   import §>!C§.§6M§;
   import §>!C§.§9R§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import §?!D§.§@!$§;
   import §?^§.DisplayObject;
   import §?^§.Sprite;
   import §[F§.§`m§;
   import §]!9§.§&v§;
   import §]!9§.§1c§;
   import §]!9§.§>2§;
   import §]!9§.§]!H§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#;§
   {
      
      private static const §"!3§:int = 20;
      
      public static const §9!7§:Number;
      
      public static const §<!'§:Number;
      
      public static const §`!2§:Number = 0.05;
      
      public static const §0!B§:Number;
      
      public static const §7!2§:Number;
      
      public static const §?!B§:§`! § = new §`! §(13 - 3);
      
      protected static var §0n§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §"!3§ = 20;
            if(_loc2_ || §#;§)
            {
               §9!7§ = §,!!§.§;]§;
               §<!'§ = §,!!§.§3L§;
               §`!2§ = 1 / 20;
               §§goto(addr37);
            }
            §§goto(addr59);
         }
         addr37:
         if(_loc2_ || _loc1_)
         {
            addr59:
            §0!B§ = §,!!§.§3L§ * §`!2§;
            §§push(§§findproperty(§7!2§));
            §§push(§9!7§);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() * §`!2§);
            }
            §§pop().§7!2§ = §§pop();
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
            §0n§ = §9R§.§ !4§;
         }
      }
      
      protected var §1!+§:§]!H§;
      
      private var §6G§:§>2§;
      
      private var §"g§:Array = null;
      
      protected var §throw§:§5l§;
      
      public var §-K§:§2N§;
      
      protected var §continue§:§;C§;
      
      protected var §^l§:§`m§;
      
      protected var § <§:§3=§;
      
      protected var §3!'§:§5b§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §5=§:Boolean = false;
      
      protected var §,!C§:Boolean = false;
      
      protected var §4t§:Boolean = false;
      
      public var §>E§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §<i§:Number;
      
      public var §3!F§:Number;
      
      private var §-!2§:Number;
      
      public var §5!'§:§5!&§;
      
      public var §^!?§:Boolean = false;
      
      private var §@-§:§[G§;
      
      private var § X§:Sprite;
      
      protected var §!S§:§9R§;
      
      protected var §%!&§:§@!$§ = null;
      
      private var §`F§:EventDispatcher;
      
      private var §!X§:Array;
      
      private var §]Q§:Array;
      
      protected var §>Y§:§'_§;
      
      private var §@!§:§<O§;
      
      protected var § 7§:§'!3§;
      
      protected var § 3§:§`Q§;
      
      private var §=#§:§2h§;
      
      private var §[%§:§2h§;
      
      private var §?!0§:§2h§;
      
      private var §<!1§:Stage;
      
      private var §"Y§:§8I§;
      
      protected var § 8§:§0E§;
      
      protected var §#Q§:§0E§;
      
      protected var §=U§:Number = 0.0;
      
      protected var §>!&§:String;
      
      private var §5!6§:Boolean;
      
      protected var §^Z§:Boolean;
      
      protected var §+[§:uint = 1.417339207E9;
      
      public var § ,§:Boolean;
      
      public function §#;§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§]Q§ = [];
         if(_loc4_ || _loc2_)
         {
            super();
            this.§`F§ = new EventDispatcher();
         }
         this.§5!'§ = new §5!&§();
         if(_loc4_)
         {
            this.§<!1§ = param1;
         }
         this.§ 7§ = §'!3§.§-]§;
         this.§ 3§ = this.initAnimationManager(this.§ 7§);
         this.§=#§ = this.initThemeGraphicsManager();
         this.§[%§ = this.§'M§();
         this.§?!0§ = this.§?H§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§>Y§ = new §'_§(§[G§,param1,new Rectangle(0,0,§,!!§.§;]§,§,!!§.§3L§),_loc2_);
         if(_loc4_ || param1)
         {
            §,!!§.§-k§.addEventListener(Event.ENTER_FRAME,this.§>Y§.onEnterFrame);
            if(!_loc3_)
            {
               _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§-%§,false,0,true);
               if(!(_loc3_ && param1))
               {
                  §§goto(addr128);
               }
               §§goto(addr146);
            }
            §§goto(addr172);
         }
         addr128:
         §§push(this.§>Y§);
         if(!_loc3_)
         {
            §§push(false);
            if(!_loc3_)
            {
               §§pop().§^e§ = §§pop();
               addr146:
               §§push(this.§>Y§);
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
            §§push(this.§>Y§);
            if(_loc4_ || this)
            {
               §§pop().§switch§ = 2;
               addr172:
               this.§>Y§.§"v§();
            }
            §§goto(addr172);
         }
      }
      
      public static function §=D§(param1:§>2§, param2:§>2§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§]G§);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.§]G§);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.§<?§);
         if(_loc6_ || param2)
         {
            §§push(§§pop() - param2.§<?§);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         return §]!;§(_loc3_,_loc4_);
      }
      
      public static function §]!;§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§ X§);
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
               if(this.§7!8§)
               {
                  if(_loc2_)
                  {
                     this.§ X§ = this.§@-§.§5P§;
                  }
               }
            }
            return this.§ X§;
         }
         §§goto(addr71);
      }
      
      public function get §7!8§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§@-§);
            if(!(_loc1_ && this))
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this.§@-§ = this.§>Y§.§8!B§ as §[G§;
                     if(!_loc1_)
                     {
                        addr65:
                        §§push(this.§@-§);
                        if(!_loc1_)
                        {
                           §§pop().§-j§ = false;
                        }
                        §§goto(addr73);
                     }
                  }
               }
               §§push(this.§@-§);
            }
            addr73:
            return §§pop();
         }
         §§goto(addr65);
      }
      
      private function get §`3§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§7!8§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§7!8§);
                  }
                  else
                  {
                     §§goto(addr52);
                  }
               }
               §§goto(addr52);
            }
            return (§§pop() as §[G§).§`3§;
         }
         addr52:
         return null;
      }
      
      public function get §+!!§() : §`Q§
      {
         return this.§ 3§;
      }
      
      public function get textureManager() : §'!3§
      {
         return this.§ 7§;
      }
      
      public function get camera() : §`m§
      {
         return this.§^l§;
      }
      
      public function get objects() : §]!H§
      {
         return this.§1!+§;
      }
      
      public function get particles() : §5b§
      {
         return this.§3!'§;
      }
      
      public function get background() : §5l§
      {
         return this.§throw§;
      }
      
      public function get slingshot() : §3=§
      {
         return this.§ <§;
      }
      
      public function get activeObject() : §>2§
      {
         return this.§6G§;
      }
      
      public function get §`,§() : §;C§
      {
         return this.§continue§;
      }
      
      public function get stage() : Stage
      {
         return this.§<!1§;
      }
      
      public function get §^k§() : §2h§
      {
         return this.§?!0§;
      }
      
      protected function get §-!"§() : §2h§
      {
         return this.§=#§;
      }
      
      public function set activeObject(param1:§>2§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§6G§ = param1;
         }
      }
      
      public function set §=9§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^Z§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§@!§);
         if(!(_loc1_ && _loc2_))
         {
            if(§§pop())
            {
               if(_loc2_ || _loc1_)
               {
                  addr36:
                  this.§@!§.dispose();
                  if(_loc2_)
                  {
                     addr39:
                     §§push(this.§ 7§);
                     if(!_loc1_)
                     {
                        addr47:
                        if(§§pop())
                        {
                           §§push(this.§ 7§);
                        }
                        §§push(this.§=#§);
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
                                          §§push(this.§=#§);
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
                                                         §§push(this.§=#§.textureManager);
                                                         if(_loc2_)
                                                         {
                                                            addr111:
                                                            §§pop().dispose();
                                                            if(_loc2_)
                                                            {
                                                               addr114:
                                                               §§push(this.§?!0§);
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
                                                                           §§push(this.§?!0§);
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
                                                                     §§push(this.§?!0§.textureManager);
                                                                  }
                                                                  §§push(this.§>Y§);
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
                                                         §§push(this.§>Y§);
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
      
      protected function initThemeGraphicsManager() : §2h§
      {
         return null;
      }
      
      protected function §'M§() : §2h§
      {
         return null;
      }
      
      protected function §?H§() : §2h§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§'!3§) : §`Q§
      {
         return new §`Q§(param1);
      }
      
      public function §69§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(§'_§.§17§);
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
                           §§push(§'_§.§17§);
                           if(!_loc2_)
                           {
                              §§pop().start();
                              if(!(_loc3_ || this))
                              {
                                 addr82:
                                 §'_§.§17§.color = 0;
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
                        §§push(§'_§.§17§);
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
      
      public function §#O§(param1:Boolean) : void
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
      
      public function § ]§(param1:§@!$§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§%!&§);
            if(_loc3_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(this.§%!&§);
                     if(_loc3_ || param1)
                     {
                        §§pop().removeEventListeners();
                        if(!(_loc2_ && _loc2_))
                        {
                           addr69:
                           this.§%!&§ = param1;
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
            this.§%!&§.addEventListeners();
            §§goto(addr82);
         }
         addr82:
      }
      
      public function §27§() : §0E§
      {
         return this.§ 8§;
      }
      
      public function §^!2§(param1:§<O§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§@!§ = param1;
         }
         §§push(this.§@!§.§8h§);
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
                     this.§`F§.addEventListener(Event.INIT,param3);
                     break;
                  }
                  §§goto(addr91);
               }
               if(this.§<!4§(param2))
               {
                  this.§8!;§();
               }
               addr91:
            }
            continue;
            return;
         }
         this.§]Q§.push(param3);
         §§goto(addr85);
      }
      
      private function §<!4§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         §§push(this.§ 7§);
         if(_loc4_ || this)
         {
            §§push(§§pop().§,_§());
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  §§push(this.§ 7§);
                  if(!_loc5_)
                  {
                     §§push(§§pop().§=M§);
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
                                    §§push(this.§ 7§.§&i§);
                                    if(!(_loc5_ && param1))
                                    {
                                       addr82:
                                       §§push(int(§§pop() / 1000));
                                    }
                                    _loc3_ = §§pop();
                                 }
                                 §§push(§#y§);
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
                  this.§!X§ = param1.concat();
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
            this.§ 3§.initializeAnimations(param1);
         }
      }
      
      private function §-%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§ 7§.§-+§();
         if(!_loc2_)
         {
            §§push(this.§-!"§);
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
                        §§push(this.§-!"§);
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
                                    §§push(this.§-!"§.textureManager);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop().§-+§();
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr83:
                                          §§push(this.§^k§);
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
                                                         §§push(this.§^k§);
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop().textureManager);
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               addr125:
                                                               if(§§pop())
                                                               {
                                                                  addr128:
                                                                  §§push(this.§^k§.textureManager);
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr131:
                                                                     §§pop().§-+§();
                                                                     addr132:
                                                                     if(this.§!X§)
                                                                     {
                                                                        this.§<!4§(this.§!X§);
                                                                        this.§!X§ = null;
                                                                        this.§8!;§();
                                                                     }
                                                                     §§push(this.§%!&§);
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
                                                                                    this.§%!&§.addEventListeners();
                                                                                 }
                                                                                 §§push(this.§=#§);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc3_ || param1)
                                                                                       {
                                                                                          addr195:
                                                                                          this.§=#§.§,_§();
                                                                                          if(_loc3_ || this)
                                                                                          {
                                                                                             addr213:
                                                                                             §§push(this.§?!0§);
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§push(this.§?!0§);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop().textureManager);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr230:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr239:
                                                                                                            §§push(this.§?!0§);
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§push(§§pop().textureManager);
                                                                                                            }
                                                                                                            §§pop().§,_§();
                                                                                                         }
                                                                                                         §§goto(addr240);
                                                                                                      }
                                                                                                      §§pop().§-+§();
                                                                                                      addr237:
                                                                                                      §§push(this.§?!0§);
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
      
      private function §8!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`F§.dispatchEvent(new Event(Event.INIT));
            if(!_loc1_)
            {
               addr28:
               this.§?!2§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      private function §?!2§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§]Q§)
         {
            if(_loc4_)
            {
               this.§`F§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!_loc5_)
         {
            this.§]Q§ = [];
         }
      }
      
      public function init(param1:§9R§) : void
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
                     this.§continue§ = new §;C§(this,param1);
                  }
                  this.§^l§ = this.initLevelCamera(param1);
                  this.§<i§ = 0;
                  this.§3!F§ = 0;
                  if(!(_loc3_ && this))
                  {
                     this.§-!2§ = 0;
                     this.§5!6§ = false;
                     if(!_loc3_)
                     {
                        addr74:
                        this.mReadyToRun = false;
                        this.§5=§ = false;
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
                  §0n§ = param1.theme;
                  this.§!S§ = param1;
                  this.§,!C§ = this.§`!#§(param1.theme);
                  if(!_loc3_)
                  {
                     this.§4t§ = this.§5w§(param1.theme);
                     addr126:
                     §§push(this.§,!C§);
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
                           this.§`i§();
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
                        this.§2G§(param1.theme);
                     }
                     §§goto(addr181);
                  }
                  addr190:
                  if(!_loc3_)
                  {
                     addr150:
                     §§push(this.§4t§);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr169:
                        §§push(Boolean(§§pop()));
                     }
                  }
                  §0]§.init();
                  return;
               }
               §§goto(addr42);
            }
            §§goto(addr169);
         }
         §§goto(addr74);
      }
      
      protected function §`i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§ 8§ = new §0E§(§6M§.§[z§);
         }
      }
      
      protected function §`!#§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§=#§)
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
      
      protected function §5w§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<]§ = null;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§[%§)
            {
               addr30:
               _loc2_ = §3V§.§9S§(param1);
               if(!_loc3_)
               {
                  if(_loc2_)
                  {
                     if(!(_loc3_ && param1))
                     {
                        addr56:
                        §§push(Boolean(_loc2_.§%b§));
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
                           §§push(this.§[%§.§[W§(_loc2_.§%b§));
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
      
      protected function §2G§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§<]§ = null;
         §§push(this.§=#§);
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
                        §§push(this.§`!#§(param1));
                        if(!_loc4_)
                        {
                           addr54:
                           if(!§§pop())
                           {
                              §§push(this.§=#§);
                              if(_loc3_ || param1)
                              {
                                 addr64:
                                 §§pop().removeEventListener(Event.COMPLETE,this.§&!E§);
                                 §§push(this.§=#§);
                                 if(_loc3_ || this)
                                 {
                                    addr78:
                                    §§pop().removeEventListener(Event.CANCEL,this.§7'§);
                                    §§push(this.§=#§);
                                    if(_loc3_)
                                    {
                                       addr87:
                                       §§pop().addEventListener(Event.COMPLETE,this.§&!E§);
                                       §§push(this.§=#§);
                                       if(!_loc4_)
                                       {
                                          §§pop().addEventListener(Event.CANCEL,this.§7'§);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr120:
                                             this.§=#§.§ null§(param1);
                                             §§push(this.§[%§);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                addr133:
                                                §§push(Boolean(§§pop()));
                                                if(Boolean(§§pop()))
                                                {
                                                   §§pop();
                                                   §§push(this.§5w§(param1));
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
                        §§push(this.§[%§);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§>,§);
                           if(!(_loc4_ && _loc3_))
                           {
                              addr170:
                              §§push(this.§[%§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop().removeEventListener(Event.CANCEL,this.§;L§);
                              }
                              addr212:
                              §§pop().addEventListener(Event.CANCEL,this.§;L§);
                              §§goto(addr217);
                           }
                           §§push(this.§[%§);
                           if(_loc3_ || _loc3_)
                           {
                              §§pop().addEventListener(Event.COMPLETE,this.§>,§);
                              addr193:
                              if(!_loc4_)
                              {
                                 §§push(this.§[%§);
                              }
                              addr217:
                              _loc2_ = §3V§.§9S§(param1);
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
                              this.§[%§.§ null§(_loc2_.§%b§);
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
      
      private function §&!E§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§=#§);
         if(!_loc3_)
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§&!E§);
            §§push(this.§=#§);
         }
         §§pop().removeEventListener(Event.CANCEL,this.§7'§);
         if(!(_loc3_ && this))
         {
            this.§,!C§ = true;
            if(_loc2_ || param1)
            {
               §§push(this.§,!C§);
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
                        §§push(this.§4t§);
                        if(!_loc3_)
                        {
                           addr97:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     this.initialize(this.§!S§);
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
      
      private function §7'§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§=#§);
            if(!_loc3_)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§&!E§);
               if(_loc2_)
               {
                  addr56:
                  this.§=#§.removeEventListener(Event.CANCEL,this.§7'§);
                  if(!(_loc3_ && param1))
                  {
                     this.§5=§ = true;
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      private function §>,§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§=#§);
         if(_loc3_)
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§>,§);
            if(!(_loc2_ && param1))
            {
               addr45:
               this.§=#§.removeEventListener(Event.CANCEL,this.§;L§);
               if(_loc3_)
               {
                  this.§4t§ = true;
                  addr52:
               }
               §§push(this.§,!C§);
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
                           §§push(this.§4t§);
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
                        this.initialize(this.§!S§);
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
      
      private function §;L§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§=#§);
            if(_loc2_)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§>,§);
               §§push(this.§=#§);
            }
            §§pop().removeEventListener(Event.CANCEL,this.§;L§);
            this.§4t§ = true;
         }
         §§push(this.§,!C§);
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
                     §§push(this.§4t§);
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
               if(§§pop())
               {
                  this.initialize(this.§!S§);
               }
               return;
            }
         }
         §§goto(addr73);
      }
      
      public function get backgroundTextureManager() : §'!3§
      {
         return this.§ 7§;
      }
      
      protected function initialize(param1:§9R§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^Z§ = false;
            this.§ ,§ = false;
            if(_loc2_ || param1)
            {
               §§push(§'_§.§6!"§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr40:
                        §'_§.§6!"§.speed = 1;
                     }
                  }
                  this.§-K§ = new §2N§(this);
                  if(!(_loc3_ && param1))
                  {
                     §§push(this);
                     §§push(this);
                     §§push(param1.theme);
                     §§push(this.§continue§.§=s§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() / §`!2§);
                     }
                     §§pop().§throw§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§^l§.§>!<§());
                     this.§throw§.§#,§(§,!!§.§1q§());
                  }
                  this.§1!+§ = this.initLevelObjectManager(param1);
                  if(_loc2_)
                  {
                     addr94:
                     this.§ <§ = this.initLevelSlingshot(param1);
                     §§goto(addr99);
                  }
                  §§goto(addr152);
               }
               §§goto(addr40);
            }
            addr99:
            this.§3!'§ = this.§8W§(this.§ 3§,this.§ 7§);
            if(!_loc3_)
            {
               this.§^l§.init();
               if(_loc2_)
               {
                  this.§%§();
                  this.§[]§();
                  if(!(_loc3_ && param1))
                  {
                     this.mReadyToRun = true;
                     if(_loc2_)
                     {
                        §§push(this.§%!&§);
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
               §§push(this.§%!&§);
            }
            return;
         }
         §§goto(addr94);
      }
      
      protected function §[]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§>!&§)
            {
               this.§#Q§ = §0E§.initialize(this.§>!&§);
               addr22:
               if(!_loc1_)
               {
                  §§push(this.§#Q§);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§pop().speed = 1;
                     §§push(this.§#Q§);
                  }
                  §§pop().play();
                  if(!(_loc1_ && _loc1_))
                  {
                     this.§=U§ = -1000;
                     if(_loc2_ || this)
                     {
                     }
                     §§goto(addr84);
                  }
                  this.§>!&§ = null;
               }
            }
            addr84:
            return;
         }
         §§goto(addr22);
      }
      
      public function §7!F§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>!&§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§#Q§ == null);
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
            §§push(this.§#Q§);
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
                           §§push(this.§#Q§);
                           if(_loc2_ || this)
                           {
                              §§pop().speed = Math.min(this.§#Q§.speed * 1.25,Math.pow(1.25,2));
                              if(_loc2_ || this)
                              {
                                 addr87:
                              }
                           }
                           else
                           {
                              addr90:
                              §§pop().speed = Math.max(this.§#Q§.speed / 1.25,Math.pow(1 / 1.25,10));
                           }
                        }
                        §§goto(addr87);
                     }
                     else
                     {
                        §§goto(addr90);
                        §§push(this.§#Q§);
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
            §§push(this.§#Q§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr43:
                     this.§#Q§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      protected function initLevelObjectManager(param1:§9R§) : §]!H§
      {
         return new §]!H§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§9R§) : §`m§
      {
         return new §`m§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§'!3§, param4:Number) : §5l§
      {
         return new §5l§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§9R§) : §3=§
      {
         return new §3=§(this,param1,new Sprite());
      }
      
      protected function §8W§(param1:§`Q§, param2:§'!3§) : §5b§
      {
         return new §5b§(param1,param2);
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
         var _loc3_:§9R§ = this.§3D§();
         var _loc4_:§'H§;
         (_loc4_ = new §'H§()).left = 0;
         if(!_loc6_)
         {
            §§push(_loc4_);
            §§push(§`m§.§]@§);
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
                        §§push(§§pop() + §`m§.§]@§);
                     }
                     §§pop().bottom = §§pop();
                     if(_loc7_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.left);
                        if(_loc7_ || this)
                        {
                           §§push(§§pop() + §`m§.§5t§);
                        }
                        §§pop().right = §§pop();
                        if(_loc7_)
                        {
                           _loc4_.y = -13.929;
                        }
                        _loc4_.x = §`m§.§5t§;
                        if(_loc7_)
                        {
                           addr112:
                           _loc4_.id = §`m§.§;!,§;
                           if(!_loc6_)
                           {
                              _loc3_.§''§(_loc4_);
                           }
                        }
                     }
                     var _loc5_:§'H§;
                     (_loc5_ = new §'H§()).top = _loc4_.top;
                     _loc5_.bottom = _loc4_.bottom;
                     _loc5_.left = 150;
                     if(_loc7_ || param1)
                     {
                        §§push(_loc5_);
                        §§push(_loc5_.left);
                        if(!(_loc6_ && param2))
                        {
                           §§push(§§pop() + §`m§.§5t§);
                        }
                        §§pop().right = §§pop();
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           §§push(_loc5_.top);
                           if(_loc7_)
                           {
                              §§push(§§pop() + §`m§.§]@§);
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
                                    §§push(§`m§.§5t§);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(§§pop() / 2);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().x = §§pop();
                                 addr214:
                                 _loc5_.id = §`m§.§%T§;
                                 _loc3_.§''§(_loc5_);
                                 if(_loc7_ || _loc3_)
                                 {
                                    addr228:
                                    this.§ ?§(_loc3_,param2);
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
                                                §§push(§0n§);
                                                §§push(null);
                                             }
                                             §§goto(addr284);
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr274:
                                                _loc3_.theme = §0n§;
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
      
      protected function § ?§(param1:§9R§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§"S§(param1);
               }
            }
         }
      }
      
      protected function §3D§() : §9R§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§9R§ = new §9R§();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§7!H§ = -12;
         }
         return new §9R§();
      }
      
      protected function §"8§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§+[§ ^= this.§+[§ << 21;
            if(_loc2_)
            {
               §§push(this);
               §§push(this.§+[§);
               §§push(this.§+[§);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§+[§ = §§pop() ^ §§pop();
               if(_loc1_)
               {
               }
               §§goto(addr82);
            }
            this.§+[§ ^= this.§+[§ << 4;
         }
         addr82:
         return this.§+[§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §"S§(param1:§9R§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§"!D§ = null;
         if(!(_loc6_ && this))
         {
            §§push(this);
            §§push(0.33);
            if(!_loc6_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§+[§ = §§pop();
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
                        §§push(this.§"8§());
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
                     §§push(_loc5_ = new §"!D§());
                     §§push(30 + _loc3_ * 10);
                     if(_loc7_)
                     {
                        §§push(this.§"8§());
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
                                                                  §§push(this.§"8§());
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
                                                                           §§push(this.§"8§());
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
                                 §§push(this.§"8§());
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
      
      private function §=j§() : void
      {
      }
      
      public function §%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§5l§.§37§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     this.§61§(this.§throw§.§`6§,false);
                     if(_loc1_)
                     {
                        addr43:
                        this.§61§(this.§3!'§.§;!6§(§5b§.§do§),false);
                        if(_loc1_ || _loc1_)
                        {
                           this.§61§(this.§3!'§.§;!6§(§5b§.§[M§),true);
                           this.§61§(this.§3!'§.§;!6§(§5b§.§3!!§),true);
                           addr58:
                           if(_loc1_)
                           {
                              this.§61§(this.§1!+§.§6,§,true);
                              if(!_loc2_)
                              {
                                 this.§61§(this.§ <§.sprite,true);
                                 addr100:
                                 this.§61§(this.§3!'§.§;!6§(§5b§.§?D§),true);
                                 if(!_loc2_)
                                 {
                                    addr110:
                                    this.§61§(this.§throw§.§9q§,false);
                                    §§push(§5l§.§37§);
                                    if(!(_loc2_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          this.§61§(this.§throw§.§^;§,false);
                                          if(!(_loc2_ && this))
                                          {
                                             addr149:
                                             this.§61§(this.§3!'§.§;!6§(§5b§.§%Z§),true);
                                             addr159:
                                             if(!§2N§.§5r§)
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
      
      private function §61§(param1:Sprite, param2:Boolean) : void
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
               §§push(§,!!§.§0!3§);
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
               §§push(§§pop() / §,!!§.§0!3§);
               if(!(_loc5_ && param1))
               {
                  addr71:
                  §§push(Number(§§pop()));
               }
            }
         }
         _loc3_.x = (param1 / §`m§.§;`§ + this.§^l§.§6`§ - §`m§.§0!6§ / §`m§.§;`§) * §`!2§;
         if(!_loc5_)
         {
            addr110:
            _loc3_.y = (param2 / §`m§.§;`§ + this.§^l§.§,!E§ - §`m§.§15§ / §`m§.§;`§) * §`!2§;
         }
         return _loc3_;
      }
      
      public function §#u§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc5_ || this)
         {
            _loc3_.x = (param1 / §`!2§ + §`m§.§0!6§ / §`m§.§;`§ - this.§^l§.§6`§) * §`m§.§;`§;
            if(!(_loc6_ && _loc3_))
            {
               _loc3_.y = (param2 / §`!2§ + §`m§.§15§ / §`m§.§;`§ - this.§^l§.§,!E§) * §`m§.§;`§;
            }
         }
         var _loc4_:Number = Math.max(§,!!§.§0!3§,§,!!§.§,`§);
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
      
      public function §<!-§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§1!+§.addObject(param1,param2,param3);
         }
      }
      
      public function §8G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§`3§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     addr55:
                     §§push(this.§`3§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§pop().visible = true;
                        if(!(_loc2_ && _loc2_))
                        {
                           addr75:
                           this.§`3§.alpha = 0;
                           if(!_loc2_)
                           {
                              addr79:
                              this.§>E§ = 0;
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
      
      public function §&`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"Y§ = new §8I§(§#!;§.§+!"§,§#!;§.§[!?§);
         }
      }
      
      public function §=]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§"Y§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§throw§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr43:
                     this.§throw§.dispose();
                     if(_loc2_)
                     {
                        this.§throw§ = null;
                        if(!(_loc1_ && _loc1_))
                        {
                           addr56:
                           §§push(this.§1!+§);
                           if(_loc2_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc1_ && this))
                                 {
                                    addr75:
                                    this.§1!+§.dispose();
                                    this.§1!+§ = null;
                                    addr79:
                                    this.§6G§ = null;
                                    if(!_loc1_)
                                    {
                                       addr84:
                                       §§push(this.§-K§);
                                       if(!_loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc1_)
                                             {
                                                §§push(this.§-K§);
                                                if(!(_loc1_ && _loc2_))
                                                {
                                                   addr100:
                                                   if(!§§pop().§8l§)
                                                   {
                                                   }
                                                   §§push(this.§-K§);
                                                }
                                                §§pop().clear();
                                                if(!_loc1_)
                                                {
                                                   this.§-K§ = null;
                                                   addr110:
                                                   §§push(this.§continue§);
                                                   if(!_loc1_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc2_ || this)
                                                         {
                                                            addr124:
                                                            this.§continue§.clear();
                                                            addr125:
                                                            this.§continue§ = null;
                                                            addr128:
                                                            §§push(this.§ <§);
                                                            if(_loc2_ || this)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr140:
                                                                  this.§ <§.dispose();
                                                                  this.§ <§ = null;
                                                                  if(!(_loc1_ && _loc1_))
                                                                  {
                                                                     addr151:
                                                                     §§push(this.§^l§);
                                                                     if(_loc2_ || _loc1_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr163:
                                                                           this.§^l§.clear();
                                                                           this.§^l§ = null;
                                                                           addr161:
                                                                           if(!_loc2_)
                                                                           {
                                                                           }
                                                                           addr188:
                                                                           this.§3!'§.dispose();
                                                                           addr186:
                                                                           if(!(_loc1_ && _loc1_))
                                                                           {
                                                                              this.§3!'§ = null;
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
                                                                                          this.§<i§ = 0;
                                                                                          this.§3!F§ = 0;
                                                                                          if(!(_loc1_ && _loc2_))
                                                                                          {
                                                                                             this.mReadyToRun = false;
                                                                                             addr256:
                                                                                             this.§5!6§ = false;
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                this.§>E§ = §#!;§.§>A§;
                                                                                                §§push(this.§7!8§);
                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§push(this.§7!8§);
                                                                                                      if(!(_loc1_ && _loc1_))
                                                                                                      {
                                                                                                         addr284:
                                                                                                         §§push((§§pop() as §[G§).§96§);
                                                                                                         if(!_loc1_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(_loc2_ || _loc1_)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               addr303:
                                                                                                               §§push((this.§7!8§ as §[G§).§96§);
                                                                                                               §§push(0);
                                                                                                            }
                                                                                                            §§pop().y = §§pop();
                                                                                                            addr305:
                                                                                                            §§push(this.§`3§);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr312:
                                                                                                                  this.§`3§.visible = false;
                                                                                                                  if(_loc2_ || this)
                                                                                                                  {
                                                                                                                     addr321:
                                                                                                                     this.§#Q§ = null;
                                                                                                                     this.§ 8§ = null;
                                                                                                                     §§push(this.§=#§);
                                                                                                                     if(_loc2_ || this)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(_loc2_ || this)
                                                                                                                           {
                                                                                                                              §§push(this.§=#§);
                                                                                                                              if(!_loc1_)
                                                                                                                              {
                                                                                                                                 addr348:
                                                                                                                                 §§pop().removeEventListener(Event.COMPLETE,this.§&!E§);
                                                                                                                                 §§push(this.§=#§);
                                                                                                                              }
                                                                                                                              §§pop().removeEventListener(Event.CANCEL,this.§7'§);
                                                                                                                              if(!_loc1_)
                                                                                                                              {
                                                                                                                                 addr362:
                                                                                                                                 §§push(this.§[%§);
                                                                                                                                 if(!_loc1_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§[%§);
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             §§pop().removeEventListener(Event.COMPLETE,this.§>,§);
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                addr382:
                                                                                                                                                this.§[%§.removeEventListener(Event.CANCEL,this.§;L§);
                                                                                                                                                if(_loc2_ || this)
                                                                                                                                                {
                                                                                                                                                   addr404:
                                                                                                                                                   this.§?!2§();
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§push(§'_§.§17§);
                                                                                                                                             if(!_loc1_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      addr415:
                                                                                                                                                      §'_§.§17§.color = 0;
                                                                                                                                                   }
                                                                                                                                                   addr424:
                                                                                                                                                   this.§%!&§.removeEventListeners();
                                                                                                                                                   addr422:
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(this.§%!&§);
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
                                                                        §§push(this.§3!'§);
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
      
      public function §`!+§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§ 8§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§push(this.§ 8§);
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
                     §§push(§'_§.§+! §());
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
                              §§push(this.§#Q§);
                              if(_loc5_ || this)
                              {
                                 addr93:
                                 §§goto(addr107);
                                 §§push(§§pop() && this.§'q§(param1,true,param2,param3));
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
      
      protected function §'q§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            if(this.§^Z§)
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
                              §§push(§'_§.§6!"§);
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    addr68:
                                    if(!_loc6_)
                                    {
                                       addr64:
                                       §§push(§'_§.§6!"§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(!_loc6_)
                                    {
                                       §§push(this);
                                       §§push(this.§3!F§);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§3!F§ = §§pop();
                                       if(_loc7_ || param3)
                                       {
                                          §§push(param3);
                                          if(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                §§push(this);
                                                §§push(this.§<i§);
                                                if(!(_loc6_ && param3))
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§<i§ = §§pop();
                                                §§push(this.§-K§.§!K§(this.§<i§));
                                                if(_loc7_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc7_ || param1)
                                                   {
                                                      _loc5_ = §§pop();
                                                      this.§ <§.update(param1,param4);
                                                      if(_loc7_)
                                                      {
                                                         this.§<i§ = _loc5_;
                                                         addr159:
                                                         addr160:
                                                         if(param2)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               addr163:
                                                               this.§4P§(param1,_loc5_);
                                                            }
                                                         }
                                                         §§push(param1);
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                }
                                                return §§pop();
                                             }
                                             this.§1!+§.§&'§(param1);
                                             this.§<i§ = 0;
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
      
      private function §@[§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         §§push(§2N§.§=!H§);
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
            if(this.§#Q§)
            {
               if(!(_loc7_ && param3))
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§push(this.§#Q§.speed);
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
                                 §§push(this.§3!F§);
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
                                       §§push(this.§3!F§);
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
                                                if(_loc5_ > this.§=U§ + _loc4_)
                                                {
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      addr162:
                                                      this.§#Q§.step(this);
                                                   }
                                                   §§push(this);
                                                   §§push(this.§=U§);
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§push(§§pop() + _loc4_);
                                                   }
                                                   §§pop().§=U§ = §§pop();
                                                   if(_loc6_ || param3)
                                                   {
                                                   }
                                                   §§goto(addr205);
                                                }
                                                §§push(this.§3!F§);
                                                if(_loc6_ || param2)
                                                {
                                                   §§push(_loc5_);
                                                   break;
                                                }
                                                §§goto(addr232);
                                             }
                                             else
                                             {
                                                §§push(this.§3!F§);
                                                §§push(_loc4_);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      if(§§pop() > this.§=U§)
                                                      {
                                                         §§push(this.§#Q§);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§pop().step(this);
                                                            §§push(this);
                                                            §§push(this.§=U§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(§§pop() + _loc4_);
                                                            }
                                                            §§pop().§=U§ = §§pop();
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr162);
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      this.§'q§(_loc4_,false,param2,param3);
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
                                          §§push(§§pop() - this.§3!F§);
                                       }
                                       §§pop().§'q§(§§pop(),true,param2,param3);
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
               §§push(this.§'q§(_loc4_,true,param2,param3));
            }
            §§goto(addr232);
         }
         §§goto(addr62);
      }
      
      private function §4P§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(_loc5_ || this)
         {
            this.§throw§.update(param1);
            if(_loc5_ || _loc3_)
            {
               this.§1!+§.§&;§(param1,param2);
               if(!_loc6_)
               {
                  this.§4B§();
                  if(_loc5_)
                  {
                     §§push(this.§>E§);
                     §§push(§#!;§.§>A§);
                     if(!_loc6_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!(_loc6_ && param2))
                           {
                              §§push(this);
                              §§push(this.§>E§);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§>E§ = §§pop();
                              §§push(§#!;§.§>A§);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop() / 2);
                                 if(!(_loc6_ && param1))
                                 {
                                    addr94:
                                    _loc3_ = §§pop();
                                    §§push(-Math.abs(this.§>E§ - _loc3_));
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
                                             §§push(§#!;§.§[,§);
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
                                                §§push(this.§`3§);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr149:
                                                      §§push(this.§`3§);
                                                      if(_loc5_ || this)
                                                      {
                                                         §§pop().alpha = _loc4_;
                                                         if(!_loc6_)
                                                         {
                                                            addr179:
                                                            §§push(this.§"Y§);
                                                            if(_loc5_ || this)
                                                            {
                                                               §§goto(addr215);
                                                            }
                                                            if(!§§pop().§@X§(this.§^l§,param1))
                                                            {
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr213:
                                                                  this.§=]§();
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                            addr162:
                                                         }
                                                         addr215:
                                                         if(§§pop())
                                                         {
                                                            addr189:
                                                            §§push(this.§"Y§);
                                                         }
                                                         this.§^l§.§^!&§(param1);
                                                         if(_loc5_ || this)
                                                         {
                                                            this.§-K§.§0d§();
                                                            addr229:
                                                            this.§3!'§.update(param1);
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
                              §§push(this.§`3§);
                           }
                        }
                        else
                        {
                           §§push(this.§`3§);
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
      
      public function §#5§(param1:Number) : void
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
                        §§pop().§&'§(§§pop());
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
                           §§pop().§3W§(§§pop());
                           if(!_loc2_)
                           {
                              this.§-?§();
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
      
      public function §4B§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§>2§ = null;
         if(!_loc5_)
         {
            §§push(this.§3!F§);
            §§push(this.§-!2§);
            if(!(_loc5_ && _loc1_))
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(_loc4_)
               {
                  if(this.§"g§ != null)
                  {
                     var _loc3_:* = this.§"g§;
                     §§goto(addr53);
                  }
                  this.§-!2§ = this.§3!F§;
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
         var _loc2_:§>2§ = null;
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
                        §§push(this.§1!+§);
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
                                       §§push(this.§1!+§);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(true);
                                          if(!_loc4_)
                                          {
                                             addr89:
                                             §§push(§§pop().§import§(§§pop()));
                                             if(_loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc3_)
                                                {
                                                   _loc2_.§2!@§.mTryToScream = §1c§.§1!6§;
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§push(this);
                                                      §§push(500 + Math.random() * 1000);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() + 4000 / (3 + this.§1!+§.§0N§()));
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
                  §§push(this.§1!+§);
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
                           _loc2_ = this.§1!+§.§import§(true);
                           addr179:
                           if(_loc3_)
                           {
                              _loc2_.§2!@§.mTryToBlink = §1c§.§&!'§;
                              if(_loc3_)
                              {
                                 §§push(this);
                                 §§push(250 + Math.random() * 500);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(§§pop() + 2000 / (3 + this.§1!+§.§0N§()));
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
                  §§push(§2S§.§%f§);
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
                           §0]§.addScore(param1,param2);
                           if(_loc8_)
                           {
                              this.§%!&§.addScore(param1);
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
               §§push(this.§ ,§);
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
                  this.§;!F§(param1.toString(),param4,param5,800,param6,0,0);
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §;!F§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
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
                     §§push(§2S§.§"B§);
                     if(_loc9_ || param1)
                     {
                        addr66:
                        param5 = §§pop();
                        if(!(_loc8_ && param2))
                        {
                           addr74:
                           this.§3!'§.§ t§(§2S§.§+!B§,§5b§.§%Z§,§2S§.§<p§,param2,param3,param4,param1,param5,param6,param7);
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
      
      public function § N§(param1:§>2§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§"g§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() == null)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§"g§ = new Array();
                     if(_loc2_ || param1)
                     {
                        addr69:
                        this.§"g§.push(param1);
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
      
      public function §6L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§ <§.§6L§();
            if(_loc2_)
            {
               §§goto(addr39);
            }
            §§goto(addr44);
         }
         addr39:
         this.§1!+§.§?=§();
         if(!_loc1_)
         {
            addr44:
            this.§ ,§ = true;
         }
      }
      
      public function §=r§(param1:§>2§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3!'§.§9!=§(§5b§.§do§);
            if(!_loc3_)
            {
               §§push(this.§"g§);
               if(!_loc3_)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     if(_loc2_ || param1)
                     {
                        §§push(this.§"g§);
                        if(!_loc3_)
                        {
                           §§pop().splice(this.§"g§.indexOf(param1),1);
                           if(_loc2_ || param1)
                           {
                              addr79:
                              if(this.§"g§.length == 0)
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
                     this.§"g§ = null;
                     §§goto(addr92);
                  }
               }
            }
            §§goto(addr79);
         }
         addr92:
      }
      
      public function §[!7§(param1:§0Y§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            this.§6G§ = this.§1!+§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!_loc8_)
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr47:
                  §§push(§3=§.§7[§);
                  if(!(_loc8_ && param2))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                        addr68:
                        var _loc4_:* = Number(§§pop());
                        if(_loc7_)
                        {
                           §§push(param1.§^7§);
                           §§push(1);
                           if(_loc7_ || param1)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(this.§6G§);
                                    if(_loc7_ || param2)
                                    {
                                       §§pop().§^'§(param1.§^7§);
                                       if(_loc7_ || param2)
                                       {
                                          addr105:
                                          this.§6G§.§2!@§.§-#§();
                                          addr103:
                                          if(!(_loc8_ && param3))
                                          {
                                             addr114:
                                             if(param1.§&!"§ != 0)
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
                                                      this.§6G§.§>c§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         this.camera.§8!6§(§`m§.§@M§);
                                                         addr218:
                                                         if(_loc7_)
                                                         {
                                                            §§push(this.§ 8§);
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§pop().§[!7§(this.§-K§.§4!&§,param1.x,param1.y,param2,param3);
                                                            §§goto(addr259);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      addr259:
                                                      if(_loc7_)
                                                      {
                                                         addr247:
                                                         §§push(this.§ 8§);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr148);
                                          }
                                          §§push(param1.§&!"§);
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
                  §§push(§3=§.§=!,§);
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
            this.§5!6§ = true;
         }
      }
      
      private function §-?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§5!6§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  return;
               }
               this.§5!6§ = false;
               if(_loc1_)
               {
                  §§push(this.activeObject);
                  if(_loc1_ || this)
                  {
                     §§push(§§pop() is §&v§);
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
                                 §§push((§§pop() as §&v§).§?-§);
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
                                             if(this.activeObject.activateSpecialPower(this.§@A§))
                                             {
                                                if(!_loc2_)
                                                {
                                                   this.§^!?§ = true;
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
                                          this.§1!+§.§ l§();
                                          if(!_loc2_)
                                          {
                                             addr138:
                                             §§push(this.§ 8§);
                                             if(_loc1_ || this)
                                             {
                                                if(!§§pop())
                                                {
                                                }
                                                §§goto(addr156);
                                             }
                                             §§pop().§6=§(this.§-K§.§4!&§);
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
            §§push(this.§ 8§);
         }
      }
      
      public function § L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1!+§.§ L§();
         }
      }
      
      public function §`C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§1!+§.§6b§();
         }
      }
      
      public function §#!&§() : §9R§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§9R§ = new §9R§();
         if(_loc3_)
         {
            _loc1_.§4$§ = this.§!S§.§4$§;
            _loc1_.§!!9§ = this.§!S§.§!!9§;
            if(_loc3_)
            {
               §§goto(addr55);
            }
            §§goto(addr61);
         }
         addr55:
         this.§^l§.§=a§(_loc1_);
         if(_loc3_)
         {
            addr61:
            this.§1!+§.§4%§(_loc1_);
            if(_loc3_ || _loc2_)
            {
               this.§ <§.§[0§(_loc1_);
               _loc1_.theme = this.§throw§.§,C§();
            }
         }
         return _loc1_;
      }
      
      public function §'&§() : int
      {
         return this.§!S§.§!!9§;
      }
      
      public function §0&§() : int
      {
         return this.§!S§.§4$§;
      }
      
      public function §3!1§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!S§.§!!9§ = param1;
         }
      }
      
      public function §%[§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§!S§.§4$§ = param1;
         }
      }
      
      public function §0"§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§@-§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr38:
                     this.§@-§.§ true§(param1,param2);
                     if(!_loc4_)
                     {
                     }
                     addr57:
                     this.§^l§.§^!&§(0);
                     addr59:
                     return;
                     addr55:
                  }
               }
               §§push(this.§^l§);
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
      
      public function get §<z§() : §9R§
      {
         return this.§!S§;
      }
      
      public function get §@A§() : §]!H§
      {
         return this.§1!+§;
      }
      
      protected function get starling() : §'_§
      {
         return this.§>Y§;
      }
      
      public function get §'V§() : int
      {
         return §"!3§;
      }
   }
}
