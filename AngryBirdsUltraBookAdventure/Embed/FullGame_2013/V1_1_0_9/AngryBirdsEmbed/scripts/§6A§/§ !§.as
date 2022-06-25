package §6A§
{
   import §!Z§.§11§;
   import §!j§.§;[§;
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §+!B§.§<!M§;
   import §1!-§.§5>§;
   import §1!-§.§9!§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §2!,§.§8E§;
   import §2!,§.§@!2§;
   import §2k§.§`n§;
   import §3a§.§7!+§;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §5!L§.§=w§;
   import §9K§.§"!?§;
   import §9K§.§5!H§;
   import §9K§.§`!H§;
   import §=!0§.§>I§;
   import §>!7§.§;b§;
   import §>k§.§5$§;
   import §^!A§.§;!%§;
   import §^!A§.§@H§;
   import §^!A§.§[!J§;
   import §^!A§.§^`§;
   import §^G§.§;u§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § !§
   {
      
      private static const §#M§:int = 20;
      
      public static const §,!=§:Number = §=w§.§9!#§;
      
      public static const §+;§:Number;
      
      public static const §`J§:Number = 0.05;
      
      public static const §"y§:Number;
      
      public static const §`9§:Number;
      
      public static const §6]§:§<!M§;
      
      public static var §2!B§:Number = 1;
      
      protected static var §[!6§:String = "BACKGROUND_BLUE_GRASS";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §+;§ = §=w§.§0i§;
            if(!_loc1_)
            {
               §`J§ = 1 / 20;
               if(!_loc1_)
               {
                  §"y§ = §=w§.§0i§ * §`J§;
                  if(!_loc1_)
                  {
                     §§push(§§findproperty(§`9§));
                     §§push(§,!=§);
                     if(!(_loc1_ && § !§))
                     {
                        §§push(§§pop() * §`J§);
                     }
                     §§pop().§`9§ = §§pop();
                     addr79:
                     §6]§ = new §<!M§(13 - 3);
                     §2!B§ = 1;
                     if(!_loc1_)
                     {
                        §[!6§ = §@Z§.§try§;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr79);
      }
      
      protected var §4! §:§@H§;
      
      private var §3o§:§;!%§;
      
      private var §4j§:Array = null;
      
      protected var §,R§:§;[§;
      
      public var §'O§:§"!D§;
      
      protected var §"Y§:§"6§;
      
      protected var §90§:§`n§;
      
      protected var §2E§:§4!C§;
      
      protected var §^D§:§2!H§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §>&§:Boolean = false;
      
      protected var §!!?§:Boolean = false;
      
      protected var §%!G§:Boolean = false;
      
      public var §;!6§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §3!3§:Number;
      
      public var §&!?§:Number;
      
      private var §>R§:Number;
      
      public var §7!J§:§9!§;
      
      public var §?<§:Boolean = false;
      
      private var §3n§:§%!E§;
      
      private var §!#§:Sprite;
      
      protected var §]M§:§@Z§;
      
      protected var §+1§:§;b§ = null;
      
      private var §2!I§:EventDispatcher;
      
      private var §"!0§:Array;
      
      private var §0C§:Array;
      
      protected var §,!0§:§>I§;
      
      private var §3c§:§5$§;
      
      protected var §-M§:§5!H§;
      
      protected var §1§:§"!?§;
      
      private var § <§:§`!H§;
      
      private var §"=§:§`!H§;
      
      private var §#!G§:§`!H§;
      
      private var §]!M§:Stage;
      
      private var §]+§:§5!F§;
      
      protected var set:§11§;
      
      protected var §4A§:§11§;
      
      protected var §`]§:Number = 0.0;
      
      protected var §]=§:String;
      
      private var §]!D§:Boolean;
      
      protected var §%!N§:Boolean;
      
      protected var § [§:uint = 1.417339207E9;
      
      public var §3M§:Boolean;
      
      public function § !§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            this.§0C§ = [];
            super();
            this.§2!I§ = new EventDispatcher();
            this.§7!J§ = new §9!§();
            if(!_loc4_)
            {
               this.§]!M§ = param1;
               this.§-M§ = §5!H§.§@6§;
               if(!_loc4_)
               {
                  this.§1§ = this.initAnimationManager(this.§-M§);
                  if(!_loc4_)
                  {
                     this.§ <§ = this.initThemeGraphicsManager();
                     addr59:
                     this.§"=§ = this.§&c§();
                  }
                  this.§#!G§ = this.§-v§();
               }
               §§goto(addr59);
            }
            var _loc2_:Stage3D = param1.stage3Ds[0];
            if(!(_loc4_ && _loc2_))
            {
               this.§,!0§ = new §>I§(§%!E§,param1,new Rectangle(0,0,§=w§.§9!#§,§=w§.§0i§),_loc2_);
               if(!_loc4_)
               {
                  addr107:
                  §=w§.§ !H§.addEventListener(Event.ENTER_FRAME,this.§,!0§.onEnterFrame);
                  if(_loc3_ || _loc2_)
                  {
                     _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§@!C§,false,0,true);
                     §§push(this.§,!0§);
                     if(!_loc4_)
                     {
                        §§push(false);
                        if(_loc3_)
                        {
                           §§pop().§?I§ = §§pop();
                           addr149:
                           §§push(this.§,!0§);
                           if(_loc3_)
                           {
                              §§goto(addr154);
                           }
                           §§goto(addr177);
                        }
                        addr154:
                        §§pop().enableErrorChecking = false;
                        §§goto(addr153);
                     }
                     addr153:
                     if(_loc3_ || this)
                     {
                        addr162:
                        §§push(this.§,!0§);
                        if(_loc3_)
                        {
                           §§pop().§"?§ = 2;
                           if(_loc3_ || _loc3_)
                           {
                              addr177:
                              this.§,!0§.§?l§();
                           }
                        }
                        §§goto(addr177);
                     }
                     return;
                  }
                  §§goto(addr162);
               }
               §§goto(addr149);
            }
            §§goto(addr107);
         }
         §§goto(addr59);
      }
      
      public static function §7F§(param1:§;!%§, param2:§;!%§) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1.§return§);
         if(_loc6_)
         {
            §§push(§§pop() - param2.§return§);
            if(_loc6_ || § !§)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.§[n§);
         if(_loc6_)
         {
            §§push(§§pop() - param2.§[n§);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         return §4!%§(_loc3_,_loc4_);
      }
      
      public static function §4!%§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§!#§);
            if(!_loc1_)
            {
               §§push(!§§pop());
               if(!_loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr50:
                        §§pop();
                        if(_loc2_ || this)
                        {
                           §§goto(addr61);
                        }
                        §§goto(addr69);
                     }
                  }
                  §§goto(addr61);
               }
               §§goto(addr50);
            }
            addr61:
            §§goto(addr58);
         }
         addr58:
         if(this.§^m§)
         {
            if(!(_loc1_ && _loc1_))
            {
               addr69:
               this.§!#§ = this.§3n§.§1-§;
            }
         }
         return this.§!#§;
      }
      
      public function get §^m§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§3n§);
            if(!(_loc2_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     this.§3n§ = this.§,!0§.§0o§ as §%!E§;
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr64);
                     }
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr73);
         }
         addr64:
         §§push(this.§3n§);
         if(_loc1_ || _loc1_)
         {
            addr73:
            §§pop().§3!D§ = false;
            addr75:
            §§push(this.§3n§);
         }
         return §§pop();
      }
      
      private function get §`5§() : DisplayObject
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§^m§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§push(this.§^m§);
                  }
                  else
                  {
                     §§goto(addr52);
                  }
               }
               §§goto(addr52);
            }
            return (§§pop() as §%!E§).§`5§;
         }
         addr52:
         return null;
      }
      
      public function get §;!L§() : §"!?§
      {
         return this.§1§;
      }
      
      public function get textureManager() : §5!H§
      {
         return this.§-M§;
      }
      
      public function get camera() : §`n§
      {
         return this.§90§;
      }
      
      public function get objects() : §@H§
      {
         return this.§4! §;
      }
      
      public function get particles() : §2!H§
      {
         return this.§^D§;
      }
      
      public function get background() : §;[§
      {
         return this.§,R§;
      }
      
      public function get slingshot() : §4!C§
      {
         return this.§2E§;
      }
      
      public function get activeObject() : §;!%§
      {
         return this.§3o§;
      }
      
      public function get §%>§() : §"6§
      {
         return this.§"Y§;
      }
      
      public function get stage() : Stage
      {
         return this.§]!M§;
      }
      
      public function get §&!3§() : §`!H§
      {
         return this.§#!G§;
      }
      
      protected function get §-!<§() : §`!H§
      {
         return this.§ <§;
      }
      
      public function set activeObject(param1:§;!%§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3o§ = param1;
         }
      }
      
      public function set §null§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§%!N§ = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§3c§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr38:
                     this.§3c§.dispose();
                     if(!(_loc1_ && _loc1_))
                     {
                        addr46:
                        §§push(this.§-M§);
                        if(!_loc1_)
                        {
                           if(§§pop())
                           {
                              addr53:
                              this.§-M§.dispose();
                              if(_loc2_ || _loc1_)
                              {
                                 addr61:
                                 §§push(this.§ <§);
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       §§push(§§pop());
                                       if(!_loc1_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                §§pop();
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§push(this.§ <§);
                                                   if(_loc2_)
                                                   {
                                                      §§push(§§pop().textureManager);
                                                      if(!(_loc1_ && this))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc1_)
                                                         {
                                                            addr117:
                                                            if(§§pop())
                                                            {
                                                               addr120:
                                                               §§push(this.§ <§.textureManager);
                                                               if(!(_loc1_ && _loc1_))
                                                               {
                                                                  addr128:
                                                                  §§pop().dispose();
                                                                  addr129:
                                                                  §§push(this.§#!G§);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc2_)
                                                                     {
                                                                        addr136:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc2_ || _loc2_)
                                                                           {
                                                                              addr145:
                                                                              §§pop();
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(this.§#!G§);
                                                                                 if(!(_loc1_ && _loc1_))
                                                                                 {
                                                                                    addr167:
                                                                                    §§push(§§pop().textureManager);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr171:
                                                                                       addr170:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr175:
                                                                                          this.§#!G§.textureManager.dispose();
                                                                                          addr174:
                                                                                          addr172:
                                                                                          if(_loc1_ && _loc2_)
                                                                                          {
                                                                                          }
                                                                                          addr192:
                                                                                          this.§,!0§.dispose();
                                                                                          addr193:
                                                                                          return;
                                                                                          addr190:
                                                                                       }
                                                                                       §§push(this.§,!0§);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§goto(addr190);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr193);
                                                                                       }
                                                                                       §§goto(addr192);
                                                                                    }
                                                                                    §§goto(addr175);
                                                                                 }
                                                                                 §§goto(addr174);
                                                                              }
                                                                              §§goto(addr172);
                                                                           }
                                                                        }
                                                                        §§goto(addr171);
                                                                     }
                                                                     §§goto(addr145);
                                                                  }
                                                                  §§goto(addr167);
                                                               }
                                                               §§goto(addr170);
                                                            }
                                                            §§goto(addr129);
                                                         }
                                                         §§goto(addr171);
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   §§goto(addr120);
                                                }
                                                §§goto(addr175);
                                             }
                                             §§goto(addr136);
                                          }
                                          §§goto(addr117);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr120);
                              }
                              §§goto(addr128);
                           }
                           §§goto(addr61);
                        }
                     }
                     §§goto(addr53);
                  }
                  §§goto(addr175);
               }
               §§goto(addr46);
            }
            §§goto(addr38);
         }
         §§goto(addr175);
      }
      
      protected function initThemeGraphicsManager() : §`!H§
      {
         return null;
      }
      
      protected function §&c§() : §`!H§
      {
         return null;
      }
      
      protected function §-v§() : §`!H§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§5!H§) : §"!?§
      {
         return new §"!?§(param1);
      }
      
      public function §7!E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§>I§.§`S§);
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     if(param1)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           §§push(§>I§.§`S§);
                           if(_loc2_ || _loc3_)
                           {
                              §§pop().start();
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr81:
                              }
                           }
                           else
                           {
                              addr86:
                              §§pop().stop();
                              if(_loc2_ || _loc3_)
                              {
                                 addr96:
                                 §>I§.§`S§.color = 0;
                              }
                           }
                        }
                        §§goto(addr81);
                     }
                     else
                     {
                        §§push(§>I§.§`S§);
                        if(!_loc3_)
                        {
                           §§goto(addr86);
                        }
                        §§goto(addr96);
                     }
                  }
               }
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr81);
      }
      
      public function §&!B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.sprite);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     addr32:
                     this.sprite.visible = param1;
                  }
               }
               return;
            }
         }
         §§goto(addr32);
      }
      
      public function § 5§() : §;b§
      {
         return this.§+1§;
      }
      
      public function §>@§(param1:§;b§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§+1§);
            if(_loc2_ || this)
            {
               if(§§pop() != null)
               {
                  if(!_loc3_)
                  {
                     §§push(this.§+1§);
                     if(!(_loc3_ && this))
                     {
                        §§pop().removeEventListeners();
                        if(!_loc3_)
                        {
                           addr68:
                           this.§+1§ = param1;
                           if(_loc2_)
                           {
                              if(this.mReadyToRun)
                              {
                                 if(_loc2_)
                                 {
                                    addr80:
                                    this.§+1§.addEventListeners();
                                    addr78:
                                 }
                              }
                              return;
                           }
                        }
                        §§goto(addr78);
                     }
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr80);
         }
         §§goto(addr68);
      }
      
      public function §>X§() : §11§
      {
         return this.set;
      }
      
      public function §5!B§(param1:§5$§, param2:Array, param3:Function) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§3c§ = param1;
         }
         §§push(this.§3c§.§'!2§);
         if(_loc7_ || param2)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         var _loc5_:int = 0;
         do
         {
            if(_loc5_ < _loc4_)
            {
               continue;
            }
            if(_loc7_)
            {
               if(param3 != null)
               {
                  if(!(_loc6_ && param1))
                  {
                     this.§2!I§.addEventListener(Event.INIT,param3);
                     if(!(_loc6_ && param1))
                     {
                        addr96:
                        this.§0C§.push(param3);
                        if(_loc7_)
                        {
                           break;
                        }
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr96);
               }
               break;
            }
            §§goto(addr96);
         }
         while(this.§-M§.§%R§(this.§3c§.§"&§(_loc5_)), _loc5_++, !_loc6_);
         
         if(this.§23§(param2))
         {
            §§goto(addr106);
         }
         addr106:
         this.§^i§();
      }
      
      private function §23§(param1:Array) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         §§push(this.§-M§);
         if(_loc4_ || this)
         {
            §§push(§§pop().§1#§());
            if(_loc4_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(this.§-M§);
                     if(!_loc5_)
                     {
                        §§push(§§pop().§`!M§);
                        if(_loc4_)
                        {
                           §§push(1000);
                           if(!_loc5_)
                           {
                              §§push(§§pop() / §§pop());
                              if(_loc4_ || param1)
                              {
                                 §§push(int(§§pop()));
                                 if(!_loc5_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc4_)
                                    {
                                       addr87:
                                       §§push(this.§-M§.§,G§);
                                       if(!_loc5_)
                                       {
                                          addr85:
                                          §§push(§§pop() / 1000);
                                       }
                                       _loc3_ = §§pop();
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(§7!+§);
                                          §§push("\n\nMain texture manager memory usage:\n   textures ");
                                          if(!_loc5_)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(" kilobytes\n   bitmaps ");
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc5_)
                                                      {
                                                         addr122:
                                                         addr121:
                                                         §§push(§§pop() + _loc3_);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            addr140:
                                                            §§push(§§pop() + " kilobytes\n\n");
                                                         }
                                                         §§pop().log(§§pop());
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            addr150:
                                                            this.initializeAnimations(param1);
                                                            if(_loc5_ && param1)
                                                            {
                                                               addr164:
                                                               this.§"!0§ = param1.concat();
                                                            }
                                                            §§goto(addr169);
                                                         }
                                                         §§push(true);
                                                         if(!_loc5_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr169:
                                                         return false;
                                                      }
                                                   }
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr122);
                                          }
                                          §§goto(addr121);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr164);
                                 }
                              }
                              §§goto(addr87);
                              §§push(int(§§pop()));
                           }
                           §§goto(addr85);
                        }
                     }
                  }
                  §§goto(addr87);
               }
            }
            §§goto(addr164);
         }
         §§goto(addr87);
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§1§.initializeAnimations(param1);
         }
      }
      
      private function §@!C§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         this.§-M§.§]b§();
         if(_loc3_ || this)
         {
            §§push(this.§-!<§);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || this)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(this.§-!<§);
                              if(!(_loc2_ && this))
                              {
                                 addr62:
                                 §§push(§§pop().textureManager);
                                 if(_loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc3_ || param1)
                                    {
                                       addr73:
                                       if(§§pop())
                                       {
                                          addr76:
                                          §§push(this.§-!<§.textureManager);
                                          if(!(_loc2_ && param1))
                                          {
                                             §§pop().§]b§();
                                             addr85:
                                             §§push(this.§&!3§);
                                             if(!_loc2_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr97:
                                                   §§push(§§pop());
                                                   if(_loc3_)
                                                   {
                                                      addr100:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            addr103:
                                                            §§pop();
                                                            if(_loc3_)
                                                            {
                                                               §§push(this.§&!3§);
                                                               if(!(_loc2_ && _loc3_))
                                                               {
                                                                  addr115:
                                                                  §§push(§§pop().textureManager);
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     addr124:
                                                                     if(§§pop())
                                                                     {
                                                                        addr137:
                                                                        §§push(this.§&!3§.textureManager);
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr140:
                                                                           §§pop().§]b§();
                                                                           if(!(_loc2_ && param1))
                                                                           {
                                                                              addr148:
                                                                              if(this.§"!0§)
                                                                              {
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    addr158:
                                                                                    this.§23§(this.§"!0§);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       addr164:
                                                                                       this.§"!0§ = null;
                                                                                       if(!(_loc2_ && this))
                                                                                       {
                                                                                          this.§^i§();
                                                                                          if(_loc3_ || _loc2_)
                                                                                          {
                                                                                             addr183:
                                                                                             §§push(this.§+1§);
                                                                                             if(_loc3_ || this)
                                                                                             {
                                                                                                addr194:
                                                                                                §§push(§§pop() != null);
                                                                                                if(!(_loc2_ && this))
                                                                                                {
                                                                                                   addr203:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr207:
                                                                                                         §§push(this.mReadyToRun);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr212:
                                                                                                            addr211:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr215:
                                                                                                               this.§+1§.addEventListeners();
                                                                                                            }
                                                                                                            §§push(this.§ <§);
                                                                                                            if(_loc3_ || param1)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr282);
                                                                                                               }
                                                                                                               addr231:
                                                                                                               §§push(this.§#!G§);
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr236:
                                                                                                                     §§push(this.§#!G§);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().textureManager);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           addr253:
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              if(_loc3_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §§push(this.§#!G§);
                                                                                                                                 if(_loc3_ || _loc3_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr281:
                                                                                                                                 §§pop().§1#§();
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr282);
                                                                                                                        }
                                                                                                                        §§goto(addr271);
                                                                                                                     }
                                                                                                                     addr271:
                                                                                                                     §§pop().§]b§();
                                                                                                                     if(_loc3_ || param1)
                                                                                                                     {
                                                                                                                        addr279:
                                                                                                                        §§goto(addr281);
                                                                                                                        §§push(this.§#!G§);
                                                                                                                     }
                                                                                                                     addr282:
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§push(this.§ <§);
                                                                                                                     }
                                                                                                                     return;
                                                                                                                     §§push(§§pop().textureManager);
                                                                                                                  }
                                                                                                                  §§goto(addr282);
                                                                                                               }
                                                                                                               §§goto(addr281);
                                                                                                            }
                                                                                                            §§pop().§1#§();
                                                                                                            §§goto(addr231);
                                                                                                         }
                                                                                                         §§goto(addr212);
                                                                                                      }
                                                                                                      §§goto(addr279);
                                                                                                   }
                                                                                                   §§goto(addr212);
                                                                                                }
                                                                                                §§goto(addr211);
                                                                                             }
                                                                                             §§goto(addr215);
                                                                                          }
                                                                                          §§goto(addr207);
                                                                                       }
                                                                                       §§goto(addr282);
                                                                                    }
                                                                                    §§goto(addr236);
                                                                                 }
                                                                                 §§goto(addr215);
                                                                              }
                                                                           }
                                                                           §§goto(addr183);
                                                                        }
                                                                        §§goto(addr271);
                                                                     }
                                                                     §§goto(addr148);
                                                                  }
                                                                  §§goto(addr140);
                                                               }
                                                               §§goto(addr137);
                                                            }
                                                            §§goto(addr164);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   §§goto(addr203);
                                                }
                                                §§goto(addr194);
                                             }
                                             §§goto(addr115);
                                          }
                                          §§goto(addr253);
                                       }
                                       §§goto(addr85);
                                    }
                                    §§goto(addr97);
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr76);
                           }
                           §§goto(addr231);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr100);
               }
               §§goto(addr203);
            }
            §§goto(addr62);
         }
         §§goto(addr158);
      }
      
      private function §^i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2!I§.dispatchEvent(new Event(Event.INIT));
            if(!_loc1_)
            {
               addr28:
               this.§-!§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      private function §-!§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Function = null;
         for each(_loc1_ in this.§0C§)
         {
            if(!_loc4_)
            {
               this.§2!I§.removeEventListener(Event.INIT,_loc1_);
            }
         }
         if(!(_loc4_ && this))
         {
            this.§0C§ = [];
         }
      }
      
      public function init(param1:§@Z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.mReadyToRun);
         if(_loc3_ || _loc2_)
         {
            if(§§pop())
            {
               if(_loc3_ || _loc3_)
               {
                  this.clearLevel();
                  if(_loc3_)
                  {
                     addr38:
                     this.§"Y§ = new §"6§(this,param1);
                     if(!_loc2_)
                     {
                        addr46:
                        this.§90§ = this.initLevelCamera(param1);
                        if(_loc3_ || _loc2_)
                        {
                           this.§3!3§ = 0;
                           this.§&!?§ = 0;
                           this.§>R§ = 0;
                           this.§]!D§ = false;
                           this.mReadyToRun = false;
                           this.§>&§ = false;
                           this.mPigsAnimationTimer1 = 2000;
                           if(!(_loc2_ && this))
                           {
                              this.mPigsAnimationTimer2 = 1000;
                              if(!(_loc2_ && param1))
                              {
                                 addr106:
                                 §[!6§ = param1.theme;
                                 if(_loc3_)
                                 {
                                    addr112:
                                    this.§]M§ = param1;
                                    if(_loc3_)
                                    {
                                       addr117:
                                       this.§!!?§ = this.§!O§(param1.theme);
                                       this.§%!G§ = this.§%7§(param1.theme);
                                       §§push(this.§!!?§);
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   addr155:
                                                   §§pop();
                                                   §§push(this.§%!G§);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      addr175:
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                §§goto(addr175);
                                             }
                                             if(§§pop())
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   this.initialize(param1);
                                                   addr194:
                                                   this.§get §();
                                                   if(!_loc2_)
                                                   {
                                                      addr198:
                                                      §0!'§.init();
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                this.§1l§(param1.theme);
                                                if(!_loc2_)
                                                {
                                                   §§goto(addr194);
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr175);
                                    }
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr198);
                     }
                     §§goto(addr117);
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr38);
         }
         §§goto(addr155);
      }
      
      protected function §get §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.set = new §11§(§[4§.§"!>§);
         }
      }
      
      protected function §!O§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§ <§)
            {
               if(_loc3_)
               {
                  §§push(false);
                  if(_loc3_ || _loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr33:
                  §§push(true);
               }
               return §§pop();
            }
         }
         §§goto(addr33);
      }
      
      protected function §%7§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§8E§ = null;
         if(_loc4_)
         {
            if(this.§"=§)
            {
               addr25:
               _loc2_ = §@!2§.§"@§(param1);
               if(!(_loc3_ && param1))
               {
                  if(_loc2_)
                  {
                     if(_loc4_)
                     {
                        §§push(Boolean(_loc2_.final));
                        if(!(_loc3_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 addr75:
                                 §§pop();
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(this.§"=§.§[<§(_loc2_.final));
                                    if(_loc4_)
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc3_ && this))
                                       {
                                          §§goto(addr98);
                                       }
                                    }
                                    §§goto(addr98);
                                 }
                                 §§goto(addr101);
                              }
                              return §§pop();
                           }
                           addr98:
                           if(§§pop())
                           {
                              if(!_loc3_)
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
                        §§goto(addr75);
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr101);
            }
            addr103:
            return true;
         }
         §§goto(addr25);
      }
      
      protected function §1l§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§8E§ = null;
         §§push(this.§ <§);
         if(_loc4_ || this)
         {
            §§push(Boolean(§§pop()));
            §§push(Boolean(§§pop()));
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(this.§!O§(param1));
                  if(!_loc3_)
                  {
                     addr46:
                     if(!§§pop())
                     {
                        §§push(this.§ <§);
                        if(!(_loc3_ && this))
                        {
                           §§pop().removeEventListener(Event.COMPLETE,this.§4'§);
                           if(_loc4_ || this)
                           {
                              §§push(this.§ <§);
                              if(_loc4_)
                              {
                                 addr72:
                                 §§pop().removeEventListener(Event.CANCEL,this.§]2§);
                                 if(_loc4_)
                                 {
                                    §§push(this.§ <§);
                                    if(_loc4_)
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§4'§);
                                       §§push(this.§ <§);
                                       if(_loc4_)
                                       {
                                          §§pop().addEventListener(Event.CANCEL,this.§]2§);
                                          addr140:
                                          if(_loc4_ || param1)
                                          {
                                             §§push(this.§ <§);
                                          }
                                          if(!this.§%7§(param1))
                                          {
                                             §§push(this.§"=§);
                                             if(_loc4_)
                                             {
                                                §§pop().removeEventListener(Event.COMPLETE,this.§'!&§);
                                                §§push(this.§"=§);
                                                if(!(_loc3_ && this))
                                                {
                                                   §§pop().removeEventListener(Event.CANCEL,this.§,!#§);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      addr175:
                                                      §§push(this.§"=§);
                                                      if(!_loc3_)
                                                      {
                                                         addr189:
                                                         §§pop().addEventListener(Event.COMPLETE,this.§'!&§);
                                                      }
                                                      §§goto(addr196);
                                                   }
                                                   addr196:
                                                   §§pop().addEventListener(Event.CANCEL,this.§,!#§);
                                                   _loc2_ = §@!2§.§"@§(param1);
                                                   if(_loc4_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            this.§"=§.§9I§(_loc2_.final);
                                                         }
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   addr217:
                                                   return;
                                                   §§push(this.§"=§);
                                                }
                                                §§goto(addr189);
                                             }
                                             §§goto(addr196);
                                          }
                                          §§goto(addr217);
                                       }
                                       §§pop().§9I§(param1);
                                       if(_loc4_ || this)
                                       {
                                          addr125:
                                          §§push(this.§"=§);
                                          if(!_loc3_)
                                          {
                                             addr131:
                                             §§push(Boolean(§§pop()));
                                             if(Boolean(§§pop()))
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   addr139:
                                                   §§pop();
                                                }
                                             }
                                             §§goto(addr140);
                                          }
                                          §§goto(addr189);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr139);
               }
               §§goto(addr46);
            }
            §§goto(addr131);
         }
         §§goto(addr72);
      }
      
      private function §4'§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§ <§);
         if(_loc2_ || _loc2_)
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§4'§);
            if(_loc2_ || param1)
            {
               addr49:
               this.§ <§.removeEventListener(Event.CANCEL,this.§]2§);
               this.§!!?§ = true;
               if(!(_loc3_ && this))
               {
                  §§push(this.§!!?§);
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc3_ && _loc3_))
                     {
                        §§goto(addr86);
                     }
                     §§goto(addr95);
                  }
                  addr86:
                  if(§§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        addr95:
                        §§pop();
                        addr96:
                        §§push(this.§%!G§);
                        if(_loc3_)
                        {
                        }
                        §§goto(addr101);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  addr101:
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr104:
                        this.initialize(this.§]M§);
                     }
                  }
                  return;
               }
               §§goto(addr104);
            }
            §§goto(addr96);
         }
         §§goto(addr49);
      }
      
      private function §]2§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§ <§);
            if(!(_loc3_ && this))
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§4'§);
               if(_loc2_ || param1)
               {
                  §§goto(addr61);
               }
               §§goto(addr68);
            }
            addr61:
            this.§ <§.removeEventListener(Event.CANCEL,this.§]2§);
            §§goto(addr59);
         }
         addr59:
         if(_loc2_)
         {
            addr68:
            this.§>&§ = true;
         }
      }
      
      private function §'!&§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§ <§);
            if(_loc3_)
            {
               §§pop().removeEventListener(Event.COMPLETE,this.§'!&§);
               §§push(this.§ <§);
            }
            §§pop().removeEventListener(Event.CANCEL,this.§,!#§);
            if(_loc3_)
            {
               this.§%!G§ = true;
               §§push(this.§!!?§);
               if(!_loc2_)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc2_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              §§push(this.§%!G§);
                              if(_loc3_ || _loc2_)
                              {
                              }
                              §§goto(addr99);
                           }
                           this.initialize(this.§]M§);
                           addr99:
                           §§goto(addr98);
                        }
                        addr98:
                        if(§§pop())
                        {
                        }
                        return;
                     }
                  }
               }
               §§goto(addr99);
            }
         }
         §§goto(addr99);
      }
      
      private function §,!#§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§ <§);
         if(!(_loc2_ && this))
         {
            §§pop().removeEventListener(Event.COMPLETE,this.§'!&§);
            if(!_loc2_)
            {
               this.§ <§.removeEventListener(Event.CANCEL,this.§,!#§);
               this.§%!G§ = true;
               §§goto(addr35);
            }
            §§goto(addr55);
         }
         addr35:
         if(!_loc2_)
         {
            addr55:
            §§push(this.§!!?§);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || this)
               {
                  §§goto(addr77);
               }
               §§goto(addr86);
            }
            addr77:
            if(§§pop())
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr86:
                  §§pop();
                  if(_loc3_)
                  {
                     §§push(this.§%!G§);
                     if(_loc3_ || this)
                     {
                     }
                     §§goto(addr99);
                  }
                  this.initialize(this.§]M§);
                  §§goto(addr99);
               }
            }
            §§goto(addr99);
         }
         addr99:
         if(§§pop())
         {
         }
      }
      
      public function get backgroundTextureManager() : §5!H§
      {
         return this.§-M§;
      }
      
      protected function initialize(param1:§@Z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!N§ = false;
            this.§3M§ = false;
            if(_loc3_)
            {
               §§push(§>I§.§2!@§);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     addr39:
                     §>I§.§2!@§.speed = 1;
                     if(!_loc2_)
                     {
                        addr43:
                        this.§'O§ = new §"!D§(this);
                        if(_loc3_ || param1)
                        {
                           §§push(this);
                           §§push(this);
                           §§push(param1.theme);
                           §§push(this.§"Y§.§,j§);
                           if(!(_loc2_ && this))
                           {
                              §§push(§§pop() / §`J§);
                           }
                           §§pop().§,R§ = §§pop().initLevelBackground(§§pop(),§§pop(),this.backgroundTextureManager,this.§90§.§9D§());
                           if(!_loc2_)
                           {
                              this.§,R§.§9C§(§=w§.§-!;§());
                           }
                           this.§4! § = this.initLevelObjectManager(param1);
                           if(_loc3_ || this)
                           {
                              this.§2E§ = this.initLevelSlingshot(param1);
                              if(_loc3_)
                              {
                                 this.§^D§ = this.§%d§(this.§1§,this.§-M§);
                                 if(_loc3_ || param1)
                                 {
                                    addr129:
                                    this.§90§.init();
                                    if(!_loc2_)
                                    {
                                       this.§`!§();
                                       if(_loc3_ || _loc3_)
                                       {
                                          this.§;!,§();
                                          this.mReadyToRun = true;
                                       }
                                       addr177:
                                       this.§+1§.addEventListeners();
                                       addr178:
                                       return;
                                       addr175:
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr178);
                              }
                              §§push(this.§+1§);
                              if(!(_loc2_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ && this)
                                    {
                                    }
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr129);
                        }
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr43);
               }
               §§goto(addr39);
            }
            §§goto(addr177);
         }
         §§goto(addr39);
      }
      
      protected function §;!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§]=§)
            {
               this.§4A§ = §11§.initialize(this.§]=§);
               §§push(this.§4A§);
               if(_loc2_)
               {
                  §§pop().speed = 1;
                  if(_loc2_ || this)
                  {
                     addr68:
                     this.§4A§.play();
                     this.§`]§ = -1000;
                     addr66:
                     if(_loc1_ && this)
                     {
                     }
                     §§goto(addr82);
                  }
                  this.§]=§ = null;
                  addr82:
                  return;
               }
            }
            §§goto(addr68);
         }
         §§goto(addr66);
      }
      
      public function §8U§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]=§ = param1;
         }
      }
      
      public function isPlayingReplay() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§4A§ == null);
         if(_loc2_ || _loc1_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§4A§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc3_ || param1)
                  {
                     if(param1)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr60:
                           §§push(this.§4A§);
                           if(!_loc2_)
                           {
                              §§pop().speed = Math.min(this.§4A§.speed * 1.25,Math.pow(1.25,2));
                              addr64:
                              if(!_loc3_)
                              {
                              }
                           }
                           else
                           {
                              addr91:
                              §§pop().speed = Math.max(this.§4A§.speed / 1.25,Math.pow(1 / 1.25,10));
                           }
                        }
                        §§goto(addr105);
                     }
                     else
                     {
                        §§push(this.§4A§);
                     }
                     §§goto(addr91);
                  }
               }
               addr105:
               return;
            }
            §§goto(addr64);
         }
         §§goto(addr60);
      }
      
      public function resetReplaySpeed() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§4A§);
            if(_loc1_ || this)
            {
               if(!§§pop())
               {
               }
               §§goto(addr49);
            }
            §§pop().speed = 1;
         }
         addr49:
         if(_loc1_ || _loc1_)
         {
            §§push(this.§4A§);
         }
      }
      
      protected function initLevelObjectManager(param1:§@Z§) : §@H§
      {
         return new §@H§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§@Z§) : §`n§
      {
         return new §`n§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§5!H§, param4:Number) : §;[§
      {
         return new §;[§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§@Z§) : §4!C§
      {
         return new §4!C§(this,param1,new Sprite());
      }
      
      protected function §%d§(param1:§"!?§, param2:§5!H§) : §2!H§
      {
         return new §2!H§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(this.mReadyToRun)
            {
               if(_loc7_ || this)
               {
                  this.clearLevel();
               }
            }
         }
         var _loc3_:§@Z§ = this.§<L§();
         var _loc4_:§5>§;
         (_loc4_ = new §5>§()).left = 0;
         §§push(_loc4_);
         §§push(§`n§.§]$§);
         if(_loc7_ || param1)
         {
            §§push(-§§pop());
            if(!_loc6_)
            {
               addr55:
               §§push(10);
               if(_loc7_ || this)
               {
                  addr73:
                  §§push(§§pop() / §§pop());
                  if(_loc7_ || param1)
                  {
                     §§push(8);
                  }
                  §§pop().top = §§pop();
                  if(_loc7_ || param2)
                  {
                     §§push(_loc4_);
                     §§push(_loc4_.top);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + §`n§.§]$§);
                     }
                     §§pop().bottom = §§pop();
                     §§push(_loc4_);
                     §§push(_loc4_.left);
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop() + §`n§.§"b§);
                     }
                     §§pop().right = §§pop();
                     _loc4_.y = -13.929;
                     _loc4_.x = §`n§.§"b§;
                  }
                  _loc4_.id = §`n§.§>d§;
                  _loc3_.§'_§(_loc4_);
                  var _loc5_:§5>§;
                  (_loc5_ = new §5>§()).top = _loc4_.top;
                  if(_loc7_ || param2)
                  {
                     _loc5_.bottom = _loc4_.bottom;
                     if(!(_loc6_ && this))
                     {
                        _loc5_.left = 150;
                        §§push(_loc5_);
                        §§push(_loc5_.left);
                        if(_loc7_ || this)
                        {
                           §§push(§§pop() + §`n§.§"b§);
                        }
                        §§pop().right = §§pop();
                        §§push(_loc5_);
                        §§push(_loc5_.top);
                        if(_loc7_)
                        {
                           §§push(§§pop() + §`n§.§]$§);
                        }
                        §§pop().bottom = §§pop();
                        _loc5_.y = _loc4_.y;
                        §§push(_loc5_);
                        §§push(_loc5_.left);
                        if(!_loc6_)
                        {
                           §§push(§`n§.§"b§);
                           if(_loc7_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§pop().x = §§pop();
                        addr197:
                        _loc5_.id = §`n§.§7,§;
                        _loc3_.§'_§(_loc5_);
                        this.§%P§(_loc3_,param2);
                        §§push(param1);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(null);
                           if(_loc7_ || this)
                           {
                              if(§§pop() != §§pop())
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    _loc3_.theme = param1;
                                    addr259:
                                    this.init(_loc3_);
                                 }
                                 else
                                 {
                                    addr249:
                                    _loc3_.theme = §[!6§;
                                    if(_loc7_ || this)
                                    {
                                       §§goto(addr259);
                                    }
                                 }
                                 return;
                              }
                              addr248:
                              if(§[!6§ != null)
                              {
                                 §§goto(addr249);
                              }
                              §§goto(addr259);
                           }
                        }
                        §§goto(addr248);
                     }
                     §§goto(addr249);
                  }
                  §§goto(addr197);
               }
               §§push(§§pop() * §§pop());
            }
            §§goto(addr73);
         }
         §§goto(addr55);
      }
      
      protected function §%P§(param1:§@Z§, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2)
            {
               if(_loc3_)
               {
                  this.§8k§(param1);
               }
            }
         }
      }
      
      protected function §<L§() : §@Z§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§@Z§ = new §@Z§();
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.§#!4§ = -12;
         }
         return new §@Z§();
      }
      
      protected function §"I§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§ [§ ^= this.§ [§ << 21;
            if(!(_loc2_ && _loc1_))
            {
               §§push(this);
               §§push(this.§ [§);
               §§push(this.§ [§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() >>> 35);
               }
               §§pop().§ [§ = §§pop() ^ §§pop();
               if(_loc2_)
               {
               }
               §§goto(addr81);
            }
            this.§ [§ ^= this.§ [§ << 4;
         }
         addr81:
         return this.§ [§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §8k§(param1:§@Z§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§;u§ = null;
         if(!(_loc6_ && _loc3_))
         {
            §§push(this);
            §§push(0.33);
            if(_loc7_)
            {
               §§push(§§pop() * uint.MAX_VALUE);
            }
            §§pop().§ [§ = §§pop();
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
                  if(_loc7_ || param1)
                  {
                     _loc3_ = §§pop();
                     if(_loc7_ || _loc3_)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc6_ && this)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(5);
                              if(_loc6_ && param1)
                              {
                                 break;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc6_)
                                 {
                                 }
                                 break loop2;
                              }
                              §§push(this.§"I§());
                              if(!(_loc6_ && this))
                              {
                                 §§push(§§pop() * 5);
                              }
                              §§push(int(§§pop()));
                              if(_loc7_)
                              {
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    if(!(_loc7_ || param1))
                                    {
                                       break;
                                    }
                                    §§push(_loc5_ = new §;u§());
                                    §§push(30 + _loc3_ * 10);
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§push(this.§"I§());
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() * 9);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().x = §§pop();
                                    if(_loc2_ == 0)
                                    {
                                       _loc5_.y = 0;
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(_loc3_);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() == 1);
                                             if(_loc7_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc6_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr134:
                                                         §§pop();
                                                         if(_loc7_)
                                                         {
                                                            addr138:
                                                            §§push(_loc3_);
                                                            §§push(2);
                                                            if(_loc7_ || this)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  addr149:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        addr153:
                                                                        §§pop();
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc6_)
                                                                           {
                                                                              addr275:
                                                                              addr274:
                                                                              if(§§pop() < 2)
                                                                              {
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    _loc5_.id = "BIRD_RED";
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr302:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr291:
                                                                                 if(_loc4_ == 3)
                                                                                 {
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       _loc5_.id = "BIRD_YELLOW";
                                                                                       §§goto(addr302);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc5_.id = "BIRD_BLUE";
                                                                                 }
                                                                              }
                                                                              §§push(_loc5_);
                                                                              §§push(this.§"I§());
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop() * 360);
                                                                              }
                                                                              §§pop().angle = §§pop();
                                                                              continue loop3;
                                                                           }
                                                                           §§push(4);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr178:
                                                                              if(§§pop() == §§pop())
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
                                                                              §§push(this.§"I§());
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(§§pop() * 90);
                                                                              }
                                                                              §§pop().angle = §§pop() - §§pop();
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr198:
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           §§goto(addr291);
                                                                        }
                                                                        §§goto(addr198);
                                                                     }
                                                                  }
                                                                  §§goto(addr178);
                                                               }
                                                               §§goto(addr153);
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                   }
                                                }
                                                §§goto(addr149);
                                             }
                                             §§goto(addr134);
                                          }
                                       }
                                       §§goto(addr138);
                                    }
                                    else
                                    {
                                       §§push(_loc5_);
                                       §§push(-100 + _loc2_ * 6);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(this.§"I§());
                                          if(_loc7_ || param1)
                                          {
                                             §§push(§§pop() * 3);
                                             if(_loc7_ || param1)
                                             {
                                                addr237:
                                                §§push(§§pop() - §§pop());
                                                if(_loc7_)
                                                {
                                                   §§push(_loc3_ * 8);
                                                }
                                                §§pop().y = §§pop();
                                                §§push(_loc3_);
                                                §§push(_loc3_);
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() + §§pop() * _loc3_);
                                                         if(_loc7_)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!_loc6_)
                                                            {
                                                               addr271:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  addr269:
                                                                  §§push(5);
                                                               }
                                                               §§goto(addr274);
                                                               §§push(_loc4_ = int(§§pop()));
                                                            }
                                                            §§goto(addr271);
                                                            §§push(§§pop() % §§pop());
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                   }
                                                   §§goto(addr271);
                                                }
                                                §§goto(addr275);
                                             }
                                             §§goto(addr237);
                                             §§push(§§pop() - §§pop());
                                          }
                                       }
                                       §§goto(addr237);
                                    }
                                 }
                                 continue loop0;
                                 addr75:
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     _loc2_++;
                     if(!(_loc7_ || param1))
                     {
                        break;
                     }
                     continue loop0;
                  }
                  §§goto(addr75);
               }
               return;
            }
         }
      }
      
      public function §`!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§;[§.§'@§);
         if(!_loc2_)
         {
            if(§§pop())
            {
               if(_loc1_ || _loc1_)
               {
                  this.§=X§(this.§,R§.§'K§,false);
                  if(!_loc2_)
                  {
                     addr36:
                     this.§=X§(this.§^D§.§%J§(§2!H§.§[!=§),false);
                     if(!(_loc2_ && this))
                     {
                        this.§=X§(this.§^D§.§%J§(§2!H§.§+!7§),true);
                        if(_loc1_)
                        {
                           this.§=X§(this.§^D§.§%J§(§2!H§.§3v§),true);
                           this.§=X§(this.§4! §.§=V§,true);
                           this.§=X§(this.§2E§.sprite,true);
                           if(_loc1_ || this)
                           {
                              addr98:
                              this.§=X§(this.§^D§.§%J§(§2!H§.§"!5§),true);
                              if(_loc1_ || this)
                              {
                                 this.§=X§(this.§,R§.§&W§,false);
                                 if(_loc1_)
                                 {
                                    addr131:
                                    if(§;[§.§'@§)
                                    {
                                       addr134:
                                       this.§=X§(this.§,R§.§=@§,false);
                                    }
                                 }
                                 this.§=X§(this.§^D§.§%J§(§2!H§.§8p§),true);
                                 return;
                              }
                              §§goto(addr134);
                           }
                        }
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr131);
               }
               §§goto(addr98);
            }
            §§goto(addr36);
         }
         §§goto(addr131);
      }
      
      protected function §=X§(param1:Sprite, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(this.sprite);
            if(_loc4_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr45);
            }
            §§pop().addChild(param1);
         }
         addr45:
         if(!_loc3_)
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
            if(_loc4_ || this)
            {
               §§push(§=w§.§continue§);
               if(_loc4_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc5_ && this))
                     {
                        §§goto(addr50);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr76);
               }
               §§goto(addr66);
            }
            addr50:
            param1 = §§pop();
            if(!_loc5_)
            {
               §§push(param2);
               if(!_loc5_)
               {
                  addr66:
                  §§push(§§pop() / §=w§.§continue§);
                  if(!(_loc5_ && param2))
                  {
                     addr76:
                     §§push(Number(§§pop()));
                  }
               }
               param2 = §§pop();
               if(_loc4_ || _loc3_)
               {
                  _loc3_.x = (param1 / §`n§.§&"§ + this.§90§.§?!A§ - §`n§.§!!7§ / §`n§.§&"§) * §`J§;
                  addr85:
                  if(!(_loc5_ && param1))
                  {
                     _loc3_.y = (param2 / §`n§.§&"§ + this.§90§.§@h§ - §`n§.§-!N§ / §`n§.§&"§) * §`J§;
                  }
               }
            }
            return _loc3_;
         }
         §§goto(addr85);
      }
      
      public function §6!"§(param1:Number, param2:Number) : Point
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Point = new Point();
         if(_loc6_ || param1)
         {
            _loc3_.x = (param1 / §`J§ + §`n§.§!!7§ / §`n§.§&"§ - this.§90§.§?!A§) * §`n§.§&"§;
            if(_loc6_)
            {
               _loc3_.y = (param2 / §`J§ + §`n§.§-!N§ / §`n§.§&"§ - this.§90§.§@h§) * §`n§.§&"§;
            }
         }
         var _loc4_:Number = Math.max(§=w§.§continue§,§=w§.§'c§);
         if(_loc6_)
         {
            _loc3_.x *= _loc4_;
            if(_loc6_)
            {
               _loc3_.y *= _loc4_;
            }
         }
         return _loc3_;
      }
      
      public function §9s§(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§4! §.addObject(param1,param2,param3);
         }
      }
      
      public function §>!8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§`5§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(this.§`5§);
                     if(_loc1_)
                     {
                        §§pop().visible = true;
                        if(_loc1_ || _loc2_)
                        {
                           §§goto(addr50);
                        }
                     }
                     §§goto(addr50);
                  }
               }
               §§goto(addr54);
            }
            addr50:
            this.§`5§.alpha = 0;
            §§goto(addr48);
         }
         addr48:
         if(_loc1_)
         {
            addr54:
            this.§;!6§ = 0;
         }
      }
      
      public function §4!N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§]+§ = new §5!F§(§#!E§.§'f§,§#!E§.§'G§);
         }
      }
      
      public function §5o§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§]+§ = null;
         }
      }
      
      public function clearLevel() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§,R§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  addr30:
                  this.§,R§.dispose();
                  this.§,R§ = null;
                  if(_loc1_ || _loc1_)
                  {
                     addr41:
                     §§push(this.§4! §);
                     if(!(_loc2_ && this))
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && this))
                           {
                              addr60:
                              this.§4! §.dispose();
                              if(!_loc2_)
                              {
                                 addr63:
                                 this.§4! § = null;
                                 this.§3o§ = null;
                                 addr69:
                                 §§push(this.§'O§);
                                 if(_loc1_)
                                 {
                                    if(§§pop())
                                    {
                                       §§push(this.§'O§);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr83:
                                          if(§§pop().§<!"§)
                                          {
                                             if(!_loc2_)
                                             {
                                                addr89:
                                                this.§'O§.clear();
                                                addr87:
                                                if(_loc1_)
                                                {
                                                   addr92:
                                                   this.§'O§ = null;
                                                   addr95:
                                                   §§push(this.§"Y§);
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr107:
                                                         this.§"Y§.clear();
                                                         this.§"Y§ = null;
                                                      }
                                                      §§push(this.§2E§);
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr123:
                                                            this.§2E§.dispose();
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               this.§2E§ = null;
                                                            }
                                                            addr171:
                                                            loop0:
                                                            while(true)
                                                            {
                                                               §§push(this.sprite);
                                                               while(§§pop().numChildren > 0)
                                                               {
                                                                  §§push(this.sprite);
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               addr190:
                                                               this.§3!3§ = 0;
                                                               this.§&!?§ = 0;
                                                               if(!_loc2_)
                                                               {
                                                                  this.mReadyToRun = false;
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     this.§]!D§ = false;
                                                                     if(!_loc2_)
                                                                     {
                                                                        this.§;!6§ = §#!E§.§8!1§;
                                                                        §§push(this.§^m§);
                                                                        if(_loc1_ || this)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§push(this.§^m§);
                                                                              if(_loc1_)
                                                                              {
                                                                                 addr241:
                                                                                 §§push((§§pop() as §%!E§).§2@§);
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(_loc1_ || this)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       addr260:
                                                                                       §§push((this.§^m§ as §%!E§).§2@§);
                                                                                       §§push(0);
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    addr262:
                                                                                    §§push(this.§`5§);
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       addr273:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§push(this.§`5§);
                                                                                       }
                                                                                       this.§4A§ = null;
                                                                                       if(!(_loc2_ && _loc1_))
                                                                                       {
                                                                                          this.set = null;
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             §§push(this.§ <§);
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc1_ || this)
                                                                                                   {
                                                                                                      §§push(this.§ <§);
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         addr309:
                                                                                                         §§pop().removeEventListener(Event.COMPLETE,this.§4'§);
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            addr318:
                                                                                                            this.§ <§.removeEventListener(Event.CANCEL,this.§]2§);
                                                                                                            §§push(this.§"=§);
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     addr330:
                                                                                                                     §§push(this.§"=§);
                                                                                                                     if(_loc1_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§pop().removeEventListener(Event.COMPLETE,this.§'!&§);
                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr353:
                                                                                                                           this.§"=§.removeEventListener(Event.CANCEL,this.§,!#§);
                                                                                                                           if(_loc1_ || _loc2_)
                                                                                                                           {
                                                                                                                              addr365:
                                                                                                                              this.§-!§();
                                                                                                                              addr367:
                                                                                                                              §§push(§>I§.§`S§);
                                                                                                                              if(_loc1_ || _loc2_)
                                                                                                                              {
                                                                                                                                 addr391:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr387:
                                                                                                                                    §§push(§>I§.§`S§);
                                                                                                                                 }
                                                                                                                                 §§push(this.§+1§);
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          addr400:
                                                                                                                                          this.§+1§.removeEventListeners();
                                                                                                                                          addr398:
                                                                                                                                          if(_loc2_ && _loc1_)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          §§goto(addr411);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    this.mReadyToRun = false;
                                                                                                                                    addr411:
                                                                                                                                    return;
                                                                                                                                 }
                                                                                                                                 §§goto(addr400);
                                                                                                                              }
                                                                                                                              §§pop().color = 0;
                                                                                                                              §§goto(addr391);
                                                                                                                           }
                                                                                                                           §§goto(addr387);
                                                                                                                        }
                                                                                                                        §§goto(addr391);
                                                                                                                     }
                                                                                                                     §§goto(addr353);
                                                                                                                  }
                                                                                                                  §§goto(addr400);
                                                                                                               }
                                                                                                               §§goto(addr365);
                                                                                                            }
                                                                                                            §§goto(addr353);
                                                                                                            addr316:
                                                                                                         }
                                                                                                         §§goto(addr367);
                                                                                                      }
                                                                                                      §§goto(addr318);
                                                                                                   }
                                                                                                   §§goto(addr316);
                                                                                                }
                                                                                                §§goto(addr318);
                                                                                             }
                                                                                             §§goto(addr309);
                                                                                          }
                                                                                          §§goto(addr398);
                                                                                       }
                                                                                       §§goto(addr353);
                                                                                    }
                                                                                    §§pop().visible = false;
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§goto(addr273);
                                                                                    }
                                                                                    §§goto(addr400);
                                                                                 }
                                                                              }
                                                                              §§goto(addr260);
                                                                           }
                                                                           §§goto(addr262);
                                                                        }
                                                                        §§goto(addr241);
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                                  §§goto(addr391);
                                                               }
                                                               §§goto(addr330);
                                                            }
                                                         }
                                                         §§push(this.§90§);
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr146:
                                                               this.§90§.clear();
                                                               this.§90§ = null;
                                                            }
                                                            §§push(this.§^D§);
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr162:
                                                                  this.§^D§.dispose();
                                                                  if(_loc1_)
                                                                  {
                                                                     this.§^D§ = null;
                                                                  }
                                                                  §§goto(addr171);
                                                               }
                                                               if(this.sprite)
                                                               {
                                                                  §§goto(addr171);
                                                               }
                                                               §§goto(addr190);
                                                            }
                                                            §§goto(addr162);
                                                         }
                                                         §§goto(addr146);
                                                      }
                                                      §§goto(addr123);
                                                   }
                                                   §§goto(addr107);
                                                }
                                                §§goto(addr146);
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr87);
                                       }
                                       §§goto(addr89);
                                    }
                                    §§goto(addr95);
                                 }
                                 §§goto(addr83);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr92);
               }
               §§goto(addr41);
            }
            §§goto(addr30);
         }
         §§goto(addr63);
      }
      
      public function gameOver() : void
      {
      }
      
      public function §>y§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.set);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(this.set);
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
         §§push(!this.mReadyToRun);
         §§push(!this.mReadyToRun);
         if(!(_loc5_ && param2))
         {
            if(!§§pop())
            {
               §§pop();
               if(!(_loc5_ && param3))
               {
                  §§push(§>I§.§]u§());
                  if(!(_loc5_ && param1))
                  {
                     addr56:
                     if(!§§pop())
                     {
                        §§push(0);
                        if(_loc4_ || param3)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr73:
                        §§push(this.§4A§);
                        if(_loc4_)
                        {
                           addr79:
                           §§push(Boolean(§§pop()));
                           if(Boolean(§§pop()))
                           {
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr115);
                  }
                  addr102:
                  if(_loc4_ || this)
                  {
                     §§pop();
                     addr100:
                     §§push(this.§4A§.§]n§);
                  }
                  if(§§pop())
                  {
                     §§push(this.§9!G§(param1,param2,param3));
                     if(_loc4_ || param1)
                     {
                        addr115:
                        return §§pop();
                     }
                  }
                  else
                  {
                     §§push(this.§9!"§(param1,true,param2,param3));
                  }
                  return §§pop();
               }
               §§goto(addr73);
            }
            §§goto(addr56);
         }
         §§goto(addr79);
      }
      
      protected function §9!"§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(this.§%!N§)
            {
               if(_loc7_)
               {
                  §§push(param1);
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() * 0.2);
                     if(_loc7_ || param3)
                     {
                        §§push(Number(§§pop()));
                        if(_loc6_)
                        {
                        }
                        addr70:
                        var _loc5_:* = §§pop();
                        if(_loc7_ || this)
                        {
                           §§push(this);
                           §§push(this.§&!?§);
                           if(_loc7_ || param1)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§&!?§ = §§pop();
                           if(_loc7_)
                           {
                              §§push(param3);
                              if(_loc7_ || param2)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc7_ || this)
                                    {
                                       §§push(this);
                                       §§push(this.§3!3§);
                                       if(_loc7_ || this)
                                       {
                                          §§push(§§pop() + param1);
                                       }
                                       §§pop().§3!3§ = §§pop();
                                       addr132:
                                       §§push(this.§'O§.§[+§(this.§3!3§));
                                       if(!_loc6_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc7_)
                                          {
                                             _loc5_ = §§pop();
                                             if(!(_loc6_ && param1))
                                             {
                                                addr150:
                                                this.§2E§.update(param1,param4);
                                                if(_loc7_ || param1)
                                                {
                                                   this.§3!3§ = _loc5_;
                                                   if(_loc7_)
                                                   {
                                                      addr192:
                                                      addr193:
                                                      if(param2)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            addr196:
                                                            this.§&S§(param1,_loc5_);
                                                         }
                                                      }
                                                      return param1;
                                                      addr177:
                                                   }
                                                   §§goto(addr192);
                                                }
                                                §§goto(addr196);
                                             }
                                             §§goto(addr177);
                                          }
                                       }
                                       §§goto(addr192);
                                    }
                                    §§goto(addr132);
                                 }
                                 else
                                 {
                                    this.§4! §.§!c§(param1);
                                    if(_loc7_ || param3)
                                    {
                                       this.§3!3§ = 0;
                                    }
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr132);
                     }
                     param1 = §§pop();
                     if(_loc7_ || this)
                     {
                        addr52:
                        §§push(§>I§.§2!@§);
                        if(!_loc6_)
                        {
                           if(§§pop())
                           {
                              addr68:
                              if(_loc7_ || param2)
                              {
                                 §§push(§>I§.§2!@§);
                              }
                              §§goto(addr70);
                              §§push(Number(0));
                           }
                           §§goto(addr68);
                        }
                        §§pop().speed = 0.2;
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr70);
               }
               §§goto(addr52);
            }
         }
         §§goto(addr68);
      }
      
      private function §9!G§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         §§push(§"!D§.§&j§);
         if(!(_loc6_ && this))
         {
            §§push(§§pop() * 1000);
            if(_loc7_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            if(this.§4A§)
            {
               if(!(_loc6_ && param2))
               {
                  addr51:
                  §§push(param1);
                  if(!(_loc6_ && param3))
                  {
                     §§push(this.§4A§.speed);
                     if(!_loc6_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc6_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc7_ || param3)
                           {
                              param1 = §§pop();
                              if(!_loc6_)
                              {
                                 §§push(this.§&!?§);
                                 if(_loc7_)
                                 {
                                    addr83:
                                    §§push(§§pop() + param1);
                                    if(!(_loc6_ && this))
                                    {
                                       addr91:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc5_ = §§pop();
                                 addr93:
                                 loop0:
                                 while(true)
                                 {
                                    §§push(this.§&!?§);
                                    if(_loc7_)
                                    {
                                       §§push(_loc4_);
                                       if(!_loc6_)
                                       {
                                          addr153:
                                          §§push(§§pop() + §§pop());
                                          §§push(_loc5_);
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                §§push(_loc5_);
                                                break;
                                             }
                                             §§push(this.§&!?§);
                                             if(_loc6_ && param2)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() + _loc4_);
                                             §§push(this.§`]§);
                                             if(_loc6_)
                                             {
                                                continue;
                                             }
                                             if(§§pop() > §§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(this.§4A§);
                                                   if(!_loc6_)
                                                   {
                                                      §§pop().step(this);
                                                      §§push(this);
                                                      §§push(this.§`]§);
                                                      if(_loc7_)
                                                      {
                                                         §§push(§§pop() + _loc4_);
                                                      }
                                                      §§pop().§`]§ = §§pop();
                                                      addr137:
                                                      this.§9!"§(_loc4_,false,param2,param3);
                                                      if(!_loc6_)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr163:
                                                      §§pop().step(this);
                                                      §§push(this);
                                                      §§push(this.§`]§);
                                                      if(!(_loc6_ && param3))
                                                      {
                                                         §§push(§§pop() + _loc4_);
                                                      }
                                                      §§pop().§`]§ = §§pop();
                                                      if(_loc7_ || this)
                                                      {
                                                         §§goto(addr185);
                                                      }
                                                   }
                                                }
                                                §§goto(addr199);
                                             }
                                             §§goto(addr137);
                                          }
                                          §§push(this.§`]§ + _loc4_);
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          §§goto(addr163);
                                          §§push(this.§4A§);
                                       }
                                       addr185:
                                       if(this.§&!?§ < _loc5_)
                                       {
                                          addr199:
                                          §§push(this);
                                          §§push(_loc5_);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() - this.§&!?§);
                                          }
                                          §§pop().§9!"§(§§pop(),true,param2,param3);
                                       }
                                       §§push(param1);
                                       if(_loc7_ || param2)
                                       {
                                          return §§pop();
                                       }
                                       addr226:
                                       return §§pop();
                                    }
                                    §§goto(addr153);
                                 }
                              }
                              §§goto(addr93);
                           }
                        }
                        §§goto(addr91);
                     }
                  }
                  §§goto(addr83);
               }
               §§goto(addr93);
            }
            else
            {
               §§push(this.§9!"§(_loc4_,true,param2,param3));
            }
            §§goto(addr226);
         }
         §§goto(addr51);
      }
      
      private function §&S§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(!_loc6_)
         {
            this.§,R§.update(param1);
            if(_loc5_ || param1)
            {
               this.§4! §.§]C§(param1,param2);
               if(!_loc6_)
               {
                  this.§-s§();
                  §§push(this.§;!6§);
                  §§push(§#!E§.§8!1§);
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc6_ && this))
                        {
                           §§push(this);
                           §§push(this.§;!6§);
                           if(_loc5_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§;!6§ = §§pop();
                           addr69:
                           §§push(§#!E§.§8!1§);
                           if(!_loc6_)
                           {
                              §§push(§§pop() / 2);
                              if(!_loc6_)
                              {
                                 addr77:
                                 §§push(Number(§§pop()));
                                 if(!(_loc6_ && param2))
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc5_ || param1)
                                    {
                                       §§push(-Math.abs(this.§;!6§ - _loc3_));
                                       §§push(_loc3_);
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(§§pop() + §§pop());
                                          §§push(§#!E§.§1s§);
                                          if(_loc5_)
                                          {
                                             addr126:
                                             _loc4_ = §§pop() * (§§pop() / _loc3_);
                                             addr125:
                                             §§push(this.§`5§);
                                             if(!_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(this.§`5§);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         addr144:
                                                         §§pop().alpha = _loc4_;
                                                      }
                                                      else
                                                      {
                                                         addr156:
                                                         §§pop().visible = false;
                                                         addr168:
                                                         §§push(this.§]+§);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  addr177:
                                                                  if(!this.§]+§.§0L§(this.§90§,param1))
                                                                  {
                                                                     addr182:
                                                                     this.§5o§();
                                                                  }
                                                                  §§goto(addr184);
                                                               }
                                                               §§goto(addr193);
                                                            }
                                                            addr184:
                                                            this.§90§.§&!$§(param1);
                                                            this.§'O§.§<!<§();
                                                            if(!_loc6_)
                                                            {
                                                               addr193:
                                                               this.§^D§.update(param1);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      §§goto(addr168);
                                                   }
                                                }
                                                §§goto(addr168);
                                             }
                                             §§goto(addr144);
                                             addr125:
                                          }
                                       }
                                       §§goto(addr125);
                                    }
                                    §§goto(addr182);
                                 }
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr77);
                        }
                        §§goto(addr126);
                     }
                     else
                     {
                        §§push(this.§`5§);
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr156);
                                 §§push(this.§`5§);
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr156);
                        }
                     }
                     §§goto(addr156);
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr69);
         }
         §§goto(addr156);
      }
      
      public function §[,§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.objects);
            if(!(_loc3_ && _loc2_))
            {
               §§push(param1);
               if(_loc2_ || _loc2_)
               {
                  §§push(1000);
                  if(_loc2_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc2_ || param1)
                     {
                        §§pop().§!c§(§§pop());
                        if(_loc2_)
                        {
                           addr76:
                           §§push(this.objects);
                           §§push(param1);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr81);
                        }
                        this.§%V§();
                        addr81:
                        §§pop().§;2§(§§pop() * 1000);
                        §§goto(addr79);
                     }
                     addr79:
                     §§goto(addr80);
                  }
                  addr80:
                  if(!_loc2_)
                  {
                  }
                  return;
               }
               §§goto(addr81);
            }
            §§goto(addr76);
         }
         §§goto(addr81);
      }
      
      public function §-s§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;!%§ = null;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§&!?§);
            §§push(this.§>R§);
            if(!_loc4_)
            {
               §§push(§§pop() + 1000 / 30);
            }
            if(§§pop() > §§pop())
            {
               if(!_loc4_)
               {
                  §§goto(addr50);
               }
            }
            §§goto(addr64);
         }
         addr50:
         if(this.§4j§ != null)
         {
            addr64:
            for each(_loc1_ in this.§4j§)
            {
               if(_loc5_)
               {
                  _loc1_.addTrail();
               }
            }
            if(!_loc5_)
            {
            }
            §§goto(addr91);
         }
         this.§>R§ = this.§&!?§;
         addr91:
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;!%§ = null;
         if(_loc4_)
         {
            §§push(this);
            §§push(this.mPigsAnimationTimer1);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() - param1);
            }
            §§pop().mPigsAnimationTimer1 = §§pop();
            §§push(this.mPigsAnimationTimer1);
            if(_loc4_ || this)
            {
               §§push(0);
               if(!_loc3_)
               {
                  if(§§pop() <= §§pop())
                  {
                     if(_loc4_)
                     {
                        addr50:
                        §§push(this.§4! §);
                        if(_loc4_)
                        {
                           §§push(true);
                           if(!(_loc3_ && param1))
                           {
                              §§push(§§pop().isPigsAlive(§§pop()));
                              if(!_loc3_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(this.§4! §);
                                       if(_loc4_)
                                       {
                                          addr72:
                                          §§push(true);
                                          if(_loc4_ || this)
                                          {
                                             §§push(§§pop().§!!D§(§§pop()));
                                             if(_loc4_ || _loc2_)
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc4_ || _loc2_)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         _loc2_.§;S§.mTryToScream = §[!J§.§`"§;
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                         }
                                                         addr146:
                                                         §§push(this);
                                                         §§push(this.mPigsAnimationTimer2);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().mPigsAnimationTimer2 = §§pop();
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr156);
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                   }
                                                   §§goto(addr146);
                                                }
                                                §§push(this);
                                                §§push(500 + Math.random() * 1000);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(§§pop() + 4000 / (3 + this.§4! §.§,v§()));
                                                }
                                                §§pop().mPigsAnimationTimer1 = §§pop();
                                                §§goto(addr146);
                                             }
                                          }
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr173);
                        }
                        §§goto(addr72);
                     }
                     addr156:
                     §§goto(addr159);
                  }
                  §§goto(addr146);
               }
               addr159:
               §§goto(addr158);
            }
            addr158:
            if(this.mPigsAnimationTimer2 <= 0)
            {
               addr160:
               §§push(this.§4! §);
               if(_loc4_)
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     addr168:
                     if(§§pop().isPigsAlive(§§pop()))
                     {
                        addr173:
                        _loc2_ = this.§4! §.§!!D§(true);
                        addr172:
                        if(_loc4_ || _loc3_)
                        {
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 _loc2_.§;S§.mTryToBlink = §[!J§.§4!-§;
                                 if(!_loc3_)
                                 {
                                    §§push(this);
                                    §§push(250 + Math.random() * 500);
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(§§pop() + 2000 / (3 + this.§4! §.§,v§()));
                                    }
                                    §§pop().mPigsAnimationTimer2 = §§pop();
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr172);
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            §§push(param6);
            if(_loc7_ || param2)
            {
               §§push(-9999);
               if(_loc7_ || param2)
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc7_)
                     {
                        §§push(§<!6§.§4Q§);
                        if(_loc7_)
                        {
                           addr41:
                           §§push(int(§§pop()));
                           if(_loc7_ || param1)
                           {
                              §§goto(addr49);
                           }
                           §§goto(addr104);
                        }
                        addr49:
                        param6 = §§pop();
                        if(_loc7_ || param1)
                        {
                           addr67:
                           §0!'§.addScore(param1,param2);
                           if(!_loc8_)
                           {
                              this.§+1§.addScore(param1);
                              addr77:
                              §§push(param3);
                              if(_loc7_)
                              {
                                 §§push(Boolean(§§pop()));
                                 §§push(Boolean(§§pop()));
                                 if(!_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc8_ && param1))
                                       {
                                          §§pop();
                                          addr104:
                                          §§push(param1 > 0);
                                       }
                                    }
                                    §§push(§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    §§pop();
                                    §§goto(addr132);
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc7_)
                                    {
                                       addr122:
                                       this.§,!<§(param1.toString(),param4,param5,800,param6,0,0);
                                    }
                                 }
                                 §§goto(addr132);
                              }
                           }
                           §§goto(addr118);
                        }
                        addr132:
                        if(_loc7_ || param3)
                        {
                           addr118:
                           §§push(!this.§3M§);
                        }
                        return;
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr67);
               }
               §§goto(addr104);
            }
            §§goto(addr41);
         }
         §§goto(addr77);
      }
      
      public function §,!<§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || this)
         {
            §§push(param5);
            if(_loc8_ || param2)
            {
               if(§§pop() == -9999)
               {
                  if(_loc8_ || param1)
                  {
                     §§push(§<!6§.§>a§);
                     if(!_loc8_)
                     {
                     }
                     §§goto(addr65);
                  }
               }
               this.§^D§.§4#§(§<!6§.§0!$§,§2!H§.§8p§,§<!6§.§ ^§,param2,param3,param4,param1,param5,param6,param7);
            }
            §§goto(addr65);
         }
         addr65:
         param5 = §§pop();
         if(_loc8_ || param2)
         {
         }
      }
      
      public function §[?§(param1:§;!%§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§4j§);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(_loc3_)
                  {
                     §§goto(addr42);
                  }
               }
               §§goto(addr48);
            }
            §§goto(addr50);
         }
         addr42:
         this.§4j§ = new Array();
         if(!_loc2_)
         {
            addr50:
            this.§4j§.push(param1);
            addr48:
         }
      }
      
      public function §9!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§2E§.§9!6§();
            if(_loc2_)
            {
               this.§4! §.§"i§();
               if(!_loc2_)
               {
               }
               §§goto(addr47);
            }
            this.§3M§ = true;
         }
         addr47:
      }
      
      public function §[r§(param1:§;!%§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^D§.§#N§(§2!H§.§[!=§);
            if(!(_loc2_ && param1))
            {
               §§push(this.§4j§);
               if(!(_loc2_ && this))
               {
                  if(§§pop().indexOf(param1) >= 0)
                  {
                     if(!_loc2_)
                     {
                        §§push(this.§4j§);
                        if(!(_loc2_ && this))
                        {
                           §§pop().splice(this.§4j§.indexOf(param1),1);
                           §§goto(addr90);
                        }
                     }
                  }
                  §§goto(addr83);
               }
               if(§§pop().length == 0)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr90);
                  }
               }
               §§goto(addr90);
            }
            §§goto(addr83);
         }
         addr90:
         if(!_loc2_)
         {
            addr83:
            §§push(this.§4j§);
         }
         this.§4j§ = null;
      }
      
      public function §>!A§(param1:§!!'§, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.§3o§ = this.§4! §.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
            if(_loc7_)
            {
               if(param1.name.toUpperCase() == "BIRD_GREEN")
               {
                  addr42:
                  §§push(§4!C§.§?1§);
                  if(!_loc8_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc8_)
                     {
                        addr67:
                        §§push(Number(§§pop()));
                        addr49:
                     }
                     else
                     {
                        addr59:
                        §§push(Number(§§pop()));
                        if(_loc7_ || this)
                        {
                           §§goto(addr67);
                        }
                     }
                     var _loc4_:* = §§pop();
                     if(_loc7_ || param2)
                     {
                        §§push(param1.§]k§);
                        if(!_loc8_)
                        {
                           §§push(1);
                           if(!_loc8_)
                           {
                              if(§§pop() > §§pop())
                              {
                                 if(!(_loc8_ && param2))
                                 {
                                    addr91:
                                    §§push(this.§3o§);
                                    if(!(_loc8_ && param1))
                                    {
                                       §§pop().§%!§(param1.§]k§);
                                       if(!_loc8_)
                                       {
                                          this.§3o§.§;S§.§#! §();
                                          addr107:
                                          if(!_loc8_)
                                          {
                                             addr121:
                                             if(param1.§4b§ != 0)
                                             {
                                                if(_loc7_)
                                                {
                                                   addr127:
                                                   §§push(param1.§4b§);
                                                   if(_loc7_)
                                                   {
                                                      _loc4_ = Number(§§pop());
                                                      addr133:
                                                      §§push(_loc4_);
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         addr141:
                                                         §§push(-§§pop());
                                                         if(_loc7_ || param1)
                                                         {
                                                         }
                                                         addr151:
                                                         var _loc5_:Number = §§pop() * Math.cos(param3 / (180 / Math.PI));
                                                         §§push(_loc4_);
                                                         if(!(_loc8_ && param3))
                                                         {
                                                            §§push(§§pop() * param2);
                                                            if(!_loc8_)
                                                            {
                                                               addr174:
                                                               §§push(§§pop() * Math.sin(param3 / (180 / Math.PI)));
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                            var _loc6_:* = §§pop();
                                                            if(_loc7_)
                                                            {
                                                               this.§3o§.§'!0§(new b2Vec2(_loc5_,_loc6_),false,true);
                                                               if(_loc7_)
                                                               {
                                                                  this.camera.§]V§(§`n§.§4!I§);
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(this.set);
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                        }
                                                                        §§goto(addr246);
                                                                     }
                                                                     §§pop().§>!A§(this.§'O§.§9p§,param1.x,param1.y,param2,param3);
                                                                  }
                                                                  addr246:
                                                                  if(_loc7_)
                                                                  {
                                                                     addr234:
                                                                     §§push(this.set);
                                                                  }
                                                                  return;
                                                               }
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                      §§push(§§pop() * param2);
                                                   }
                                                   §§goto(addr151);
                                                }
                                             }
                                          }
                                          §§goto(addr133);
                                       }
                                       §§goto(addr127);
                                    }
                                    §§goto(addr107);
                                 }
                              }
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr49);
               }
               else
               {
                  §§push(§4!C§.§,!N§);
                  if(_loc7_ || this)
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr67);
            }
         }
         §§goto(addr42);
      }
      
      public function activatePowerup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§]!D§ = true;
         }
      }
      
      private function §%V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§]!D§);
         if(!(_loc2_ && _loc1_))
         {
            if(!§§pop())
            {
               return;
            }
            this.§]!D§ = false;
            §§push(this.activeObject);
            if(_loc1_ || this)
            {
               §§push(§§pop() is §^`§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc1_)
                     {
                        addr57:
                        §§pop();
                        §§push(this.activeObject);
                        if(!_loc2_)
                        {
                           §§push((§§pop() as §^`§).§[!E§);
                           if(!_loc2_)
                           {
                              addr67:
                              §§push(!§§pop());
                              if(_loc1_)
                              {
                                 addr70:
                                 if(§§pop())
                                 {
                                    if(_loc1_)
                                    {
                                       addr78:
                                       addr75:
                                       if(this.activeObject.activateSpecialPower(this.§??§))
                                       {
                                          this.§?<§ = true;
                                          if(_loc2_)
                                          {
                                          }
                                          addr100:
                                          §§push(this.set);
                                          if(_loc1_ || this)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc2_)
                                                {
                                                   addr114:
                                                   this.set.§<e§(this.§'O§.§9p§);
                                                }
                                             }
                                             return;
                                          }
                                          §§goto(addr114);
                                       }
                                    }
                                    §§goto(addr100);
                                 }
                                 else
                                 {
                                    this.§4! §.§`W§();
                                    if(_loc1_)
                                    {
                                       §§goto(addr100);
                                    }
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr78);
                           }
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr70);
               }
               §§goto(addr67);
            }
            §§goto(addr78);
         }
         §§goto(addr57);
      }
      
      public function §`!>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§4! §.§`!>§();
         }
      }
      
      public function §^d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4! §.§#R§();
         }
      }
      
      public function §2d§() : §@Z§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§@Z§ = new §@Z§();
         _loc1_.§4!6§ = this.§]M§.§4!6§;
         if(!_loc3_)
         {
            _loc1_.§!x§ = this.§]M§.§!x§;
            this.§90§.§5T§(_loc1_);
         }
         this.§4! §.§@g§(_loc1_);
         this.§2E§.§-p§(_loc1_);
         if(_loc2_ || _loc2_)
         {
            _loc1_.theme = this.§,R§.§]!,§();
         }
         return _loc1_;
      }
      
      public function §!$§() : int
      {
         return this.§]M§.§!x§;
      }
      
      public function §6%§() : int
      {
         return this.§]M§.§4!6§;
      }
      
      public function §&!G§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§]M§.§!x§ = param1;
         }
      }
      
      public function §7U§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§]M§.§4!6§ = param1;
         }
      }
      
      public function §&!5§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(this.§3n§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     this.§3n§.§#U§(param1,param2);
                     §§goto(addr42);
                  }
                  §§goto(addr79);
               }
               §§goto(addr62);
            }
            §§goto(addr42);
         }
         addr42:
         if(_loc3_ || param1)
         {
            addr62:
            §§push(this.§90§);
            if(!(_loc4_ && _loc3_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr83);
            }
            §§pop().§&!$§(0);
         }
         addr83:
         if(_loc3_ || param2)
         {
            addr79:
            §§push(this.§90§);
         }
      }
      
      public function get §&!9§() : §@Z§
      {
         return this.§]M§;
      }
      
      public function get §??§() : §@H§
      {
         return this.§4! §;
      }
      
      protected function get starling() : §>I§
      {
         return this.§,!0§;
      }
      
      public function get §!,§() : int
      {
         return §#M§;
      }
   }
}
