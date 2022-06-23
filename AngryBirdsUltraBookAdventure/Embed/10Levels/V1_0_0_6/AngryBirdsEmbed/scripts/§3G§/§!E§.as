package §3G§
{
   import §%!6§.§'[§;
   import §%!;§.§ else§;
   import §+!?§.§"h§;
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §3c§.§^z§;
   import §5`§.§+q§;
   import §5`§.§?y§;
   import §5`§.§@B§;
   import §8!>§.§ !4§;
   import §8!>§.§@;§;
   import §8u§.§0r§;
   import §8u§.§44§;
   import §8u§.§6a§;
   import §8u§.§8j§;
   import §<=§.§9x§;
   import §=!B§.§%!2§;
   import §=!B§.§59§;
   import §=!B§.§<!-§;
   import §=!B§.§^!9§;
   import §=E§.§"!5§;
   import §>K§.§9X§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import §@§.§5r§;
   import §`6§.§7=§;
   import §catch§.§4@§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!E§
   {
      
      private static const §@d§:int = 20;
      
      public static const §2C§:Number;
      
      public static const § &§:Number;
      
      public static const §#N§:Number = 0.05;
      
      public static const §?r§:Number;
      
      public static const § each§:Number;
      
      public static const §<!#§:§'[§ = new §'[§(13 - 3);
      
      protected static var §]t§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@d§ = 20;
            if(_loc2_ || §!E§)
            {
               §2C§ = §"h§.§4T§;
               § &§ = §"h§.§0!$§;
               §#N§ = 1 / 20;
               §§goto(addr37);
            }
            §§goto(addr59);
         }
         addr37:
         if(_loc2_ || _loc1_)
         {
            addr59:
            §?r§ = §"h§.§0!$§ * §#N§;
            §§push(§§findproperty(§ each§));
            §§push(§2C§);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() * §#N§);
            }
            §§pop().§ each§ = §§pop();
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
            §]t§ = §^!9§.§%[§;
         }
      }
      
      protected var §87§:§6a§;
      
      private var §5!I§:§0r§;
      
      private var §&!&§:Array = null;
      
      protected var §%!#§:§5r§;
      
      public var §=!D§:§'F§;
      
      protected var §&!8§:§-s§;
      
      protected var §!B§:§^z§;
      
      protected var §'!§:§3X§;
      
      protected var §&4§:§;x§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §each §:Boolean = false;
      
      protected var §,!!§:Boolean = false;
      
      protected var §9w§:Boolean = false;
      
      public var §0!8§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §;+§:Number;
      
      public var §["§:Number;
      
      private var §86§:Number;
      
      public var §]§:§%!2§;
      
      public var §?5§:Boolean = false;
      
      private var §?!C§:§6!>§;
      
      private var §[!@§:Sprite;
      
      protected var §,t§:§^!9§;
      
      protected var §,!J§:§"!5§ = null;
      
      private var §5!#§:EventDispatcher;
      
      private var §?F§:Array;
      
      private var § !6§:Array;
      
      protected var §5!'§:§4@§;
      
      private var §#§:§9x§;
      
      protected var §^S§:§?y§;
      
      protected var §#L§:§+q§;
      
      private var §,!$§:§@B§;
      
      private var §]I§:§@B§;
      
      private var §++§:§@B§;
      
      private var §?$§:Stage;
      
      private var §0!5§:§'!$§;
      
      protected var §2!<§:§ else§;
      
      protected var §-W§:§ else§;
      
      protected var §56§:Number = 0.0;
      
      protected var §&`§:String;
      
      private var §'1§:Boolean;
      
      protected var §^V§:Boolean;
      
      protected var §@!I§:uint = 1.417339207E9;
      
      public var §%=§:Boolean;
      
      public function §!E§(param1:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§ !6§ = [];
         if(_loc4_ || _loc2_)
         {
            super();
            this.§5!#§ = new EventDispatcher();
         }
         this.§]§ = new §%!2§();
         if(_loc4_)
         {
            this.§?$§ = param1;
         }
         this.§^S§ = §?y§.§@j§;
         this.§#L§ = this.initAnimationManager(this.§^S§);
         this.§,!$§ = this.initThemeGraphicsManager();
         this.§]I§ = this.§ 3§();
         this.§++§ = this.§@T§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§5!'§ = new §4@§(§6!>§,param1,new Rectangle(0,0,§"h§.§4T§,§"h§.§0!$§),_loc2_);
         if(_loc4_ || param1)
         {
            §"h§.§'7§.addEventListener(Event.ENTER_FRAME,this.§5!'§.onEnterFrame);
            if(!_loc3_)
            {
               _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§]B§,false,0,true);
               if(!(_loc3_ && param1))
               {
                  §§goto(addr128);
               }
               §§goto(addr146);
            }
            §§goto(addr172);
         }
         addr128:
         §§push(this.§5!'§);
         if(!_loc3_)
         {
            §§push(false);
            if(!_loc3_)
            {
               §§pop().§1=§ = §§pop();
               addr146:
               §§push(this.§5!'§);
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
            §§push(this.§5!'§);
            if(_loc4_ || this)
            {
               §§pop().§@!9§ = 2;
               addr172:
               this.§5!'§.§=H§();
            }
            §§goto(addr172);
         }
      }
      
      public static function §">§(param1:§0r§, param2:§0r§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§#!0§);
         if(!_loc5_)
         {
            §§push(§§pop() - param2.§#!0§);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.§ c§);
         if(_loc6_ || param2)
         {
            §§push(§§pop() - param2.§ c§);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         return §2!F§(_loc3_,_loc4_);
      }
      
      public static function §2!F§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§[!@§);
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
               if(this.§35§)
               {
                  if(_loc2_)
                  {
                     this.§[!@§ = this.§?!C§.§4L§;
                  }
               }
            }
            return this.§[!@§;
         }
         §§goto(addr71);
      }
      
      public function get §35§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§?!C§);
            if(!(_loc1_ && this))
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     this.§?!C§ = this.§5!'§.§9!E§ as §6!>§;
                     if(!_loc1_)
                     {
                        addr65:
                        §§push(this.§?!C§);
                        if(!_loc1_)
                        {
                           §§pop().§!!%§ = false;
                        }
                        §§goto(addr73);
                     }
                  }
               }
               §§push(this.§?!C§);
            }
            addr73:
            return §§pop();
         }
         §§goto(addr65);
      }
      
      private function get §?!=§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§35§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(this.§35§);
                  }
                  else
                  {
                     §§goto(addr52);
                  }
               }
               §§goto(addr52);
            }
            return (§§pop() as §6!>§).§?!=§;
         }
         addr52:
         return null;
      }
      
      public function get § use§() : §+q§
      {
         return this.§#L§;
      }
      
      public function get textureManager() : §?y§
      {
         return this.§^S§;
      }
      
      public function get camera() : §^z§
      {
         return this.§!B§;
      }
      
      public function get objects() : §6a§
      {
         return this.§87§;
      }
      
      public function get particles() : §;x§
      {
         return this.§&4§;
      }
      
      public function get background() : §5r§
      {
         return this.§%!#§;
      }
      
      public function get slingshot() : §3X§
      {
         return this.§'!§;
      }
      
      public function get activeObject() : §0r§
      {
         return this.§5!I§;
      }
      
      public function get §0>§() : §-s§
      {
         return this.§&!8§;
      }
      
      public function get stage() : Stage
      {
         return this.§?$§;
      }
      
      public function get §^!#§() : §@B§
      {
         return this.§++§;
      }
      
      protected function get §<!?§() : §@B§
      {
         return this.§,!$§;
      }
      
      public function set activeObject(param1:§0r§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§5!I§ = param1;
         }
      }
      
      public function set §@y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^V§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§#§);
         if(!(_loc1_ && _loc2_))
         {
            if(§§pop())
            {
               if(_loc2_ || _loc1_)
               {
                  addr36:
                  this.§#§.dispose();
                  if(_loc2_)
                  {
                     addr39:
                     §§push(this.§^S§);
                     if(!_loc1_)
                     {
                        addr47:
                        if(§§pop())
                        {
                           §§push(this.§^S§);
                        }
                        §§push(this.§,!$§);
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
                                          §§push(this.§,!$§);
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
                                                         §§push(this.§,!$§.textureManager);
                                                         if(_loc2_)
                                                         {
                                                            addr111:
                                                            §§pop().dispose();
                                                            if(_loc2_)
                                                            {
                                                               addr114:
                                                               §§push(this.§++§);
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
                                                                           §§push(this.§++§);
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
                                                                     §§push(this.§++§.textureManager);
                                                                  }
                                                                  §§push(this.§5!'§);
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
                                                         §§push(this.§5!'§);
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
      
      protected function initThemeGraphicsManager() : §@B§
      {
         return null;
      }
      
      protected function § 3§() : §@B§
      {
         return null;
      }
      
      protected function §@T§() : §@B§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§?y§) : §+q§
      {
         return new §+q§(param1);
      }
      
      public function §]!!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(§4@§.§0W§);
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
                           §§push(§4@§.§0W§);
                           if(!_loc2_)
                           {
                              §§pop().start();
                              if(!(_loc3_ || this))
                              {
                                 addr82:
                                 §4@§.§0W§.color = 0;
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
                        §§push(§4@§.§0W§);
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
      
      public function §`M§(param1:Boolean) : void
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
      
      public function §;j§(param1:§"!5§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§,!J§);
            if(_loc3_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(this.§,!J§);
                     if(_loc3_ || param1)
                     {
                        §§pop().removeEventListeners();
                        if(!(_loc2_ && _loc2_))
                        {
                           addr69:
                           this.§,!J§ = param1;
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
            this.§,!J§.addEventListeners();
            §§goto(addr82);
         }
         addr82:
      }
      
      public function §@7§() : § else§
      {
         return this.§2!<§;
      }
      
      public function §#y§(param1:§9x§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§#§ = param1;
         }
         §§push(this.§#§.§[F§);
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
                     this.§5!#§.addEventListener(Event.INIT,param3);
                     break;
                  }
                  §§goto(addr91);
               }
               if(this.§@!!§(param2))
               {
                  this.§[w§();
               }
               addr91:
            }
            continue;
            return;
         }
         this.§ !6§.push(param3);
         §§goto(addr85);
      }
      
      private function §@!!§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         §§push(this.§^S§);
         if(_loc4_ || this)
         {
            §§push(§§pop().§4+§());
            if(_loc4_ || this)
            {
               if(§§pop())
               {
                  §§push(this.§^S§);
                  if(!_loc5_)
                  {
                     §§push(§§pop().§=N§);
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
                                    §§push(this.§^S§.§?^§);
                                    if(!(_loc5_ && param1))
                                    {
                                       addr82:
                                       §§push(int(§§pop() / 1000));
                                    }
                                    _loc3_ = §§pop();
                                 }
                                 §§push(§9X§);
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
                  this.§?F§ = param1.concat();
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
            this.§#L§.initializeAnimations(param1);
         }
      }
      
      private function §]B§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§^S§.§0<§();
         if(!_loc2_)
         {
            §§push(this.§<!?§);
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
                        §§push(this.§<!?§);
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
                                    §§push(this.§<!?§.textureManager);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop().§0<§();
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr83:
                                          §§push(this.§^!#§);
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
                                                         §§push(this.§^!#§);
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop().textureManager);
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               addr125:
                                                               if(§§pop())
                                                               {
                                                                  addr128:
                                                                  §§push(this.§^!#§.textureManager);
                                                                  if(!_loc2_)
                                                                  {
                                                                     addr131:
                                                                     §§pop().§0<§();
                                                                     addr132:
                                                                     if(this.§?F§)
                                                                     {
                                                                        this.§@!!§(this.§?F§);
                                                                        this.§?F§ = null;
                                                                        this.§[w§();
                                                                     }
                                                                     §§push(this.§,!J§);
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
                                                                                    this.§,!J§.addEventListeners();
                                                                                 }
                                                                                 §§push(this.§,!$§);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc3_ || param1)
                                                                                       {
                                                                                          addr195:
                                                                                          this.§,!$§.§4+§();
                                                                                          if(_loc3_ || this)
                                                                                          {
                                                                                             addr213:
                                                                                             §§push(this.§++§);
                                                                                             if(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§push(this.§++§);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop().textureManager);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr230:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr239:
                                                                                                            §§push(this.§++§);
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§push(§§pop().textureManager);
                                                                                                            }
                                                                                                            §§pop().§4+§();
                                                                                                         }
                                                                                                         §§goto(addr240);
                                                                                                      }
                                                                                                      §§pop().§0<§();
                                                                                                      addr237:
                                                                                                      §§push(this.§++§);
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
      
      private function §[w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§5!#§.dispatchEvent(new Event(Event.INIT));
            if(!_loc1_)
            {
               addr28:
               this.§-!F§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      private function §-!F§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§ !6§)
         {
            if(_loc4_)
            {
               this.§5!#§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!_loc5_)
         {
            this.§ !6§ = [];
         }
      }
      
      public function init(param1:§^!9§) : void
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
                     this.§&!8§ = new §-s§(this,param1);
                  }
                  this.§!B§ = this.initLevelCamera(param1);
                  this.§;+§ = 0;
                  this.§["§ = 0;
                  if(!(_loc3_ && this))
                  {
                     this.§86§ = 0;
                     this.§'1§ = false;
                     if(!_loc3_)
                     {
                        addr74:
                        this.mReadyToRun = false;
                        this.§each § = false;
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
                  §]t§ = param1.theme;
                  this.§,t§ = param1;
                  this.§,!!§ = this.§`1§(param1.theme);
                  if(!_loc3_)
                  {
                     this.§9w§ = this.§1!?§(param1.theme);
                     addr126:
                     §§push(this.§,!!§);
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
                           this.§"o§();
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
                        this.§6!I§(param1.theme);
                     }
                     §§goto(addr181);
                  }
                  addr190:
                  if(!_loc3_)
                  {
                     addr150:
                     §§push(this.§9w§);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr169:
                        §§push(Boolean(§§pop()));
                     }
                  }
                  §4f§.init();
                  return;
               }
               §§goto(addr42);
            }
            §§goto(addr169);
         }
         §§goto(addr74);
      }
      
      protected function §"o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§2!<§ = new § else§(§59§.§%j§);
         }
      }
      
      protected function §`1§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§,!$§)
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
      
      protected function §1!?§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§@;§ = null;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§]I§)
            {
               addr30:
               _loc2_ = § !4§.§;h§(param1);
               if(!_loc3_)
               {
                  if(_loc2_)
                  {
                     if(!(_loc3_ && param1))
                     {
                        addr56:
                        §§push(Boolean(_loc2_.§6!@§));
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
                           §§push(this.§]I§.§ b§(_loc2_.§6!@§));
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
      
      protected function §6!I§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§@;§ = null;
         §§push(this.§,!$§);
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
                        §§push(this.§`1§(param1));
                        if(!_loc4_)
                        {
                           addr54:
                           if(!§§pop())
                           {
                              §§push(this.§,!$§);
                              if(_loc3_ || param1)
                              {
                                 addr64:
                                 §§pop().removeEventListener(Event.COMPLETE,this.§"q§);
                                 §§push(this.§,!$§);
                                 if(_loc3_ || this)
                                 {
                                    addr78:
                                    §§pop().removeEventListener(Event.CANCEL,this.§>!F§);
                                    §§push(this.§,!$§);
                                    if(_loc3_)
                                    {
                                       addr87:
                                       §§pop().addEventListener(Event.COMPLETE,this.§"q§);
                                       §§push(this.§,!$§);
                                       if(!_loc4_)
                                       {
                                          §§pop().addEventListener(Event.CANCEL,this.§>!F§);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr120:
                                             this.§,!$§.§[!2§(param1);
                                             §§push(this.§]I§);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                addr133:
                                                §§push(Boolean(§§pop()));
                                                if(Boolean(§§pop()))
                                                {
                                                   §§pop();
                                                   §§push(this.§1!?§(param1));
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
                        §§push(this.§]I§);
                        if(_loc3_ || _loc3_)
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§[!§);
                           if(!(_loc4_ && _loc3_))
                           {
                              addr170:
                              §§push(this.§]I§);
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop().removeEventListener(Event.CANCEL,this.§,[§);
                              }
                              addr212:
                              §§pop().addEventListener(Event.CANCEL,this.§,[§);
                              §§goto(addr217);
                           }
                           §§push(this.§]I§);
                           if(_loc3_ || _loc3_)
                           {
                              §§pop().addEventListener(Event.COMPLETE,this.§[!§);
                              addr193:
                              if(!_loc4_)
                              {
                                 §§push(this.§]I§);
                              }
                              addr217:
                              _loc2_ = § !4§.§;h§(param1);
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
                              this.§]I§.§[!2§(_loc2_.§6!@§);
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
      
      private function §"q§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§,!$§);
         if(!_loc3_)
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§"q§);
            §§push(this.§,!$§);
         }
         §§pop().removeEventListener(Event.CANCEL,this.§>!F§);
         if(!(_loc3_ && this))
         {
            this.§,!!§ = true;
            if(_loc2_ || param1)
            {
               §§push(this.§,!!§);
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
                        §§push(this.§9w§);
                        if(!_loc3_)
                        {
                           addr97:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     this.initialize(this.§,t§);
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
      
      private function §>!F§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§,!$§);
            if(!_loc3_)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§"q§);
               if(_loc2_)
               {
                  addr56:
                  this.§,!$§.removeEventListener(Event.CANCEL,this.§>!F§);
                  if(!(_loc3_ && param1))
                  {
                     this.§each § = true;
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      private function §[!§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§,!$§);
         if(_loc3_)
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§[!§);
            if(!(_loc2_ && param1))
            {
               addr45:
               this.§,!$§.removeEventListener(Event.CANCEL,this.§,[§);
               if(_loc3_)
               {
                  this.§9w§ = true;
                  addr52:
               }
               §§push(this.§,!!§);
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
                           §§push(this.§9w§);
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
                        this.initialize(this.§,t§);
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
      
      private function §,[§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§,!$§);
            if(_loc2_)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§[!§);
               §§push(this.§,!$§);
            }
            §§pop().removeEventListener(Event.CANCEL,this.§,[§);
            this.§9w§ = true;
         }
         §§push(this.§,!!§);
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
                     §§push(this.§9w§);
                     if(_loc2_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
               if(§§pop())
               {
                  this.initialize(this.§,t§);
               }
               return;
            }
         }
         §§goto(addr73);
      }
      
      public function get backgroundTextureManager() : §?y§
      {
         return this.§^S§;
      }
      
      protected function initialize(param1:§^!9§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^V§ = false;
            this.§%=§ = false;
            if(_loc2_ || param1)
            {
               §§push(§4@§.§&R§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr40:
                        §4@§.§&R§.speed = 1;
                     }
                  }
                  this.§=!D§ = new §'F§(this);
                  if(!(_loc3_ && param1))
                  {
                     §§push(this);
                     §§push(this);
                     §§push(param1.theme);
                     §§push(this.§&!8§.§-F§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() / §#N§);
                     }
                     §§pop().§%!#§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§!B§.§'e§());
                     this.§%!#§.§=K§(§"h§.§"+§());
                  }
                  this.§87§ = this.initLevelObjectManager(param1);
                  if(_loc2_)
                  {
                     addr94:
                     this.§'!§ = this.initLevelSlingshot(param1);
                     §§goto(addr99);
                  }
                  §§goto(addr152);
               }
               §§goto(addr40);
            }
            addr99:
            this.§&4§ = this.§>!&§(this.§#L§,this.§^S§);
            if(!_loc3_)
            {
               this.§!B§.init();
               if(_loc2_)
               {
                  this.§!W§();
                  this.§;J§();
                  if(!(_loc3_ && param1))
                  {
                     this.mReadyToRun = true;
                     if(_loc2_)
                     {
                        §§push(this.§,!J§);
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
               §§push(this.§,!J§);
            }
            return;
         }
         §§goto(addr94);
      }
      
      protected function §;J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§&`§)
            {
               this.§-W§ = § else§.initialize(this.§&`§);
               addr22:
               if(!_loc1_)
               {
                  §§push(this.§-W§);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§pop().speed = 1;
                     §§push(this.§-W§);
                  }
                  §§pop().play();
                  if(!(_loc1_ && _loc1_))
                  {
                     this.§56§ = -1000;
                     if(_loc2_ || this)
                     {
                     }
                     §§goto(addr84);
                  }
                  this.§&`§ = null;
               }
            }
            addr84:
            return;
         }
         §§goto(addr22);
      }
      
      public function §-!B§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&`§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§-W§ == null);
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
            §§push(this.§-W§);
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
                           §§push(this.§-W§);
                           if(_loc2_ || this)
                           {
                              §§pop().speed = Math.min(this.§-W§.speed * 1.25,Math.pow(1.25,2));
                              if(_loc2_ || this)
                              {
                                 addr87:
                              }
                           }
                           else
                           {
                              addr90:
                              §§pop().speed = Math.max(this.§-W§.speed / 1.25,Math.pow(1 / 1.25,10));
                           }
                        }
                        §§goto(addr87);
                     }
                     else
                     {
                        §§goto(addr90);
                        §§push(this.§-W§);
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
            §§push(this.§-W§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr43:
                     this.§-W§.speed = 1;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      protected function initLevelObjectManager(param1:§^!9§) : §6a§
      {
         return new §6a§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§^!9§) : §^z§
      {
         return new §^z§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§?y§, param4:Number) : §5r§
      {
         return new §5r§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§^!9§) : §3X§
      {
         return new §3X§(this,param1,new Sprite());
      }
      
      protected function §>!&§(param1:§+q§, param2:§?y§) : §;x§
      {
         return new §;x§(param1,param2);
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
         var _loc3_:§^!9§ = this.§8#§();
         var _loc4_:§<!-§;
         (_loc4_ = new §<!-§()).left = 0;
         if(!_loc6_)
         {
            §§push(_loc4_);
            §§push(§^z§.§'f§);
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
                        §§push(§§pop() + §^z§.§'f§);
                     }
                     §§pop().bottom = §§pop();
                     if(_loc7_)
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.left);
                        if(_loc7_ || this)
                        {
                           §§push(§§pop() + §^z§.§=u§);
                        }
                        §§pop().right = §§pop();
                        if(_loc7_)
                        {
                           _loc4_.y = -13.929;
                        }
                        _loc4_.x = §^z§.§=u§;
                        if(_loc7_)
                        {
                           addr112:
                           _loc4_.id = §^z§.§,!4§;
                           if(!_loc6_)
                           {
                              _loc3_.§<!B§(_loc4_);
                           }
                        }
                     }
                     var _loc5_:§<!-§;
                     (_loc5_ = new §<!-§()).top = _loc4_.top;
                     _loc5_.bottom = _loc4_.bottom;
                     _loc5_.left = 150;
                     if(_loc7_ || param1)
                     {
                        §§push(_loc5_);
                        §§push(_loc5_.left);
                        if(!(_loc6_ && param2))
                        {
                           §§push(§§pop() + §^z§.§=u§);
                        }
                        §§pop().right = §§pop();
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           §§push(_loc5_.top);
                           if(_loc7_)
                           {
                              §§push(§§pop() + §^z§.§'f§);
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
                                    §§push(§^z§.§=u§);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(§§pop() / 2);
                                    }
                                    §§push(§§pop() + §§pop());
                                 }
                                 §§pop().x = §§pop();
                                 addr214:
                                 _loc5_.id = §^z§.§,z§;
                                 _loc3_.§<!B§(_loc5_);
                                 if(_loc7_ || _loc3_)
                                 {
                                    addr228:
                                    this.§&!2§(_loc3_,param2);
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
                                                §§push(§]t§);
                                                §§push(null);
                                             }
                                             §§goto(addr284);
                                          }
                                          if(§§pop() != §§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                addr274:
                                                _loc3_.theme = §]t§;
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
      
      protected function §&!2§(param1:§^!9§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§+!;§(param1);
               }
            }
         }
      }
      
      protected function §8#§() : §^!9§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§^!9§ = new §^!9§();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§11§ = -12;
         }
         return new §^!9§();
      }
      
      protected function §9!4§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§@!I§ ^= this.§@!I§ << 21;
            if(_loc2_)
            {
               §§push(this);
               §§push(this.§@!I§);
               §§push(this.§@!I§);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§@!I§ = §§pop() ^ §§pop();
               if(_loc1_)
               {
               }
               §§goto(addr82);
            }
            this.§@!I§ ^= this.§@!I§ << 4;
         }
         addr82:
         return this.§@!I§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §+!;§(param1:§^!9§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§7=§ = null;
         if(!(_loc6_ && this))
         {
            §§push(this);
            §§push(0.33);
            if(!_loc6_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§@!I§ = §§pop();
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
                        §§push(this.§9!4§());
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
                     §§push(_loc5_ = new §7=§());
                     §§push(30 + _loc3_ * 10);
                     if(_loc7_)
                     {
                        §§push(this.§9!4§());
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
                                                                  §§push(this.§9!4§());
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
                                                                           §§push(this.§9!4§());
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
                                 §§push(this.§9!4§());
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
      
      private function §<!5§() : void
      {
      }
      
      public function §!W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§5r§.§0!G§);
            if(_loc1_ || this)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     this.§3D§(this.§%!#§.§7s§,false);
                     if(_loc1_)
                     {
                        addr43:
                        this.§3D§(this.§&4§.§[$§(§;x§.§,!5§),false);
                        if(_loc1_ || _loc1_)
                        {
                           this.§3D§(this.§&4§.§[$§(§;x§.§4!D§),true);
                           this.§3D§(this.§&4§.§[$§(§;x§.§;K§),true);
                           if(_loc1_)
                           {
                              addr86:
                              this.§3D§(this.§87§.§4i§,true);
                              if(_loc2_)
                              {
                              }
                              this.§3D§(this.§%!#§.§7!0§,false);
                              addr126:
                              if(§5r§.§0!G§)
                              {
                                 this.§3D§(this.§%!#§.§%>§,false);
                                 if(!(_loc2_ && this))
                                 {
                                    addr142:
                                    this.§3D§(this.§&4§.§[$§(§;x§.§-4§),true);
                                 }
                                 return;
                              }
                              §§goto(addr142);
                              addr110:
                           }
                           this.§3D§(this.§'!§.sprite,true);
                           this.§3D§(this.§&4§.§[$§(§;x§.§]+§),true);
                           if(!_loc2_)
                           {
                              §§goto(addr110);
                           }
                        }
                        §§goto(addr126);
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr43);
            }
            §§goto(addr86);
         }
         §§goto(addr142);
      }
      
      private function §3D§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
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
         if(!(_loc3_ && param2))
         {
            §§push(this.sprite);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = new Point();
         if(!(_loc5_ && param2))
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§"h§.§'!I§);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() / §§pop());
                  if(!(_loc5_ && this))
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ || param2)
                     {
                        param1 = §§pop();
                        if(!_loc5_)
                        {
                           addr68:
                           §§push(param2);
                           if(!(_loc5_ && this))
                           {
                              addr76:
                              §§push(§§pop() / §"h§.§'!I§);
                              if(_loc4_)
                              {
                                 addr81:
                                 §§push(Number(§§pop()));
                              }
                           }
                           param2 = §§pop();
                           if(!_loc5_)
                           {
                              _loc3_.x = (param1 / §^z§.§%!8§ + this.§!B§.§,!&§ - §^z§.§<H§ / §^z§.§%!8§) * §#N§;
                              if(_loc4_ || this)
                              {
                              }
                              §§goto(addr138);
                           }
                           _loc3_.y = (param2 / §^z§.§%!8§ + this.§!B§.§',§ - §^z§.§#&§ / §^z§.§%!8§) * §#N§;
                        }
                        addr138:
                        return _loc3_;
                     }
                  }
               }
               §§goto(addr76);
            }
            §§goto(addr81);
         }
         §§goto(addr68);
      }
      
      public function §>9§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Point = new Point();
         if(!_loc6_)
         {
            _loc3_.x = (param1 / §#N§ + §^z§.§<H§ / §^z§.§%!8§ - this.§!B§.§,!&§) * §^z§.§%!8§;
            if(_loc5_ || this)
            {
               addr57:
               _loc3_.y = (param2 / §#N§ + §^z§.§#&§ / §^z§.§%!8§ - this.§!B§.§',§) * §^z§.§%!8§;
            }
            var _loc4_:Number = Math.max(§"h§.§'!I§,§"h§.§for§);
            if(!(_loc6_ && _loc3_))
            {
               _loc3_.x *= _loc4_;
               if(!(_loc6_ && param1))
               {
                  addr113:
                  _loc3_.y *= _loc4_;
               }
               return _loc3_;
            }
            §§goto(addr113);
         }
         §§goto(addr57);
      }
      
      public function §8!2§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§87§.addObject(param1,param2,param3);
         }
      }
      
      public function §07§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§?!=§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr35:
                     §§push(this.§?!=§);
                     if(_loc1_ || this)
                     {
                        addr54:
                        §§pop().visible = true;
                        §§goto(addr74);
                     }
                     §§pop().alpha = 0;
                     if(_loc2_ && _loc2_)
                     {
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr63);
               }
               addr74:
               if(!(_loc2_ && this))
               {
                  addr63:
                  §§push(this.§?!=§);
               }
               this.§0!8§ = 0;
               return;
            }
            §§goto(addr54);
         }
         §§goto(addr35);
      }
      
      public function §;1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§0!5§ = new §'!$§(§&!"§.§]!6§,§&!"§.§^=§);
         }
      }
      
      public function §7V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§0!5§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§%!#§);
         if(_loc2_)
         {
            if(§§pop())
            {
               if(_loc2_ || this)
               {
                  addr31:
                  this.§%!#§.dispose();
                  if(!_loc1_)
                  {
                     this.§%!#§ = null;
                     if(!_loc1_)
                     {
                        addr39:
                        §§push(this.§87§);
                        if(!(_loc1_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              addr51:
                              this.§87§.dispose();
                              if(_loc2_ || this)
                              {
                                 this.§87§ = null;
                                 this.§5!I§ = null;
                                 if(!(_loc1_ && this))
                                 {
                                    addr72:
                                    §§push(this.§=!D§);
                                    if(!(_loc1_ && this))
                                    {
                                       addr103:
                                       if(§§pop())
                                       {
                                          §§push(this.§=!D§);
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             if(!§§pop().§=!5§)
                                             {
                                             }
                                             §§push(this.§=!D§);
                                          }
                                       }
                                       §§push(this.§&!8§);
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             addr115:
                                             this.§&!8§.clear();
                                             if(!_loc1_)
                                             {
                                                addr118:
                                                this.§&!8§ = null;
                                                addr121:
                                                §§push(this.§'!§);
                                                if(!_loc1_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc2_ || this)
                                                      {
                                                         addr135:
                                                         this.§'!§.dispose();
                                                         this.§'!§ = null;
                                                         addr139:
                                                         §§push(this.§!B§);
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            addr162:
                                                            if(§§pop())
                                                            {
                                                               addr149:
                                                               §§push(this.§!B§);
                                                            }
                                                            §§push(this.§&4§);
                                                            if(!_loc1_)
                                                            {
                                                               addr175:
                                                               if(§§pop())
                                                               {
                                                                  addr167:
                                                                  §§push(this.§&4§);
                                                               }
                                                               if(this.sprite)
                                                               {
                                                                  addr178:
                                                                  loop0:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.sprite);
                                                                     while(§§pop().numChildren > 0)
                                                                     {
                                                                        §§push(this.sprite);
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               this.§;+§ = 0;
                                                               this.§["§ = 0;
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  this.mReadyToRun = false;
                                                                  this.§'1§ = false;
                                                                  this.§0!8§ = §&!"§.§case §;
                                                                  §§push(this.§35§);
                                                                  if(!(_loc1_ && this))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc1_)
                                                                        {
                                                                           §§push(this.§35§);
                                                                           if(_loc2_)
                                                                           {
                                                                              addr246:
                                                                              §§push((§§pop() as §6!>§).§&8§);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr271:
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       addr262:
                                                                                       §§push((this.§35§ as §6!>§).§&8§);
                                                                                       §§push(0);
                                                                                    }
                                                                                    §§push(this.§?!=§);
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc1_ && _loc2_))
                                                                                          {
                                                                                             addr285:
                                                                                             this.§?!=§.visible = false;
                                                                                             addr287:
                                                                                             this.§-W§ = null;
                                                                                             this.§2!<§ = null;
                                                                                             §§push(this.§,!$§);
                                                                                             if(_loc2_ || _loc2_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§push(this.§,!$§);
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      addr307:
                                                                                                      §§pop().removeEventListener(Event.COMPLETE,this.§"q§);
                                                                                                      §§push(this.§,!$§);
                                                                                                   }
                                                                                                   §§pop().removeEventListener(Event.CANCEL,this.§>!F§);
                                                                                                }
                                                                                                §§push(this.§]I§);
                                                                                                if(!(_loc1_ && this))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§push(this.§]I§);
                                                                                                      if(!(_loc1_ && _loc2_))
                                                                                                      {
                                                                                                         §§pop().removeEventListener(Event.COMPLETE,this.§[!§);
                                                                                                         addr345:
                                                                                                         this.§]I§.removeEventListener(Event.CANCEL,this.§,[§);
                                                                                                         addr343:
                                                                                                         if(_loc2_ || this)
                                                                                                         {
                                                                                                            addr357:
                                                                                                            this.§-!F§();
                                                                                                         }
                                                                                                         §§push(§4@§.§0W§);
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            §§goto(addr385);
                                                                                                         }
                                                                                                         §§pop().color = 0;
                                                                                                         if(_loc2_ || this)
                                                                                                         {
                                                                                                            §§goto(addr385);
                                                                                                         }
                                                                                                         §§goto(addr395);
                                                                                                      }
                                                                                                      §§goto(addr345);
                                                                                                   }
                                                                                                   §§goto(addr357);
                                                                                                }
                                                                                                §§goto(addr345);
                                                                                             }
                                                                                             §§goto(addr307);
                                                                                             addr283:
                                                                                          }
                                                                                          addr385:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§push(§4@§.§0W§);
                                                                                          }
                                                                                          §§push(this.§,!J§);
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                §§goto(addr392);
                                                                                             }
                                                                                             §§goto(addr395);
                                                                                          }
                                                                                          addr392:
                                                                                          this.§,!J§.removeEventListeners();
                                                                                          if(!_loc1_)
                                                                                          {
                                                                                             addr395:
                                                                                             this.mReadyToRun = false;
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                    §§goto(addr285);
                                                                                 }
                                                                                 §§pop().y = §§pop();
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    §§goto(addr271);
                                                                                 }
                                                                                 §§goto(addr283);
                                                                              }
                                                                           }
                                                                           §§goto(addr262);
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                     §§goto(addr271);
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                               §§goto(addr285);
                                                            }
                                                            §§pop().dispose();
                                                            this.§&4§ = null;
                                                            if(_loc2_)
                                                            {
                                                               §§goto(addr175);
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                         §§pop().clear();
                                                         this.§!B§ = null;
                                                         if(_loc1_ && _loc1_)
                                                         {
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr139);
                                                }
                                                §§goto(addr135);
                                             }
                                             §§goto(addr175);
                                          }
                                          §§goto(addr121);
                                       }
                                       §§goto(addr115);
                                    }
                                    §§pop().clear();
                                    if(!_loc1_)
                                    {
                                       this.§=!D§ = null;
                                       if(!_loc1_)
                                       {
                                          §§goto(addr103);
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr51);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr162);
               }
               §§goto(addr51);
            }
            §§goto(addr39);
         }
         §§goto(addr31);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §2=§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§2!<§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr48);
                  }
               }
               return null;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§2!<§.toString();
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(this.mReadyToRun);
            if(_loc4_ || param2)
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_ || this)
                        {
                           §§pop();
                           addr50:
                           if(!§4@§.§!!7§())
                           {
                              if(!(_loc5_ && param2))
                              {
                                 §§push(0);
                                 if(_loc4_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr122:
                                 §§push(this.§[8§(param1,param2,param3));
                                 if(!(_loc5_ && param1))
                                 {
                                    return §§pop();
                                 }
                              }
                           }
                           else
                           {
                              §§push(this.§-W§);
                              if(!_loc5_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_ || param1)
                                 {
                                    addr91:
                                    if(§§pop())
                                    {
                                       if(!_loc5_)
                                       {
                                          addr95:
                                          §§pop();
                                          if(_loc4_)
                                          {
                                             addr100:
                                             §§push(this.§-W§.§'I§);
                                             if(_loc4_ || param2)
                                             {
                                                addr119:
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr122);
                                                   }
                                                   §§goto(addr141);
                                                }
                                             }
                                             §§goto(addr119);
                                          }
                                          addr141:
                                          return §§pop();
                                          §§push(this.§3V§(param1,true,param2,param3));
                                       }
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr95);
                              }
                              §§goto(addr100);
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr50);
                  }
               }
               §§goto(addr91);
            }
         }
         §§goto(addr50);
      }
      
      protected function §3V§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(this.§^V§)
            {
               if(_loc6_ || param3)
               {
                  §§push(param1);
                  if(_loc6_)
                  {
                     §§push(§§pop() * 0.2);
                     if(!(_loc7_ && param1))
                     {
                        addr40:
                        §§push(Number(§§pop()));
                        if(!(_loc7_ && param2))
                        {
                           param1 = §§pop();
                           if(!(_loc7_ && param2))
                           {
                              addr56:
                              §§push(§4@§.§&R§);
                              if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    addr72:
                                    if(!(_loc7_ && this))
                                    {
                                       addr68:
                                       §§push(§4@§.§&R§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(_loc6_)
                                    {
                                       §§push(this);
                                       §§push(this.§["§);
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§["§ = §§pop();
                                       if(_loc6_ || this)
                                       {
                                          §§push(param3);
                                          if(!(_loc7_ && param2))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc6_ || param3)
                                                {
                                                   §§push(this);
                                                   §§push(this.§;+§);
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(§§pop() + param1);
                                                   }
                                                   §§pop().§;+§ = §§pop();
                                                   §§push(this.§=!D§.§5N§(this.§;+§));
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         addr166:
                                                         _loc5_ = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            this.§'!§.update(param1,param4);
                                                            this.§;+§ = _loc5_;
                                                            addr187:
                                                            if(param2)
                                                            {
                                                               addr189:
                                                               this.§6;§(param1,_loc5_);
                                                            }
                                                         }
                                                         §§push(param1);
                                                      }
                                                      return §§pop();
                                                   }
                                                   §§goto(addr166);
                                                }
                                             }
                                             else
                                             {
                                                this.§87§.§^!C§(param1);
                                                addr182:
                                                this.§;+§ = 0;
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr187);
                                                }
                                             }
                                             §§goto(addr189);
                                          }
                                          §§goto(addr187);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr72);
                              }
                              §§pop().speed = 0.2;
                              §§goto(addr72);
                           }
                           §§goto(addr68);
                        }
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr40);
               }
               §§goto(addr56);
            }
         }
         §§goto(addr72);
      }
      
      private function §[8§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§'F§.§=!+§);
         if(!_loc6_)
         {
            §§push(§§pop() * 1000);
            if(_loc7_)
            {
               addr27:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param3))
            {
               if(this.§-W§)
               {
                  if(_loc7_ || this)
                  {
                     §§push(param1);
                     if(!(_loc6_ && param1))
                     {
                        §§push(this.§-W§.speed);
                        if(_loc7_ || param2)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                              if(!(_loc6_ && param1))
                              {
                                 param1 = §§pop();
                                 if(_loc7_ || this)
                                 {
                                    addr83:
                                    §§push(this.§["§);
                                    if(_loc7_)
                                    {
                                       addr87:
                                       §§push(§§pop() + param1);
                                       if(_loc7_)
                                       {
                                          addr91:
                                          §§push(Number(§§pop()));
                                       }
                                       _loc5_ = §§pop();
                                    }
                                    §§goto(addr91);
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    §§push(this.§["§);
                                    §§push(_loc4_);
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       §§push(_loc5_);
                                       if(!(_loc6_ && param3))
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc5_ > this.§56§ + _loc4_)
                                             {
                                                if(_loc7_ || param1)
                                                {
                                                   addr169:
                                                   this.§-W§.step(this);
                                                }
                                                §§push(this);
                                                §§push(this.§56§);
                                                if(_loc7_ || this)
                                                {
                                                   §§push(§§pop() + _loc4_);
                                                }
                                                §§pop().§56§ = §§pop();
                                                if(_loc6_ && param3)
                                                {
                                                }
                                                §§goto(addr212);
                                             }
                                             §§push(this.§["§);
                                             if(!(_loc6_ && param2))
                                             {
                                                §§push(_loc5_);
                                                break;
                                             }
                                             §§goto(addr239);
                                          }
                                          else
                                          {
                                             §§push(this.§["§);
                                             §§push(_loc4_);
                                             if(_loc6_)
                                             {
                                                continue;
                                             }
                                             if(§§pop() + §§pop() > this.§56§)
                                             {
                                                §§push(this.§-W§);
                                                if(!(_loc6_ && this))
                                                {
                                                   §§pop().step(this);
                                                   §§push(this);
                                                   §§push(this.§56§);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§pop() + _loc4_);
                                                   }
                                                   §§pop().§56§ = §§pop();
                                                }
                                                else
                                                {
                                                   §§goto(addr169);
                                                }
                                                §§goto(addr212);
                                             }
                                             this.§3V§(_loc4_,false,param2,param3);
                                             if(_loc7_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          §§goto(addr212);
                                       }
                                       break;
                                    }
                                    if(§§pop() < §§pop())
                                    {
                                       §§goto(addr212);
                                    }
                                    addr212:
                                    §§push(this);
                                    §§push(_loc5_);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() - this.§["§);
                                    }
                                    §§pop().§3V§(§§pop(),true,param2,param3);
                                    §§push(param1);
                                    if(!(_loc6_ && param2))
                                    {
                                       return §§pop();
                                    }
                                    addr239:
                                    addr239:
                                    return §§pop();
                                 }
                              }
                           }
                        }
                        §§goto(addr87);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr83);
               }
               else
               {
                  §§push(this.§3V§(_loc4_,true,param2,param3));
               }
               §§goto(addr239);
            }
            §§goto(addr83);
         }
         §§goto(addr27);
      }
      
      private function §6;§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(_loc5_ || this)
         {
            this.§%!#§.update(param1);
            if(_loc5_ || _loc3_)
            {
               this.§87§.§;C§(param1,param2);
               if(!_loc6_)
               {
                  this.§9!%§();
                  if(_loc5_)
                  {
                     §§push(this.§0!8§);
                     §§push(§&!"§.§case §);
                     if(!_loc6_)
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!(_loc6_ && param2))
                           {
                              §§push(this);
                              §§push(this.§0!8§);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(§§pop() + param1);
                              }
                              §§pop().§0!8§ = §§pop();
                              §§push(§&!"§.§case §);
                              if(_loc5_ || param1)
                              {
                                 §§push(§§pop() / 2);
                                 if(!(_loc6_ && param1))
                                 {
                                    addr94:
                                    _loc3_ = §§pop();
                                    §§push(-Math.abs(this.§0!8§ - _loc3_));
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
                                             §§push(§&!"§.§82§);
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
                                                §§push(this.§?!=§);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr149:
                                                      §§push(this.§?!=§);
                                                      if(_loc5_ || this)
                                                      {
                                                         §§pop().alpha = _loc4_;
                                                         if(!_loc6_)
                                                         {
                                                            addr179:
                                                            §§push(this.§0!5§);
                                                            if(_loc5_ || this)
                                                            {
                                                               §§goto(addr215);
                                                            }
                                                            if(!§§pop().§"<§(this.§!B§,param1))
                                                            {
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr213:
                                                                  this.§7V§();
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                            addr162:
                                                         }
                                                         addr215:
                                                         if(§§pop())
                                                         {
                                                            addr189:
                                                            §§push(this.§0!5§);
                                                         }
                                                         this.§!B§.§,d§(param1);
                                                         if(_loc5_ || this)
                                                         {
                                                            this.§=!D§.§'L§();
                                                            addr229:
                                                            this.§&4§.update(param1);
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
                              §§push(this.§?!=§);
                           }
                        }
                        else
                        {
                           §§push(this.§?!=§);
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
      
      public function §&'§(param1:Number) : void
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
                        §§pop().§^!C§(§§pop());
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
                           §§pop().§>!#§(§§pop());
                           if(!_loc2_)
                           {
                              this.§%o§();
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
      
      public function §9!%§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§0r§ = null;
         if(!_loc5_)
         {
            §§push(this.§["§);
            §§push(this.§86§);
            if(!(_loc5_ && _loc1_))
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(_loc4_)
               {
                  if(this.§&!&§ != null)
                  {
                     var _loc3_:* = this.§&!&§;
                     §§goto(addr53);
                  }
                  this.§86§ = this.§["§;
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
         var _loc2_:§0r§ = null;
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
                        §§push(this.§87§);
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
                                       §§push(this.§87§);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(true);
                                          if(!_loc4_)
                                          {
                                             addr89:
                                             §§push(§§pop().§;_§(§§pop()));
                                             if(_loc3_)
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc3_)
                                                {
                                                   _loc2_.§7!;§.mTryToScream = §44§.§;<§;
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      §§push(this);
                                                      §§push(500 + Math.random() * 1000);
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop() + 4000 / (3 + this.§87§.§@a§()));
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
                  §§push(this.§87§);
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
                           _loc2_ = this.§87§.§;_§(true);
                           addr179:
                           if(_loc3_)
                           {
                              _loc2_.§7!;§.mTryToBlink = §44§.§8g§;
                              if(_loc3_)
                              {
                                 §§push(this);
                                 §§push(250 + Math.random() * 500);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(§§pop() + 2000 / (3 + this.§87§.§@a§()));
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
                  §§push(§,i§.§4!A§);
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
                           §4f§.addScore(param1,param2);
                           if(_loc8_)
                           {
                              this.§,!J§.addScore(param1);
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
               §§push(this.§%=§);
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
                  this.§ g§(param1.toString(),param4,param5,800,param6,0,0);
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function § g§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
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
                     §§push(§,i§.§>>§);
                     if(_loc9_ || param1)
                     {
                        addr66:
                        param5 = §§pop();
                        if(!(_loc8_ && param2))
                        {
                           addr74:
                           this.§&4§.§8"§(§,i§.§9Q§,§;x§.§-4§,§,i§.§`!7§,param2,param3,param4,param1,param5,param6,param7);
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
      
      public function §=F§(param1:§0r§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§&!&§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() == null)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§&!&§ = new Array();
                     if(_loc2_ || param1)
                     {
                        addr69:
                        this.§&!&§.push(param1);
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
      
      public function §4A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§'!§.§4A§();
            if(_loc2_)
            {
               §§goto(addr39);
            }
            §§goto(addr44);
         }
         addr39:
         this.§87§.§"g§();
         if(!_loc1_)
         {
            addr44:
            this.§%=§ = true;
         }
      }
      
      public function §%a§(param1:§0r§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&4§.§]?§(§;x§.§,!5§);
            if(!_loc3_)
            {
               §§push(this.§&!&§);
               if(!_loc3_)
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     if(_loc2_ || param1)
                     {
                        §§push(this.§&!&§);
                        if(!_loc3_)
                        {
                           §§pop().splice(this.§&!&§.indexOf(param1),1);
                           if(_loc2_ || param1)
                           {
                              addr79:
                              if(this.§&!&§.length == 0)
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
                     this.§&!&§ = null;
                     §§goto(addr92);
                  }
               }
            }
            §§goto(addr79);
         }
         addr92:
      }
      
      public function §0F§(param1:§6A§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            this.§5!I§ = this.§87§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(!_loc8_)
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr47:
                  §§push(§3X§.§,#§);
                  if(!(_loc8_ && param2))
                  {
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                        addr68:
                        var _loc4_:* = Number(§§pop());
                        if(_loc7_)
                        {
                           §§push(param1.§0!=§);
                           §§push(1);
                           if(_loc7_ || param1)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    §§push(this.§5!I§);
                                    if(_loc7_ || param2)
                                    {
                                       §§pop().§=!-§(param1.§0!=§);
                                       if(_loc7_ || param2)
                                       {
                                          addr105:
                                          this.§5!I§.§7!;§.§,9§();
                                          addr103:
                                          if(!(_loc8_ && param3))
                                          {
                                             addr114:
                                             if(param1.§"@§ != 0)
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
                                                      this.§5!I§.§96§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                      if(!(_loc8_ && param3))
                                                      {
                                                         this.camera.§&k§(§^z§.§6!G§);
                                                         addr218:
                                                         if(_loc7_)
                                                         {
                                                            §§push(this.§2!<§);
                                                            if(!(_loc8_ && param1))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§pop().§0F§(this.§=!D§.§>! §,param1.x,param1.y,param2,param3);
                                                            §§goto(addr259);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      addr259:
                                                      if(_loc7_)
                                                      {
                                                         addr247:
                                                         §§push(this.§2!<§);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr148);
                                          }
                                          §§push(param1.§"@§);
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
                  §§push(§3X§.§-'§);
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
            this.§'1§ = true;
         }
      }
      
      private function §%o§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§'1§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  return;
               }
               this.§'1§ = false;
               if(_loc1_)
               {
                  §§push(this.activeObject);
                  if(_loc1_ || this)
                  {
                     §§push(§§pop() is §8j§);
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
                                 §§push((§§pop() as §8j§).§=t§);
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
                                             if(this.activeObject.activateSpecialPower(this.§`N§))
                                             {
                                                if(!_loc2_)
                                                {
                                                   this.§?5§ = true;
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
                                          this.§87§.§1u§();
                                          if(!_loc2_)
                                          {
                                             addr138:
                                             §§push(this.§2!<§);
                                             if(_loc1_ || this)
                                             {
                                                if(!§§pop())
                                                {
                                                }
                                                §§goto(addr156);
                                             }
                                             §§pop().§4!3§(this.§=!D§.§>! §);
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
            §§push(this.§2!<§);
         }
      }
      
      public function §%!1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§87§.§%!1§();
         }
      }
      
      public function §&T§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§87§.§9C§();
         }
      }
      
      public function §6&§() : §^!9§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§^!9§ = new §^!9§();
         if(_loc3_)
         {
            _loc1_.§`0§ = this.§,t§.§`0§;
            _loc1_.§7G§ = this.§,t§.§7G§;
            if(_loc3_)
            {
               §§goto(addr55);
            }
            §§goto(addr61);
         }
         addr55:
         this.§!B§.§,!-§(_loc1_);
         if(_loc3_)
         {
            addr61:
            this.§87§.§"z§(_loc1_);
            if(_loc3_ || _loc2_)
            {
               this.§'!§.§,K§(_loc1_);
               _loc1_.theme = this.§%!#§.§5U§();
            }
         }
         return _loc1_;
      }
      
      public function §]S§() : int
      {
         return this.§,t§.§7G§;
      }
      
      public function §7Y§() : int
      {
         return this.§,t§.§`0§;
      }
      
      public function §1A§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,t§.§7G§ = param1;
         }
      }
      
      public function §#W§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§,t§.§`0§ = param1;
         }
      }
      
      public function §`!I§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§?!C§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr38:
                     this.§?!C§.§=!&§(param1,param2);
                     if(!_loc4_)
                     {
                     }
                     addr57:
                     this.§!B§.§,d§(0);
                     addr59:
                     return;
                     addr55:
                  }
               }
               §§push(this.§!B§);
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
      
      public function get §89§() : §^!9§
      {
         return this.§,t§;
      }
      
      public function get §`N§() : §6a§
      {
         return this.§87§;
      }
      
      protected function get starling() : §4@§
      {
         return this.§5!'§;
      }
      
      public function get §#!#§() : int
      {
         return §@d§;
      }
   }
}
