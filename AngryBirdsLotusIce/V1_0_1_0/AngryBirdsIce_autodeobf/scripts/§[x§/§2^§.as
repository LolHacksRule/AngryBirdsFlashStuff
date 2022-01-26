package §[x§
{
   import §!F§.§!h§;
   import §!Y§.§[o§;
   import §"o§.§9!#§;
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §-Z§.§?h§;
   import §0!!§.§2N§;
   import §1n§.§,!0§;
   import §1n§.§5#§;
   import §1n§.§try §;
   import §3"§.§0$§;
   import §3"§.§2F§;
   import §3"§.§8+§;
   import §3"§.§?!&§;
   import §5!@§.§=!3§;
   import §9_§.§+>§;
   import §9_§.§4!;§;
   import §9_§.§?!!§;
   import §9_§.§`-§;
   import §;!E§.§!c§;
   import §;!E§.§7D§;
   import §;8§.§3f§;
   import §[K§.§2!1§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   import §`6§.§8!!§;
   import §`g§.§[N§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2^§
   {
      
      private static const §<!-§:int = 20;
      
      public static const §!s§:Number = §[o§.static;
      
      public static const §<!?§:Number = §[o§.§for§;
      
      public static const §,]§:Number = 1 / 20;
      
      public static const §8B§:Number = §[o§.§for§ * §,]§;
      
      public static const §3!G§:Number = §!s§ * §,]§;
      
      public static const §<A§:§2N§ = new §2N§(13 - 3);
      
      protected static var §<G§:String = §8+§.§#0§;
       
      
      protected var §3U§:§?!!§;
      
      private var §&!5§:§+>§;
      
      private var §"!8§:Array = null;
      
      protected var §"!@§:§8!!§;
      
      public var §[f§:§0q§;
      
      protected var §-;§:§%!>§;
      
      protected var §>!1§:§2!1§;
      
      protected var §2"§:§9"§;
      
      protected var §@<§:§>=§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §?^§:Boolean = false;
      
      protected var §+5§:Boolean = false;
      
      protected var §>^§:Boolean = false;
      
      public var §?U§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §#!H§:Number;
      
      public var §6&§:Number;
      
      private var §7!§:Number;
      
      public var §1§:§2F§;
      
      public var §^t§:Boolean = false;
      
      private var § use§:§"0§;
      
      private var §-I§:Sprite;
      
      protected var §'f§:§8+§;
      
      protected var §,Z§:§!h§ = null;
      
      private var §6a§:EventDispatcher;
      
      private var §-_§:Array;
      
      private var §,G§:Array;
      
      private var §@x§:§?h§;
      
      private var §!"§:§[N§;
      
      protected var §1y§:§5#§;
      
      protected var §<H§:§,!0§;
      
      private var §+l§:§try §;
      
      private var §00§:§try §;
      
      private var §5!0§:§try §;
      
      private var §8!G§:Stage;
      
      private var §33§:§9Z§;
      
      protected var §]!!§:§9!#§;
      
      protected var §#g§:§9!#§;
      
      protected var § !F§:Number = 0.0;
      
      protected var §?!=§:String;
      
      private var §`!C§:Boolean;
      
      protected var §7-§:Boolean;
      
      protected var §5!=§:uint = 1.417339207E9;
      
      public var §5I§:Boolean;
      
      public function §2^§(param1:Stage)
      {
         this.§,G§ = [];
         super();
         this.§6a§ = new EventDispatcher();
         this.§1§ = new §2F§();
         this.§8!G§ = param1;
         this.§1y§ = §5#§.§[8§;
         this.§<H§ = this.initAnimationManager(this.§1y§);
         this.§+l§ = this.initThemeGraphicsManager();
         this.§00§ = this.§%v§();
         this.§5!0§ = this.§#3§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§@x§ = new §?h§(§"0§,param1,new Rectangle(0,0,§[o§.static,§[o§.§for§),_loc2_);
         §[o§.§&6§.addEventListener(Event.ENTER_FRAME,this.§@x§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§ ,§,false,0,true);
         this.§@x§.§5U§ = false;
         this.§@x§.enableErrorChecking = false;
         this.§@x§.§5=§ = 2;
         this.§@x§.§#c§();
      }
      
      public static function §7%§(param1:§+>§, param2:§+>§) : Number
      {
         var _loc3_:Number = param1.§+j§ - param2.§+j§;
         var _loc4_:Number = param1.§42§ - param2.§42§;
         return §for §(_loc3_,_loc4_);
      }
      
      public static function §for §(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§-I§ && this.§1S§)
         {
            this.§-I§ = this.§ use§.§4-§;
         }
         return this.§-I§;
      }
      
      public function get §1S§() : Sprite
      {
         if(!this.§ use§)
         {
            this.§ use§ = this.§@x§.§6!"§ as §"0§;
            this.§ use§.§<!<§ = false;
         }
         return this.§ use§;
      }
      
      private function get §2!8§() : DisplayObject
      {
         if(this.§1S§)
         {
            return (this.§1S§ as §"0§).§2!8§;
         }
         return null;
      }
      
      public function get §0!§() : §,!0§
      {
         return this.§<H§;
      }
      
      public function get textureManager() : §5#§
      {
         return this.§1y§;
      }
      
      public function get camera() : §2!1§
      {
         return this.§>!1§;
      }
      
      public function get objects() : §?!!§
      {
         return this.§3U§;
      }
      
      public function get particles() : §>=§
      {
         return this.§@<§;
      }
      
      public function get background() : §8!!§
      {
         return this.§"!@§;
      }
      
      public function get slingshot() : §9"§
      {
         return this.§2"§;
      }
      
      public function get activeObject() : §+>§
      {
         return this.§&!5§;
      }
      
      public function get §1!6§() : §%!>§
      {
         return this.§-;§;
      }
      
      public function get stage() : Stage
      {
         return this.§8!G§;
      }
      
      public function get §@y§() : §try §
      {
         return this.§5!0§;
      }
      
      protected function get §2!$§() : §try §
      {
         return this.§+l§;
      }
      
      public function set activeObject(param1:§+>§) : void
      {
         this.§&!5§ = param1;
      }
      
      public function set §%4§(param1:Boolean) : void
      {
         this.§7-§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§!"§)
         {
            this.§!"§.dispose();
         }
         if(this.§1y§)
         {
            this.§1y§.dispose();
         }
         if(this.§+l§ && this.§+l§.textureManager)
         {
            this.§+l§.textureManager.dispose();
         }
         if(this.§5!0§ && this.§5!0§.textureManager)
         {
            this.§5!0§.textureManager.dispose();
         }
         if(this.§@x§)
         {
            this.§@x§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §try §
      {
         return null;
      }
      
      protected function §%v§() : §try §
      {
         return null;
      }
      
      protected function §#3§() : §try §
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§5#§) : §,!0§
      {
         return new §,!0§(param1);
      }
      
      public function §"3§(param1:Boolean) : void
      {
         if(§?h§.§ n§)
         {
            if(param1)
            {
               §?h§.§ n§.start();
            }
            else
            {
               §?h§.§ n§.stop();
               §?h§.§ n§.color = 0;
            }
         }
      }
      
      public function §[!C§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §%!<§(param1:§!h§) : void
      {
         if(this.§,Z§ != null)
         {
            this.§,Z§.removeEventListeners();
         }
         this.§,Z§ = param1;
         if(this.mReadyToRun)
         {
            this.§,Z§.addEventListeners();
         }
      }
      
      public function §3!%§() : §9!#§
      {
         return this.§]!!§;
      }
      
      public function §>&§(param1:§[N§, param2:Array, param3:Function) : void
      {
         this.§!"§ = param1;
         var _loc4_:int = this.§!"§.§0!>§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§1y§.§5§(this.§!"§.§5&§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§6a§.addEventListener(Event.INIT,param3);
            this.§,G§.push(param3);
         }
         if(this.§,m§(param2))
         {
            this.§`E§();
         }
      }
      
      private function §,m§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§1y§.§&!%§())
         {
            _loc2_ = this.§1y§.§;!$§ / 1000;
            _loc3_ = this.§1y§.§@!C§ / 1000;
            §3f§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§-_§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§<H§.initializeAnimations(param1);
      }
      
      private function § ,§(param1:Event) : void
      {
         this.§1y§.§^2§();
         if(this.§2!$§ && this.§2!$§.textureManager)
         {
            this.§2!$§.textureManager.§^2§();
         }
         if(this.§@y§ && this.§@y§.textureManager)
         {
            this.§@y§.textureManager.§^2§();
         }
         if(this.§-_§)
         {
            this.§,m§(this.§-_§);
            this.§-_§ = null;
            this.§`E§();
         }
         if(this.§,Z§ != null && this.mReadyToRun)
         {
            this.§,Z§.addEventListeners();
         }
         if(this.§+l§)
         {
            this.§+l§.§&!%§();
         }
         if(this.§5!0§)
         {
            if(this.§5!0§.textureManager)
            {
               this.§5!0§.textureManager.§^2§();
               this.§5!0§.§&!%§();
            }
         }
      }
      
      private function §`E§() : void
      {
         this.§6a§.dispatchEvent(new Event(Event.INIT));
         this.§3$§();
      }
      
      private function §3$§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§,G§)
         {
            this.§6a§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§,G§ = [];
      }
      
      public function init(param1:§8+§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§-;§ = new §%!>§(this,param1);
         this.§>!1§ = this.initLevelCamera(param1);
         this.§#!H§ = 0;
         this.§6&§ = 0;
         this.§7!§ = 0;
         this.§`!C§ = false;
         this.mReadyToRun = false;
         this.§?^§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §<G§ = param1.theme;
         this.§'f§ = param1;
         this.§+5§ = this.§5?§(param1.theme);
         this.§>^§ = this.§<4§(param1.theme);
         if(this.§+5§ && this.§>^§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§6!%§(param1.theme);
         }
         this.§;!%§();
         §^;§.init();
      }
      
      protected function §;!%§() : void
      {
         this.§]!!§ = new §9!#§(§0$§.§[C§);
      }
      
      protected function §5?§(param1:String) : Boolean
      {
         if(this.§+l§)
         {
            return false;
         }
         return true;
      }
      
      protected function §<4§(param1:String) : Boolean
      {
         var _loc2_:§7D§ = null;
         if(this.§00§)
         {
            _loc2_ = §!c§.§9!§(param1);
            if(_loc2_)
            {
               if(_loc2_.§,M§ && !this.§00§.§@L§(_loc2_.§,M§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §6!%§(param1:String) : void
      {
         var _loc2_:§7D§ = null;
         if(this.§+l§ && !this.§5?§(param1))
         {
            this.§+l§.removeEventListener(Event.COMPLETE,this.§3!0§);
            this.§+l§.removeEventListener(Event.CANCEL,this.§<^§);
            this.§+l§.addEventListener(Event.COMPLETE,this.§3!0§);
            this.§+l§.addEventListener(Event.CANCEL,this.§<^§);
            this.§+l§.§'[§(param1);
         }
         if(this.§00§ && !this.§<4§(param1))
         {
            this.§00§.removeEventListener(Event.COMPLETE,this.§!+§);
            this.§00§.removeEventListener(Event.CANCEL,this.§'m§);
            this.§00§.addEventListener(Event.COMPLETE,this.§!+§);
            this.§00§.addEventListener(Event.CANCEL,this.§'m§);
            _loc2_ = §!c§.§9!§(param1);
            if(_loc2_)
            {
               this.§00§.§'[§(_loc2_.§,M§);
            }
         }
      }
      
      private function §3!0§(param1:Event) : void
      {
         this.§+l§.removeEventListener(Event.COMPLETE,this.§3!0§);
         this.§+l§.removeEventListener(Event.CANCEL,this.§<^§);
         this.§+5§ = true;
         if(this.§+5§ && this.§>^§)
         {
            this.initialize(this.§'f§);
         }
      }
      
      private function §<^§(param1:Event) : void
      {
         this.§+l§.removeEventListener(Event.COMPLETE,this.§3!0§);
         this.§+l§.removeEventListener(Event.CANCEL,this.§<^§);
         this.§?^§ = true;
      }
      
      private function §!+§(param1:Event) : void
      {
         this.§+l§.removeEventListener(Event.COMPLETE,this.§!+§);
         this.§+l§.removeEventListener(Event.CANCEL,this.§'m§);
         this.§>^§ = true;
         if(this.§+5§ && this.§>^§)
         {
            this.initialize(this.§'f§);
         }
      }
      
      private function §'m§(param1:Event) : void
      {
         this.§+l§.removeEventListener(Event.COMPLETE,this.§!+§);
         this.§+l§.removeEventListener(Event.CANCEL,this.§'m§);
         this.§>^§ = true;
         if(this.§+5§ && this.§>^§)
         {
            this.initialize(this.§'f§);
         }
      }
      
      public function get backgroundTextureManager() : §5#§
      {
         return this.§1y§;
      }
      
      protected function initialize(param1:§8+§) : void
      {
         this.§7-§ = false;
         this.§5I§ = false;
         if(§?h§.§;B§)
         {
            §?h§.§;B§.speed = 1;
         }
         this.§[f§ = new §0q§(this);
         this.§"!@§ = this.initLevelBackground(param1.theme,this.§-;§.§&p§ / §,]§,this.backgroundTextureManager,this.§>!1§.§';§());
         this.§"!@§.§#i§(§[o§.§%!!§());
         this.§3U§ = this.initLevelObjectManager(param1);
         this.§2"§ = this.initLevelSlingshot(param1);
         this.§@<§ = this.§%!A§(this.§<H§,this.§1y§);
         this.§>!1§.init();
         this.§@[§();
         this.§?%§();
         this.mReadyToRun = true;
         if(this.§,Z§)
         {
            this.§,Z§.addEventListeners();
         }
      }
      
      protected function §?%§() : void
      {
         if(this.§?!=§)
         {
            this.§#g§ = §9!#§.initialize(this.§?!=§);
            this.§#g§.speed = 1;
            this.§#g§.play();
            this.§ !F§ = -1000;
            this.§?!=§ = null;
         }
      }
      
      public function §]h§(param1:String) : void
      {
         this.§?!=§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§#g§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§#g§)
         {
            if(param1)
            {
               this.§#g§.speed = Math.min(this.§#g§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§#g§.speed = Math.max(this.§#g§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§#g§)
         {
            this.§#g§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§8+§) : §?!!§
      {
         return new §?!!§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§8+§) : §2!1§
      {
         return new §2!1§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§5#§, param4:Number) : §8!!§
      {
         return new §8!!§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§8+§) : §9"§
      {
         return new §9"§(this,param1,new Sprite());
      }
      
      protected function §%!A§(param1:§,!0§, param2:§5#§) : §>=§
      {
         return new §>=§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§8+§ = new §8+§();
         _loc3_.§&J§ = -12;
         var _loc4_:§?!&§;
         (_loc4_ = new §?!&§()).left = 0;
         _loc4_.top = -§2!1§.§2s§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §2!1§.§2s§;
         _loc4_.right = _loc4_.left + §2!1§.§%!+§;
         _loc4_.y = -13.929;
         _loc4_.x = §2!1§.§%!+§;
         _loc4_.id = §2!1§.§=B§;
         _loc3_.§]^§(_loc4_);
         var _loc5_:§?!&§;
         (_loc5_ = new §?!&§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §2!1§.§%!+§;
         _loc5_.bottom = _loc5_.top + §2!1§.§2s§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §2!1§.§%!+§ / 2;
         _loc5_.id = §2!1§.§+I§;
         _loc3_.§]^§(_loc5_);
         if(param2)
         {
            this.§!y§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§<G§ != null)
         {
            _loc3_.theme = §<G§;
         }
         this.init(_loc3_);
      }
      
      protected function §""§() : Number
      {
         this.§5!=§ ^= this.§5!=§ << 21;
         this.§5!=§ ^= this.§5!=§ >>> 35;
         this.§5!=§ ^= this.§5!=§ << 4;
         return this.§5!=§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §!y§(param1:§8+§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§=!3§ = null;
         this.§5!=§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§""§() * 5;
               (_loc5_ = new §=!3§()).x = 30 + _loc3_ * 10 + this.§""§() * 9;
               if(_loc2_ == 0)
               {
                  _loc5_.y = 0;
                  if(_loc3_ == 1 || _loc3_ == 2 || _loc3_ == 4)
                  {
                     _loc5_.id = "PIG_MUSTACHE";
                  }
                  else
                  {
                     _loc5_.id = "PIG_HELMET";
                  }
                  _loc5_.angle = 45 - this.§""§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§""§() * 3 - _loc3_ * 8;
                  if((_loc4_ = (_loc3_ * _loc3_ + _loc2_ * _loc3_ + _loc2_) % 5) < 2)
                  {
                     _loc5_.id = "BIRD_RED";
                  }
                  else if(_loc4_ == 3)
                  {
                     _loc5_.id = "BIRD_YELLOW";
                  }
                  else
                  {
                     _loc5_.id = "BIRD_BLUE";
                  }
                  _loc5_.angle = this.§""§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §!!#§() : void
      {
      }
      
      public function §@[§() : void
      {
         if(§8!!§.§=t§)
         {
            this.§?2§(this.§"!@§.§`;§,false);
         }
         this.§?2§(this.§@<§.§4!A§(§>=§.§8o§),false);
         this.§?2§(this.§@<§.§4!A§(§>=§.§8'§),true);
         this.§?2§(this.§@<§.§4!A§(§>=§.§!!+§),true);
         this.§?2§(this.§3U§.§9z§,true);
         this.§?2§(this.§2"§.sprite,true);
         this.§?2§(this.§@<§.§4!A§(§>=§.§>!5§),true);
         this.§?2§(this.§"!@§.§9!=§,false);
         if(§8!!§.§=t§)
         {
            this.§?2§(this.§"!@§.§[$§,false);
         }
         this.§?2§(this.§@<§.§4!A§(§>=§.§0,§),true);
         if(!§0q§.§;K§)
         {
         }
      }
      
      private function §?2§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §[o§.§<T§;
         param2 /= §[o§.§<T§;
         _loc3_.x = (param1 / §2!1§.§;l§ + this.§>!1§.§6v§ - §2!1§.§ !B§ / §2!1§.§;l§) * §,]§;
         _loc3_.y = (param2 / §2!1§.§;l§ + this.§>!1§.§^_§ - §2!1§.§false§ / §2!1§.§;l§) * §,]§;
         return _loc3_;
      }
      
      public function §'!,§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §,]§ + §2!1§.§ !B§ / §2!1§.§;l§ - this.§>!1§.§6v§) * §2!1§.§;l§;
         _loc3_.y = (param2 / §,]§ + §2!1§.§false§ / §2!1§.§;l§ - this.§>!1§.§^_§) * §2!1§.§;l§;
         var _loc4_:Number = Math.max(§[o§.§<T§,§[o§.§>k§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §do§(param1:String, param2:Number, param3:Number) : void
      {
         this.§3U§.addObject(param1,param2,param3);
      }
      
      public function §0u§() : void
      {
         if(this.§2!8§)
         {
            this.§2!8§.visible = true;
            this.§2!8§.alpha = 0;
         }
         this.§?U§ = 0;
      }
      
      public function §%§() : void
      {
         this.§33§ = new §9Z§(§`5§.§3x§,§`5§.§"y§);
      }
      
      public function §1r§() : void
      {
         this.§33§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§"!@§)
         {
            this.§"!@§.dispose();
            this.§"!@§ = null;
         }
         if(this.§3U§)
         {
            this.§3U§.dispose();
            this.§3U§ = null;
            this.§&!5§ = null;
         }
         if(this.§[f§)
         {
            if(!this.§[f§.§super§)
            {
            }
            this.§[f§.clear();
            this.§[f§ = null;
         }
         if(this.§-;§)
         {
            this.§-;§.clear();
            this.§-;§ = null;
         }
         if(this.§2"§)
         {
            this.§2"§.dispose();
            this.§2"§ = null;
         }
         if(this.§>!1§)
         {
            this.§>!1§.clear();
            this.§>!1§ = null;
         }
         if(this.§@<§)
         {
            this.§@<§.dispose();
            this.§@<§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§#!H§ = 0;
         this.§6&§ = 0;
         this.mReadyToRun = false;
         this.§`!C§ = false;
         this.§?U§ = §`5§.§62§;
         if(this.§1S§)
         {
            (this.§1S§ as §"0§).§8X§.x = 0;
            (this.§1S§ as §"0§).§8X§.y = 0;
         }
         if(this.§2!8§)
         {
            this.§2!8§.visible = false;
         }
         this.§#g§ = null;
         this.§]!!§ = null;
         if(this.§+l§)
         {
            this.§+l§.removeEventListener(Event.COMPLETE,this.§3!0§);
            this.§+l§.removeEventListener(Event.CANCEL,this.§<^§);
         }
         if(this.§00§)
         {
            this.§00§.removeEventListener(Event.COMPLETE,this.§!+§);
            this.§00§.removeEventListener(Event.CANCEL,this.§'m§);
         }
         this.§3$§();
         if(§?h§.§ n§)
         {
            §?h§.§ n§.color = 0;
         }
         if(this.§,Z§)
         {
            this.§,Z§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function § h§() : String
      {
         if(this.§]!!§)
         {
            return this.§]!!§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§?h§.§6t§())
         {
            return 0;
         }
         if(this.§#g§ && this.§#g§.§%!'§)
         {
            return this.§8=§(param1,param2,param3);
         }
         return this.§`&§(param1,true,param2,param3);
      }
      
      protected function §`&§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§7-§)
         {
            param1 *= 0.2;
            if(§?h§.§;B§)
            {
               §?h§.§;B§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§6&§ += param1;
         if(param3)
         {
            this.§#!H§ += param1;
            _loc5_ = this.§[f§.§!5§(this.§#!H§);
            this.§2"§.update(param1,param4);
            this.§#!H§ = _loc5_;
         }
         else
         {
            this.§3U§.§&o§(param1);
            this.§#!H§ = 0;
         }
         if(param2)
         {
            this.§'!G§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §8=§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §0q§.§7<§ * 1000;
         if(this.§#g§)
         {
            param1 *= this.§#g§.speed;
            _loc5_ = this.§6&§ + param1;
            while(this.§6&§ + _loc4_ < _loc5_)
            {
               if(this.§6&§ + _loc4_ > this.§ !F§)
               {
                  this.§#g§.step(this);
                  this.§ !F§ += _loc4_;
               }
               this.§`&§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§ !F§ + _loc4_)
            {
               this.§#g§.step(this);
               this.§ !F§ += _loc4_;
            }
            if(this.§6&§ < _loc5_)
            {
               this.§`&§(_loc5_ - this.§6&§,true,param2,param3);
            }
            return param1;
         }
         return this.§`&§(_loc4_,true,param2,param3);
      }
      
      private function §'!G§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§"!@§.update(param1);
         this.§3U§.§%1§(param1,param2);
         this.§=!B§();
         if(this.§?U§ < §`5§.§62§)
         {
            this.§?U§ += param1;
            _loc3_ = §`5§.§62§ / 2;
            _loc4_ = (-Math.abs(this.§?U§ - _loc3_) + _loc3_) * (§`5§.§-l§ / _loc3_);
            if(this.§2!8§)
            {
               this.§2!8§.alpha = _loc4_;
            }
         }
         else if(this.§2!8§)
         {
            this.§2!8§.visible = false;
         }
         if(this.§33§)
         {
            if(!this.§33§.§-0§(this.§>!1§,param1))
            {
               this.§1r§();
            }
         }
         this.§>!1§.§,e§(param1);
         this.§[f§.§3a§();
         this.§@<§.update(param1);
      }
      
      public function §@p§(param1:Number) : void
      {
         this.objects.§&o§(param1 * 1000);
         this.objects.§+!H§(param1 * 1000);
         this.§=`§();
      }
      
      public function §=!B§() : void
      {
         var _loc1_:§+>§ = null;
         if(this.§6&§ > this.§7!§ + 1000 / 30)
         {
            if(this.§"!8§ != null)
            {
               for each(_loc1_ in this.§"!8§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§7!§ = this.§6&§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§+>§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§3U§.isPigsAlive(true))
            {
               _loc2_ = this.§3U§.§ '§(true);
               _loc2_.§<p§.mTryToScream = §`-§.§`w§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§3U§.§@P§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§3U§.isPigsAlive(true))
            {
               _loc2_ = this.§3U§.§ '§(true);
               _loc2_.§<p§.mTryToBlink = §`-§.§&H§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§3U§.§@P§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §'b§.§'e§;
         }
         §^;§.addScore(param1,param2);
         this.§,Z§.addScore(param1);
         if(param3 && param1 > 0 && !this.§5I§)
         {
            this.§-!=§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §-!=§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §'b§.§%0§;
         }
         this.§@<§.§-X§(§'b§.§]!F§,§>=§.§0,§,§'b§.§-N§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §2A§(param1:§+>§) : void
      {
         if(this.§"!8§ == null)
         {
            this.§"!8§ = new Array();
         }
         this.§"!8§.push(param1);
      }
      
      public function §4x§() : void
      {
         this.§2"§.§4x§();
         this.§3U§.§5e§();
         this.§5I§ = true;
      }
      
      public function §%!-§(param1:§+>§) : void
      {
         this.§@<§.§5!5§(§>=§.§8o§);
         if(this.§"!8§.indexOf(param1) >= 0)
         {
            this.§"!8§.splice(this.§"!8§.indexOf(param1),1);
         }
         if(this.§"!8§.length == 0)
         {
            this.§"!8§ = null;
         }
      }
      
      public function §,0§(param1:§,1§, param2:Number, param3:Number) : void
      {
         this.§&!5§ = this.§3U§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§9"§.§?,§) : Number(§9"§.§<x§);
         if(param1.§9[§ > 1)
         {
            this.§&!5§.§ !9§(param1.§9[§);
            this.§&!5§.§<p§.§?! §();
         }
         if(param1.§2@§ != 0)
         {
            _loc4_ = param1.§2@§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§&!5§.§5x§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§^O§(§2!1§.§-9§);
         if(this.§]!!§)
         {
            this.§]!!§.§,0§(this.§[f§.§-p§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§`!C§ = true;
      }
      
      private function §=`§() : void
      {
         if(!this.§`!C§)
         {
            return;
         }
         this.§`!C§ = false;
         if(this.activeObject is §4!;§ && !(this.activeObject as §4!;§).§;$§)
         {
            if(this.activeObject.activateSpecialPower(this.§!-§))
            {
               this.§^t§ = true;
            }
         }
         else
         {
            this.§3U§.§]N§();
         }
         if(this.§]!!§)
         {
            this.§]!!§.§7'§(this.§[f§.§-p§);
         }
      }
      
      public function §=!G§() : void
      {
         this.§3U§.§=!G§();
      }
      
      public function §'=§() : void
      {
         this.§3U§.§+1§();
      }
      
      public function §%n§() : §8+§
      {
         var _loc1_:§8+§ = new §8+§();
         _loc1_.§1U§ = this.§'f§.§1U§;
         _loc1_.§#o§ = this.§'f§.§#o§;
         this.§>!1§.§5!3§(_loc1_);
         this.§3U§.§?n§(_loc1_);
         this.§2"§.§9C§(_loc1_);
         _loc1_.theme = this.§"!@§.§?e§();
         return _loc1_;
      }
      
      public function §3?§() : int
      {
         return this.§'f§.§#o§;
      }
      
      public function §@'§() : int
      {
         return this.§'f§.§1U§;
      }
      
      public function §=Q§(param1:int) : void
      {
         this.§'f§.§#o§ = param1;
      }
      
      public function §`4§(param1:int) : void
      {
         this.§'f§.§1U§ = param1;
      }
      
      public function §&2§(param1:Number, param2:Number) : void
      {
         if(this.§ use§)
         {
            this.§ use§.§ in§(param1,param2);
         }
         if(this.§>!1§)
         {
            this.§>!1§.§,e§(0);
         }
      }
      
      public function get §6!7§() : §8+§
      {
         return this.§'f§;
      }
      
      public function get §!-§() : §?!!§
      {
         return this.§3U§;
      }
      
      protected function get starling() : §?h§
      {
         return this.§@x§;
      }
      
      public function get damageParticleLimit() : int
      {
         return §<!-§;
      }
   }
}
