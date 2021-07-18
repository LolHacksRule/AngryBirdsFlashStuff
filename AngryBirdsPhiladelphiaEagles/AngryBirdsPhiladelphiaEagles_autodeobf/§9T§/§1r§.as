package §9T§
{
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§'?§;
   import §#e§.§1b§;
   import §#e§.§@!+§;
   import §&o§.§72§;
   import §-!&§.§1!"§;
   import §-!&§.§20§;
   import §-!&§.§3!,§;
   import §-!&§.§?k§;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §-!O§.§?Z§;
   import §0!E§.§;!D§;
   import §1&§.§["§;
   import §5!G§.§2! §;
   import §5!G§.§>X§;
   import §5Z§.§[Z§;
   import §8!B§.§#! §;
   import §=I§.§2i§;
   import §?#§.§,H§;
   import §^]§.§[z§;
   import §^]§.§]X§;
   import §^]§.§^§;
   import §^]§.§`!K§;
   import §`!D§.§,q§;
   import §`K§.§ L§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1r§
   {
      
      private static const §-!,§:int = 20;
      
      public static const §'6§:Number = §#! §.§-p§;
      
      public static const §=w§:Number = §#! §.§5!9§;
      
      public static const §[M§:Number = 1 / 20;
      
      public static const §^L§:Number = §#! §.§5!9§ * §[M§;
      
      public static const §#C§:Number = §'6§ * §[M§;
      
      public static const §5m§:§;!D§ = new §;!D§(13 - 3);
      
      public static var §0!1§:Number = 1;
      
      protected static var §2n§:String = §[z§.§"!N§;
       
      
      protected var §#;§:§20§;
      
      private var §9N§:§3!,§;
      
      private var §&k§:Array = null;
      
      protected var §8!E§:§["§;
      
      public var §-!H§:§ !&§;
      
      protected var §5T§:§^=§;
      
      protected var §+=§:§?Z§;
      
      protected var §7;§:§97§;
      
      protected var §>;§:§5!5§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §]=§:Boolean = false;
      
      protected var §2@§:Boolean = false;
      
      protected var §24§:Boolean = false;
      
      public var §<!9§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §98§:Number;
      
      public var §>,§:Number;
      
      private var §%!2§:Number;
      
      public var §?'§:§^§;
      
      public var §5!Q§:Boolean = false;
      
      private var §`2§:§@A§;
      
      private var §5'§:Sprite;
      
      protected var §,I§:§[z§;
      
      protected var §3R§:§,H§ = null;
      
      private var §=9§:EventDispatcher;
      
      private var §52§:Array;
      
      private var §1;§:Array;
      
      protected var §=G§:§[Z§;
      
      private var §>!7§:§2i§;
      
      protected var §2"§:§'?§;
      
      protected var §'_§:§@!+§;
      
      private var §8<§:§1b§;
      
      private var §7@§:§1b§;
      
      private var §]-§:§1b§;
      
      private var §@&§:Stage;
      
      private var §3`§:§[9§;
      
      protected var § !N§:§,q§;
      
      protected var §"2§:§,q§;
      
      protected var §>0§:Number = 0.0;
      
      protected var §2&§:String;
      
      private var §9m§:Boolean;
      
      protected var §0!;§:Boolean;
      
      protected var §6!2§:uint = 1.417339207E9;
      
      public var §^!F§:Boolean;
      
      public function §1r§(param1:Stage)
      {
         this.§1;§ = [];
         super();
         this.§=9§ = new EventDispatcher();
         this.§?'§ = new §^§();
         this.§@&§ = param1;
         this.§2"§ = §'?§.§>o§;
         this.§'_§ = this.initAnimationManager(this.§2"§);
         this.§8<§ = this.initThemeGraphicsManager();
         this.§7@§ = this.§'!J§();
         this.§]-§ = this.§&s§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§=G§ = new §[Z§(§@A§,param1,new Rectangle(0,0,§#! §.§-p§,§#! §.§5!9§),_loc2_);
         §#! §.§ A§.addEventListener(Event.ENTER_FRAME,this.§=G§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§]!$§,false,0,true);
         this.§=G§.§"!R§ = false;
         this.§=G§.enableErrorChecking = false;
         this.§=G§.§2_§ = 2;
         this.§=G§.§!3§();
      }
      
      public static function §?!&§(param1:§3!,§, param2:§3!,§) : Number
      {
         var _loc3_:Number = param1.§49§ - param2.§49§;
         var _loc4_:Number = param1.§"!<§ - param2.§"!<§;
         return §return§(_loc3_,_loc4_);
      }
      
      public static function §return§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§5'§ && this.§,?§)
         {
            this.§5'§ = this.§`2§.§'t§;
         }
         return this.§5'§;
      }
      
      public function get §,?§() : Sprite
      {
         if(!this.§`2§)
         {
            this.§`2§ = this.§=G§.§%W§ as §@A§;
            this.§`2§.§!!"§ = false;
         }
         return this.§`2§;
      }
      
      private function get §'Z§() : DisplayObject
      {
         if(this.§,?§)
         {
            return (this.§,?§ as §@A§).§'Z§;
         }
         return null;
      }
      
      public function get §<'§() : §@!+§
      {
         return this.§'_§;
      }
      
      public function get textureManager() : §'?§
      {
         return this.§2"§;
      }
      
      public function get camera() : §?Z§
      {
         return this.§+=§;
      }
      
      public function get objects() : §20§
      {
         return this.§#;§;
      }
      
      public function get particles() : §5!5§
      {
         return this.§>;§;
      }
      
      public function get background() : §["§
      {
         return this.§8!E§;
      }
      
      public function get slingshot() : §97§
      {
         return this.§7;§;
      }
      
      public function get activeObject() : §3!,§
      {
         return this.§9N§;
      }
      
      public function get §9!>§() : §^=§
      {
         return this.§5T§;
      }
      
      public function get stage() : Stage
      {
         return this.§@&§;
      }
      
      public function get §5-§() : §1b§
      {
         return this.§]-§;
      }
      
      protected function get §&?§() : §1b§
      {
         return this.§8<§;
      }
      
      public function set activeObject(param1:§3!,§) : void
      {
         this.§9N§ = param1;
      }
      
      public function set slowMotion(param1:Boolean) : void
      {
         this.§0!;§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§>!7§)
         {
            this.§>!7§.dispose();
         }
         if(this.§2"§)
         {
            this.§2"§.dispose();
         }
         if(this.§8<§ && this.§8<§.textureManager)
         {
            this.§8<§.textureManager.dispose();
         }
         if(this.§]-§ && this.§]-§.textureManager)
         {
            this.§]-§.textureManager.dispose();
         }
         if(this.§=G§)
         {
            this.§=G§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §1b§
      {
         return null;
      }
      
      protected function §'!J§() : §1b§
      {
         return null;
      }
      
      protected function §&s§() : §1b§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§'?§) : §@!+§
      {
         return new §@!+§(param1);
      }
      
      public function §^!6§(param1:Boolean) : void
      {
         if(§[Z§.§%m§)
         {
            if(param1)
            {
               §[Z§.§%m§.start();
            }
            else
            {
               §[Z§.§%m§.stop();
               §[Z§.§%m§.color = 0;
            }
         }
      }
      
      public function §%_§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §;]§(param1:§,H§) : void
      {
         if(this.§3R§ != null)
         {
            this.§3R§.removeEventListeners();
         }
         this.§3R§ = param1;
         if(this.mReadyToRun)
         {
            this.§3R§.addEventListeners();
         }
      }
      
      public function §>F§() : §,q§
      {
         return this.§ !N§;
      }
      
      public function §0!8§(param1:§2i§, param2:Array, param3:Function) : void
      {
         this.§>!7§ = param1;
         var _loc4_:int = this.§>!7§.§!!G§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§2"§.§!=§(this.§>!7§.§`a§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§=9§.addEventListener(Event.INIT,param3);
            this.§1;§.push(param3);
         }
         if(this.§4K§(param2))
         {
            this.§0Y§();
         }
      }
      
      private function §4K§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§2"§.§7E§())
         {
            _loc2_ = this.§2"§.§,!K§ / 1000;
            _loc3_ = this.§2"§.§1z§ / 1000;
            § L§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§52§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§'_§.initializeAnimations(param1);
      }
      
      private function §]!$§(param1:Event) : void
      {
         this.§2"§.§&I§();
         if(this.§&?§ && this.§&?§.textureManager)
         {
            this.§&?§.textureManager.§&I§();
         }
         if(this.§5-§ && this.§5-§.textureManager)
         {
            this.§5-§.textureManager.§&I§();
         }
         if(this.§52§)
         {
            this.§4K§(this.§52§);
            this.§52§ = null;
            this.§0Y§();
         }
         if(this.§3R§ != null && this.mReadyToRun)
         {
            this.§3R§.addEventListeners();
         }
         if(this.§8<§)
         {
            this.§8<§.§7E§();
         }
         if(this.§]-§)
         {
            if(this.§]-§.textureManager)
            {
               this.§]-§.textureManager.§&I§();
               this.§]-§.§7E§();
            }
         }
      }
      
      private function §0Y§() : void
      {
         this.§=9§.dispatchEvent(new Event(Event.INIT));
         this.§0y§();
      }
      
      private function §0y§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§1;§)
         {
            this.§=9§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§1;§ = [];
      }
      
      public function init(param1:§[z§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§5T§ = new §^=§(this,param1);
         this.§+=§ = this.initLevelCamera(param1);
         this.§98§ = 0;
         this.§>,§ = 0;
         this.§%!2§ = 0;
         this.§9m§ = false;
         this.mReadyToRun = false;
         this.§]=§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §2n§ = param1.theme;
         this.§,I§ = param1;
         this.§2@§ = this.§[a§(param1.theme);
         this.§24§ = this.§6i§(param1.theme);
         if(this.§2@§ && this.§24§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§4!7§(param1.theme);
         }
         this.§!!2§();
         §<!!§.init();
      }
      
      protected function §!!2§() : void
      {
         this.§ !N§ = new §,q§(§`!K§.§5g§);
      }
      
      protected function §[a§(param1:String) : Boolean
      {
         if(this.§8<§)
         {
            return false;
         }
         return true;
      }
      
      protected function §6i§(param1:String) : Boolean
      {
         var _loc2_:§2! § = null;
         if(this.§7@§)
         {
            _loc2_ = §>X§.§2H§(param1);
            if(_loc2_)
            {
               if(_loc2_.§]!6§ && !this.§7@§.§5l§(_loc2_.§]!6§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §4!7§(param1:String) : void
      {
         var _loc2_:§2! § = null;
         if(this.§8<§ && !this.§[a§(param1))
         {
            this.§8<§.removeEventListener(Event.COMPLETE,this.§2D§);
            this.§8<§.removeEventListener(Event.CANCEL,this.§"!L§);
            this.§8<§.addEventListener(Event.COMPLETE,this.§2D§);
            this.§8<§.addEventListener(Event.CANCEL,this.§"!L§);
            this.§8<§.§+W§(param1);
         }
         if(this.§7@§ && !this.§6i§(param1))
         {
            this.§7@§.removeEventListener(Event.COMPLETE,this.§%!9§);
            this.§7@§.removeEventListener(Event.CANCEL,this.§3y§);
            this.§7@§.addEventListener(Event.COMPLETE,this.§%!9§);
            this.§7@§.addEventListener(Event.CANCEL,this.§3y§);
            _loc2_ = §>X§.§2H§(param1);
            if(_loc2_)
            {
               this.§7@§.§+W§(_loc2_.§]!6§);
            }
         }
      }
      
      private function §2D§(param1:Event) : void
      {
         this.§8<§.removeEventListener(Event.COMPLETE,this.§2D§);
         this.§8<§.removeEventListener(Event.CANCEL,this.§"!L§);
         this.§2@§ = true;
         if(this.§2@§ && this.§24§)
         {
            this.initialize(this.§,I§);
         }
      }
      
      private function §"!L§(param1:Event) : void
      {
         this.§8<§.removeEventListener(Event.COMPLETE,this.§2D§);
         this.§8<§.removeEventListener(Event.CANCEL,this.§"!L§);
         this.§]=§ = true;
      }
      
      private function §%!9§(param1:Event) : void
      {
         this.§8<§.removeEventListener(Event.COMPLETE,this.§%!9§);
         this.§8<§.removeEventListener(Event.CANCEL,this.§3y§);
         this.§24§ = true;
         if(this.§2@§ && this.§24§)
         {
            this.initialize(this.§,I§);
         }
      }
      
      private function §3y§(param1:Event) : void
      {
         this.§8<§.removeEventListener(Event.COMPLETE,this.§%!9§);
         this.§8<§.removeEventListener(Event.CANCEL,this.§3y§);
         this.§24§ = true;
         if(this.§2@§ && this.§24§)
         {
            this.initialize(this.§,I§);
         }
      }
      
      public function get backgroundTextureManager() : §'?§
      {
         return this.§2"§;
      }
      
      protected function initialize(param1:§[z§) : void
      {
         this.§0!;§ = false;
         this.§^!F§ = false;
         if(§[Z§.§[A§)
         {
            §[Z§.§[A§.speed = 1;
         }
         this.§-!H§ = new § !&§(this);
         this.§8!E§ = this.initLevelBackground(param1.theme,this.§5T§.§^!O§ / §[M§,this.backgroundTextureManager,this.§+=§.§>y§());
         this.§8!E§.§!Y§(§#! §.§#!-§());
         this.§#;§ = this.initLevelObjectManager(param1);
         this.§7;§ = this.initLevelSlingshot(param1);
         this.§>;§ = this.initParticleManager(this.§'_§,this.§2"§);
         this.§+=§.init();
         this.§`!Q§();
         this.§<!$§();
         this.mReadyToRun = true;
         if(this.§3R§)
         {
            this.§3R§.addEventListeners();
         }
      }
      
      protected function §<!$§() : void
      {
         if(this.§2&§)
         {
            this.§"2§ = §,q§.initialize(this.§2&§);
            this.§"2§.speed = 1;
            this.§"2§.play();
            this.§>0§ = -1000;
            this.§2&§ = null;
         }
      }
      
      public function §-j§(param1:String) : void
      {
         this.§2&§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§"2§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§"2§)
         {
            if(param1)
            {
               this.§"2§.speed = Math.min(this.§"2§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§"2§.speed = Math.max(this.§"2§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§"2§)
         {
            this.§"2§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§[z§) : §20§
      {
         return new §20§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§[z§) : §?Z§
      {
         return new §?Z§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§'?§, param4:Number) : §["§
      {
         return new §["§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§[z§) : §97§
      {
         return new §97§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§@!+§, param2:§'?§) : §5!5§
      {
         return new §5!5§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§[z§ = this.§,o§();
         var _loc4_:§]X§;
         (_loc4_ = new §]X§()).left = 0;
         _loc4_.top = -§?Z§.§&5§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §?Z§.§&5§;
         _loc4_.right = _loc4_.left + §?Z§.§@!C§;
         _loc4_.y = -13.929;
         _loc4_.x = §?Z§.§@!C§;
         _loc4_.id = §?Z§.§2d§;
         _loc3_.§-!L§(_loc4_);
         var _loc5_:§]X§;
         (_loc5_ = new §]X§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §?Z§.§@!C§;
         _loc5_.bottom = _loc5_.top + §?Z§.§&5§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §?Z§.§@!C§ / 2;
         _loc5_.id = §?Z§.§`"§;
         _loc3_.§-!L§(_loc5_);
         this.§do §(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§2n§ != null)
         {
            _loc3_.theme = §2n§;
         }
         this.init(_loc3_);
      }
      
      protected function §do §(param1:§[z§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§34§(param1);
         }
      }
      
      protected function §,o§() : §[z§
      {
         var _loc1_:§[z§ = new §[z§();
         _loc1_.§#2§ = -12;
         return new §[z§();
      }
      
      protected function §`n§() : Number
      {
         this.§6!2§ ^= this.§6!2§ << 21;
         this.§6!2§ ^= this.§6!2§ >>> 35;
         this.§6!2§ ^= this.§6!2§ << 4;
         return this.§6!2§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §34§(param1:§[z§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§72§ = null;
         this.§6!2§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§`n§() * 5;
               (_loc5_ = new §72§()).x = 30 + _loc3_ * 10 + this.§`n§() * 9;
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
                  _loc5_.angle = 45 - this.§`n§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§`n§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§`n§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §7>§() : void
      {
      }
      
      public function §`!Q§() : void
      {
         if(§["§.§"p§)
         {
            this.§ else§(this.§8!E§.§3!>§,false);
         }
         this.§ else§(this.§>;§.§[!8§(§5!5§.§[f§),false);
         this.§ else§(this.§>;§.§[!8§(§5!5§.§&!J§),true);
         this.§ else§(this.§>;§.§[!8§(§5!5§.§[!K§),true);
         this.§ else§(this.§#;§.§'T§,true);
         this.§ else§(this.§7;§.sprite,true);
         this.§ else§(this.§>;§.§[!8§(§5!5§.§-U§),true);
         this.§ else§(this.§8!E§.§3a§,false);
         if(§["§.§"p§)
         {
            this.§ else§(this.§8!E§.§4B§,false);
         }
         this.§ else§(this.§>;§.§[!8§(§5!5§.§6!Q§),true);
      }
      
      private function § else§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §#! §.§3M§;
         param2 /= §#! §.§3M§;
         _loc3_.x = (param1 / §?Z§.levelScale + this.§+=§.§`!6§ - §?Z§.§#!#§ / §?Z§.levelScale) * §[M§;
         _loc3_.y = (param2 / §?Z§.levelScale + this.§+=§.§'!9§ - §?Z§.§+^§ / §?Z§.levelScale) * §[M§;
         return _loc3_;
      }
      
      public function box2DToScreen(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §[M§ + §?Z§.§#!#§ / §?Z§.levelScale - this.§+=§.§`!6§) * §?Z§.levelScale;
         _loc3_.y = (param2 / §[M§ + §?Z§.§+^§ / §?Z§.levelScale - this.§+=§.§'!9§) * §?Z§.levelScale;
         var _loc4_:Number = Math.max(§#! §.§3M§,§#! §.§+!E§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function § !I§(param1:String, param2:Number, param3:Number) : void
      {
         this.§#;§.addObject(param1,param2,param3);
      }
      
      public function §0C§() : void
      {
         if(this.§'Z§)
         {
            this.§'Z§.visible = true;
            this.§'Z§.alpha = 0;
         }
         this.§<!9§ = 0;
      }
      
      public function §6!-§() : void
      {
         this.§3`§ = new §[9§(Tuner.§+"§,Tuner.§0e§);
      }
      
      public function §4-§() : void
      {
         this.§3`§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§8!E§)
         {
            this.§8!E§.dispose();
            this.§8!E§ = null;
         }
         if(this.§#;§)
         {
            this.§#;§.dispose();
            this.§#;§ = null;
            this.§9N§ = null;
         }
         if(this.§-!H§)
         {
            if(!this.§-!H§.§@!§)
            {
            }
            this.§-!H§.clear();
            this.§-!H§ = null;
         }
         if(this.§5T§)
         {
            this.§5T§.clear();
            this.§5T§ = null;
         }
         if(this.§7;§)
         {
            this.§7;§.dispose();
            this.§7;§ = null;
         }
         if(this.§+=§)
         {
            this.§+=§.clear();
            this.§+=§ = null;
         }
         if(this.§>;§)
         {
            this.§>;§.dispose();
            this.§>;§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§98§ = 0;
         this.§>,§ = 0;
         this.mReadyToRun = false;
         this.§9m§ = false;
         this.§<!9§ = Tuner.§]!J§;
         if(this.§,?§)
         {
            (this.§,?§ as §@A§).§1!$§.x = 0;
            (this.§,?§ as §@A§).§1!$§.y = 0;
         }
         if(this.§'Z§)
         {
            this.§'Z§.visible = false;
         }
         this.§"2§ = null;
         this.§ !N§ = null;
         if(this.§8<§)
         {
            this.§8<§.removeEventListener(Event.COMPLETE,this.§2D§);
            this.§8<§.removeEventListener(Event.CANCEL,this.§"!L§);
         }
         if(this.§7@§)
         {
            this.§7@§.removeEventListener(Event.COMPLETE,this.§%!9§);
            this.§7@§.removeEventListener(Event.CANCEL,this.§3y§);
         }
         this.§0y§();
         if(§[Z§.§%m§)
         {
            §[Z§.§%m§.color = 0;
         }
         if(this.§3R§)
         {
            this.§3R§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §2?§() : String
      {
         if(this.§ !N§)
         {
            return this.§ !N§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§[Z§.§?4§())
         {
            return 0;
         }
         if(this.§"2§ && this.§"2§.§+c§)
         {
            return this.§3A§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§0!;§)
         {
            param1 *= 0.2;
            if(§[Z§.§[A§)
            {
               §[Z§.§[A§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§>,§ += param1;
         if(param3)
         {
            this.§98§ += param1;
            _loc5_ = this.§-!H§.§[b§(this.§98§);
            this.§7;§.update(param1,param4);
            this.§98§ = _loc5_;
         }
         else
         {
            this.§#;§.§@!=§(param1);
            this.§98§ = 0;
         }
         if(param2)
         {
            this.§?!§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §3A§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = § !&§.§,!H§ * 1000;
         if(this.§"2§)
         {
            param1 *= this.§"2§.speed;
            _loc5_ = this.§>,§ + param1;
            while(this.§>,§ + _loc4_ < _loc5_)
            {
               if(this.§>,§ + _loc4_ > this.§>0§)
               {
                  this.§"2§.step(this);
                  this.§>0§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§>0§ + _loc4_)
            {
               this.§"2§.step(this);
               this.§>0§ += _loc4_;
            }
            if(this.§>,§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§>,§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §?!§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§8!E§.update(param1);
         this.§#;§.§break§(param1,param2);
         this.§#4§();
         if(this.§<!9§ < Tuner.§]!J§)
         {
            this.§<!9§ += param1;
            _loc3_ = Tuner.§]!J§ / 2;
            _loc4_ = (-Math.abs(this.§<!9§ - _loc3_) + _loc3_) * (Tuner.§5h§ / _loc3_);
            if(this.§'Z§)
            {
               this.§'Z§.alpha = _loc4_;
            }
         }
         else if(this.§'Z§)
         {
            this.§'Z§.visible = false;
         }
         if(this.§3`§)
         {
            if(!this.§3`§.§#F§(this.§+=§,param1))
            {
               this.§4-§();
            }
         }
         this.§+=§.§8,§(param1);
         this.§-!H§.§+!;§();
         this.§>;§.update(param1);
      }
      
      public function §7!1§(param1:Number) : void
      {
         this.objects.§@!=§(param1 * 1000);
         this.objects.updateLevelObjectsComplete(param1 * 1000);
         this.§%!K§();
      }
      
      public function §#4§() : void
      {
         var _loc1_:§3!,§ = null;
         if(this.§>,§ > this.§%!2§ + 1000 / 30)
         {
            if(this.§&k§ != null)
            {
               for each(_loc1_ in this.§&k§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§%!2§ = this.§>,§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§3!,§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§#;§.isPigsAlive(true))
            {
               _loc2_ = this.§#;§.§2Y§(true);
               _loc2_.§3! §.mTryToScream = §?k§.§1J§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§#;§.§=T§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§#;§.isPigsAlive(true))
            {
               _loc2_ = this.§#;§.§2Y§(true);
               _loc2_.§3! §.mTryToBlink = §?k§.§[R§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§#;§.§=T§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §8R§.§^!M§;
         }
         §<!!§.addScore(param1,param2);
         this.§3R§.addScore(param1);
         if(param3 && param1 > 0 && !this.§^!F§)
         {
            this.§,!A§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §,!A§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §8R§.§"h§;
         }
         this.§>;§.addParticle(§8R§.§<T§,§5!5§.§6!Q§,§8R§.§@2§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §<a§(param1:§3!,§) : void
      {
         if(this.§&k§ == null)
         {
            this.§&k§ = new Array();
         }
         this.§&k§.push(param1);
      }
      
      public function §`r§() : void
      {
         this.§7;§.§`r§();
         this.§#;§.mightyEagleUsed();
         this.§^!F§ = true;
      }
      
      public function §3f§(param1:§3!,§) : void
      {
         this.§>;§.§@!3§(§5!5§.§[f§);
         if(this.§&k§.indexOf(param1) >= 0)
         {
            this.§&k§.splice(this.§&k§.indexOf(param1),1);
         }
         if(this.§&k§.length == 0)
         {
            this.§&k§ = null;
         }
      }
      
      public function shootBird(param1:§>>§, param2:Number, param3:Number) : void
      {
         this.§9N§ = this.§#;§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§97§.§]c§) : Number(§97§.§]!4§);
         if(param1.§<P§ > 1)
         {
            this.§9N§.§@!A§(param1.§<P§);
            this.§9N§.§3! §.§4!@§();
         }
         if(param1.§4!9§ != 0)
         {
            _loc4_ = param1.§4!9§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§9N§.§37§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§#!'§(§?Z§.§2N§);
         if(this.§ !N§)
         {
            this.§ !N§.shootBird(this.§-!H§.§=u§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§9m§ = true;
      }
      
      private function §%!K§() : void
      {
         if(!this.§9m§)
         {
            return;
         }
         this.§9m§ = false;
         if(this.activeObject is §1!"§ && !(this.activeObject as §1!"§).§ I§)
         {
            if(this.activeObject.activateSpecialPower(this.§6#§))
            {
               this.§5!Q§ = true;
            }
         }
         else
         {
            this.§#;§.§5R§();
         }
         if(this.§ !N§)
         {
            this.§ !N§.§;6§(this.§-!H§.§=u§);
         }
      }
      
      public function §`!'§() : void
      {
         this.§#;§.§`!'§();
      }
      
      public function §1!3§() : void
      {
         this.§#;§.§]W§();
      }
      
      public function §^v§() : §[z§
      {
         var _loc1_:§[z§ = new §[z§();
         _loc1_.§,!<§ = this.§,I§.§,!<§;
         _loc1_.§@w§ = this.§,I§.§@w§;
         this.§+=§.§1N§(_loc1_);
         this.§#;§.§^!#§(_loc1_);
         this.§7;§.§+?§(_loc1_);
         _loc1_.theme = this.§8!E§.§+!C§();
         return _loc1_;
      }
      
      public function §;e§() : int
      {
         return this.§,I§.§@w§;
      }
      
      public function §@K§() : int
      {
         return this.§,I§.§,!<§;
      }
      
      public function §>! §(param1:int) : void
      {
         this.§,I§.§@w§ = param1;
      }
      
      public function §&!C§(param1:int) : void
      {
         this.§,I§.§,!<§ = param1;
      }
      
      public function §=,§(param1:Number, param2:Number) : void
      {
         if(this.§`2§)
         {
            this.§`2§.§;!B§(param1,param2);
         }
         if(this.§+=§)
         {
            this.§+=§.§8,§(0);
         }
      }
      
      public function get §;,§() : §[z§
      {
         return this.§,I§;
      }
      
      public function get §6#§() : §20§
      {
         return this.§#;§;
      }
      
      protected function get starling() : §[Z§
      {
         return this.§=G§;
      }
      
      public function get damageParticleLimit() : int
      {
         return §-!,§;
      }
   }
}
