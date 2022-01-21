package §'a§
{
   import §"U§.b2Vec2;
   import §%`§.§"s§;
   import §%`§.§,!k§;
   import §%`§.§;!"§;
   import §%`§.override;
   import §+-§.§,K§;
   import §+-§.§3!5§;
   import §+-§.§9`§;
   import §+-§.§^D§;
   import §1!U§.§6R§;
   import §2!`§.§3F§;
   import §2!`§.§8!;§;
   import §4!$§.§<!2§;
   import §5!l§.§ !D§;
   import §5!l§.§!,§;
   import §5!l§.§>N§;
   import §5x§.DisplayObject;
   import §5x§.Sprite;
   import §6!X§.§"!'§;
   import §9!W§.§=!@§;
   import §;!j§.§;M§;
   import §=<§.§1+§;
   import §[#§.§[!A§;
   import §[_§.§2D§;
   import §[r§.§3=§;
   import §]6§.§9s§;
   import §]6§.§<"§;
   import §`!C§.§?0§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0!f§
   {
      
      private static const §'+§:int = 20;
      
      public static const §"i§:Number = §=!@§.§&"§;
      
      public static const §?%§:Number = §=!@§.§+! §;
      
      public static const §<C§:Number = 1 / 20;
      
      public static const §&H§:Number = §=!@§.§+! § * §<C§;
      
      public static const §1g§:Number = §"i§ * §<C§;
      
      public static const §8&§:§;M§ = new §;M§(13 - 3);
      
      public static var §!!`§:Number = 1;
      
      protected static var §;! §:String = §,K§.§9!+§;
       
      
      protected var §3!B§:§,!k§;
      
      private var §-U§:§"s§;
      
      private var §<o§:Array = null;
      
      protected var §'!Z§:§"!'§;
      
      public var mLevelEngine:§8<§;
      
      protected var § !W§:§;!'§;
      
      protected var §,!H§:§2D§;
      
      protected var §9!6§:§0U§;
      
      protected var §;!-§:§3F§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §>l§:Boolean = false;
      
      protected var §7!"§:Boolean = false;
      
      protected var §02§:Boolean = false;
      
      public var §'!I§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §&!X§:Number;
      
      public var §3+§:Number;
      
      private var §+8§:Number;
      
      public var §3!8§:§9`§;
      
      public var §&![§:Boolean = false;
      
      private var §6!0§:§3!f§;
      
      private var §!!K§:Sprite;
      
      protected var §1r§:§,K§;
      
      protected var §`3§:§[!A§ = null;
      
      private var §4l§:EventDispatcher;
      
      private var §?!§:Array;
      
      private var §4!i§:Array;
      
      protected var §&0§:§<!2§;
      
      private var §&!f§:§3=§;
      
      protected var §8!b§:§ !D§;
      
      protected var §=V§:§!,§;
      
      private var § U§:§>N§;
      
      private var §2!M§:§>N§;
      
      private var §^c§:§>N§;
      
      private var §#Z§:Stage;
      
      private var §"!F§:§"B§;
      
      protected var §%!N§:§6R§;
      
      protected var §@!Z§:§6R§;
      
      protected var § -§:Number = 0.0;
      
      protected var §-G§:String;
      
      private var § a§:Boolean;
      
      protected var §!J§:Boolean;
      
      protected var §@!<§:uint = 1.417339207E9;
      
      public var §!!B§:Boolean;
      
      public function §0!f§(param1:Stage)
      {
         this.§4!i§ = [];
         super();
         this.§4l§ = new EventDispatcher();
         this.§3!8§ = new §9`§();
         this.§#Z§ = param1;
         this.§8!b§ = § !D§.§'!S§;
         this.§=V§ = this.initAnimationManager(this.§8!b§);
         this.§ U§ = this.initThemeGraphicsManager();
         this.§2!M§ = this.§@!_§();
         this.§^c§ = this.§7!`§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§&0§ = new §<!2§(§3!f§,param1,new Rectangle(0,0,§=!@§.§&"§,§=!@§.§+! §),_loc2_);
         §=!@§.§4!X§.addEventListener(Event.ENTER_FRAME,this.§&0§.§<'§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§&>§,false,0,true);
         this.§&0§.simulateMultitouch = false;
         this.§&0§.enableErrorChecking = false;
         this.§&0§.§`G§ = 2;
         this.§&0§.§[!W§();
      }
      
      public static function §;!k§(param1:§"s§, param2:§"s§) : Number
      {
         var _loc3_:Number = param1.§'!B§ - param2.§'!B§;
         var _loc4_:Number = param1.§"-§ - param2.§"-§;
         return §1!%§(_loc3_,_loc4_);
      }
      
      public static function §1!%§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§!!K§ && this.§"&§)
         {
            this.§!!K§ = this.§6!0§.§!!d§;
         }
         return this.§!!K§;
      }
      
      public function get §"&§() : Sprite
      {
         if(!this.§6!0§)
         {
            this.§6!0§ = this.§&0§.§5!'§ as §3!f§;
            this.§6!0§.§^!7§ = false;
         }
         return this.§6!0§;
      }
      
      private function get §1e§() : DisplayObject
      {
         if(this.§"&§)
         {
            return (this.§"&§ as §3!f§).§1e§;
         }
         return null;
      }
      
      public function get animationManager() : §!,§
      {
         return this.§=V§;
      }
      
      public function get textureManager() : § !D§
      {
         return this.§8!b§;
      }
      
      public function get camera() : §2D§
      {
         return this.§,!H§;
      }
      
      public function get objects() : §,!k§
      {
         return this.§3!B§;
      }
      
      public function get particles() : §3F§
      {
         return this.§;!-§;
      }
      
      public function get background() : §"!'§
      {
         return this.§'!Z§;
      }
      
      public function get slingshot() : §0U§
      {
         return this.§9!6§;
      }
      
      public function get activeObject() : §"s§
      {
         return this.§-U§;
      }
      
      public function get §9!I§() : §;!'§
      {
         return this.§ !W§;
      }
      
      public function get stage() : Stage
      {
         return this.§#Z§;
      }
      
      public function get § !2§() : §>N§
      {
         return this.§^c§;
      }
      
      protected function get §2o§() : §>N§
      {
         return this.§ U§;
      }
      
      public function set activeObject(param1:§"s§) : void
      {
         this.§-U§ = param1;
      }
      
      public function set §@!N§(param1:Boolean) : void
      {
         this.§!J§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§&!f§)
         {
            this.§&!f§.dispose();
         }
         if(this.§8!b§)
         {
            this.§8!b§.dispose();
         }
         if(this.§ U§ && this.§ U§.textureManager)
         {
            this.§ U§.textureManager.dispose();
         }
         if(this.§^c§ && this.§^c§.textureManager)
         {
            this.§^c§.textureManager.dispose();
         }
         if(this.§&0§)
         {
            this.§&0§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §>N§
      {
         return null;
      }
      
      protected function §@!_§() : §>N§
      {
         return null;
      }
      
      protected function §7!`§() : §>N§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§ !D§) : §!,§
      {
         return new §!,§(param1);
      }
      
      public function §>h§(param1:Boolean) : void
      {
         if(§<!2§.§[!]§)
         {
            if(param1)
            {
               §<!2§.§[!]§.start();
            }
            else
            {
               §<!2§.§[!]§.stop();
               §<!2§.§[!]§.color = 0;
            }
         }
      }
      
      public function §8!2§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function setController(param1:§[!A§) : void
      {
         if(this.§`3§ != null)
         {
            this.§`3§.removeEventListeners();
         }
         this.§`3§ = param1;
         if(this.mReadyToRun)
         {
            this.§`3§.addEventListeners();
         }
      }
      
      public function §6!S§() : §6R§
      {
         return this.§%!N§;
      }
      
      public function §`'§(param1:§3=§, param2:Array, param3:Function) : void
      {
         this.§&!f§ = param1;
         var _loc4_:int = this.§&!f§.§]K§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§8!b§.§?!_§(this.§&!f§.§9?§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§4l§.addEventListener(Event.INIT,param3);
            this.§4!i§.push(param3);
         }
         if(this.§7!c§(param2))
         {
            this.§8!X§();
         }
      }
      
      private function §7!c§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§8!b§.§%!i§())
         {
            _loc2_ = this.§8!b§.§0"§ / 1000;
            _loc3_ = this.§8!b§.§"!3§ / 1000;
            §1+§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§?!§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§=V§.initializeAnimations(param1);
      }
      
      private function §&>§(param1:Event) : void
      {
         this.§8!b§.§'V§();
         if(this.§2o§ && this.§2o§.textureManager)
         {
            this.§2o§.textureManager.§'V§();
         }
         if(this.§ !2§ && this.§ !2§.textureManager)
         {
            this.§ !2§.textureManager.§'V§();
         }
         if(this.§?!§)
         {
            this.§7!c§(this.§?!§);
            this.§?!§ = null;
            this.§8!X§();
         }
         if(this.§`3§ != null && this.mReadyToRun)
         {
            this.§`3§.addEventListeners();
         }
         if(this.§ U§)
         {
            this.§ U§.§%!i§();
         }
         if(this.§^c§)
         {
            if(this.§^c§.textureManager)
            {
               this.§^c§.textureManager.§'V§();
               this.§^c§.§%!i§();
            }
         }
      }
      
      private function §8!X§() : void
      {
         this.§4l§.dispatchEvent(new Event(Event.INIT));
         this.§"0§();
      }
      
      private function §"0§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§4!i§)
         {
            this.§4l§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§4!i§ = [];
      }
      
      public function init(param1:§,K§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§ !W§ = new §;!'§(this,param1);
         this.§,!H§ = this.initLevelCamera(param1);
         this.§&!X§ = 0;
         this.§3+§ = 0;
         this.§+8§ = 0;
         this.§ a§ = false;
         this.mReadyToRun = false;
         this.§>l§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §;! § = param1.theme;
         this.§1r§ = param1;
         this.§7!"§ = this.§@!>§(param1.theme);
         this.§02§ = this.§;Q§(param1.theme);
         if(this.§7!"§ && this.§02§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§8!>§(param1.theme);
         }
         this.initReplay();
         §#!`§.init();
      }
      
      protected function initReplay() : void
      {
         this.§%!N§ = new §6R§(§3!5§.§-!2§);
      }
      
      protected function §@!>§(param1:String) : Boolean
      {
         if(this.§ U§)
         {
            return false;
         }
         return true;
      }
      
      protected function §;Q§(param1:String) : Boolean
      {
         var _loc2_:§9s§ = null;
         if(this.§2!M§)
         {
            _loc2_ = §<"§.§0!&§(param1);
            if(_loc2_)
            {
               if(_loc2_.§#!1§ && !this.§2!M§.§1z§(_loc2_.§#!1§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §8!>§(param1:String) : void
      {
         var _loc2_:§9s§ = null;
         if(this.§ U§ && !this.§@!>§(param1))
         {
            this.§ U§.removeEventListener(Event.COMPLETE,this.§<!1§);
            this.§ U§.removeEventListener(Event.CANCEL,this.§<!-§);
            this.§ U§.addEventListener(Event.COMPLETE,this.§<!1§);
            this.§ U§.addEventListener(Event.CANCEL,this.§<!-§);
            this.§ U§.§ _§(param1);
         }
         if(this.§2!M§ && !this.§;Q§(param1))
         {
            this.§2!M§.removeEventListener(Event.COMPLETE,this.§<!B§);
            this.§2!M§.removeEventListener(Event.CANCEL,this.§82§);
            this.§2!M§.addEventListener(Event.COMPLETE,this.§<!B§);
            this.§2!M§.addEventListener(Event.CANCEL,this.§82§);
            _loc2_ = §<"§.§0!&§(param1);
            if(_loc2_)
            {
               this.§2!M§.§ _§(_loc2_.§#!1§);
            }
         }
      }
      
      private function §<!1§(param1:Event) : void
      {
         this.§ U§.removeEventListener(Event.COMPLETE,this.§<!1§);
         this.§ U§.removeEventListener(Event.CANCEL,this.§<!-§);
         this.§7!"§ = true;
         if(this.§7!"§ && this.§02§)
         {
            this.initialize(this.§1r§);
         }
      }
      
      private function §<!-§(param1:Event) : void
      {
         this.§ U§.removeEventListener(Event.COMPLETE,this.§<!1§);
         this.§ U§.removeEventListener(Event.CANCEL,this.§<!-§);
         this.§>l§ = true;
      }
      
      private function §<!B§(param1:Event) : void
      {
         this.§ U§.removeEventListener(Event.COMPLETE,this.§<!B§);
         this.§ U§.removeEventListener(Event.CANCEL,this.§82§);
         this.§02§ = true;
         if(this.§7!"§ && this.§02§)
         {
            this.initialize(this.§1r§);
         }
      }
      
      private function §82§(param1:Event) : void
      {
         this.§ U§.removeEventListener(Event.COMPLETE,this.§<!B§);
         this.§ U§.removeEventListener(Event.CANCEL,this.§82§);
         this.§02§ = true;
         if(this.§7!"§ && this.§02§)
         {
            this.initialize(this.§1r§);
         }
      }
      
      public function get backgroundTextureManager() : § !D§
      {
         return this.§8!b§;
      }
      
      protected function initialize(param1:§,K§) : void
      {
         this.§!J§ = false;
         this.§!!B§ = false;
         if(§<!2§.§!K§)
         {
            §<!2§.§!K§.speed = 1;
         }
         this.mLevelEngine = new §8<§(this);
         this.§'!Z§ = this.initLevelBackground(param1.theme,this.§ !W§.§8!R§ / §<C§,this.backgroundTextureManager,this.§,!H§.§2+§());
         this.§'!Z§.§!C§(§=!@§.§00§());
         this.§3!B§ = this.initLevelObjectManager(param1);
         this.§9!6§ = this.initLevelSlingshot(param1);
         this.§;!-§ = this.initParticleManager(this.§=V§,this.§8!b§);
         this.§,!H§.init();
         this.§@!G§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§`3§)
         {
            this.§`3§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§-G§)
         {
            this.§@!Z§ = §6R§.initialize(this.§-G§);
            this.§@!Z§.speed = 1;
            this.§@!Z§.play();
            this.§ -§ = -1000;
            this.§-G§ = null;
         }
      }
      
      public function §[i§(param1:String) : void
      {
         this.§-G§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§@!Z§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§@!Z§)
         {
            if(param1)
            {
               this.§@!Z§.speed = Math.min(this.§@!Z§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§@!Z§.speed = Math.max(this.§@!Z§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§@!Z§)
         {
            this.§@!Z§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§,K§) : §,!k§
      {
         return new §,!k§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§,K§) : §2D§
      {
         return new §2D§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§ !D§, param4:Number) : §"!'§
      {
         return new §"!'§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§,K§) : §0U§
      {
         return new §0U§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§!,§, param2:§ !D§) : §3F§
      {
         return new §3F§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§,K§ = this.preProcessLevel();
         var _loc4_:§^D§;
         (_loc4_ = new §^D§()).left = 0;
         _loc4_.top = -§2D§.§@t§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §2D§.§@t§;
         _loc4_.right = _loc4_.left + §2D§.§!<§;
         _loc4_.y = -13.929;
         _loc4_.x = §2D§.§!<§;
         _loc4_.id = §2D§.§%1§;
         _loc3_.§%U§(_loc4_);
         var _loc5_:§^D§;
         (_loc5_ = new §^D§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §2D§.§!<§;
         _loc5_.bottom = _loc5_.top + §2D§.§@t§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §2D§.§!<§ / 2;
         _loc5_.id = §2D§.§^!0§;
         _loc3_.§%U§(_loc5_);
         this.§[D§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§;! § != null)
         {
            _loc3_.theme = §;! §;
         }
         this.init(_loc3_);
      }
      
      protected function §[D§(param1:§,K§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§];§(param1);
         }
      }
      
      protected function preProcessLevel() : §,K§
      {
         var _loc1_:§,K§ = new §,K§();
         _loc1_.§"!"§ = -12;
         return new §,K§();
      }
      
      protected function §3!K§() : Number
      {
         this.§@!<§ ^= this.§@!<§ << 21;
         this.§@!<§ ^= this.§@!<§ >>> 35;
         this.§@!<§ ^= this.§@!<§ << 4;
         return this.§@!<§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §];§(param1:§,K§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§?0§ = null;
         this.§@!<§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§3!K§() * 5;
               (_loc5_ = new §?0§()).x = 30 + _loc3_ * 10 + this.§3!K§() * 9;
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
                  _loc5_.angle = 45 - this.§3!K§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§3!K§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§3!K§() * 360;
               }
               param1.§1!!§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §^!G§() : void
      {
      }
      
      public function §@!G§() : void
      {
         if(§"!'§.§0!"§)
         {
            this.§1Q§(this.§'!Z§.§+w§,false);
         }
         this.§1Q§(this.§;!-§.§6!-§(§3F§.§@!C§),false);
         this.§1Q§(this.§;!-§.§6!-§(§3F§.§44§),true);
         this.§1Q§(this.§;!-§.§6!-§(§3F§.§15§),true);
         this.§1Q§(this.§3!B§.§,!1§,true);
         this.§1Q§(this.§9!6§.sprite,true);
         this.§1Q§(this.§;!-§.§6!-§(§3F§.§![§),true);
         this.§1Q§(this.§'!Z§.§!!R§,false);
         if(§"!'§.§0!"§)
         {
            this.§1Q§(this.§'!Z§.§ ^§,false);
         }
         this.§1Q§(this.§;!-§.§6!-§(§3F§.§!T§),true);
      }
      
      private function §1Q§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §=!@§.§',§;
         param2 /= §=!@§.§',§;
         _loc3_.x = (param1 / §2D§.§0#§ + this.§,!H§.§?!0§ - §2D§.§]!A§ / §2D§.§0#§) * §<C§;
         _loc3_.y = (param2 / §2D§.§0#§ + this.§,!H§.§?!B§ - §2D§.§-!>§ / §2D§.§0#§) * §<C§;
         return _loc3_;
      }
      
      public function §]!i§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §<C§ + §2D§.§]!A§ / §2D§.§0#§ - this.§,!H§.§?!0§) * §2D§.§0#§;
         _loc3_.y = (param2 / §<C§ + §2D§.§-!>§ / §2D§.§0#§ - this.§,!H§.§?!B§) * §2D§.§0#§;
         var _loc4_:Number = Math.max(§=!@§.§',§,§=!@§.§6d§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §'u§(param1:String, param2:Number, param3:Number) : void
      {
         this.§3!B§.§1!!§(param1,param2,param3);
      }
      
      public function §[§() : void
      {
         if(this.§1e§)
         {
            this.§1e§.visible = true;
            this.§1e§.alpha = 0;
         }
         this.§'!I§ = 0;
      }
      
      public function §-!!§() : void
      {
         this.§"!F§ = new §"B§(§^N§.§^6§,§^N§.§]0§);
      }
      
      public function §=y§() : void
      {
         this.§"!F§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§'!Z§)
         {
            this.§'!Z§.dispose();
            this.§'!Z§ = null;
         }
         if(this.§3!B§)
         {
            this.§3!B§.dispose();
            this.§3!B§ = null;
            this.§-U§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§96§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§ !W§)
         {
            this.§ !W§.clear();
            this.§ !W§ = null;
         }
         if(this.§9!6§)
         {
            this.§9!6§.dispose();
            this.§9!6§ = null;
         }
         if(this.§,!H§)
         {
            this.§,!H§.clear();
            this.§,!H§ = null;
         }
         if(this.§;!-§)
         {
            this.§;!-§.dispose();
            this.§;!-§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§&!X§ = 0;
         this.§3+§ = 0;
         this.mReadyToRun = false;
         this.§ a§ = false;
         this.§'!I§ = §^N§.§5I§;
         if(this.§"&§)
         {
            (this.§"&§ as §3!f§).§=z§.x = 0;
            (this.§"&§ as §3!f§).§=z§.y = 0;
         }
         if(this.§1e§)
         {
            this.§1e§.visible = false;
         }
         this.§@!Z§ = null;
         this.§%!N§ = null;
         if(this.§ U§)
         {
            this.§ U§.removeEventListener(Event.COMPLETE,this.§<!1§);
            this.§ U§.removeEventListener(Event.CANCEL,this.§<!-§);
         }
         if(this.§2!M§)
         {
            this.§2!M§.removeEventListener(Event.COMPLETE,this.§<!B§);
            this.§2!M§.removeEventListener(Event.CANCEL,this.§82§);
         }
         this.§"0§();
         if(§<!2§.§[!]§)
         {
            §<!2§.§[!]§.color = 0;
         }
         if(this.§`3§)
         {
            this.§`3§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function § !5§() : String
      {
         if(this.§%!N§)
         {
            return this.§%!N§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§<!2§.§>f§())
         {
            return 0;
         }
         if(this.§@!Z§ && this.§@!Z§.§['§)
         {
            return this.§%o§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§!J§)
         {
            param1 *= 0.2;
            if(§<!2§.§!K§)
            {
               §<!2§.§!K§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§3+§ += param1;
         if(param3)
         {
            this.§&!X§ += param1;
            _loc5_ = this.mLevelEngine.§'!A§(this.§&!X§);
            this.§9!6§.update(param1,param4);
            this.§&!X§ = _loc5_;
         }
         else
         {
            this.§3!B§.§]i§(param1);
            this.§&!X§ = 0;
         }
         if(param2)
         {
            this.§%3§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §%o§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §8<§.§^;§ * 1000;
         if(this.§@!Z§)
         {
            param1 *= this.§@!Z§.speed;
            _loc5_ = this.§3+§ + param1;
            while(this.§3+§ + _loc4_ < _loc5_)
            {
               if(this.§3+§ + _loc4_ > this.§ -§)
               {
                  this.§@!Z§.step(this);
                  this.§ -§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§ -§ + _loc4_)
            {
               this.§@!Z§.step(this);
               this.§ -§ += _loc4_;
            }
            if(this.§3+§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§3+§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §%3§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§'!Z§.update(param1);
         this.§3!B§.§;J§(param1,param2);
         this.§?!R§();
         if(this.§'!I§ < §^N§.§5I§)
         {
            this.§'!I§ += param1;
            _loc3_ = §^N§.§5I§ / 2;
            _loc4_ = (-Math.abs(this.§'!I§ - _loc3_) + _loc3_) * (§^N§.§?V§ / _loc3_);
            if(this.§1e§)
            {
               this.§1e§.alpha = _loc4_;
            }
         }
         else if(this.§1e§)
         {
            this.§1e§.visible = false;
         }
         if(this.§"!F§)
         {
            if(!this.§"!F§.§ 2§(this.§,!H§,param1))
            {
               this.§=y§();
            }
         }
         this.§,!H§.§'!i§(param1);
         this.mLevelEngine.§"!U§();
         this.§;!-§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.§]i§(param1 * 1000);
         this.objects.updateLevelObjectsComplete(param1 * 1000);
         this.§&a§();
      }
      
      public function §?!R§() : void
      {
         var _loc1_:§"s§ = null;
         if(this.§3+§ > this.§+8§ + 1000 / 30)
         {
            if(this.§<o§ != null)
            {
               for each(_loc1_ in this.§<o§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§+8§ = this.§3+§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§"s§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§3!B§.isPigsAlive(true))
            {
               _loc2_ = this.§3!B§.§ !8§(true);
               _loc2_.§2R§.mTryToScream = §;!"§.§]l§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§3!B§.§<9§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§3!B§.isPigsAlive(true))
            {
               _loc2_ = this.§3!B§.§ !8§(true);
               _loc2_.§2R§.mTryToBlink = §;!"§.§&!K§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§3!B§.§<9§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §8!;§.§>![§;
         }
         §#!`§.addScore(param1,param2);
         this.§`3§.addScore(param1);
         if(param3 && param1 > 0 && !this.§!!B§)
         {
            this.§]!O§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §]!O§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §8!;§.§[!#§;
         }
         this.§;!-§.§;!G§(§8!;§.§]!^§,§3F§.§!T§,§8!;§.§5_§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §=]§(param1:§"s§) : void
      {
         if(this.§<o§ == null)
         {
            this.§<o§ = new Array();
         }
         this.§<o§.push(param1);
      }
      
      public function §+9§() : void
      {
         this.§9!6§.§+9§();
         this.§3!B§.§2!c§();
         this.§!!B§ = true;
      }
      
      public function §1$§(param1:§"s§) : void
      {
         this.§;!-§.§4!0§(§3F§.§@!C§);
         if(this.§<o§.indexOf(param1) >= 0)
         {
            this.§<o§.splice(this.§<o§.indexOf(param1),1);
         }
         if(this.§<o§.length == 0)
         {
            this.§<o§ = null;
         }
      }
      
      public function § !o§(param1:§use §, param2:Number, param3:Number) : void
      {
         this.§-U§ = this.§3!B§.§1!!§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§0U§.BIRD_LAUNCH_FORCE_GREEN) : Number(§0U§.BIRD_LAUNCH_FORCE);
         if(param1.§`?§ > 1)
         {
            this.§-U§.§-!"§(param1.§`?§);
            this.§-U§.§2R§.§4@§();
         }
         if(param1.§7!#§ != 0)
         {
            _loc4_ = param1.§7!#§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§-U§.§[^§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.setAction(§2D§.§=R§);
         if(this.§%!N§)
         {
            this.§%!N§.§ !o§(this.mLevelEngine.§5J§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§ a§ = true;
      }
      
      private function §&a§() : void
      {
         if(!this.§ a§)
         {
            return;
         }
         this.§ a§ = false;
         if(this.activeObject is override && !(this.activeObject as override).§0C§)
         {
            if(this.activeObject.activateSpecialPower(this.§1!-§))
            {
               this.§&![§ = true;
            }
         }
         else
         {
            this.§3!B§.§6!H§();
         }
         if(this.§%!N§)
         {
            this.§%!N§.§?!a§(this.mLevelEngine.§5J§);
         }
      }
      
      public function §#!n§() : void
      {
         this.§3!B§.§#!n§();
      }
      
      public function §if§() : void
      {
         this.§3!B§.§9!=§();
      }
      
      public function §2%§() : §,K§
      {
         var _loc1_:§,K§ = new §,K§();
         _loc1_.§3!7§ = this.§1r§.§3!7§;
         _loc1_.§9!&§ = this.§1r§.§9!&§;
         this.§,!H§.§+a§(_loc1_);
         this.§3!B§.§2t§(_loc1_);
         this.§9!6§.§+§(_loc1_);
         _loc1_.theme = this.§'!Z§.§'!c§();
         return _loc1_;
      }
      
      public function §+!G§() : int
      {
         return this.§1r§.§9!&§;
      }
      
      public function §3O§() : int
      {
         return this.§1r§.§3!7§;
      }
      
      public function § w§(param1:int) : void
      {
         this.§1r§.§9!&§ = param1;
      }
      
      public function §;D§(param1:int) : void
      {
         this.§1r§.§3!7§ = param1;
      }
      
      public function §]u§(param1:Number, param2:Number) : void
      {
         if(this.§6!0§)
         {
            this.§6!0§.§"!o§(param1,param2);
         }
         if(this.§,!H§)
         {
            this.§,!H§.§'!i§(0);
         }
      }
      
      public function get §8Q§() : §,K§
      {
         return this.§1r§;
      }
      
      public function get §1!-§() : §,!k§
      {
         return this.§3!B§;
      }
      
      protected function get §%4§() : §<!2§
      {
         return this.§&0§;
      }
      
      public function get §4!d§() : int
      {
         return §'+§;
      }
   }
}
