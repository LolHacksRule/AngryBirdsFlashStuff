package §<!<§
{
   import § !r§.§`![§;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §-!0§.§!!s§;
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §-!0§.§[!M§;
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §1=§.§-d§;
   import §5#§.§5k§;
   import §7U§.§?!R§;
   import §8!Q§.§2!7§;
   import §;!R§.§6!G§;
   import §<!B§.b2Vec2;
   import §=U§.§&!U§;
   import §=U§.§-b§;
   import §=U§.§3p§;
   import §>!'§.§'!Y§;
   import §>!'§.§6!N§;
   import §>!'§.§7!U§;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import §@_§.§[!k§;
   import §]Z§.§,d§;
   import §]Z§.§7!n§;
   import §`a§.§ !U§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7E§
   {
      
      private static const §<@§:int = 20;
      
      public static const §#!U§:Number;
      
      public static const §5H§:Number;
      
      public static const §8!'§:Number = 0.05;
      
      public static const §^0§:Number;
      
      public static const §7!O§:Number;
      
      public static const §5X§:§2!7§;
      
      protected static var §[!p§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<@§ = 20;
            if(_loc2_ || _loc2_)
            {
               §#!U§ = §'!V§.§&d§;
               §5H§ = §'!V§.§6k§;
               if(_loc2_)
               {
                  §8!'§ = 1 / 20;
                  addr54:
                  §^0§ = §'!V§.§6k§ * §8!'§;
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§findproperty(§7!O§));
                     §§push(§#!U§);
                     if(_loc2_)
                     {
                        §§push(§§pop() * §8!'§);
                     }
                     §§pop().§7!O§ = §§pop();
                     if(_loc2_ || §7E§)
                     {
                        addr91:
                        §5X§ = new §2!7§(13 - 3);
                        if(!(_loc1_ && _loc2_))
                        {
                           addr105:
                           §[!p§ = §2! §.§4!l§;
                        }
                     }
                     return;
                  }
                  §§goto(addr91);
                  addr39:
               }
               §§goto(addr105);
            }
            §§goto(addr39);
         }
         §§goto(addr54);
      }
      
      protected var §"m§:§'!Y§;
      
      private var §[[§:§<!3§;
      
      private var §?2§:Array = null;
      
      protected var §>e§:§-d§;
      
      public var §[!U§:§!F§;
      
      protected var §;!&§:§8!t§;
      
      protected var §7!6§:§ !U§;
      
      protected var §90§:§;§;
      
      protected var §^!c§:§<!r§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §<!q§:Boolean = false;
      
      protected var §<!0§:Boolean = false;
      
      protected var § f§:Boolean = false;
      
      public var §`!T§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §9f§:Number;
      
      public var §1z§:Number;
      
      private var §8v§:Number;
      
      public var §+!'§:§[!M§;
      
      public var §7s§:Boolean = false;
      
      private var §?1§:§@`§;
      
      private var §2!Z§:Sprite;
      
      protected var §4!o§:§2! §;
      
      protected var §[!S§:§5k§ = null;
      
      private var §?9§:EventDispatcher;
      
      private var §7!N§:Array;
      
      private var §@![§:Array;
      
      private var §>-§:§7j§;
      
      private var §#!o§:§?!R§;
      
      protected var §>!S§:§3p§;
      
      protected var §[!B§:§&!U§;
      
      private var §5E§:§-b§;
      
      private var §,_§:§-b§;
      
      private var §"X§:§-b§;
      
      private var §"$§:Stage;
      
      private var §]!o§:§-!q§;
      
      protected var §^B§:§6!G§;
      
      protected var §`M§:§6!G§;
      
      protected var §6!2§:Number = 0.0;
      
      protected var §`!_§:String;
      
      private var §9`§:Boolean;
      
      protected var §3!<§:Boolean;
      
      protected var §6Y§:uint = 1.417339207E9;
      
      public var §7!F§:Boolean;
      
      public function §7E§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         this.§@![§ = [];
         if(_loc3_)
         {
            super();
            this.§?9§ = new EventDispatcher();
            this.§+!'§ = new §[!M§();
            if(_loc3_)
            {
               addr33:
               this.§"$§ = param1;
               if(!(_loc4_ && _loc2_))
               {
                  addr43:
                  this.§>!S§ = §3p§.§`!t§;
                  if(!(_loc4_ && param1))
                  {
                     this.§[!B§ = this.initAnimationManager(this.§>!S§);
                     this.§5E§ = this.initThemeGraphicsManager();
                     addr64:
                     this.§,_§ = this.§[!2§();
                     this.§"X§ = this.§"!B§();
                  }
                  var _loc2_:Stage3D = param1.stage3Ds[0];
                  if(!_loc4_)
                  {
                     this.§>-§ = new §7j§(§@`§,param1,new Rectangle(0,0,§'!V§.§&d§,§'!V§.§6k§),_loc2_);
                     §'!V§.§6!O§.addEventListener(Event.ENTER_FRAME,this.§>-§.onEnterFrame);
                     if(_loc3_)
                     {
                        _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§=!S§,false,0,true);
                        if(!(_loc4_ && this))
                        {
                           addr131:
                           §§push(this.§>-§);
                           if(_loc3_)
                           {
                              §§push(false);
                              if(!(_loc4_ && this))
                              {
                                 §§pop().§^8§ = §§pop();
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    addr183:
                                    addr187:
                                    §§push(this.§>-§);
                                    if(_loc3_)
                                    {
                                       §§push(false);
                                    }
                                    §§pop().§9!C§ = 2;
                                    this.§>-§.§@!M§();
                                    §§goto(addr188);
                                 }
                                 addr188:
                                 return;
                              }
                              §§pop().enableErrorChecking = §§pop();
                              if(_loc3_ || param1)
                              {
                                 addr174:
                                 §§push(this.§>-§);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§goto(addr183);
                                 }
                                 §§goto(addr187);
                              }
                           }
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr131);
               }
               §§goto(addr64);
            }
            §§goto(addr43);
         }
         §§goto(addr33);
      }
      
      public static function §!h§(param1:§<!3§, param2:§<!3§) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1.§1!M§);
         if(_loc5_ || _loc3_)
         {
            §§push(§§pop() - param2.§1!M§);
            if(!_loc6_)
            {
               addr50:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param1.§7"§);
            if(!(_loc6_ && param1))
            {
               §§push(§§pop() - param2.§7"§);
               if(_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            return §%!J§(_loc3_,_loc4_);
         }
         §§goto(addr50);
      }
      
      public static function §%!J§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§2!Z§);
            if(_loc1_ || _loc2_)
            {
               §§push(!§§pop());
               if(_loc1_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc2_)
                     {
                        addr69:
                        §§pop();
                        if(_loc1_ || this)
                        {
                           §§goto(addr80);
                        }
                        §§goto(addr88);
                     }
                  }
                  §§goto(addr80);
               }
               §§goto(addr69);
            }
            addr80:
            §§goto(addr77);
         }
         addr77:
         if(this.§&]§)
         {
            if(_loc1_ || _loc1_)
            {
               addr88:
               this.§2!Z§ = this.§?1§.§'v§;
            }
         }
         return this.§2!Z§;
      }
      
      public function get §&]§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§?1§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§?1§ = this.§>-§.§@3§ as §@`§;
                     if(_loc2_ && _loc2_)
                     {
                     }
                     addr82:
                     return this.§?1§;
                     addr80:
                  }
                  §§push(this.§?1§);
                  if(!_loc2_)
                  {
                     addr78:
                     §§pop().§[,§ = false;
                     §§goto(addr80);
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr78);
         }
         §§goto(addr82);
      }
      
      private function get §,w§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§&]§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§&]§);
                  }
                  else
                  {
                     §§goto(addr57);
                  }
               }
               §§goto(addr57);
            }
            return (§§pop() as §@`§).§,w§;
         }
         addr57:
         return null;
      }
      
      public function get §@!o§() : §&!U§
      {
         return this.§[!B§;
      }
      
      public function get textureManager() : §3p§
      {
         return this.§>!S§;
      }
      
      public function get camera() : § !U§
      {
         return this.§7!6§;
      }
      
      public function get objects() : §'!Y§
      {
         return this.§"m§;
      }
      
      public function get particles() : §<!r§
      {
         return this.§^!c§;
      }
      
      public function get background() : §-d§
      {
         return this.§>e§;
      }
      
      public function get slingshot() : §;§
      {
         return this.§90§;
      }
      
      public function get activeObject() : §<!3§
      {
         return this.§[[§;
      }
      
      public function get borders() : §8!t§
      {
         return this.§;!&§;
      }
      
      public function get stage() : Stage
      {
         return this.§"$§;
      }
      
      public function get §?!r§() : §-b§
      {
         return this.§"X§;
      }
      
      protected function get §%^§() : §-b§
      {
         return this.§5E§;
      }
      
      public function set activeObject(param1:§<!3§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[[§ = param1;
         }
      }
      
      public function set §0!#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3!<§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§#!o§);
         if(!_loc1_)
         {
            if(§§pop())
            {
               if(!_loc1_)
               {
                  addr26:
                  this.§#!o§.dispose();
                  addr27:
                  §§push(this.§>!S§);
                  if(_loc2_ || _loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           addr46:
                           this.§>!S§.dispose();
                           if(!(_loc1_ && _loc2_))
                           {
                              addr54:
                              §§push(this.§5E§);
                              if(_loc2_ || _loc1_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc2_)
                                 {
                                    §§push(§§pop());
                                    if(_loc2_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc1_)
                                          {
                                             §§pop();
                                             if(!_loc1_)
                                             {
                                                §§push(this.§5E§);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §§push(§§pop().textureManager);
                                                   if(!(_loc1_ && _loc2_))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc2_ || this)
                                                      {
                                                         addr115:
                                                         if(§§pop())
                                                         {
                                                            addr118:
                                                            addr116:
                                                            §§push(this.§5E§.textureManager);
                                                            if(!_loc1_)
                                                            {
                                                               §§pop().dispose();
                                                            }
                                                            addr161:
                                                            addr162:
                                                            if(§§pop())
                                                            {
                                                               addr166:
                                                               this.§"X§.textureManager.dispose();
                                                            }
                                                            §§push(this.§>-§);
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr179:
                                                                  this.§>-§.dispose();
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         §§push(this.§"X§);
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc2_)
                                                            {
                                                               addr134:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     addr138:
                                                                     §§pop();
                                                                     §§push(this.§"X§);
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§push(§§pop().textureManager);
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           §§goto(addr161);
                                                                        }
                                                                     }
                                                                     §§goto(addr166);
                                                                  }
                                                               }
                                                               §§goto(addr162);
                                                            }
                                                            §§goto(addr138);
                                                         }
                                                         §§goto(addr166);
                                                      }
                                                      §§goto(addr138);
                                                   }
                                                   §§goto(addr161);
                                                }
                                                §§goto(addr118);
                                             }
                                             §§goto(addr116);
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr115);
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr138);
                              }
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr54);
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr27);
         }
         §§goto(addr26);
      }
      
      protected function initThemeGraphicsManager() : §-b§
      {
         return null;
      }
      
      protected function §[!2§() : §-b§
      {
         return null;
      }
      
      protected function §"!B§() : §-b§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§3p§) : §&!U§
      {
         return new §&!U§(param1);
      }
      
      public function §-I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(§7j§.§else§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     if(param1)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           addr64:
                           §§push(§7j§.§else§);
                           if(!_loc3_)
                           {
                              §§pop().start();
                              if(_loc2_ || param1)
                              {
                              }
                           }
                           else
                           {
                              addr86:
                              §§pop().color = 0;
                           }
                        }
                     }
                     else
                     {
                        §§push(§7j§.§else§);
                        if(_loc2_)
                        {
                           §§pop().stop();
                           if(_loc2_)
                           {
                              §§goto(addr86);
                              §§push(§7j§.§else§);
                           }
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr64);
               }
               return;
            }
            §§goto(addr86);
         }
         §§goto(addr64);
      }
      
      public function §?m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.sprite);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().visible = param1;
         }
         addr50:
         if(_loc3_ || _loc3_)
         {
            §§push(this.sprite);
         }
      }
      
      public function §>_§(param1:§5k§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§[!S§);
            if(_loc3_ || param1)
            {
               if(§§pop() != null)
               {
                  if(_loc3_)
                  {
                     §§push(this.§[!S§);
                     if(!(_loc2_ && this))
                     {
                        addr56:
                        §§pop().removeEventListeners();
                        if(_loc3_ || this)
                        {
                           addr74:
                           this.§[!S§ = param1;
                           if(_loc3_ || this)
                           {
                              if(this.mReadyToRun)
                              {
                                 if(_loc3_ || this)
                                 {
                                 }
                              }
                              §§goto(addr97);
                           }
                           §§push(this.§[!S§);
                        }
                        §§goto(addr97);
                     }
                     §§pop().addEventListeners();
                  }
                  addr97:
                  return;
               }
               §§goto(addr74);
            }
            §§goto(addr56);
         }
         §§goto(addr74);
      }
      
      public function §5!!§() : §6!G§
      {
         return this.§^B§;
      }
      
      public function § D§(param1:§?!R§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§#!o§ = param1;
         }
         §§push(this.§#!o§.§0!@§);
         if(_loc7_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         while(true)
         {
            if(_loc5_ < _loc4_)
            {
               continue;
            }
            if(_loc7_)
            {
               if(param3 != null)
               {
                  addr76:
                  this.§?9§.addEventListener(Event.INIT,param3);
                  if(!_loc6_)
                  {
                     this.§@![§.push(param3);
                     if(!(_loc6_ && param2))
                     {
                        addr95:
                        if(this.§!!g§(param2))
                        {
                           this.§'L§();
                           break;
                        }
                        break;
                     }
                     break;
                  }
                  break;
               }
               §§goto(addr95);
            }
            §§goto(addr76);
         }
      }
      
      private function §!!g§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         §§push(this.§>!S§);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop().§[!>§());
            if(_loc4_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     §§push(this.§>!S§);
                     if(_loc4_)
                     {
                        addr44:
                        §§push(§§pop().§-O§);
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(1000);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() / §§pop());
                              if(!_loc5_)
                              {
                                 §§push(int(§§pop()));
                                 if(_loc4_ || _loc3_)
                                 {
                                    _loc2_ = §§pop();
                                    addr84:
                                    §§push(this.§>!S§.§]!g§);
                                    if(_loc4_ || this)
                                    {
                                    }
                                    addr95:
                                    _loc3_ = §§pop();
                                    if(!_loc5_)
                                    {
                                       §§push(§`![§);
                                       §§push("\n\nMain texture manager memory usage:\n   textures ");
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc4_)
                                             {
                                                §§push(" kilobytes\n   bitmaps ");
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc4_)
                                                   {
                                                   }
                                                   §§goto(addr150);
                                                }
                                                addr150:
                                                addr130:
                                                §§push(§§pop() + _loc3_);
                                                if(_loc4_ || this)
                                                {
                                                   addr148:
                                                   §§push(" kilobytes\n\n");
                                                }
                                                §§pop().log(§§pop());
                                                if(!_loc5_)
                                                {
                                                   this.initializeAnimations(param1);
                                                   addr156:
                                                   §§push(true);
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§goto(addr164);
                                                   }
                                                }
                                                else
                                                {
                                                   addr165:
                                                   this.§7!N§ = param1.concat();
                                                   addr169:
                                                   §§push(false);
                                                }
                                                return §§pop();
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr148);
                                          }
                                          §§goto(addr130);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr156);
                                 }
                                 addr93:
                                 §§push(§§pop() / 1000);
                              }
                              §§goto(addr95);
                              §§push(int(§§pop()));
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr169);
               }
               §§goto(addr165);
            }
            addr164:
            return §§pop();
         }
         §§goto(addr44);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§[!B§.initializeAnimations(param1);
         }
      }
      
      private function §=!S§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!S§.§&k§();
            if(!_loc3_)
            {
               §§push(this.§%^§);
               if(_loc2_)
               {
                  §§push(Boolean(§§pop()));
                  §§push(Boolean(§§pop()));
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc3_)
                        {
                           §§pop();
                           §§push(this.§%^§);
                           if(!_loc3_)
                           {
                              §§push(§§pop().textureManager);
                              if(_loc2_ || this)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc3_)
                                 {
                                    addr55:
                                    if(§§pop())
                                    {
                                       if(_loc2_ || param1)
                                       {
                                          addr65:
                                          §§push(this.§%^§.textureManager);
                                          if(_loc2_)
                                          {
                                             §§pop().§&k§();
                                             if(!_loc3_)
                                             {
                                                addr71:
                                                §§push(this.§?!r§);
                                                if(!_loc3_)
                                                {
                                                   addr76:
                                                   §§push(Boolean(§§pop()));
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc2_ || _loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(this.§?!r§);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(§§pop().textureManager);
                                                               if(!_loc3_)
                                                               {
                                                                  addr116:
                                                                  if(§§pop())
                                                                  {
                                                                     addr119:
                                                                     §§push(this.§?!r§.textureManager);
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§pop().§&k§();
                                                                        if(_loc3_ && _loc2_)
                                                                        {
                                                                        }
                                                                        addr211:
                                                                        §§push(this.§"X§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§pop().textureManager);
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              §§goto(addr238);
                                                                           }
                                                                           §§goto(addr234);
                                                                        }
                                                                        §§pop().§[!>§();
                                                                     }
                                                                     §§goto(addr238);
                                                                  }
                                                                  if(this.§7!N§)
                                                                  {
                                                                     this.§!!g§(this.§7!N§);
                                                                     this.§7!N§ = null;
                                                                     if(_loc2_ || _loc2_)
                                                                     {
                                                                        this.§'L§();
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           addr156:
                                                                           §§push(this.§[!S§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(§§pop() == null);
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr166:
                                                                                 §§push(!§§pop());
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(this.mReadyToRun);
                                                                                    if(_loc2_ || _loc3_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                 }
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    addr183:
                                                                                    this.§[!S§.addEventListeners();
                                                                                 }
                                                                                 §§goto(addr224);
                                                                              }
                                                                              §§push(this.§5E§);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr191:
                                                                                    this.§5E§.§[!>§();
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr238);
                                                                                 }
                                                                                 §§push(this.§"X§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§goto(addr211);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr238);
                                                                                 }
                                                                                 §§goto(addr233);
                                                                              }
                                                                              §§goto(addr191);
                                                                           }
                                                                           §§goto(addr183);
                                                                        }
                                                                        §§goto(addr191);
                                                                     }
                                                                     §§goto(addr234);
                                                                  }
                                                                  §§goto(addr156);
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                            §§goto(addr119);
                                                         }
                                                         addr238:
                                                         if(§§pop())
                                                         {
                                                            addr224:
                                                            §§push(this.§"X§);
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr234:
                                                               §§pop().textureManager.§&k§();
                                                               §§push(this.§"X§);
                                                               addr233:
                                                            }
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr116);
                                                   }
                                                   §§goto(addr166);
                                                }
                                             }
                                             §§goto(addr119);
                                          }
                                          §§goto(addr234);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr71);
                                 }
                                 §§goto(addr76);
                              }
                              §§goto(addr234);
                           }
                           §§goto(addr65);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr166);
               }
               §§goto(addr65);
            }
         }
         §§goto(addr224);
      }
      
      private function §'L§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§?9§.dispatchEvent(new Event(Event.INIT));
            if(_loc1_)
            {
               addr32:
               this.§>s§();
            }
            return;
         }
         §§goto(addr32);
      }
      
      private function §>s§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Function = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§@![§)
         {
            if(!(_loc5_ && _loc2_))
            {
               this.§?9§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(_loc4_ || _loc2_)
         {
            this.§@![§ = [];
         }
      }
      
      public function init(param1:§2! §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.mReadyToRun);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  if(_loc2_ || param1)
                  {
                     this.clearLevel();
                     if(_loc2_ || param1)
                     {
                        addr44:
                        this.§;!&§ = new §8!t§(this,param1);
                        if(!_loc3_)
                        {
                           this.§7!6§ = this.initLevelCamera(param1);
                           this.§9f§ = 0;
                           this.§1z§ = 0;
                           this.§8v§ = 0;
                           if(!(_loc3_ && _loc2_))
                           {
                              addr73:
                              this.§9`§ = false;
                              if(_loc2_)
                              {
                                 addr78:
                                 this.mReadyToRun = false;
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    this.§<!q§ = false;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       this.mPigsAnimationTimer1 = 2000;
                                       if(!(_loc3_ && param1))
                                       {
                                          addr118:
                                          this.mPigsAnimationTimer2 = 1000;
                                       }
                                       §[!p§ = param1.theme;
                                       addr125:
                                       this.§4!o§ = param1;
                                       addr128:
                                       this.§<!0§ = this.§91§(param1.theme);
                                       if(!_loc3_)
                                       {
                                          this.§ f§ = this.§;6§(param1.theme);
                                          addr142:
                                          §§push(this.§<!0§);
                                          if(_loc2_ || param1)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!_loc3_)
                                             {
                                                addr154:
                                                if(§§pop())
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      addr163:
                                                      §§pop();
                                                      if(_loc2_ || param1)
                                                      {
                                                         addr181:
                                                         §§push(this.§ f§);
                                                         if(!_loc3_)
                                                         {
                                                            addr186:
                                                            if(§§pop())
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  this.initialize(param1);
                                                                  if(!_loc3_)
                                                                  {
                                                                     addr199:
                                                                     this.§9E§();
                                                                     addr194:
                                                                  }
                                                               }
                                                               § !p§.init();
                                                               return;
                                                            }
                                                            this.§[!v§(param1.theme);
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      §§goto(addr199);
                                                   }
                                                   §§goto(addr186);
                                                }
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr128);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr142);
               }
               §§goto(addr44);
            }
            §§goto(addr154);
         }
         §§goto(addr73);
      }
      
      protected function §9E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§^B§ = new §6!G§(§1^§.§ ]§);
         }
      }
      
      protected function §91§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§5E§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr38:
                  §§push(false);
                  if(!(_loc3_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr47:
                  §§push(true);
               }
               return §§pop();
            }
            §§goto(addr47);
         }
         §§goto(addr38);
      }
      
      protected function §;6§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§,d§ = null;
         if(!_loc3_)
         {
            if(this.§,_§)
            {
               addr25:
               _loc2_ = §7!n§.§&!c§(param1);
               if(!_loc3_)
               {
                  if(_loc2_)
                  {
                     if(_loc4_)
                     {
                        §§push(Boolean(_loc2_.§,'§));
                        if(_loc4_ || this)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr70);
                              }
                              return §§pop();
                           }
                           §§goto(addr93);
                        }
                        addr70:
                        §§pop();
                        if(_loc4_ || this)
                        {
                           §§push(this.§,_§.§<!s§(_loc2_.§,'§));
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(!§§pop());
                              if(!_loc3_)
                              {
                                 §§goto(addr93);
                              }
                           }
                           addr93:
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 addr96:
                                 §§push(false);
                              }
                              else
                              {
                                 §§goto(addr98);
                              }
                           }
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr96);
                  }
               }
            }
            addr98:
            return true;
         }
         §§goto(addr25);
      }
      
      protected function §[!v§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§,d§ = null;
         if(_loc3_ || this)
         {
            §§push(this.§5E§);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                        §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(this.§91§(param1));
                           if(!_loc4_)
                           {
                              §§push(!§§pop());
                              if(_loc3_)
                              {
                                 addr58:
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(this.§5E§);
                                       if(_loc3_ || this)
                                       {
                                          §§pop().removeEventListener(Event.COMPLETE,this.§51§);
                                          §§push(this.§5E§);
                                          if(_loc3_)
                                          {
                                             §§pop().removeEventListener(Event.CANCEL,this.§9I§);
                                             §§push(this.§5E§);
                                             if(_loc4_)
                                             {
                                             }
                                             addr114:
                                             §§pop().addEventListener(Event.CANCEL,this.§9I§);
                                             addr121:
                                             this.§5E§.§95§(param1);
                                             §§push(this.§,_§);
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§goto(addr133);
                                             }
                                             §§goto(addr172);
                                             addr119:
                                          }
                                          §§pop().addEventListener(Event.COMPLETE,this.§51§);
                                          if(!_loc4_)
                                          {
                                             §§push(this.§5E§);
                                             if(_loc3_ || this)
                                             {
                                                §§goto(addr114);
                                             }
                                             §§goto(addr121);
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr114);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr150);
                           }
                           addr133:
                           §§goto(addr134);
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr58);
               }
               addr134:
               §§push(Boolean(§§pop()));
               if(Boolean(§§pop()))
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     addr177:
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(this.§;6§(param1));
                        if(!_loc4_)
                        {
                           addr150:
                           §§push(!§§pop());
                        }
                     }
                     §§push(this.§,_§);
                     if(_loc3_)
                     {
                        §§pop().addEventListener(Event.COMPLETE,this.§>;§);
                        if(_loc3_ || this)
                        {
                           addr205:
                           this.§,_§.addEventListener(Event.CANCEL,this.§^G§);
                        }
                        _loc2_ = §7!n§.§&!c§(param1);
                        if(!_loc4_)
                        {
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 addr221:
                                 this.§,_§.§95§(_loc2_.§,'§);
                              }
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr221);
                     }
                     §§goto(addr205);
                  }
               }
               if(§§pop())
               {
                  if(!(_loc4_ && param1))
                  {
                     addr159:
                     §§push(this.§,_§);
                     if(_loc3_)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§>;§);
                        §§push(this.§,_§);
                        if(_loc3_)
                        {
                           addr172:
                           §§pop().removeEventListener(Event.CANCEL,this.§^G§);
                           §§goto(addr177);
                        }
                     }
                     §§goto(addr205);
                  }
                  §§goto(addr177);
               }
               addr226:
               return;
            }
            §§goto(addr114);
         }
         §§goto(addr159);
      }
      
      private function §51§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§5E§);
            if(_loc3_ || this)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§51§);
               §§push(this.§5E§);
            }
            §§pop().removeEventListener(Event.CANCEL,this.§9I§);
            if(_loc3_)
            {
               this.§<!0§ = true;
               if(_loc3_ || param1)
               {
                  addr62:
                  §§push(this.§<!0§);
                  if(_loc3_ || this)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc3_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              §§goto(addr109);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc2_ && param1))
                        {
                           §§goto(addr109);
                        }
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr100);
               }
               §§goto(addr96);
            }
            §§goto(addr62);
         }
         addr109:
         if(_loc3_)
         {
            addr96:
            §§push(this.§ f§);
            if(!_loc2_)
            {
               addr100:
               §§push(Boolean(§§pop()));
            }
         }
         this.initialize(this.§4!o§);
      }
      
      private function §9I§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§5E§);
            if(!(_loc2_ && _loc2_))
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§51§);
               §§goto(addr74);
            }
            §§pop().removeEventListener(Event.CANCEL,this.§9I§);
            if(_loc2_ && this)
            {
            }
            §§goto(addr74);
         }
         addr74:
         if(_loc3_ || _loc2_)
         {
            §§push(this.§5E§);
         }
         this.§<!q§ = true;
      }
      
      private function §>;§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§5E§);
         if(_loc3_)
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§>;§);
            §§push(this.§5E§);
         }
         §§pop().removeEventListener(Event.CANCEL,this.§^G§);
         this.§ f§ = true;
         §§push(this.§<!0§);
         if(_loc3_)
         {
            §§push(Boolean(§§pop()));
            if(_loc3_ || param1)
            {
               if(§§pop())
               {
                  if(_loc2_ && _loc3_)
                  {
                  }
               }
               §§goto(addr90);
            }
            §§pop();
            if(!(_loc2_ && this))
            {
               §§push(this.§ f§);
               if(!_loc2_)
               {
                  addr90:
                  if(§§pop())
                  {
                     if(!(_loc2_ && param1))
                     {
                        addr98:
                        this.initialize(this.§4!o§);
                     }
                  }
                  return;
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr90);
            }
            §§goto(addr98);
         }
         §§goto(addr90);
      }
      
      private function §^G§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§5E§);
         if(!_loc2_)
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§>;§);
            if(_loc3_ || _loc3_)
            {
               addr35:
               this.§5E§.removeEventListener(Event.CANCEL,this.§^G§);
               this.§ f§ = true;
               if(_loc3_ || param1)
               {
                  §§push(this.§<!0§);
                  if(!_loc2_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc3_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || this)
                           {
                              §§pop();
                              addr92:
                              §§push(this.§ f§);
                              if(!(_loc2_ && this))
                              {
                                 addr101:
                                 §§push(Boolean(§§pop()));
                              }
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           this.initialize(this.§4!o§);
                        }
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr101);
               }
               §§goto(addr92);
            }
            addr114:
            return;
         }
         §§goto(addr35);
      }
      
      public function get backgroundTextureManager() : §3p§
      {
         return this.§>!S§;
      }
      
      protected function initialize(param1:§2! §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         this.§3!<§ = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§7!F§ = false;
            §§push(§7j§.§&t§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr43:
                     §7j§.§&t§.speed = 1;
                     §§goto(addr45);
                  }
                  §§goto(addr151);
               }
               addr45:
               this.§[!U§ = new §!F§(this);
               §§push(this);
               §§push(this);
               §§push(param1.theme);
               §§push(this.§;!&§.mBorderGround_B2);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() / §8!'§);
               }
               §§pop().§>e§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§7!6§.§@&§());
               if(!_loc3_)
               {
                  addr85:
                  this.§>e§.§6!Y§(§'!V§.§'V§());
                  this.§"m§ = this.initLevelObjectManager(param1);
                  this.§90§ = this.initLevelSlingshot(param1);
                  if(_loc2_)
                  {
                     this.§^!c§ = this.§?d§(this.§[!B§,this.§>!S§);
                     if(!(_loc3_ && param1))
                     {
                        this.§7!6§.init();
                        addr130:
                        this.§!+§();
                        if(!_loc3_)
                        {
                           this.§0M§();
                           if(_loc3_)
                           {
                           }
                           §§goto(addr154);
                        }
                        this.mReadyToRun = true;
                     }
                     §§push(this.§[!S§);
                     if(_loc2_ || this)
                     {
                        if(§§pop())
                        {
                           addr151:
                           §§push(this.§[!S§);
                        }
                        §§goto(addr154);
                     }
                     §§pop().addEventListeners();
                     §§goto(addr154);
                  }
                  §§goto(addr130);
               }
               addr154:
               return;
            }
            §§goto(addr43);
         }
         §§goto(addr85);
      }
      
      protected function §0M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§`!_§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§`M§ = §6!G§.initialize(this.§`!_§);
                  §§push(this.§`M§);
                  if(!_loc1_)
                  {
                     §§pop().speed = 1;
                     addr66:
                     §§push(this.§`M§);
                  }
                  §§pop().play();
                  this.§6!2§ = -1000;
                  if(_loc1_ && _loc1_)
                  {
                  }
                  §§goto(addr82);
               }
               this.§`!_§ = null;
            }
            addr82:
            return;
         }
         §§goto(addr66);
      }
      
      public function §8V§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`!_§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§`M§ == null);
         if(_loc2_ || _loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§`M§);
            if(!(_loc3_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     addr45:
                     if(param1)
                     {
                        if(_loc2_)
                        {
                           addr49:
                           §§push(this.§`M§);
                           if(!_loc3_)
                           {
                              §§pop().speed = Math.min(this.§`M§.speed * 1.25,Math.pow(1.25,2));
                              addr53:
                              if(_loc3_ && this)
                              {
                              }
                           }
                        }
                        §§goto(addr99);
                     }
                     else
                     {
                        §§push(this.§`M§);
                     }
                     §§pop().speed = Math.max(this.§`M§.speed / 1.25,Math.pow(1 / 1.25,10));
                     §§goto(addr99);
                  }
                  §§goto(addr49);
               }
               addr99:
               return;
            }
            §§goto(addr53);
         }
         §§goto(addr45);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§`M§);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr50);
            }
            §§pop().speed = 1;
         }
         addr50:
         if(_loc2_)
         {
            §§push(this.§`M§);
         }
      }
      
      protected function initLevelObjectManager(param1:§2! §) : §'!Y§
      {
         return new §'!Y§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§2! §) : § !U§
      {
         return new § !U§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§3p§, param4:Number) : §-d§
      {
         return new §-d§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§2! §) : §;§
      {
         return new §;§(this,param1,new Sprite());
      }
      
      protected function §?d§(param1:§&!U§, param2:§3p§) : §<!r§
      {
         return new §<!r§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(this.mReadyToRun)
            {
               if(!_loc6_)
               {
                  addr24:
                  this.clearLevel();
               }
            }
            var _loc3_:§2! § = new §2! §();
            if(!_loc6_)
            {
               _loc3_.§]!l§ = -12;
            }
            var _loc4_:§!!s§;
            (_loc4_ = new §!!s§()).left = 0;
            §§push(_loc4_);
            §§push(§ !U§.SCREEN_HEIGHT_B2);
            if(_loc7_ || param1)
            {
               §§push(-§§pop());
               if(_loc7_)
               {
                  §§push(10);
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc7_ || param2)
                     {
                        addr72:
                        §§push(§§pop() * 8);
                     }
                     §§pop().top = §§pop();
                     if(!(_loc6_ && param1))
                     {
                        §§push(_loc4_);
                        §§push(_loc4_.top);
                        if(_loc7_)
                        {
                           §§push(§§pop() + § !U§.SCREEN_HEIGHT_B2);
                        }
                        §§pop().bottom = §§pop();
                        §§push(_loc4_);
                        §§push(_loc4_.left);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + § !U§.SCREEN_WIDTH_B2);
                        }
                        §§pop().right = §§pop();
                        if(_loc7_ || this)
                        {
                           _loc4_.y = -13.929;
                           _loc4_.x = § !U§.SCREEN_WIDTH_B2;
                           if(_loc7_)
                           {
                              addr115:
                              _loc4_.id = § !U§.CAMERA_ID_SLINGSHOT;
                              addr119:
                              _loc3_.§,!j§(_loc4_);
                           }
                           var _loc5_:§!!s§;
                           (_loc5_ = new §!!s§()).top = _loc4_.top;
                           if(_loc7_)
                           {
                              _loc5_.bottom = _loc4_.bottom;
                              if(!_loc6_)
                              {
                                 _loc5_.left = 150;
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(_loc5_);
                                    §§push(_loc5_.left);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(§§pop() + § !U§.SCREEN_WIDTH_B2);
                                    }
                                    §§pop().right = §§pop();
                                    §§push(_loc5_);
                                    §§push(_loc5_.top);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + § !U§.SCREEN_HEIGHT_B2);
                                    }
                                    §§pop().bottom = §§pop();
                                    if(!_loc6_)
                                    {
                                       _loc5_.y = _loc4_.y;
                                       if(_loc7_)
                                       {
                                          §§push(_loc5_);
                                          §§push(_loc5_.left);
                                          if(_loc7_ || param1)
                                          {
                                             §§push(§ !U§.SCREEN_WIDTH_B2);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() / 2);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().x = §§pop();
                                          _loc5_.id = § !U§.CAMERA_ID_CASTLE;
                                          if(_loc7_)
                                          {
                                             addr213:
                                             _loc3_.§,!j§(_loc5_);
                                          }
                                          if(param2)
                                          {
                                             addr218:
                                             this.§&C§(_loc3_);
                                             if(_loc7_ || param1)
                                             {
                                                addr228:
                                                §§push(param1);
                                                if(_loc7_ || param1)
                                                {
                                                   §§push(null);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         _loc3_.theme = param1;
                                                         if(_loc6_ && this)
                                                         {
                                                            addr276:
                                                            _loc3_.theme = §[!p§;
                                                         }
                                                         else
                                                         {
                                                            addr265:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr268:
                                                         if(§[!p§ != null)
                                                         {
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§goto(addr276);
                                                            }
                                                         }
                                                      }
                                                      this.init(_loc3_);
                                                      return;
                                                   }
                                                }
                                                §§goto(addr268);
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr213);
                                    }
                                    §§goto(addr276);
                                 }
                                 §§goto(addr265);
                              }
                              §§goto(addr228);
                           }
                           §§goto(addr218);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr72);
         }
         §§goto(addr24);
      }
      
      protected function §2!S§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§6Y§ ^= this.§6Y§ << 21;
            if(_loc1_ || _loc2_)
            {
               addr49:
               §§push(this);
               §§push(this.§6Y§);
               §§push(this.§6Y§);
               if(_loc1_)
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§6Y§ = §§pop() ^ §§pop();
               if(!(_loc2_ && this))
               {
                  this.§6Y§ ^= this.§6Y§ << 4;
               }
            }
            return this.§6Y§ * (1 / uint.MAX_VALUE);
         }
         §§goto(addr49);
      }
      
      protected function §&C§(param1:§2! §) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§[!k§ = null;
         if(!_loc7_)
         {
            §§push(this);
            §§push(0.33);
            if(!_loc7_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§6Y§ = §§pop();
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
                  if(!(_loc7_ && _loc3_))
                  {
                     _loc3_ = §§pop();
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     addr370:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           addr384:
                           break;
                        }
                        while(true)
                        {
                           §§push(5);
                           if(!_loc6_)
                           {
                              continue loop2;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(!(_loc7_ && this))
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§push(this.§2!S§());
                           if(!_loc7_)
                           {
                              §§push(§§pop() * 5);
                           }
                           §§push(int(§§pop()));
                           if(_loc7_)
                           {
                              continue;
                           }
                        }
                        _loc2_++;
                        if(_loc7_)
                        {
                           break loop2;
                        }
                        continue loop0;
                     }
                     continue loop1;
                     addr370:
                  }
                  while(true)
                  {
                     _loc4_ = §§pop();
                     if(!_loc7_)
                     {
                        §§push(_loc5_ = new §[!k§());
                        §§push(30 + _loc3_ * 10);
                        if(_loc6_)
                        {
                           §§push(this.§2!S§());
                           if(!(_loc7_ && this))
                           {
                              §§push(§§pop() * 9);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().x = §§pop();
                        if(!(_loc7_ && _loc3_))
                        {
                           if(_loc2_ == 0)
                           {
                              _loc5_.y = 0;
                              §§push(_loc3_);
                              if(_loc6_)
                              {
                                 §§push(1);
                                 if(_loc6_ || param1)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ || param1)
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                §§pop();
                                                if(_loc6_ || this)
                                                {
                                                   addr144:
                                                   §§push(_loc3_ == 2);
                                                   if(!_loc7_)
                                                   {
                                                      addr148:
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            addr157:
                                                            §§pop();
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               addr165:
                                                               §§push(_loc3_);
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  addr175:
                                                                  if(§§pop() == 4)
                                                                  {
                                                                     _loc5_.id = "PIG_MUSTACHE";
                                                                     if(_loc7_ && _loc2_)
                                                                     {
                                                                        addr339:
                                                                        §§push(_loc5_);
                                                                        §§push(this.§2!S§());
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() * 360);
                                                                        }
                                                                        §§pop().angle = §§pop();
                                                                        if(_loc6_)
                                                                        {
                                                                           addr364:
                                                                           param1.addObject(_loc5_);
                                                                           if(_loc6_)
                                                                           {
                                                                              addr369:
                                                                              _loc3_++;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc5_.id = "PIG_HELMET";
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr335:
                                                                        §§goto(addr339);
                                                                     }
                                                                  }
                                                                  §§goto(addr370);
                                                                  §§pop().angle = §§pop() - §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr364);
                                                                  }
                                                                  §§goto(addr369);
                                                               }
                                                               else
                                                               {
                                                                  addr324:
                                                                  if(§§pop() == 3)
                                                                  {
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        addr332:
                                                                        _loc5_.id = "BIRD_YELLOW";
                                                                        §§goto(addr335);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc5_.id = "BIRD_BLUE";
                                                                  }
                                                               }
                                                               §§goto(addr339);
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr370);
                                             }
                                             §§goto(addr175);
                                          }
                                       }
                                       §§goto(addr148);
                                    }
                                    §§goto(addr157);
                                 }
                                 else
                                 {
                                    addr263:
                                    §§push(§§pop() * §§pop());
                                    if(_loc6_ || param1)
                                    {
                                       §§push(_loc2_);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + §§pop() * _loc3_);
                                          if(!_loc7_)
                                          {
                                             addr279:
                                             §§push(_loc2_);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr291:
                                                   §§push(§§pop() % 5);
                                                }
                                                §§push(int(§§pop()));
                                                §§push(int(§§pop()));
                                                if(_loc6_ || param1)
                                                {
                                                   _loc4_ = §§pop();
                                                   §§push(2);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                   }
                                                   §§goto(addr324);
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      _loc5_.id = "BIRD_RED";
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr324);
                                                   §§push(_loc4_);
                                                }
                                                §§goto(addr339);
                                             }
                                          }
                                       }
                                       §§goto(addr291);
                                    }
                                    §§goto(addr279);
                                 }
                              }
                              §§goto(addr144);
                           }
                           else
                           {
                              §§push(_loc5_);
                              §§push(-100 + _loc2_ * 6);
                              if(!(_loc7_ && param1))
                              {
                                 §§push(this.§2!S§());
                                 if(!(_loc7_ && this))
                                 {
                                    §§push(§§pop() * 3);
                                    if(_loc6_)
                                    {
                                       addr258:
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(_loc3_ * 8);
                                       }
                                       §§pop().y = §§pop();
                                       §§push(_loc3_);
                                       §§push(_loc3_);
                                       if(!_loc7_)
                                       {
                                          §§goto(addr263);
                                       }
                                       §§goto(addr324);
                                    }
                                    §§goto(addr258);
                                    §§push(§§pop() - §§pop());
                                 }
                              }
                              §§goto(addr258);
                           }
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr384);
                  }
               }
               return;
            }
         }
      }
      
      private function §&!X§() : void
      {
      }
      
      public function §!+§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§-d§.§%k§);
         if(!(_loc2_ && _loc1_))
         {
            if(§§pop())
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§,`§(this.§>e§.§?[§,false);
                  if(_loc1_)
                  {
                     addr41:
                     this.§,`§(this.§^!c§.§-!f§(§<!r§.§;!M§),false);
                     if(_loc1_)
                     {
                        addr51:
                        this.§,`§(this.§^!c§.§-!f§(§<!r§.§<[§),true);
                        if(!_loc2_)
                        {
                           this.§,`§(this.§^!c§.§-!f§(§<!r§.§@!N§),true);
                           if(!_loc2_)
                           {
                              this.§,`§(this.§"m§.§[Z§,true);
                              if(!(_loc2_ && this))
                              {
                                 this.§,`§(this.§90§.sprite,true);
                                 this.§,`§(this.§^!c§.§-!f§(§<!r§.§1N§),true);
                                 if(!_loc2_)
                                 {
                                    addr120:
                                    this.§,`§(this.§>e§.§@!-§,false);
                                 }
                                 §§goto(addr137);
                              }
                              §§push(§-d§.§%k§);
                              if(_loc1_)
                              {
                                 if(§§pop())
                                 {
                                    addr131:
                                    this.§,`§(this.§>e§.§4`§,false);
                                    §§goto(addr137);
                                 }
                                 addr137:
                                 this.§,`§(this.§^!c§.§-!f§(§<!r§.§]a§),true);
                                 §§goto(addr147);
                              }
                              addr147:
                              if(!§!F§.§#!m§)
                              {
                              }
                              return;
                           }
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr51);
               }
               §§goto(addr137);
            }
            §§goto(addr41);
         }
         §§goto(addr137);
      }
      
      private function §,`§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.sprite);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr28:
                     this.sprite.addChild(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr28);
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Point = new Point();
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(§'!V§.§9r§);
               if(_loc4_)
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_ || this)
                     {
                     }
                     addr72:
                     param2 = §§pop();
                     §§goto(addr71);
                  }
                  param1 = §§pop();
                  if(_loc4_)
                  {
                     §§push(param2);
                     if(!(_loc5_ && _loc3_))
                     {
                        addr63:
                        §§push(§§pop() / §'!V§.§9r§);
                        if(!(_loc5_ && param1))
                        {
                           addr71:
                           if(_loc4_)
                           {
                              _loc3_.x = (param1 / § !U§.§#!-§ + this.§7!6§.§-!=§ - § !U§.§@B§ / § !U§.§#!-§) * §8!'§;
                              addr75:
                              if(!_loc5_)
                              {
                                 _loc3_.y = (param2 / § !U§.§#!-§ + this.§7!6§.§-!j§ - § !U§.§'G§ / § !U§.§#!-§) * §8!'§;
                              }
                           }
                           §§goto(addr123);
                        }
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr75);
               }
               §§goto(addr63);
            }
            §§goto(addr72);
         }
         addr123:
         return _loc3_;
      }
      
      public function box2DToScreen(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Point = new Point();
         if(_loc5_)
         {
            _loc3_.x = (param1 / §8!'§ + § !U§.§@B§ / § !U§.§#!-§ - this.§7!6§.§-!=§) * § !U§.§#!-§;
            if(_loc5_ || this)
            {
               _loc3_.y = (param2 / §8!'§ + § !U§.§'G§ / § !U§.§#!-§ - this.§7!6§.§-!j§) * § !U§.§#!-§;
            }
         }
         var _loc4_:Number = Math.max(§'!V§.§9r§,§'!V§.§'A§);
         if(!(_loc6_ && param2))
         {
            _loc3_.x *= _loc4_;
            if(_loc5_)
            {
               addr108:
               _loc3_.y *= _loc4_;
            }
            return _loc3_;
         }
         §§goto(addr108);
      }
      
      public function §%!2§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§"m§.addObject(param1,param2,param3);
         }
      }
      
      public function §6g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,w§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§push(this.§,w§);
                     if(_loc2_ || _loc1_)
                     {
                        addr65:
                        §§pop().visible = true;
                        §§goto(addr88);
                     }
                     §§pop().alpha = 0;
                     if(_loc2_ || _loc1_)
                     {
                     }
                  }
                  §§goto(addr88);
               }
               this.§`!T§ = 0;
               addr88:
               if(_loc2_ || this)
               {
                  §§push(this.§,w§);
               }
               return;
            }
         }
         §§goto(addr65);
      }
      
      public function §!S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]!o§ = new §-!q§(§;J§.§=t§,§;J§.§?z§);
         }
      }
      
      public function §!f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§]!o§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§>e§);
         if(!(_loc2_ && _loc1_))
         {
            if(§§pop())
            {
               addr28:
               this.§>e§.dispose();
               this.§>e§ = null;
            }
            §§push(this.§"m§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr46:
                     this.§"m§.dispose();
                     this.§"m§ = null;
                     if(_loc1_)
                     {
                        this.§[[§ = null;
                        addr55:
                        §§push(this.§[!U§);
                        if(_loc1_ || _loc1_)
                        {
                           if(§§pop())
                           {
                              §§push(this.§[!U§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr74:
                                 if(!§§pop().§2o§)
                                 {
                                 }
                                 §§push(this.§[!U§);
                              }
                              §§pop().clear();
                              this.§[!U§ = null;
                           }
                           §§push(this.§;!&§);
                           if(!(_loc2_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    addr101:
                                    this.§;!&§.clear();
                                    if(_loc1_)
                                    {
                                       this.§;!&§ = null;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr114:
                                          §§push(this.§90§);
                                          if(_loc1_)
                                          {
                                             if(§§pop())
                                             {
                                                addr121:
                                                this.§90§.dispose();
                                                this.§90§ = null;
                                             }
                                             §§push(this.§7!6§);
                                             if(!_loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr134:
                                                      this.§7!6§.clear();
                                                      this.§7!6§ = null;
                                                   }
                                                   addr159:
                                                   loop0:
                                                   while(true)
                                                   {
                                                      §§push(this.sprite);
                                                      while(true)
                                                      {
                                                         if(§§pop().numChildren > 0)
                                                         {
                                                            §§push(this.sprite);
                                                            if(_loc1_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            continue;
                                                         }
                                                         this.§9f§ = 0;
                                                         this.§1z§ = 0;
                                                         this.mReadyToRun = false;
                                                         this.§9`§ = false;
                                                         if(!_loc2_)
                                                         {
                                                            this.§`!T§ = §;J§.§#!n§;
                                                            §§push(this.§&]§);
                                                            if(_loc1_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§push(this.§&]§);
                                                                  if(_loc1_)
                                                                  {
                                                                     addr217:
                                                                     §§push((§§pop() as §@`§).§3Z§);
                                                                     if(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §§push(0);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           addr236:
                                                                           §§push((this.§&]§ as §@`§).§3Z§);
                                                                           §§push(0);
                                                                        }
                                                                        §§pop().y = §§pop();
                                                                        addr238:
                                                                        §§push(this.§,w§);
                                                                        if(_loc1_ || _loc2_)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr252:
                                                                                 this.§,w§.visible = false;
                                                                                 if(!(_loc2_ && this))
                                                                                 {
                                                                                    addr261:
                                                                                    this.§`M§ = null;
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       addr266:
                                                                                       this.§^B§ = null;
                                                                                       §§push(this.§5E§);
                                                                                       if(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§push(this.§5E§);
                                                                                             if(_loc1_ || this)
                                                                                             {
                                                                                                §§pop().removeEventListener(Event.COMPLETE,this.§51§);
                                                                                                if(_loc1_ || this)
                                                                                                {
                                                                                                   addr302:
                                                                                                   this.§5E§.removeEventListener(Event.CANCEL,this.§9I§);
                                                                                                   addr300:
                                                                                                   if(_loc1_ || this)
                                                                                                   {
                                                                                                   }
                                                                                                   addr321:
                                                                                                   addr337:
                                                                                                   §§push(this.§,_§);
                                                                                                   if(!(_loc2_ && _loc2_))
                                                                                                   {
                                                                                                      §§pop().removeEventListener(Event.COMPLETE,this.§>;§);
                                                                                                      §§push(this.§,_§);
                                                                                                   }
                                                                                                   §§pop().removeEventListener(Event.CANCEL,this.§^G§);
                                                                                                   this.§>s§();
                                                                                                   if(_loc1_ || this)
                                                                                                   {
                                                                                                      addr361:
                                                                                                      §§push(§7j§.§else§);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr366:
                                                                                                            §§push(§7j§.§else§);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§pop().color = 0;
                                                                                                      break;
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr321);
                                                                                             }
                                                                                             §§goto(addr302);
                                                                                          }
                                                                                          §§push(this.§,_§);
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   §§goto(addr302);
                                                                                                }
                                                                                                §§goto(addr366);
                                                                                             }
                                                                                             §§goto(addr302);
                                                                                          }
                                                                                          §§goto(addr337);
                                                                                       }
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                    §§goto(addr300);
                                                                                 }
                                                                                 §§goto(addr266);
                                                                              }
                                                                              §§goto(addr302);
                                                                           }
                                                                           §§goto(addr261);
                                                                        }
                                                                        §§goto(addr252);
                                                                     }
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr361);
                                                      }
                                                      addr370:
                                                      §§push(this.§[!S§);
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr382:
                                                            this.§[!S§.removeEventListeners();
                                                         }
                                                         this.mReadyToRun = false;
                                                         return;
                                                      }
                                                      §§goto(addr382);
                                                   }
                                                }
                                                §§push(this.§^!c§);
                                                if(!(_loc2_ && this))
                                                {
                                                   addr156:
                                                   if(§§pop())
                                                   {
                                                      addr148:
                                                      §§push(this.§^!c§);
                                                   }
                                                   if(this.sprite)
                                                   {
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr190);
                                                }
                                                §§pop().dispose();
                                                if(!_loc2_)
                                                {
                                                   this.§^!c§ = null;
                                                }
                                                §§goto(addr156);
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr121);
                                       }
                                       §§goto(addr159);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr114);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr148);
                  }
                  §§goto(addr74);
               }
               §§goto(addr55);
            }
            §§goto(addr46);
         }
         §§goto(addr28);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §8!§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§^B§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr43);
                  }
               }
               return null;
            }
            §§goto(addr43);
         }
         addr43:
         return this.§^B§.toString();
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            §§push(!this.mReadyToRun);
            §§push(!this.mReadyToRun);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && param1))
                  {
                     §§pop();
                     if(_loc4_ || this)
                     {
                        addr47:
                        §§push(!§7j§.§!m§());
                        if(_loc4_ || this)
                        {
                           addr65:
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 addr68:
                                 §§push(0);
                                 if(_loc4_ || param1)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr87:
                                 §§push(this.§`M§.§6e§);
                                 if(_loc4_ || param1)
                                 {
                                    addr108:
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(this.§ !6§(param1,param2,param3));
                                          if(_loc4_ || param1)
                                          {
                                             §§goto(addr123);
                                          }
                                       }
                                       else
                                       {
                                          addr124:
                                          §§push(this.§"!w§(param1,true,param2,param3));
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr108);
                              }
                              addr123:
                              return §§pop();
                           }
                           §§push(this.§`M§);
                           if(!_loc5_)
                           {
                              addr83:
                              §§push(Boolean(§§pop()));
                              if(Boolean(§§pop()))
                              {
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    §§goto(addr87);
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr47);
               }
               §§goto(addr65);
            }
            §§goto(addr83);
         }
         §§goto(addr68);
      }
      
      protected function §"!w§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(this.§3!<§)
            {
               if(_loc6_)
               {
                  §§push(param1);
                  if(!(_loc7_ && param3))
                  {
                     §§push(§§pop() * 0.2);
                     if(!_loc7_)
                     {
                        addr35:
                        §§push(Number(§§pop()));
                        if(_loc6_ || this)
                        {
                           param1 = §§pop();
                           if(_loc6_ || this)
                           {
                              §§push(§7j§.§&t§);
                              if(!(_loc7_ && param2))
                              {
                                 if(§§pop())
                                 {
                                    addr72:
                                    if(!(_loc7_ && param1))
                                    {
                                       addr68:
                                       §§push(§7j§.§&t§);
                                    }
                                    var _loc5_:* = Number(0);
                                    if(_loc6_)
                                    {
                                       §§push(this);
                                       §§push(this.§1z§);
                                       if(_loc6_ || param2)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§1z§ = §§pop();
                                       §§push(param3);
                                       if(!(_loc7_ && param1))
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(this);
                                                §§push(this.§9f§);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() + param1);
                                                }
                                                §§pop().§9f§ = §§pop();
                                                §§push(this.§[!U§.§'!'§(this.§9f§));
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc6_ || param3)
                                                   {
                                                      addr139:
                                                      _loc5_ = §§pop();
                                                      if(_loc6_ || this)
                                                      {
                                                         this.§90§.update(param1,param4);
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            this.§9f§ = _loc5_;
                                                            if(_loc6_ || param1)
                                                            {
                                                               addr187:
                                                               if(param2)
                                                               {
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                  }
                                                                  addr201:
                                                                  return param1;
                                                                  addr200:
                                                               }
                                                               §§goto(addr200);
                                                            }
                                                            this.§6!f§(param1,_loc5_);
                                                            §§goto(addr200);
                                                         }
                                                         else
                                                         {
                                                            addr184:
                                                            this.§9f§ = 0;
                                                            §§goto(addr187);
                                                         }
                                                      }
                                                      §§goto(addr187);
                                                   }
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr139);
                                             }
                                             §§goto(addr201);
                                          }
                                          else
                                          {
                                             this.§"m§.§8I§(param1);
                                          }
                                          §§goto(addr184);
                                       }
                                    }
                                    §§goto(addr187);
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
                  §§goto(addr35);
               }
            }
         }
         §§goto(addr72);
      }
      
      private function § !6§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§!F§.§4!c§);
         if(_loc7_)
         {
            §§push(§§pop() * 1000);
            if(_loc7_)
            {
               addr27:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(!(_loc6_ && param1))
            {
               if(this.§`M§)
               {
                  if(_loc7_)
                  {
                     §§push(param1);
                     if(!_loc6_)
                     {
                        §§push(this.§`M§.speed);
                        if(!_loc6_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc6_ && param1))
                           {
                              addr57:
                              §§push(Number(§§pop()));
                              if(!(_loc6_ && param2))
                              {
                                 param1 = §§pop();
                                 if(!(_loc6_ && param2))
                                 {
                                    addr73:
                                    §§push(this.§1z§);
                                    if(_loc7_)
                                    {
                                       addr77:
                                       §§push(§§pop() + param1);
                                       if(_loc7_)
                                       {
                                          addr81:
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    _loc5_ = §§pop();
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    §§push(this.§1z§ + _loc4_);
                                    while(true)
                                    {
                                       if(§§pop() >= _loc5_)
                                       {
                                          addr157:
                                          if(!_loc6_)
                                          {
                                             §§push(_loc5_);
                                             break;
                                          }
                                          §§push(this.§`M§);
                                       }
                                       else
                                       {
                                          §§push(this.§1z§);
                                          if(!(_loc7_ || param3))
                                          {
                                             break;
                                          }
                                          §§push(§§pop() + _loc4_);
                                          if(_loc6_ && param1)
                                          {
                                             continue;
                                          }
                                          if(§§pop() <= this.§6!2§)
                                          {
                                             continue loop0;
                                          }
                                          §§push(this.§`M§);
                                          if(_loc7_)
                                          {
                                             §§pop().step(this);
                                             §§push(this);
                                             §§push(this.§6!2§);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() + _loc4_);
                                             }
                                             §§pop().§6!2§ = §§pop();
                                             continue loop0;
                                          }
                                       }
                                       §§pop().step(this);
                                       if(_loc7_ || this)
                                       {
                                          §§push(this);
                                          §§push(this.§6!2§);
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(§§pop() + _loc4_);
                                          }
                                          §§pop().§6!2§ = §§pop();
                                          §§goto(addr181);
                                       }
                                       §§goto(addr213);
                                    }
                                    §§push(this.§6!2§ + _loc4_);
                                    if(_loc7_ || param1)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          §§goto(addr157);
                                       }
                                       addr181:
                                       §§push(this.§1z§);
                                       if(!_loc6_)
                                       {
                                          addr186:
                                          if(§§pop() < _loc5_)
                                          {
                                             §§push(this);
                                             §§push(_loc5_);
                                             if(!(_loc6_ && param2))
                                             {
                                                §§push(§§pop() - this.§1z§);
                                             }
                                             §§pop().§"!w§(§§pop(),true,param2,param3);
                                             addr213:
                                             §§push(param1);
                                             if(!(_loc7_ || this))
                                             {
                                                §§goto(addr229);
                                             }
                                          }
                                          §§goto(addr213);
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr186);
                                 }
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr81);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr57);
                  }
                  §§goto(addr73);
               }
               else
               {
                  §§push(this.§"!w§(_loc4_,true,param2,param3));
               }
               addr229:
               return §§pop();
            }
            §§goto(addr73);
         }
         §§goto(addr27);
      }
      
      private function §6!f§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Number = NaN;
         var _loc4_:* = NaN;
         if(_loc5_)
         {
            this.§>e§.update(param1);
            this.§"m§.§[!o§(param1,param2);
            if(!(_loc6_ && _loc3_))
            {
               this.§?!&§();
               §§push(this.§`!T§);
               if(_loc5_ || _loc3_)
               {
                  §§push(§;J§.§#!n§);
                  if(!(_loc6_ && param2))
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc6_ && this))
                        {
                           addr66:
                           §§push(this);
                           §§push(this.§`!T§);
                           if(_loc5_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§`!T§ = §§pop();
                           §§push(§;J§.§#!n§);
                           if(_loc5_)
                           {
                              §§push(§§pop() / 2);
                              if(_loc5_)
                              {
                                 _loc3_ = §§pop();
                                 addr84:
                                 §§push(-Math.abs(this.§`!T§ - _loc3_));
                              }
                              §§push(_loc3_);
                              if(_loc5_ || param1)
                              {
                                 addr110:
                                 §§push(§§pop() + §§pop());
                                 §§push(§;J§.§7!s§);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    addr119:
                                    §§push(§§pop() / _loc3_);
                                 }
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc5_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc4_ = §§pop();
                              §§push(this.§,w§);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    §§push(this.§,w§);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§pop().alpha = _loc4_;
                                       addr142:
                                    }
                                    else
                                    {
                                       addr147:
                                       if(§§pop())
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             addr157:
                                             this.§,w§.visible = false;
                                             addr159:
                                             §§push(this.§]!o§);
                                             if(!_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   addr166:
                                                   if(!this.§]!o§.§77§(this.§7!6§,param1))
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         this.§!f§();
                                                      }
                                                   }
                                                }
                                                this.§7!6§.updateCamera(param1);
                                                this.§[!U§.§3v§();
                                                if(_loc5_ || this)
                                                {
                                                   addr204:
                                                   this.§^!c§.update(param1);
                                                }
                                                return;
                                             }
                                             §§goto(addr166);
                                          }
                                          §§goto(addr204);
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr166);
                     }
                     else
                     {
                        §§push(this.§,w§);
                        if(!_loc6_)
                        {
                           §§goto(addr147);
                        }
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr119);
               }
               §§goto(addr110);
            }
            §§goto(addr66);
         }
         §§goto(addr84);
      }
      
      public function §&! §(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.objects);
            if(!(_loc3_ && param1))
            {
               §§push(param1);
               if(_loc2_)
               {
                  §§push(1000);
                  if(!_loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc3_)
                     {
                        §§pop().§8I§(§§pop());
                        if(_loc2_ || _loc3_)
                        {
                           addr66:
                           §§push(this.objects);
                           §§push(param1);
                           if(_loc2_ || _loc2_)
                           {
                              addr74:
                              §§push(§§pop() * 1000);
                           }
                           §§pop().§5<§(§§pop());
                           if(!_loc2_)
                           {
                           }
                           §§goto(addr81);
                        }
                        this.§9O§();
                        addr81:
                        return;
                     }
                  }
               }
               §§goto(addr74);
            }
         }
         §§goto(addr66);
      }
      
      public function §?!&§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§<!3§ = null;
         if(!(_loc5_ && _loc1_))
         {
            §§push(this.§1z§);
            §§push(this.§8v§);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(!(_loc5_ && _loc2_))
               {
                  if(this.§?2§ != null)
                  {
                     §§goto(addr73);
                  }
                  this.§8v§ = this.§1z§;
               }
            }
            §§goto(addr73);
         }
         addr73:
         for each(_loc1_ in this.§?2§)
         {
            if(_loc4_)
            {
               _loc1_.addTrail();
            }
         }
         if(_loc5_)
         {
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<!3§ = null;
         §§push(this);
         §§push(this.mPigsAnimationTimer1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() - param1);
         }
         §§pop().mPigsAnimationTimer1 = §§pop();
         if(!_loc3_)
         {
            §§push(this.mPigsAnimationTimer1);
            if(!(_loc3_ && _loc3_))
            {
               §§push(0);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§"m§);
                     if(_loc4_ || _loc3_)
                     {
                        §§push(true);
                        if(!_loc3_)
                        {
                           §§push(§§pop().isPigsAlive(§§pop()));
                           if(_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(this.§"m§);
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(true);
                                       if(_loc4_)
                                       {
                                          addr83:
                                          §§push(§§pop().§'2§(§§pop()));
                                          if(!_loc3_)
                                          {
                                             _loc2_ = §§pop();
                                             if(_loc4_ || _loc3_)
                                             {
                                                _loc2_.§0!E§.mTryToScream = §6!N§.§0+§;
                                                if(_loc3_)
                                                {
                                                }
                                                §§goto(addr130);
                                             }
                                             §§push(this);
                                             §§push(500 + Math.random() * 1000);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() + 4000 / (3 + this.§"m§.getPigCount()));
                                             }
                                             §§pop().mPigsAnimationTimer1 = §§pop();
                                             §§goto(addr130);
                                          }
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr180);
                  }
               }
               §§goto(addr130);
            }
            addr130:
            §§push(this);
            §§push(this.mPigsAnimationTimer2);
            if(_loc4_ || param1)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer2 = §§pop();
            if(this.mPigsAnimationTimer2 <= 0)
            {
               addr147:
               §§push(this.§"m§);
               if(!(_loc3_ && this))
               {
                  addr156:
                  §§push(true);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr165:
                     if(§§pop().isPigsAlive(§§pop()))
                     {
                        addr180:
                        _loc2_ = this.§"m§.§'2§(true);
                        addr169:
                        addr168:
                        addr166:
                        if(_loc4_)
                        {
                           _loc2_.§0!E§.mTryToBlink = §6!N§.§>!7§;
                           if(_loc3_)
                           {
                           }
                           §§goto(addr209);
                        }
                        §§push(this);
                        §§push(250 + Math.random() * 500);
                        if(_loc4_)
                        {
                           §§push(§§pop() + 2000 / (3 + this.§"m§.getPigCount()));
                        }
                        §§pop().mPigsAnimationTimer2 = §§pop();
                     }
                  }
                  §§goto(addr169);
               }
               §§goto(addr168);
            }
            addr209:
            return;
         }
         §§goto(addr166);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            §§push(param6);
            if(!_loc7_)
            {
               §§push(-9999);
               if(_loc8_ || this)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc8_ || this)
                     {
                        §§push(§!r§.§4Z§);
                        if(!(_loc7_ && this))
                        {
                           §§push(int(§§pop()));
                           if(!(_loc7_ && this))
                           {
                              addr70:
                              param6 = §§pop();
                              § !p§.addScore(param1,param2);
                              if(_loc8_ || param2)
                              {
                                 addr82:
                                 this.§[!S§.addScore(param1);
                                 if(_loc8_)
                                 {
                                    §§push(Boolean(param3));
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(§§pop());
                                       if(_loc8_)
                                       {
                                          if(§§pop())
                                          {
                                             addr101:
                                             §§pop();
                                             if(!(_loc7_ && param3))
                                             {
                                                addr120:
                                                §§push(param1 > 0);
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr124);
                                                }
                                                §§goto(addr126);
                                             }
                                             §§goto(addr129);
                                          }
                                          addr124:
                                          §§goto(addr125);
                                       }
                                       addr125:
                                       if(§§pop())
                                       {
                                          addr126:
                                          §§pop();
                                          §§goto(addr137);
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             §§goto(addr137);
                                          }
                                       }
                                       addr137:
                                       if(_loc8_)
                                       {
                                          addr129:
                                          §§push(this.§7!F§);
                                          if(!_loc7_)
                                          {
                                             §§push(!§§pop());
                                          }
                                       }
                                       this.§15§(param1.toString(),param4,param5,800,param6,0,0);
                                       return;
                                    }
                                    §§goto(addr101);
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr70);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr70);
               }
               §§goto(addr120);
            }
            §§goto(addr70);
         }
         §§goto(addr82);
      }
      
      public function §15§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            §§push(param5);
            if(_loc9_)
            {
               if(§§pop() == -9999)
               {
                  if(!_loc8_)
                  {
                     §§push(§!r§.§%! §);
                     if(!(_loc8_ && this))
                     {
                        addr55:
                        §§push(int(§§pop()));
                     }
                     param5 = §§pop();
                     if(!(_loc8_ && param3))
                     {
                        addr64:
                        this.§^!c§.§1&§(§!r§.§<s§,§<!r§.§]a§,§!r§.§#!,§,param2,param3,param4,param1,param5,param6,param7);
                     }
                  }
                  return;
               }
               §§goto(addr64);
            }
            §§goto(addr55);
         }
         §§goto(addr64);
      }
      
      public function §=,§(param1:§<!3§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§?2§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     this.§?2§ = new Array();
                     if(_loc3_ || param1)
                     {
                        addr70:
                        this.§?2§.push(param1);
                        addr68:
                     }
                  }
                  return;
               }
               §§goto(addr68);
            }
         }
         §§goto(addr70);
      }
      
      public function §+!9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§90§.§+!9§();
            if(_loc2_)
            {
               this.§"m§.§#!Y§();
               if(_loc2_ || _loc1_)
               {
               }
               §§goto(addr52);
            }
            this.§7!F§ = true;
         }
         addr52:
      }
      
      public function §,!H§(param1:§<!3§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^!c§.§3!G§(§<!r§.§;!M§);
            if(!_loc3_)
            {
               §§goto(addr25);
            }
            §§goto(addr94);
         }
         addr25:
         §§push(this.§?2§);
         if(!(_loc3_ && _loc2_))
         {
            if(§§pop().indexOf(param1) >= 0)
            {
               if(!_loc3_)
               {
                  §§push(this.§?2§);
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr69);
                  }
                  §§goto(addr84);
               }
               §§goto(addr94);
            }
            §§goto(addr84);
         }
         addr69:
         §§pop().splice(this.§?2§.indexOf(param1),1);
         if(_loc2_ || this)
         {
            addr84:
            if(this.§?2§.length == 0)
            {
               if(!(_loc3_ && param1))
               {
                  addr94:
                  this.§?2§ = null;
               }
            }
         }
      }
      
      public function §3!i§(param1:§]K§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            this.§[[§ = this.§"m§.addObject(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
            if(_loc8_)
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr43:
                  §§push(§;§.§ !3§);
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_)
                     {
                     }
                     addr63:
                     §§push(Number(§§pop()));
                  }
                  else
                  {
                     addr60:
                     §§push(Number(§§pop()));
                     if(_loc8_)
                     {
                        §§goto(addr63);
                     }
                  }
               }
               else
               {
                  §§push(§;§.§5B§);
                  if(!(_loc7_ && param3))
                  {
                     §§goto(addr60);
                  }
               }
               var _loc4_:* = §§pop();
               if(_loc8_ || param1)
               {
                  §§push(param1.§]f§);
                  §§push(1);
                  if(!_loc7_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(_loc8_)
                        {
                           §§push(this.§[[§);
                           if(!(_loc7_ && param3))
                           {
                              §§pop().§^!E§(param1.§]f§);
                              addr100:
                              if(!_loc7_)
                              {
                                 addr94:
                                 §§push(this.§[[§);
                              }
                              §§push(param1.§2!@§);
                              if(_loc8_)
                              {
                                 addr115:
                                 if(§§pop() != 0)
                                 {
                                    if(!_loc7_)
                                    {
                                       addr118:
                                       §§push(param1.§2!@§);
                                       if(!_loc7_)
                                       {
                                          _loc4_ = Number(§§pop());
                                          addr124:
                                          §§push(_loc4_);
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(-§§pop());
                                             if(!(_loc7_ && this))
                                             {
                                                addr140:
                                                §§push(§§pop() * param2);
                                                if(_loc8_)
                                                {
                                                   addr153:
                                                   §§push(Number(§§pop() * Math.cos(param3 / (180 / Math.PI))));
                                                }
                                                §§goto(addr153);
                                             }
                                             var _loc5_:* = §§pop();
                                             §§push(_loc4_);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() * param2);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                   if(!_loc7_)
                                                   {
                                                      addr173:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc6_:* = §§pop();
                                                if(!_loc7_)
                                                {
                                                   this.§[[§.§`w§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                   if(_loc8_ || param2)
                                                   {
                                                      this.camera.§'!6§(§ !U§.§?!d§);
                                                      if(_loc8_ || param2)
                                                      {
                                                         addr215:
                                                         §§push(this.§^B§);
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            if(!§§pop())
                                                            {
                                                            }
                                                            §§goto(addr239);
                                                         }
                                                         §§pop().§3!i§(this.§[!U§.§`V§,param1.mX,param1.mY,param2,param3);
                                                      }
                                                   }
                                                   addr239:
                                                   if(!_loc7_)
                                                   {
                                                      §§push(this.§^B§);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr215);
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr153);
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr153);
                           }
                           §§pop().§0!E§.§,y§();
                           if(!_loc7_)
                           {
                              §§goto(addr100);
                           }
                           §§goto(addr118);
                        }
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr115);
               }
               §§goto(addr94);
            }
         }
         §§goto(addr43);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§9`§ = true;
         }
      }
      
      private function §9O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§9`§);
         if(_loc2_ || _loc1_)
         {
            if(!§§pop())
            {
               return;
            }
            this.§9`§ = false;
            if(!_loc1_)
            {
               §§push(this.activeObject);
               if(!_loc1_)
               {
                  §§push(§§pop() is §7!U§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc1_ && this))
                        {
                           §§pop();
                           §§push(this.activeObject);
                           if(_loc2_ || _loc1_)
                           {
                              §§push((§§pop() as §7!U§).§6!i§);
                              if(_loc2_)
                              {
                                 §§push(!§§pop());
                                 if(_loc2_ || this)
                                 {
                                    addr90:
                                    if(§§pop())
                                    {
                                       addr93:
                                       if(this.activeObject.activateSpecialPower(this.levelObjects))
                                       {
                                          if(_loc2_ || this)
                                          {
                                             this.§7s§ = true;
                                             if(_loc2_ || _loc2_)
                                             {
                                                addr128:
                                                §§push(this.§^B§);
                                                if(_loc2_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc1_ && this))
                                                      {
                                                         addr142:
                                                         this.§^B§.§=!`§(this.§[!U§.§`V§);
                                                      }
                                                   }
                                                   return;
                                                }
                                                §§goto(addr142);
                                                addr124:
                                             }
                                             §§goto(addr142);
                                          }
                                       }
                                       §§goto(addr124);
                                    }
                                    else
                                    {
                                       this.§"m§.§,4§();
                                    }
                                    §§goto(addr128);
                                 }
                              }
                           }
                           §§goto(addr93);
                        }
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr128);
         }
         §§goto(addr90);
      }
      
      public function §=B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§"m§.§=B§();
         }
      }
      
      public function §6T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"m§.§6!E§();
         }
      }
      
      public function getCurrentLevelData() : §2! §
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§2! § = new §2! §();
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.§9>§ = this.§4!o§.§9>§;
            _loc1_.§6!H§ = this.§4!o§.§6!H§;
            if(!(_loc3_ && this))
            {
               this.§7!6§.writeCameraInformation(_loc1_);
               addr54:
            }
            this.§"m§.§9!-§(_loc1_);
            if(_loc2_ || _loc1_)
            {
               this.§90§.§8x§(_loc1_);
               if(_loc2_ || _loc3_)
               {
                  addr90:
                  _loc1_.theme = this.§>e§.§%N§();
               }
               return _loc1_;
            }
            §§goto(addr90);
         }
         §§goto(addr54);
      }
      
      public function § h§() : int
      {
         return this.§4!o§.§6!H§;
      }
      
      public function §#u§() : int
      {
         return this.§4!o§.§9>§;
      }
      
      public function §%J§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§4!o§.§6!H§ = param1;
         }
      }
      
      public function §^!5§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§4!o§.§9>§ = param1;
         }
      }
      
      public function §,!Y§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§?1§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr37:
                     this.§?1§.§4!g§(param1,param2);
                     if(_loc3_)
                     {
                        addr42:
                        §§push(this.§7!6§);
                        if(!_loc4_)
                        {
                           if(!§§pop())
                           {
                           }
                           §§goto(addr58);
                        }
                        §§pop().updateCamera(0);
                     }
                  }
                  addr58:
                  if(_loc3_ || _loc3_)
                  {
                     §§push(this.§7!6§);
                  }
                  return;
               }
               §§goto(addr42);
            }
         }
         §§goto(addr37);
      }
      
      public function get §0=§() : §2! §
      {
         return this.§4!o§;
      }
      
      public function get levelObjects() : §'!Y§
      {
         return this.§"m§;
      }
      
      protected function get starling() : §7j§
      {
         return this.§>-§;
      }
      
      public function get §9R§() : int
      {
         return §<@§;
      }
   }
}
