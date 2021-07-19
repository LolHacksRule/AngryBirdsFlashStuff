package §4!<§
{
   import §!!=§.§"l§;
   import §"a§.§!"J§;
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §+!c§.§;!=§;
   import §,"R§.§>!E§;
   import §-"N§.§3!K§;
   import §-p§.§7"4§;
   import §5!]§.§%!G§;
   import §6!^§.b2Vec2;
   import §9!n§.§0"T§;
   import §9!n§.§1S§;
   import §9!n§.§1j§;
   import §9!n§.LevelManager;
   import §9@§.§9!D§;
   import §<T§.§""#§;
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   import §`!G§.§+T§;
   import §`!G§.§2"L§;
   import §`!G§.§8"=§;
   import §`!G§.§[!8§;
   import §`1§.§0!"§;
   import §`1§.§4";§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §super§.§>y§;
   
   public class §'!S§
   {
      
      private static const §&!8§:int = 20;
      
      public static const §<!@§:Number = §?l§.§7!H§;
      
      public static const §#L§:Number = §?l§.§<"P§;
      
      public static const §2"<§:Number = 1 / 20;
      
      public static const §1"4§:Number = §?l§.§<"P§ * §2"<§;
      
      public static const §&H§:Number = §<!@§ * §2"<§;
      
      public static const §3"2§:§9!D§ = new §9!D§(13 - 3);
      
      public static var §5k§:Number = 1;
      
      protected static var § 5§:String = §0"T§.§=!p§;
       
      
      protected var §'H§:§8"=§;
      
      private var §="Q§:§[!8§;
      
      private var §0!t§:Array = null;
      
      protected var §#"O§:§3!K§;
      
      public var mLevelEngine:§-!5§;
      
      protected var §>"=§:§>">§;
      
      protected var §<<§:§"l§;
      
      protected var §`"G§:§&=§;
      
      protected var §6&§:§6!O§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §="D§:Boolean = false;
      
      protected var §9!d§:Boolean = false;
      
      protected var §3m§:Boolean = false;
      
      public var §1"P§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §`"7§:Number;
      
      public var §&";§:Number;
      
      private var §&O§:Number;
      
      public var §%s§:§1j§;
      
      public var §!^§:Boolean = false;
      
      private var §5v§:§?C§;
      
      private var §0!A§:Sprite;
      
      protected var §'C§:§0"T§;
      
      protected var §%V§:§7"4§ = null;
      
      private var §]" §:EventDispatcher;
      
      private var §@?§:Array;
      
      private var § true§:Array;
      
      protected var §]P§:§!"J§;
      
      private var §`J§:§>!E§;
      
      protected var §=!2§:§`m§;
      
      protected var §8"+§:§^!Y§;
      
      private var § !A§:§""#§;
      
      private var §>v§:§""#§;
      
      private var §3"&§:§""#§;
      
      private var §,">§:Stage;
      
      private var §#!§:§`!o§;
      
      protected var each:§%!G§;
      
      protected var §0!G§:§%!G§;
      
      protected var §?F§:Number = 0.0;
      
      protected var §!z§:String;
      
      private var §@A§:Boolean;
      
      protected var §6"H§:Boolean;
      
      protected var §+!0§:uint = 1.417339207E9;
      
      public var §;"S§:Boolean;
      
      public function §'!S§(param1:Stage)
      {
         this.§ true§ = [];
         super();
         this.§]" § = new EventDispatcher();
         this.§%s§ = new §1j§();
         this.§,">§ = param1;
         this.§=!2§ = §`m§.§&"5§;
         this.§8"+§ = this.initAnimationManager(this.§=!2§);
         this.§ !A§ = this.initThemeGraphicsManager();
         this.§>v§ = this.initThemeSoundsManager();
         this.§3"&§ = this.initCutSceneManager();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§]P§ = new §!"J§(§?C§,param1,new Rectangle(0,0,§?l§.§7!H§,§?l§.§<"P§),_loc2_);
         §?l§.§ "G§.addEventListener(Event.ENTER_FRAME,this.§]P§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§?3§,false,0,true);
         this.§]P§.§`!m§ = false;
         this.§]P§.enableErrorChecking = false;
         this.§]P§.§#'§ = 2;
         this.§]P§.§?"D§();
      }
      
      public static function §+'§(param1:§[!8§, param2:§[!8§) : Number
      {
         var _loc3_:Number = param1.§?!l§ - param2.§?!l§;
         var _loc4_:Number = param1.§68§ - param2.§68§;
         return §;!E§(_loc3_,_loc4_);
      }
      
      public static function §;!E§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§0!A§ && this.§&C§)
         {
            this.§0!A§ = this.§5v§.§&!6§;
         }
         return this.§0!A§;
      }
      
      public function get §&C§() : Sprite
      {
         if(!this.§5v§)
         {
            this.§5v§ = this.§]P§.§7Z§ as §?C§;
            this.§5v§.§^]§ = false;
         }
         return this.§5v§;
      }
      
      private function get §4+§() : DisplayObject
      {
         if(this.§&C§)
         {
            return (this.§&C§ as §?C§).§4+§;
         }
         return null;
      }
      
      public function get animationManager() : §^!Y§
      {
         return this.§8"+§;
      }
      
      public function get textureManager() : §`m§
      {
         return this.§=!2§;
      }
      
      public function get camera() : §"l§
      {
         return this.§<<§;
      }
      
      public function get objects() : §8"=§
      {
         return this.§'H§;
      }
      
      public function get particles() : §6!O§
      {
         return this.§6&§;
      }
      
      public function get background() : §3!K§
      {
         return this.§#"O§;
      }
      
      public function get slingshot() : §&=§
      {
         return this.§`"G§;
      }
      
      public function get activeObject() : §[!8§
      {
         return this.§="Q§;
      }
      
      public function get §-!z§() : §>">§
      {
         return this.§>"=§;
      }
      
      public function get stage() : Stage
      {
         return this.§,">§;
      }
      
      public function get §8K§() : §""#§
      {
         return this.§3"&§;
      }
      
      protected function get §]"8§() : §""#§
      {
         return this.§ !A§;
      }
      
      public function set activeObject(param1:§[!8§) : void
      {
         this.§="Q§ = param1;
      }
      
      public function set §3!%§(param1:Boolean) : void
      {
         this.§6"H§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§`J§)
         {
            this.§`J§.dispose();
         }
         if(this.§=!2§)
         {
            this.§=!2§.dispose();
         }
         if(this.§ !A§ && this.§ !A§.textureManager)
         {
            this.§ !A§.textureManager.dispose();
         }
         if(this.§3"&§ && this.§3"&§.textureManager)
         {
            this.§3"&§.textureManager.dispose();
         }
         if(this.§]P§)
         {
            this.§]P§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §""#§
      {
         return null;
      }
      
      protected function initThemeSoundsManager() : §""#§
      {
         return null;
      }
      
      protected function initCutSceneManager() : §""#§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§`m§) : §^!Y§
      {
         return new §^!Y§(param1);
      }
      
      public function §#"[§(param1:Boolean) : void
      {
         if(§!"J§.§1&§)
         {
            if(param1)
            {
               §!"J§.§1&§.start();
            }
            else
            {
               §!"J§.§1&§.stop();
               §!"J§.§1&§.color = 0;
            }
         }
      }
      
      public function §%l§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function getController() : §7"4§
      {
         return this.§%V§;
      }
      
      public function setController(param1:§7"4§) : void
      {
         if(this.§%V§ != null)
         {
            this.§%V§.removeEventListeners();
         }
         this.§%V§ = param1;
         if(this.mReadyToRun)
         {
            this.§%V§.addEventListeners();
         }
      }
      
      public function § D§() : §%!G§
      {
         return this.each;
      }
      
      public function §&!_§(param1:§>!E§, param2:Array, param3:Function) : void
      {
         this.§`J§ = param1;
         var _loc4_:int = this.§`J§.§=!;§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§=!2§.§0!6§(this.§`J§.§#"W§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§]" §.addEventListener(Event.INIT,param3);
            this.§ true§.push(param3);
         }
         if(this.§>"I§(param2))
         {
            this.§"Y§();
         }
      }
      
      private function §>"I§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§=!2§.§0"V§())
         {
            _loc2_ = this.§=!2§.§!!D§ / 1000;
            _loc3_ = this.§=!2§.§7!-§ / 1000;
            §;!=§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§@?§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§8"+§.initializeAnimations(param1);
      }
      
      private function §?3§(param1:Event) : void
      {
         this.§=!2§.§2!S§();
         if(this.§]"8§ && this.§]"8§.textureManager)
         {
            this.§]"8§.textureManager.§2!S§();
         }
         if(this.§8K§ && this.§8K§.textureManager)
         {
            this.§8K§.textureManager.§2!S§();
         }
         if(this.§@?§)
         {
            this.§>"I§(this.§@?§);
            this.§@?§ = null;
            this.§"Y§();
         }
         if(this.§%V§ != null && this.mReadyToRun)
         {
            this.§%V§.addEventListeners();
         }
         if(this.§ !A§)
         {
            this.§ !A§.§0"V§();
         }
         if(this.§3"&§)
         {
            if(this.§3"&§.textureManager)
            {
               this.§3"&§.textureManager.§2!S§();
               this.§3"&§.§0"V§();
            }
         }
      }
      
      private function §"Y§() : void
      {
         this.§]" §.dispatchEvent(new Event(Event.INIT));
         this.§%!q§();
      }
      
      private function §%!q§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§ true§)
         {
            this.§]" §.removeEventListener(Event.INIT,_loc1_);
         }
         this.§ true§ = [];
      }
      
      public function init(param1:§0"T§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§>"=§ = new §>">§(this,param1);
         this.§<<§ = this.initLevelCamera(param1);
         this.§`"7§ = 0;
         this.§&";§ = 0;
         this.§&O§ = 0;
         this.§@A§ = false;
         this.mReadyToRun = false;
         this.§="D§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         § 5§ = param1.theme;
         this.§'C§ = param1;
         this.§9!d§ = this.§>!N§(param1.theme);
         this.§3m§ = this.§<!X§(param1.theme);
         if(this.§9!d§ && this.§3m§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§`E§(param1.theme);
         }
         this.§ "L§();
         §;P§.init();
      }
      
      protected function § "L§() : void
      {
         this.each = new §%!G§(LevelManager.§ T§);
      }
      
      protected function §>!N§(param1:String) : Boolean
      {
         if(this.§ !A§)
         {
            return false;
         }
         return true;
      }
      
      protected function §<!X§(param1:String) : Boolean
      {
         var _loc2_:§0!"§ = null;
         if(this.§>v§)
         {
            _loc2_ = §4";§.§>"O§(param1);
            if(_loc2_)
            {
               if(_loc2_.§7! § && !this.§>v§.§#`§(_loc2_.§7! §))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §`E§(param1:String) : void
      {
         var _loc2_:§0!"§ = null;
         if(this.§ !A§ && !this.§>!N§(param1))
         {
            this.§ !A§.removeEventListener(Event.COMPLETE,this.§2!n§);
            this.§ !A§.removeEventListener(Event.CANCEL,this.§6S§);
            this.§ !A§.addEventListener(Event.COMPLETE,this.§2!n§);
            this.§ !A§.addEventListener(Event.CANCEL,this.§6S§);
            this.§ !A§.§+!K§(param1);
         }
         if(this.§>v§ && !this.§<!X§(param1))
         {
            this.§>v§.removeEventListener(Event.COMPLETE,this.§]h§);
            this.§>v§.removeEventListener(Event.CANCEL,this.§^"R§);
            this.§>v§.addEventListener(Event.COMPLETE,this.§]h§);
            this.§>v§.addEventListener(Event.CANCEL,this.§^"R§);
            _loc2_ = §4";§.§>"O§(param1);
            if(_loc2_)
            {
               this.§>v§.§+!K§(_loc2_.§7! §);
            }
         }
      }
      
      private function §2!n§(param1:Event) : void
      {
         this.§ !A§.removeEventListener(Event.COMPLETE,this.§2!n§);
         this.§ !A§.removeEventListener(Event.CANCEL,this.§6S§);
         this.§9!d§ = true;
         if(this.§9!d§ && this.§3m§)
         {
            this.initialize(this.§'C§);
         }
      }
      
      private function §6S§(param1:Event) : void
      {
         this.§ !A§.removeEventListener(Event.COMPLETE,this.§2!n§);
         this.§ !A§.removeEventListener(Event.CANCEL,this.§6S§);
         this.§="D§ = true;
      }
      
      private function §]h§(param1:Event) : void
      {
         this.§ !A§.removeEventListener(Event.COMPLETE,this.§]h§);
         this.§ !A§.removeEventListener(Event.CANCEL,this.§^"R§);
         this.§3m§ = true;
         if(this.§9!d§ && this.§3m§)
         {
            this.initialize(this.§'C§);
         }
      }
      
      private function §^"R§(param1:Event) : void
      {
         this.§ !A§.removeEventListener(Event.COMPLETE,this.§]h§);
         this.§ !A§.removeEventListener(Event.CANCEL,this.§^"R§);
         this.§3m§ = true;
         if(this.§9!d§ && this.§3m§)
         {
            this.initialize(this.§'C§);
         }
      }
      
      public function get backgroundTextureManager() : §`m§
      {
         return this.§=!2§;
      }
      
      protected function initialize(param1:§0"T§) : void
      {
         this.§6"H§ = false;
         this.§;"S§ = false;
         if(§!"J§.§<!C§)
         {
            §!"J§.§<!C§.speed = 1;
         }
         this.mLevelEngine = new §-!5§(this);
         this.§#"O§ = this.initLevelBackground(param1.theme,this.§>"=§.§]2§ / §2"<§,this.backgroundTextureManager,this.§<<§.§90§());
         this.§#"O§.§%"7§(§?l§.§'!R§());
         this.§'H§ = this.initLevelObjectManager(param1);
         this.§`"G§ = this.initLevelSlingshot(param1);
         this.§6&§ = this.initParticleManager(this.§8"+§,this.§=!2§);
         this.§<<§.init();
         this.addItemsToDisplayList();
         this.§5!8§();
         this.mReadyToRun = true;
         if(this.§%V§)
         {
            this.§%V§.addEventListeners();
         }
      }
      
      protected function §5!8§() : void
      {
         if(this.§!z§)
         {
            this.§0!G§ = §%!G§.initialize(this.§!z§);
            this.§0!G§.speed = 1;
            this.§0!G§.play();
            this.§?F§ = -1000;
            this.§!z§ = null;
         }
      }
      
      public function §;!;§(param1:String) : void
      {
         this.§!z§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§0!G§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§0!G§)
         {
            if(param1)
            {
               this.§0!G§.speed = Math.min(this.§0!G§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§0!G§.speed = Math.max(this.§0!G§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§0!G§)
         {
            this.§0!G§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§0"T§) : §8"=§
      {
         return new §8"=§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§0"T§) : §"l§
      {
         return new §"l§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§`m§, param4:Number) : §3!K§
      {
         return new §3!K§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§0"T§) : §&=§
      {
         return new §&=§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§^!Y§, param2:§`m§) : §6!O§
      {
         return new §6!O§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§0"T§ = this.§;!]§();
         var _loc4_:§1S§;
         (_loc4_ = new §1S§()).left = 0;
         _loc4_.top = -§"l§.§,",§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §"l§.§,",§;
         _loc4_.right = _loc4_.left + §"l§.§8! §;
         _loc4_.y = -13.929;
         _loc4_.x = §"l§.§8! §;
         _loc4_.id = §"l§.§=!M§;
         _loc3_.§9"Q§(_loc4_);
         var _loc5_:§1S§;
         (_loc5_ = new §1S§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §"l§.§8! §;
         _loc5_.bottom = _loc5_.top + §"l§.§,",§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §"l§.§8! § / 2;
         _loc5_.id = §"l§.§6"[§;
         _loc3_.§9"Q§(_loc5_);
         this.§`"S§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§ 5§ != null)
         {
            _loc3_.theme = § 5§;
         }
         this.init(_loc3_);
      }
      
      protected function §`"S§(param1:§0"T§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§;!6§(param1);
         }
      }
      
      protected function §;!]§() : §0"T§
      {
         var _loc1_:§0"T§ = new §0"T§();
         _loc1_.§;"H§ = -12;
         return new §0"T§();
      }
      
      protected function §!!W§() : Number
      {
         this.§+!0§ ^= this.§+!0§ << 21;
         this.§+!0§ ^= this.§+!0§ >>> 35;
         this.§+!0§ ^= this.§+!0§ << 4;
         return this.§+!0§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §;!6§(param1:§0"T§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§>y§ = null;
         this.§+!0§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§!!W§() * 5;
               (_loc5_ = new §>y§()).x = 30 + _loc3_ * 10 + this.§!!W§() * 9;
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
                  _loc5_.angle = 45 - this.§!!W§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§!!W§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§!!W§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function addItemsToDisplayList() : void
      {
         if(§3!K§.§'A§)
         {
            this.§<!A§(this.§#"O§.backgroundLayersSprite,false);
         }
         this.§<!A§(this.§6&§.getGroupSprite(§6!O§.§`U§),false);
         this.§<!A§(this.§6&§.getGroupSprite(§6!O§.§-4§),true);
         this.§<!A§(this.§6&§.getGroupSprite(§6!O§.PARTICLE_GROUP_BACKGROUND_EFFECTS),true);
         this.§<!A§(this.§'H§.mainSprite,true);
         this.§<!A§(this.§`"G§.sprite,true);
         this.§<!A§(this.§6&§.getGroupSprite(§6!O§.PARTICLE_GROUP_GAME_EFFECTS),true);
         this.§<!A§(this.§#"O§.groundSprite,false);
         if(§3!K§.§'A§)
         {
            this.§<!A§(this.§#"O§.foregroundLayersSprite,false);
         }
         this.§<!A§(this.§6&§.getGroupSprite(§6!O§.§;m§),true);
      }
      
      protected function §<!A§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §?l§.§+!9§;
         param2 /= §?l§.§+!9§;
         _loc3_.x = (param1 / §"l§.§@!>§ + this.§<<§.§8@§ - §"l§.§2!N§ / §"l§.§@!>§) * §2"<§;
         _loc3_.y = (param2 / §"l§.§@!>§ + this.§<<§.§@";§ - §"l§.§-"T§ / §"l§.§@!>§) * §2"<§;
         return _loc3_;
      }
      
      public function §-§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §2"<§ + §"l§.§2!N§ / §"l§.§@!>§ - this.§<<§.§8@§) * §"l§.§@!>§;
         _loc3_.y = (param2 / §2"<§ + §"l§.§-"T§ / §"l§.§@!>§ - this.§<<§.§@";§) * §"l§.§@!>§;
         var _loc4_:Number = Math.max(§?l§.§+!9§,§?l§.§0!S§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §1"L§(param1:String, param2:Number, param3:Number) : void
      {
         this.§'H§.addObject(param1,param2,param3);
      }
      
      public function §<;§() : void
      {
         if(this.§4+§)
         {
            this.§4+§.visible = true;
            this.§4+§.alpha = 0;
         }
         this.§1"P§ = 0;
      }
      
      public function §-_§() : void
      {
         this.§#!§ = new §`!o§(§^!Z§.§%C§,§^!Z§.§#!J§);
      }
      
      public function §6`§() : void
      {
         this.§#!§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§#"O§)
         {
            this.§#"O§.dispose();
            this.§#"O§ = null;
         }
         if(this.§'H§)
         {
            this.§'H§.dispose();
            this.§'H§ = null;
            this.§="Q§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§-"J§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§>"=§)
         {
            this.§>"=§.clear();
            this.§>"=§ = null;
         }
         if(this.§`"G§)
         {
            this.§`"G§.dispose();
            this.§`"G§ = null;
         }
         if(this.§<<§)
         {
            this.§<<§.clear();
            this.§<<§ = null;
         }
         if(this.§6&§)
         {
            this.§6&§.dispose();
            this.§6&§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§`"7§ = 0;
         this.§&";§ = 0;
         this.mReadyToRun = false;
         this.§@A§ = false;
         this.§1"P§ = §^!Z§.§%"%§;
         if(this.§&C§)
         {
            (this.§&C§ as §?C§).§0"?§.x = 0;
            (this.§&C§ as §?C§).§0"?§.y = 0;
         }
         if(this.§4+§)
         {
            this.§4+§.visible = false;
         }
         this.§0!G§ = null;
         this.each = null;
         if(this.§ !A§)
         {
            this.§ !A§.removeEventListener(Event.COMPLETE,this.§2!n§);
            this.§ !A§.removeEventListener(Event.CANCEL,this.§6S§);
         }
         if(this.§>v§)
         {
            this.§>v§.removeEventListener(Event.COMPLETE,this.§]h§);
            this.§>v§.removeEventListener(Event.CANCEL,this.§^"R§);
         }
         this.§%!q§();
         if(§!"J§.§1&§)
         {
            §!"J§.§1&§.color = 0;
         }
         if(this.§%V§)
         {
            this.§%V§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §=!O§() : String
      {
         if(this.each)
         {
            return this.each.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§!"J§.§+",§())
         {
            return 0;
         }
         if(this.§0!G§ && this.§0!G§.§6",§)
         {
            return this.§`!p§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§6"H§)
         {
            param1 *= 0.2;
            if(§!"J§.§<!C§)
            {
               §!"J§.§<!C§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§&";§ += param1;
         if(param3)
         {
            this.§`"7§ += param1;
            _loc5_ = this.mLevelEngine.§+!8§(this.§`"7§);
            this.§`"G§.update(param1,param4);
            this.§`"7§ = _loc5_;
         }
         else
         {
            this.§'H§.updateLevelObjectsGoingOn(param1);
            this.§`"7§ = 0;
         }
         if(param2)
         {
            this.§6O§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §`!p§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §-!5§.§-"V§ * 1000;
         if(this.§0!G§)
         {
            param1 *= this.§0!G§.speed;
            _loc5_ = this.§&";§ + param1;
            while(this.§&";§ + _loc4_ < _loc5_)
            {
               if(this.§&";§ + _loc4_ > this.§?F§)
               {
                  this.§0!G§.step(this);
                  this.§?F§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§?F§ + _loc4_)
            {
               this.§0!G§.step(this);
               this.§?F§ += _loc4_;
            }
            if(this.§&";§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§&";§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §6O§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§#"O§.update(param1);
         this.§'H§.§0P§(param1,param2);
         this.§%5§();
         if(this.§1"P§ < §^!Z§.§%"%§)
         {
            this.§1"P§ += param1;
            _loc3_ = §^!Z§.§%"%§ / 2;
            _loc4_ = (-Math.abs(this.§1"P§ - _loc3_) + _loc3_) * (§^!Z§.§%h§ / _loc3_);
            if(this.§4+§)
            {
               this.§4+§.alpha = _loc4_;
            }
         }
         else if(this.§4+§)
         {
            this.§4+§.visible = false;
         }
         if(this.§#!§)
         {
            if(!this.§#!§.§2r§(this.§<<§,param1))
            {
               this.§6`§();
            }
         }
         this.§<<§.§["§(param1);
         this.mLevelEngine.§"+§();
         this.§6&§.update(param1);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         this.objects.updateLevelObjectsGoingOn(param1 * 1000);
         this.objects.§,8§(param1 * 1000);
         this.§&T§();
      }
      
      public function §%5§() : void
      {
         var _loc1_:§[!8§ = null;
         if(this.§&";§ > this.§&O§ + 1000 / 30)
         {
            if(this.§0!t§ != null)
            {
               for each(_loc1_ in this.§0!t§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§&O§ = this.§&";§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§[!8§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§'H§.isPigsAlive(true))
            {
               _loc2_ = this.§'H§.§!!h§(true);
               if(_loc2_)
               {
                  _loc2_.§2!8§.mTryToScream = §+T§.§<!t§;
                  this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§'H§.§5"V§());
               }
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§'H§.isPigsAlive(true))
            {
               _loc2_ = this.§'H§.§!!h§(true);
               if(_loc2_)
               {
                  _loc2_.§2!8§.mTryToBlink = §+T§.§4!V§;
                  this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§'H§.§5"V§());
               }
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §0i§.§%r§;
         }
         §;P§.addScore(param1,param2);
         this.§%V§.addScore(param1);
         if(param3 && param1 > 0 && !this.§;"S§)
         {
            this.§4T§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §4T§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §0i§.§#F§;
         }
         this.§6&§.§"!J§(§0i§.§+![§,§6!O§.§;m§,§0i§.§[!A§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §1">§(param1:§[!8§) : void
      {
         if(this.§0!t§ == null)
         {
            this.§0!t§ = new Array();
         }
         this.§0!t§.push(param1);
      }
      
      public function useMightyEagle() : void
      {
         this.§`"G§.useMightyEagle();
         this.§'H§.§^!M§();
         this.§;"S§ = true;
      }
      
      public function §-"?§(param1:§[!8§) : void
      {
         this.§6&§.§4!@§(§6!O§.§`U§);
         if(this.§0!t§.indexOf(param1) >= 0)
         {
            this.§0!t§.splice(this.§0!t§.indexOf(param1),1);
         }
         if(this.§0!t§.length == 0)
         {
            this.§0!t§ = null;
         }
      }
      
      public function §9"+§(param1:§ !X§, param2:Number, param3:Number) : void
      {
         this.§="Q§ = this.§'H§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§&=§.BIRD_LAUNCH_FORCE_GREEN) : Number(§&=§.BIRD_LAUNCH_FORCE);
         if(param1.§+"-§ > 1)
         {
            this.§="Q§.§7!`§(param1.§+"-§);
            this.§="Q§.§2!8§.§try §();
         }
         if(param1.§5J§ != 0)
         {
            _loc4_ = param1.§5J§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§="Q§.§+" §(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§5"@§(§"l§.§<!N§);
         if(this.each)
         {
            this.each.§9"+§(this.mLevelEngine.§%!X§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§@A§ = true;
      }
      
      private function §&T§() : void
      {
         if(!this.§@A§)
         {
            return;
         }
         this.§@A§ = false;
         if(this.activeObject is §2"L§ && !(this.activeObject as §2"L§).§#P§)
         {
            if(this.activeObject.activateSpecialPower(this.§?x§))
            {
               this.§!^§ = true;
            }
         }
         else
         {
            this.§'H§.§`"K§();
         }
         if(this.each)
         {
            this.each.§`!H§(this.mLevelEngine.§%!X§);
         }
      }
      
      public function §4I§() : void
      {
         this.§'H§.§4I§();
      }
      
      public function §>9§() : void
      {
         this.§'H§.§[!K§();
      }
      
      public function §1?§() : §0"T§
      {
         var _loc1_:§0"T§ = new §0"T§();
         _loc1_.§8"G§ = this.§'C§.§8"G§;
         _loc1_.§;!?§ = this.§'C§.§;!?§;
         this.§<<§.§?";§(_loc1_);
         this.§'H§.§1o§(_loc1_);
         this.§`"G§.§4!U§(_loc1_);
         _loc1_.theme = this.§#"O§.§4!!§();
         return _loc1_;
      }
      
      public function §+2§() : int
      {
         return this.§'C§.§;!?§;
      }
      
      public function §&"Q§() : int
      {
         return this.§'C§.§8"G§;
      }
      
      public function §!"+§(param1:int) : void
      {
         this.§'C§.§;!?§ = param1;
      }
      
      public function §@"#§(param1:int) : void
      {
         this.§'C§.§8"G§ = param1;
      }
      
      public function §=r§(param1:Number, param2:Number) : void
      {
         if(this.§5v§)
         {
            this.§5v§.§@"?§(param1,param2);
         }
         if(this.§<<§)
         {
            this.§<<§.§["§(0);
         }
      }
      
      public function get §=!j§() : §0"T§
      {
         return this.§'C§;
      }
      
      public function get §?x§() : §8"=§
      {
         return this.§'H§;
      }
      
      protected function get starling() : §!"J§
      {
         return this.§]P§;
      }
      
      public function get §0!p§() : int
      {
         return §&!8§;
      }
   }
}
