package §^!7§
{
   import §%!$§.§[Z§;
   import §%O§.§ !§;
   import §%O§.§&t§;
   import §%O§.§`b§;
   import §,J§.§1!!§;
   import §,J§.§7!A§;
   import §,J§.§74§;
   import §,J§.§]6§;
   import §-!1§.§=!_§;
   import §0"§.§0m§;
   import §0"§.§1!I§;
   import §0C§.§7P§;
   import §4!9§.§5O§;
   import §4t§.§^!@§;
   import §5H§.§9!P§;
   import §<!-§.DisplayObject;
   import §<!-§.Sprite;
   import §=i§.b2Vec2;
   import §>!Z§.§+!Z§;
   import §>!Z§.§`!S§;
   import §>u§.§<q§;
   import §?!5§.§2d§;
   import §?!P§.§@@§;
   import §`!X§.§5&§;
   import §`!X§.§>K§;
   import §`!X§.§>r§;
   import §`!X§.§@!^§;
   import §`+§.§>!&§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^A§
   {
      
      private static const §,!@§:int = 20;
      
      public static const §+2§:Number = §@@§.§!!P§;
      
      public static const §!T§:Number = §@@§.§9!8§;
      
      public static const §<U§:Number = 1 / 20;
      
      public static const §`![§:Number = §@@§.§9!8§ * §<U§;
      
      public static const §[!b§:Number = §+2§ * §<U§;
      
      public static const §%H§:§5O§ = new §5O§(13 - 3);
      
      protected static var §5v§:String = §74§.§+1§;
       
      
      protected var §<9§:§@!^§;
      
      private var §66§:§5&§;
      
      private var §+"§:Array = null;
      
      protected var §'8§:§7P§;
      
      public var mLevelEngine:§%!M§;
      
      protected var §%I§:§[!9§;
      
      protected var §=c§:§=!_§;
      
      protected var §[!Q§:§]H§;
      
      protected var §2E§:§`!S§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §2J§:Boolean = false;
      
      protected var §6!F§:Boolean = false;
      
      protected var §5!@§:Boolean = false;
      
      public var §]l§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §>!Q§:Number;
      
      public var §-L§:Number;
      
      private var §=!#§:Number;
      
      public var §9&§:§1!!§;
      
      public var §4v§:Boolean = false;
      
      private var §;!D§:§]g§;
      
      private var §;!@§:Sprite;
      
      protected var §>!$§:§74§;
      
      protected var §1C§:§^!@§ = null;
      
      private var §%![§:EventDispatcher;
      
      private var §8r§:Array;
      
      private var §-!9§:Array;
      
      protected var §4#§:§2d§;
      
      private var §&O§:§9!P§;
      
      protected var §^4§:§ !§;
      
      protected var §%7§:§`b§;
      
      private var §8-§:§&t§;
      
      private var §#!T§:§&t§;
      
      private var §[I§:§&t§;
      
      private var §>>§:Stage;
      
      private var §2!9§:§'!%§;
      
      protected var §-!_§:§>!&§;
      
      protected var §<!Y§:§>!&§;
      
      protected var §+<§:Number = 0.0;
      
      protected var §^h§:String;
      
      private var §'v§:Boolean;
      
      protected var §!!Y§:Boolean;
      
      protected var §@I§:uint = 1.417339207E9;
      
      public var §>! §:Boolean;
      
      public function §^A§(param1:Stage)
      {
         this.§-!9§ = [];
         super();
         this.§%![§ = new EventDispatcher();
         this.§9&§ = new §1!!§();
         this.§>>§ = param1;
         this.§^4§ = § !§.§'![§;
         this.§%7§ = this.initAnimationManager(this.§^4§);
         this.§8-§ = this.initThemeGraphicsManager();
         this.§#!T§ = this.§0j§();
         this.§[I§ = this.§4L§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§4#§ = new §2d§(§]g§,param1,new Rectangle(0,0,§@@§.§!!P§,§@@§.§9!8§),_loc2_);
         §@@§.§&9§.addEventListener(Event.ENTER_FRAME,this.§4#§.§8!a§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§#>§,false,0,true);
         this.§4#§.simulateMultitouch = false;
         this.§4#§.enableErrorChecking = false;
         this.§4#§.§[U§ = 2;
         this.§4#§.§"!;§();
      }
      
      public static function §try §(param1:§5&§, param2:§5&§) : Number
      {
         var _loc3_:Number = param1.§[!@§ - param2.§[!@§;
         var _loc4_:Number = param1.§<!$§ - param2.§<!$§;
         return §?0§(_loc3_,_loc4_);
      }
      
      public static function §?0§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§;!@§ && this.§!!>§)
         {
            this.§;!@§ = this.§;!D§.§`!R§;
         }
         return this.§;!@§;
      }
      
      public function get §!!>§() : Sprite
      {
         if(!this.§;!D§)
         {
            this.§;!D§ = this.§4#§.§8A§ as §]g§;
            this.§;!D§.§3S§ = false;
         }
         return this.§;!D§;
      }
      
      private function get §?!K§() : DisplayObject
      {
         if(this.§!!>§)
         {
            return (this.§!!>§ as §]g§).§?!K§;
         }
         return null;
      }
      
      public function get §7p§() : §`b§
      {
         return this.§%7§;
      }
      
      public function get textureManager() : § !§
      {
         return this.§^4§;
      }
      
      public function get camera() : §=!_§
      {
         return this.§=c§;
      }
      
      public function get objects() : §@!^§
      {
         return this.§<9§;
      }
      
      public function get particles() : §`!S§
      {
         return this.§2E§;
      }
      
      public function get background() : §7P§
      {
         return this.§'8§;
      }
      
      public function get slingshot() : §]H§
      {
         return this.§[!Q§;
      }
      
      public function get activeObject() : §5&§
      {
         return this.§66§;
      }
      
      public function get §9§() : §[!9§
      {
         return this.§%I§;
      }
      
      public function get stage() : Stage
      {
         return this.§>>§;
      }
      
      public function get §=6§() : §&t§
      {
         return this.§[I§;
      }
      
      protected function get §+s§() : §&t§
      {
         return this.§8-§;
      }
      
      public function set activeObject(param1:§5&§) : void
      {
         this.§66§ = param1;
      }
      
      public function set §8!X§(param1:Boolean) : void
      {
         this.§!!Y§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§&O§)
         {
            this.§&O§.dispose();
         }
         if(this.§^4§)
         {
            this.§^4§.dispose();
         }
         if(this.§8-§ && this.§8-§.textureManager)
         {
            this.§8-§.textureManager.dispose();
         }
         if(this.§[I§ && this.§[I§.textureManager)
         {
            this.§[I§.textureManager.dispose();
         }
         if(this.§4#§)
         {
            this.§4#§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §&t§
      {
         return null;
      }
      
      protected function §0j§() : §&t§
      {
         return null;
      }
      
      protected function §4L§() : §&t§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§ !§) : §`b§
      {
         return new §`b§(param1);
      }
      
      public function §5!?§(param1:Boolean) : void
      {
         if(§2d§.§0A§)
         {
            if(param1)
            {
               §2d§.§0A§.start();
            }
            else
            {
               §2d§.§0A§.stop();
               §2d§.§0A§.color = 0;
            }
         }
      }
      
      public function §,!Y§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §1!V§(param1:§^!@§) : void
      {
         if(this.§1C§ != null)
         {
            this.§1C§.removeEventListeners();
         }
         this.§1C§ = param1;
         if(this.mReadyToRun)
         {
            this.§1C§.addEventListeners();
         }
      }
      
      public function §7j§() : §>!&§
      {
         return this.§-!_§;
      }
      
      public function §=!R§(param1:§9!P§, param2:Array, param3:Function) : void
      {
         this.§&O§ = param1;
         var _loc4_:int = this.§&O§.§ !`§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§^4§.§"!0§(this.§&O§.§4q§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§%![§.addEventListener(Event.INIT,param3);
            this.§-!9§.push(param3);
         }
         if(this.§<!=§(param2))
         {
            this.§,!D§();
         }
      }
      
      private function §<!=§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§^4§.§%d§())
         {
            _loc2_ = this.§^4§.§^!J§ / 1000;
            _loc3_ = this.§^4§.§;!3§ / 1000;
            §[Z§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§8r§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§%7§.initializeAnimations(param1);
      }
      
      private function §#>§(param1:Event) : void
      {
         this.§^4§.§#!W§();
         if(this.§+s§ && this.§+s§.textureManager)
         {
            this.§+s§.textureManager.§#!W§();
         }
         if(this.§=6§ && this.§=6§.textureManager)
         {
            this.§=6§.textureManager.§#!W§();
         }
         if(this.§8r§)
         {
            this.§<!=§(this.§8r§);
            this.§8r§ = null;
            this.§,!D§();
         }
         if(this.§1C§ != null && this.mReadyToRun)
         {
            this.§1C§.addEventListeners();
         }
         if(this.§8-§)
         {
            this.§8-§.§%d§();
         }
         if(this.§[I§)
         {
            if(this.§[I§.textureManager)
            {
               this.§[I§.textureManager.§#!W§();
               this.§[I§.§%d§();
            }
         }
      }
      
      private function §,!D§() : void
      {
         this.§%![§.dispatchEvent(new Event(Event.INIT));
         this.§2!W§();
      }
      
      private function §2!W§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§-!9§)
         {
            this.§%![§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§-!9§ = [];
      }
      
      public function init(param1:§74§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§%I§ = new §[!9§(this,param1);
         this.§=c§ = this.§8o§(param1);
         this.§>!Q§ = 0;
         this.§-L§ = 0;
         this.§=!#§ = 0;
         this.§'v§ = false;
         this.mReadyToRun = false;
         this.§2J§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §5v§ = param1.theme;
         this.§>!$§ = param1;
         this.§6!F§ = this.§,!U§(param1.theme);
         this.§5!@§ = this.§,!'§(param1.theme);
         if(this.§6!F§ && this.§5!@§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§[%§(param1.theme);
         }
         this.initReplay();
         §+!S§.init();
      }
      
      protected function initReplay() : void
      {
         this.§-!_§ = new §>!&§(§7!A§.§ !A§);
      }
      
      protected function §,!U§(param1:String) : Boolean
      {
         if(this.§8-§)
         {
            return false;
         }
         return true;
      }
      
      protected function §,!'§(param1:String) : Boolean
      {
         var _loc2_:§1!I§ = null;
         if(this.§#!T§)
         {
            _loc2_ = §0m§.§-#§(param1);
            if(_loc2_)
            {
               if(_loc2_.§%c§ && !this.§#!T§.§`E§(_loc2_.§%c§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §[%§(param1:String) : void
      {
         var _loc2_:§1!I§ = null;
         if(this.§8-§ && !this.§,!U§(param1))
         {
            this.§8-§.removeEventListener(Event.COMPLETE,this.§[x§);
            this.§8-§.removeEventListener(Event.CANCEL,this.§!C§);
            this.§8-§.addEventListener(Event.COMPLETE,this.§[x§);
            this.§8-§.addEventListener(Event.CANCEL,this.§!C§);
            this.§8-§.§=!]§(param1);
         }
         if(this.§#!T§ && !this.§,!'§(param1))
         {
            this.§#!T§.removeEventListener(Event.COMPLETE,this.§''§);
            this.§#!T§.removeEventListener(Event.CANCEL,this.§+!G§);
            this.§#!T§.addEventListener(Event.COMPLETE,this.§''§);
            this.§#!T§.addEventListener(Event.CANCEL,this.§+!G§);
            _loc2_ = §0m§.§-#§(param1);
            if(_loc2_)
            {
               this.§#!T§.§=!]§(_loc2_.§%c§);
            }
         }
      }
      
      private function §[x§(param1:Event) : void
      {
         this.§8-§.removeEventListener(Event.COMPLETE,this.§[x§);
         this.§8-§.removeEventListener(Event.CANCEL,this.§!C§);
         this.§6!F§ = true;
         if(this.§6!F§ && this.§5!@§)
         {
            this.initialize(this.§>!$§);
         }
      }
      
      private function §!C§(param1:Event) : void
      {
         this.§8-§.removeEventListener(Event.COMPLETE,this.§[x§);
         this.§8-§.removeEventListener(Event.CANCEL,this.§!C§);
         this.§2J§ = true;
      }
      
      private function §''§(param1:Event) : void
      {
         this.§8-§.removeEventListener(Event.COMPLETE,this.§''§);
         this.§8-§.removeEventListener(Event.CANCEL,this.§+!G§);
         this.§5!@§ = true;
         if(this.§6!F§ && this.§5!@§)
         {
            this.initialize(this.§>!$§);
         }
      }
      
      private function §+!G§(param1:Event) : void
      {
         this.§8-§.removeEventListener(Event.COMPLETE,this.§''§);
         this.§8-§.removeEventListener(Event.CANCEL,this.§+!G§);
         this.§5!@§ = true;
         if(this.§6!F§ && this.§5!@§)
         {
            this.initialize(this.§>!$§);
         }
      }
      
      public function get backgroundTextureManager() : § !§
      {
         return this.§^4§;
      }
      
      protected function initialize(param1:§74§) : void
      {
         this.§!!Y§ = false;
         this.§>! § = false;
         if(§2d§.§8e§)
         {
            §2d§.§8e§.speed = 1;
         }
         this.mLevelEngine = new §%!M§(this);
         this.§'8§ = this.§=H§(param1.theme,this.§%I§.§72§ / §<U§,this.backgroundTextureManager,this.§=c§.§`j§());
         this.§'8§.§'!6§(§@@§.§;B§());
         this.§<9§ = this.initLevelObjectManager(param1);
         this.§[!Q§ = this.initLevelSlingshot(param1);
         this.§2E§ = this.initParticleManager(this.§%7§,this.§^4§);
         this.§=c§.init();
         this.§#!]§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§1C§)
         {
            this.§1C§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§^h§)
         {
            this.§<!Y§ = §>!&§.initialize(this.§^h§);
            this.§<!Y§.speed = 1;
            this.§<!Y§.play();
            this.§+<§ = -1000;
            this.§^h§ = null;
         }
      }
      
      public function §-I§(param1:String) : void
      {
         this.§^h§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§<!Y§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§<!Y§)
         {
            if(param1)
            {
               this.§<!Y§.speed = Math.min(this.§<!Y§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§<!Y§.speed = Math.max(this.§<!Y§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§<!Y§)
         {
            this.§<!Y§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§74§) : §@!^§
      {
         return new §@!^§(this,param1,new Sprite());
      }
      
      protected function §8o§(param1:§74§) : §=!_§
      {
         return new §=!_§(this,param1);
      }
      
      protected function §=H§(param1:String, param2:Number, param3:§ !§, param4:Number) : §7P§
      {
         return new §7P§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§74§) : §]H§
      {
         return new §]H§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§`b§, param2:§ !§) : §`!S§
      {
         return new §`!S§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§74§ = this.preProcessLevel();
         var _loc4_:§]6§;
         (_loc4_ = new §]6§()).left = 0;
         _loc4_.top = -§=!_§.§8!P§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §=!_§.§8!P§;
         _loc4_.right = _loc4_.left + §=!_§.§2! §;
         _loc4_.y = -13.929;
         _loc4_.x = §=!_§.§2! §;
         _loc4_.id = §=!_§.§>Q§;
         _loc3_.§3!V§(_loc4_);
         var _loc5_:§]6§;
         (_loc5_ = new §]6§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §=!_§.§2! §;
         _loc5_.bottom = _loc5_.top + §=!_§.§8!P§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §=!_§.§2! § / 2;
         _loc5_.id = §=!_§.§]&§;
         _loc3_.§3!V§(_loc5_);
         this.§0!c§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§5v§ != null)
         {
            _loc3_.theme = §5v§;
         }
         this.init(_loc3_);
      }
      
      protected function §0!c§(param1:§74§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§%`§(param1);
         }
      }
      
      protected function preProcessLevel() : §74§
      {
         var _loc1_:§74§ = new §74§();
         _loc1_.§-O§ = -12;
         return new §74§();
      }
      
      protected function §%!Z§() : Number
      {
         this.§@I§ ^= this.§@I§ << 21;
         this.§@I§ ^= this.§@I§ >>> 35;
         this.§@I§ ^= this.§@I§ << 4;
         return this.§@I§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §%`§(param1:§74§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§<q§ = null;
         this.§@I§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§%!Z§() * 5;
               (_loc5_ = new §<q§()).x = 30 + _loc3_ * 10 + this.§%!Z§() * 9;
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
                  _loc5_.angle = 45 - this.§%!Z§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§%!Z§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§%!Z§() * 360;
               }
               param1.§8!+§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §<1§() : void
      {
      }
      
      public function §#!]§() : void
      {
         if(§7P§.§9!B§)
         {
            this.§ e§(this.§'8§.§#T§,false);
         }
         this.§ e§(this.§2E§.§!$§(§`!S§.§@!X§),false);
         this.§ e§(this.§2E§.§!$§(§`!S§.§6!8§),true);
         this.§ e§(this.§2E§.§!$§(§`!S§.§3!#§),true);
         this.§ e§(this.§<9§.§@p§,true);
         this.§ e§(this.§[!Q§.sprite,true);
         this.§ e§(this.§2E§.§!$§(§`!S§.§3!_§),true);
         this.§ e§(this.§'8§.§9C§,false);
         if(§7P§.§9!B§)
         {
            this.§ e§(this.§'8§.§,!^§,false);
         }
         this.§ e§(this.§2E§.§!$§(§`!S§.§%8§),true);
         if(!§%!M§.§%l§)
         {
         }
      }
      
      private function § e§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §@@§.§0!D§;
         param2 /= §@@§.§0!D§;
         _loc3_.x = (param1 / §=!_§.§"b§ + this.§=c§.§'!;§ - §=!_§.§0!5§ / §=!_§.§"b§) * §<U§;
         _loc3_.y = (param2 / §=!_§.§"b§ + this.§=c§.§!!&§ - §=!_§.§0Q§ / §=!_§.§"b§) * §<U§;
         return _loc3_;
      }
      
      public function §6!$§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §<U§ + §=!_§.§0!5§ / §=!_§.§"b§ - this.§=c§.§'!;§) * §=!_§.§"b§;
         _loc3_.y = (param2 / §<U§ + §=!_§.§0Q§ / §=!_§.§"b§ - this.§=c§.§!!&§) * §=!_§.§"b§;
         var _loc4_:Number = Math.max(§@@§.§0!D§,§@@§.§@H§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §]v§(param1:String, param2:Number, param3:Number) : void
      {
         this.§<9§.§8!+§(param1,param2,param3);
      }
      
      public function §?,§() : void
      {
         if(this.§?!K§)
         {
            this.§?!K§.visible = true;
            this.§?!K§.alpha = 0;
         }
         this.§]l§ = 0;
      }
      
      public function §#!K§() : void
      {
         this.§2!9§ = new §'!%§(§+B§.§2y§,§+B§.§=!c§);
      }
      
      public function §`!5§() : void
      {
         this.§2!9§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§'8§)
         {
            this.§'8§.dispose();
            this.§'8§ = null;
         }
         if(this.§<9§)
         {
            this.§<9§.dispose();
            this.§<9§ = null;
            this.§66§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§1p§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§%I§)
         {
            this.§%I§.clear();
            this.§%I§ = null;
         }
         if(this.§[!Q§)
         {
            this.§[!Q§.dispose();
            this.§[!Q§ = null;
         }
         if(this.§=c§)
         {
            this.§=c§.clear();
            this.§=c§ = null;
         }
         if(this.§2E§)
         {
            this.§2E§.dispose();
            this.§2E§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§>!Q§ = 0;
         this.§-L§ = 0;
         this.mReadyToRun = false;
         this.§'v§ = false;
         this.§]l§ = §+B§.§9!5§;
         if(this.§!!>§)
         {
            (this.§!!>§ as §]g§).§"1§.x = 0;
            (this.§!!>§ as §]g§).§"1§.y = 0;
         }
         if(this.§?!K§)
         {
            this.§?!K§.visible = false;
         }
         this.§<!Y§ = null;
         this.§-!_§ = null;
         if(this.§8-§)
         {
            this.§8-§.removeEventListener(Event.COMPLETE,this.§[x§);
            this.§8-§.removeEventListener(Event.CANCEL,this.§!C§);
         }
         if(this.§#!T§)
         {
            this.§#!T§.removeEventListener(Event.COMPLETE,this.§''§);
            this.§#!T§.removeEventListener(Event.CANCEL,this.§+!G§);
         }
         this.§2!W§();
         if(§2d§.§0A§)
         {
            §2d§.§0A§.color = 0;
         }
         if(this.§1C§)
         {
            this.§1C§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §+z§() : String
      {
         if(this.§-!_§)
         {
            return this.§-!_§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§2d§.§!!L§())
         {
            return 0;
         }
         if(this.§<!Y§ && this.§<!Y§.§2Z§)
         {
            return this.§<!^§(param1,param2,param3);
         }
         return this.§+!$§(param1,true,param2,param3);
      }
      
      protected function §+!$§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§!!Y§)
         {
            param1 *= 0.2;
            if(§2d§.§8e§)
            {
               §2d§.§8e§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§-L§ += param1;
         if(param3)
         {
            this.§>!Q§ += param1;
            _loc5_ = this.mLevelEngine.§@!L§(this.§>!Q§);
            this.§[!Q§.update(param1,param4);
            this.§>!Q§ = _loc5_;
         }
         else
         {
            this.§<9§.§7!@§(param1);
            this.§>!Q§ = 0;
         }
         if(param2)
         {
            this.§8T§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §<!^§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §%!M§.§%!>§ * 1000;
         if(this.§<!Y§)
         {
            param1 *= this.§<!Y§.speed;
            _loc5_ = this.§-L§ + param1;
            while(this.§-L§ + _loc4_ < _loc5_)
            {
               if(this.§-L§ + _loc4_ > this.§+<§)
               {
                  this.§<!Y§.step(this);
                  this.§+<§ += _loc4_;
               }
               this.§+!$§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§+<§ + _loc4_)
            {
               this.§<!Y§.step(this);
               this.§+<§ += _loc4_;
            }
            if(this.§-L§ < _loc5_)
            {
               this.§+!$§(_loc5_ - this.§-L§,true,param2,param3);
            }
            return param1;
         }
         return this.§+!$§(_loc4_,true,param2,param3);
      }
      
      private function §8T§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§'8§.update(param1);
         this.§<9§.§,!]§(param1,param2);
         this.§`n§();
         if(this.§]l§ < §+B§.§9!5§)
         {
            this.§]l§ += param1;
            _loc3_ = §+B§.§9!5§ / 2;
            _loc4_ = (-Math.abs(this.§]l§ - _loc3_) + _loc3_) * (§+B§.§;!P§ / _loc3_);
            if(this.§?!K§)
            {
               this.§?!K§.alpha = _loc4_;
            }
         }
         else if(this.§?!K§)
         {
            this.§?!K§.visible = false;
         }
         if(this.§2!9§)
         {
            if(!this.§2!9§.§@v§(this.§=c§,param1))
            {
               this.§`!5§();
            }
         }
         this.§=c§.§,y§(param1);
         this.mLevelEngine.§1!c§();
         this.§2E§.update(param1);
      }
      
      public function §6B§(param1:Number) : void
      {
         this.objects.§7!@§(param1 * 1000);
         this.objects.§,!2§(param1 * 1000);
         this.§-d§();
      }
      
      public function §`n§() : void
      {
         var _loc1_:§5&§ = null;
         if(this.§-L§ > this.§=!#§ + 1000 / 30)
         {
            if(this.§+"§ != null)
            {
               for each(_loc1_ in this.§+"§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§=!#§ = this.§-L§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§5&§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§<9§.isPigsAlive(true))
            {
               _loc2_ = this.§<9§.§>3§(true);
               _loc2_.§?W§.mTryToScream = §>r§.§&!E§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§<9§.§@6§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§<9§.isPigsAlive(true))
            {
               _loc2_ = this.§<9§.§>3§(true);
               _loc2_.§?W§.mTryToBlink = §>r§.§&R§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§<9§.§@6§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §+!Z§.§[L§;
         }
         §+!S§.addScore(param1,param2);
         this.§1C§.addScore(param1);
         if(param3 && param1 > 0 && !this.§>! §)
         {
            this.§&!@§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §&!@§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §+!Z§.§[!G§;
         }
         this.§2E§.addParticle(§+!Z§.§5,§,§`!S§.§%8§,§+!Z§.§]U§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §=&§(param1:§5&§) : void
      {
         if(this.§+"§ == null)
         {
            this.§+"§ = new Array();
         }
         this.§+"§.push(param1);
      }
      
      public function §]Y§() : void
      {
         this.§[!Q§.§]Y§();
         this.§<9§.§!G§();
         this.§>! § = true;
      }
      
      public function §5?§(param1:§5&§) : void
      {
         this.§2E§.§&D§(§`!S§.§@!X§);
         if(this.§+"§.indexOf(param1) >= 0)
         {
            this.§+"§.splice(this.§+"§.indexOf(param1),1);
         }
         if(this.§+"§.length == 0)
         {
            this.§+"§ = null;
         }
      }
      
      public function §&`§(param1:§]!N§, param2:Number, param3:Number) : void
      {
         this.§66§ = this.§<9§.§8!+§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§]H§.§+_§) : Number(§]H§.BIRD_LAUNCH_FORCE);
         if(param1.§5q§ > 1)
         {
            this.§66§.§+!Q§(param1.§5q§);
            this.§66§.§?W§.§`Z§();
         }
         if(param1.§^!A§ != 0)
         {
            _loc4_ = param1.§^!A§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§66§.§]F§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§8!T§(§=!_§.§ !6§);
         if(this.§-!_§)
         {
            this.§-!_§.§&`§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§'v§ = true;
      }
      
      private function §-d§() : void
      {
         if(!this.§'v§)
         {
            return;
         }
         this.§'v§ = false;
         if(this.activeObject is §>K§ && !(this.activeObject as §>K§).§'!8§)
         {
            if(this.activeObject.activateSpecialPower(this.§^!!§))
            {
               this.§4v§ = true;
            }
         }
         else
         {
            this.§<9§.§5e§();
         }
         if(this.§-!_§)
         {
            this.§-!_§.§>S§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §^l§() : void
      {
         this.§<9§.§^l§();
      }
      
      public function §^!5§() : void
      {
         this.§<9§.§%!@§();
      }
      
      public function §7!V§() : §74§
      {
         var _loc1_:§74§ = new §74§();
         _loc1_.§!!O§ = this.§>!$§.§!!O§;
         _loc1_.§+!H§ = this.§>!$§.§+!H§;
         this.§=c§.§5!]§(_loc1_);
         this.§<9§.§3!?§(_loc1_);
         this.§[!Q§.§6!?§(_loc1_);
         _loc1_.theme = this.§'8§.§ !Q§();
         return _loc1_;
      }
      
      public function §`8§() : int
      {
         return this.§>!$§.§+!H§;
      }
      
      public function §0!L§() : int
      {
         return this.§>!$§.§!!O§;
      }
      
      public function §>!9§(param1:int) : void
      {
         this.§>!$§.§+!H§ = param1;
      }
      
      public function §7!R§(param1:int) : void
      {
         this.§>!$§.§!!O§ = param1;
      }
      
      public function §-!J§(param1:Number, param2:Number) : void
      {
         if(this.§;!D§)
         {
            this.§;!D§.§0&§(param1,param2);
         }
         if(this.§=c§)
         {
            this.§=c§.§,y§(0);
         }
      }
      
      public function get §?v§() : §74§
      {
         return this.§>!$§;
      }
      
      public function get §^!!§() : §@!^§
      {
         return this.§<9§;
      }
      
      protected function get §&!G§() : §2d§
      {
         return this.§4#§;
      }
      
      public function get §@&§() : int
      {
         return §,!@§;
      }
   }
}
