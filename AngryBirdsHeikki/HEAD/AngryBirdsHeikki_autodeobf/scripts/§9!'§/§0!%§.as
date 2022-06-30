package §9!'§
{
   import § !$§.§"!%§;
   import § !$§.§2!J§;
   import § !$§.§7!!§;
   import § !$§.§>C§;
   import § ![§.§#!B§;
   import §#!C§.§3o§;
   import §#!R§.§0E§;
   import §&!b§.§ c§;
   import §&L§.§?]§;
   import §+!I§.§'b§;
   import §+!I§.§]4§;
   import §+!]§.§!,§;
   import §+!]§.§0!B§;
   import §+!]§.§7'§;
   import §,!A§.§-q§;
   import §,!A§.§0i§;
   import §,!V§.§`H§;
   import §6!;§.DisplayObject;
   import §6!;§.Sprite;
   import §7e§.§#w§;
   import §7e§.§7?§;
   import §7e§.§8!P§;
   import §7e§.§;!8§;
   import §8O§.§&#§;
   import §9!Q§.§5!!§;
   import §=Z§.§ !f§;
   import §^!"§.§ >§;
   import §`!^§.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0!%§
   {
      
      private static const §1_§:int = 20;
      
      public static const §5C§:Number = §&#§.§4!3§;
      
      public static const §[j§:Number = §&#§.§1l§;
      
      public static const §"m§:Number = 1 / 20;
      
      public static const §9!#§:Number = §&#§.§1l§ * §"m§;
      
      public static const §7!A§:Number = §5C§ * §"m§;
      
      public static const §^a§:§5!!§ = new §5!!§(13 - 3);
      
      public static var §@Q§:Number = 1;
      
      protected static var §'Z§:String = §8!P§.§7H§;
       
      
      protected var §<'§:§7!!§;
      
      private var §[!X§:§>C§;
      
      private var §>Y§:Array = null;
      
      protected var §1"§:§ !f§;
      
      public var mLevelEngine:§8U§;
      
      protected var § =§:§[v§;
      
      protected var §9!T§:§#!B§;
      
      protected var §-!Z§:§@!U§;
      
      protected var §-G§:§0i§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §9!;§:Boolean = false;
      
      protected var §1!e§:Boolean = false;
      
      protected var §%!G§:Boolean = false;
      
      public var §,y§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §-!V§:Number;
      
      public var §"i§:Number;
      
      private var §+!;§:Number;
      
      public var §^!§:§7?§;
      
      public var §61§:Boolean = false;
      
      private var §##§:§@9§;
      
      private var §4r§:Sprite;
      
      protected var §6!S§:§8!P§;
      
      protected var §2Y§:§`H§ = null;
      
      private var §@^§:EventDispatcher;
      
      private var §#D§:Array;
      
      private var §&y§:Array;
      
      protected var §'!2§:§?]§;
      
      private var §=F§:§3o§;
      
      protected var §[G§:§!,§;
      
      protected var §[&§:§0!B§;
      
      private var §]L§:§7'§;
      
      private var §9>§:§7'§;
      
      private var §0!N§:§7'§;
      
      private var §"!J§:Stage;
      
      private var §+P§:§'!c§;
      
      protected var §09§:§0E§;
      
      protected var §5!A§:§0E§;
      
      protected var §>§:Number = 0.0;
      
      protected var §=O§:String;
      
      private var §9f§:Boolean;
      
      protected var §<>§:Boolean;
      
      protected var §@@§:uint = 1.417339207E9;
      
      public var §%!9§:Boolean;
      
      public function §0!%§(param1:Stage)
      {
         this.§&y§ = [];
         super();
         this.§@^§ = new EventDispatcher();
         this.§^!§ = new §7?§();
         this.§"!J§ = param1;
         this.§[G§ = §!,§.§?! §;
         this.§[&§ = this.initAnimationManager(this.§[G§);
         this.§]L§ = this.initThemeGraphicsManager();
         this.§9>§ = this.§>[§();
         this.§0!N§ = this.§;A§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§'!2§ = new §?]§(§@9§,param1,new Rectangle(0,0,§&#§.§4!3§,§&#§.§1l§),_loc2_);
         §&#§.§%!X§.addEventListener(Event.ENTER_FRAME,this.§'!2§.§+A§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§7!g§,false,0,true);
         this.§'!2§.simulateMultitouch = false;
         this.§'!2§.enableErrorChecking = false;
         this.§'!2§.§4<§ = 2;
         this.§'!2§.§>!!§();
      }
      
      public static function §&_§(param1:§>C§, param2:§>C§) : Number
      {
         var _loc3_:Number = param1.§9!5§ - param2.§9!5§;
         var _loc4_:Number = param1.§0!a§ - param2.§0!a§;
         return §,!@§(_loc3_,_loc4_);
      }
      
      public static function §,!@§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§4r§ && this.§%7§)
         {
            this.§4r§ = this.§##§.§,!^§;
         }
         return this.§4r§;
      }
      
      public function get §%7§() : Sprite
      {
         if(!this.§##§)
         {
            this.§##§ = this.§'!2§.§9!C§ as §@9§;
            this.§##§.§`T§ = false;
         }
         return this.§##§;
      }
      
      private function get §8!f§() : DisplayObject
      {
         if(this.§%7§)
         {
            return (this.§%7§ as §@9§).§8!f§;
         }
         return null;
      }
      
      public function get §2!]§() : §0!B§
      {
         return this.§[&§;
      }
      
      public function get textureManager() : §!,§
      {
         return this.§[G§;
      }
      
      public function get camera() : §#!B§
      {
         return this.§9!T§;
      }
      
      public function get objects() : §7!!§
      {
         return this.§<'§;
      }
      
      public function get particles() : §0i§
      {
         return this.§-G§;
      }
      
      public function get background() : § !f§
      {
         return this.§1"§;
      }
      
      public function get slingshot() : §@!U§
      {
         return this.§-!Z§;
      }
      
      public function get activeObject() : §>C§
      {
         return this.§[!X§;
      }
      
      public function get §%!E§() : §[v§
      {
         return this.§ =§;
      }
      
      public function get stage() : Stage
      {
         return this.§"!J§;
      }
      
      public function get §>u§() : §7'§
      {
         return this.§0!N§;
      }
      
      protected function get §#M§() : §7'§
      {
         return this.§]L§;
      }
      
      public function set activeObject(param1:§>C§) : void
      {
         this.§[!X§ = param1;
      }
      
      public function set §%4§(param1:Boolean) : void
      {
         this.§<>§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§=F§)
         {
            this.§=F§.dispose();
         }
         if(this.§[G§)
         {
            this.§[G§.dispose();
         }
         if(this.§]L§ && this.§]L§.textureManager)
         {
            this.§]L§.textureManager.dispose();
         }
         if(this.§0!N§ && this.§0!N§.textureManager)
         {
            this.§0!N§.textureManager.dispose();
         }
         if(this.§'!2§)
         {
            this.§'!2§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §7'§
      {
         return null;
      }
      
      protected function §>[§() : §7'§
      {
         return null;
      }
      
      protected function §;A§() : §7'§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§!,§) : §0!B§
      {
         return new §0!B§(param1);
      }
      
      public function §"!E§(param1:Boolean) : void
      {
         if(§?]§.§`!H§)
         {
            if(param1)
            {
               §?]§.§`!H§.start();
            }
            else
            {
               §?]§.§`!H§.stop();
               §?]§.§`!H§.color = 0;
            }
         }
      }
      
      public function §>!?§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §?!Z§() : §`H§
      {
         return this.§2Y§;
      }
      
      public function §>A§(param1:§`H§) : void
      {
         if(this.§2Y§ != null)
         {
            this.§2Y§.removeEventListeners();
         }
         this.§2Y§ = param1;
         if(this.mReadyToRun)
         {
            this.§2Y§.addEventListeners();
         }
      }
      
      public function §?§() : §0E§
      {
         return this.§09§;
      }
      
      public function §2@§(param1:§3o§, param2:Array, param3:Function) : void
      {
         this.§=F§ = param1;
         var _loc4_:int = this.§=F§.§5!6§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§[G§.§77§(this.§=F§.§9Z§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§@^§.addEventListener(Event.INIT,param3);
            this.§&y§.push(param3);
         }
         if(this.§,!c§(param2))
         {
            this.§?X§();
         }
      }
      
      private function §,!c§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§[G§.§;W§())
         {
            _loc2_ = this.§[G§.§+!C§ / 1000;
            _loc3_ = this.§[G§.§^!D§ / 1000;
            § c§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§#D§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§[&§.initializeAnimations(param1);
      }
      
      private function §7!g§(param1:Event) : void
      {
         this.§[G§.§ B§();
         if(this.§#M§ && this.§#M§.textureManager)
         {
            this.§#M§.textureManager.§ B§();
         }
         if(this.§>u§ && this.§>u§.textureManager)
         {
            this.§>u§.textureManager.§ B§();
         }
         if(this.§#D§)
         {
            this.§,!c§(this.§#D§);
            this.§#D§ = null;
            this.§?X§();
         }
         if(this.§2Y§ != null && this.mReadyToRun)
         {
            this.§2Y§.addEventListeners();
         }
         if(this.§]L§)
         {
            this.§]L§.§;W§();
         }
         if(this.§0!N§)
         {
            if(this.§0!N§.textureManager)
            {
               this.§0!N§.textureManager.§ B§();
               this.§0!N§.§;W§();
            }
         }
      }
      
      private function §?X§() : void
      {
         this.§@^§.dispatchEvent(new Event(Event.INIT));
         this.§switch§();
      }
      
      private function §switch§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§&y§)
         {
            this.§@^§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§&y§ = [];
      }
      
      public function init(param1:§8!P§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§ =§ = new §[v§(this,param1);
         this.§9!T§ = this.§;!"§(param1);
         this.§-!V§ = 0;
         this.§"i§ = 0;
         this.§+!;§ = 0;
         this.§9f§ = false;
         this.mReadyToRun = false;
         this.§9!;§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §'Z§ = param1.theme;
         this.§6!S§ = param1;
         this.§1!e§ = this.§5=§(param1.theme);
         this.§%!G§ = this.§!i§(param1.theme);
         if(this.§1!e§ && this.§%!G§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§[!L§(param1.theme);
         }
         this.initReplay();
         §8j§.init();
      }
      
      protected function initReplay() : void
      {
         this.§09§ = new §0E§(§#w§.§ !'§);
      }
      
      protected function §5=§(param1:String) : Boolean
      {
         if(this.§]L§)
         {
            return false;
         }
         return true;
      }
      
      protected function §!i§(param1:String) : Boolean
      {
         var _loc2_:§'b§ = null;
         if(this.§9>§)
         {
            _loc2_ = §]4§.§#_§(param1);
            if(_loc2_)
            {
               if(_loc2_.§9!d§ && !this.§9>§.§63§(_loc2_.§9!d§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §[!L§(param1:String) : void
      {
         var _loc2_:§'b§ = null;
         if(this.§]L§ && !this.§5=§(param1))
         {
            this.§]L§.removeEventListener(Event.COMPLETE,this.§6"§);
            this.§]L§.removeEventListener(Event.CANCEL,this.§@J§);
            this.§]L§.addEventListener(Event.COMPLETE,this.§6"§);
            this.§]L§.addEventListener(Event.CANCEL,this.§@J§);
            this.§]L§.§]^§(param1);
         }
         if(this.§9>§ && !this.§!i§(param1))
         {
            this.§9>§.removeEventListener(Event.COMPLETE,this.§`!a§);
            this.§9>§.removeEventListener(Event.CANCEL,this.§]! §);
            this.§9>§.addEventListener(Event.COMPLETE,this.§`!a§);
            this.§9>§.addEventListener(Event.CANCEL,this.§]! §);
            _loc2_ = §]4§.§#_§(param1);
            if(_loc2_)
            {
               this.§9>§.§]^§(_loc2_.§9!d§);
            }
         }
      }
      
      private function §6"§(param1:Event) : void
      {
         this.§]L§.removeEventListener(Event.COMPLETE,this.§6"§);
         this.§]L§.removeEventListener(Event.CANCEL,this.§@J§);
         this.§1!e§ = true;
         if(this.§1!e§ && this.§%!G§)
         {
            this.initialize(this.§6!S§);
         }
      }
      
      private function §@J§(param1:Event) : void
      {
         this.§]L§.removeEventListener(Event.COMPLETE,this.§6"§);
         this.§]L§.removeEventListener(Event.CANCEL,this.§@J§);
         this.§9!;§ = true;
      }
      
      private function §`!a§(param1:Event) : void
      {
         this.§]L§.removeEventListener(Event.COMPLETE,this.§`!a§);
         this.§]L§.removeEventListener(Event.CANCEL,this.§]! §);
         this.§%!G§ = true;
         if(this.§1!e§ && this.§%!G§)
         {
            this.initialize(this.§6!S§);
         }
      }
      
      private function §]! §(param1:Event) : void
      {
         this.§]L§.removeEventListener(Event.COMPLETE,this.§`!a§);
         this.§]L§.removeEventListener(Event.CANCEL,this.§]! §);
         this.§%!G§ = true;
         if(this.§1!e§ && this.§%!G§)
         {
            this.initialize(this.§6!S§);
         }
      }
      
      public function get backgroundTextureManager() : §!,§
      {
         return this.§[G§;
      }
      
      protected function initialize(param1:§8!P§) : void
      {
         this.§<>§ = false;
         this.§%!9§ = false;
         if(§?]§.§+!9§)
         {
            §?]§.§+!9§.speed = 1;
         }
         this.mLevelEngine = new §8U§(this);
         this.§1"§ = this.§[0§(param1.theme,this.§ =§.§3m§ / §"m§,this.backgroundTextureManager,this.§9!T§.§]H§());
         this.§1"§.§]!W§(§&#§.§2!g§());
         this.§<'§ = this.initLevelObjectManager(param1);
         this.§-!Z§ = this.initLevelSlingshot(param1);
         this.§-G§ = this.initParticleManager(this.§[&§,this.§[G§);
         this.§9!T§.init();
         this.§<!f§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§2Y§)
         {
            this.§2Y§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§=O§)
         {
            this.§5!A§ = §0E§.initialize(this.§=O§);
            this.§5!A§.speed = 1;
            this.§5!A§.play();
            this.§>§ = -1000;
            this.§=O§ = null;
         }
      }
      
      public function §%P§(param1:String) : void
      {
         this.§=O§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§5!A§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§5!A§)
         {
            if(param1)
            {
               this.§5!A§.speed = Math.min(this.§5!A§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§5!A§.speed = Math.max(this.§5!A§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§5!A§)
         {
            this.§5!A§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§8!P§) : §7!!§
      {
         return new §7!!§(this,param1,new Sprite());
      }
      
      protected function §;!"§(param1:§8!P§) : §#!B§
      {
         return new §#!B§(this,param1);
      }
      
      protected function §[0§(param1:String, param2:Number, param3:§!,§, param4:Number) : § !f§
      {
         return new § !f§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§8!P§) : §@!U§
      {
         return new §@!U§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§0!B§, param2:§!,§) : §0i§
      {
         return new §0i§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§8!P§ = this.preProcessLevel();
         var _loc4_:§;!8§;
         (_loc4_ = new §;!8§()).left = 0;
         _loc4_.top = -§#!B§.§`!G§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §#!B§.§`!G§;
         _loc4_.right = _loc4_.left + §#!B§.§6q§;
         _loc4_.y = -13.929;
         _loc4_.x = §#!B§.§6q§;
         _loc4_.id = §#!B§.§^F§;
         _loc3_.§0G§(_loc4_);
         var _loc5_:§;!8§;
         (_loc5_ = new §;!8§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §#!B§.§6q§;
         _loc5_.bottom = _loc5_.top + §#!B§.§`!G§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §#!B§.§6q§ / 2;
         _loc5_.id = §#!B§.§5!<§;
         _loc3_.§0G§(_loc5_);
         this.§<i§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§'Z§ != null)
         {
            _loc3_.theme = §'Z§;
         }
         this.init(_loc3_);
      }
      
      protected function §<i§(param1:§8!P§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§ s§(param1);
         }
      }
      
      protected function preProcessLevel() : §8!P§
      {
         var _loc1_:§8!P§ = new §8!P§();
         _loc1_.§&!_§ = -12;
         return new §8!P§();
      }
      
      protected function §&!G§() : Number
      {
         this.§@@§ ^= this.§@@§ << 21;
         this.§@@§ ^= this.§@@§ >>> 35;
         this.§@@§ ^= this.§@@§ << 4;
         return this.§@@§ * (1 / uint.MAX_VALUE);
      }
      
      protected function § s§(param1:§8!P§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§ >§ = null;
         this.§@@§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§&!G§() * 5;
               (_loc5_ = new § >§()).x = 30 + _loc3_ * 10 + this.§&!G§() * 9;
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
                  _loc5_.angle = 45 - this.§&!G§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§&!G§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§&!G§() * 360;
               }
               param1.§&H§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function §<!f§() : void
      {
         if(§ !f§.§]@§)
         {
            this.§45§(this.§1"§.§"5§,false);
         }
         this.§45§(this.§-G§.§7J§(§0i§.§1O§),false);
         this.§45§(this.§-G§.§7J§(§0i§.§=R§),true);
         this.§45§(this.§-G§.§7J§(§0i§.§%3§),true);
         this.§45§(this.§<'§.§9B§,true);
         this.§45§(this.§-!Z§.sprite,true);
         this.§45§(this.§-G§.§7J§(§0i§.§>E§),true);
         this.§45§(this.§1"§.§-=§,false);
         if(§ !f§.§]@§)
         {
            this.§45§(this.§1"§.§>! §,false);
         }
         this.§45§(this.§-G§.§7J§(§0i§.§0V§),true);
      }
      
      protected function §45§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §&#§.§>!L§;
         param2 /= §&#§.§>!L§;
         _loc3_.x = (param1 / §#!B§.§2!Y§ + this.§9!T§.§7!I§ - §#!B§.§"!`§ / §#!B§.§2!Y§) * §"m§;
         _loc3_.y = (param2 / §#!B§.§2!Y§ + this.§9!T§.§?!Y§ - §#!B§.§0!0§ / §#!B§.§2!Y§) * §"m§;
         return _loc3_;
      }
      
      public function §3s§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §"m§ + §#!B§.§"!`§ / §#!B§.§2!Y§ - this.§9!T§.§7!I§) * §#!B§.§2!Y§;
         _loc3_.y = (param2 / §"m§ + §#!B§.§0!0§ / §#!B§.§2!Y§ - this.§9!T§.§?!Y§) * §#!B§.§2!Y§;
         var _loc4_:Number = Math.max(§&#§.§>!L§,§&#§.§>!§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §6!<§(param1:String, param2:Number, param3:Number) : void
      {
         this.§<'§.§&H§(param1,param2,param3);
      }
      
      public function §;B§() : void
      {
         if(this.§8!f§)
         {
            this.§8!f§.visible = true;
            this.§8!f§.alpha = 0;
         }
         this.§,y§ = 0;
      }
      
      public function § G§() : void
      {
         this.§+P§ = new §'!c§(§&<§.§#>§,§&<§.§>!1§);
      }
      
      public function §1g§() : void
      {
         this.§+P§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§1"§)
         {
            this.§1"§.dispose();
            this.§1"§ = null;
         }
         if(this.§<'§)
         {
            this.§<'§.dispose();
            this.§<'§ = null;
            this.§[!X§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§;U§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§ =§)
         {
            this.§ =§.clear();
            this.§ =§ = null;
         }
         if(this.§-!Z§)
         {
            this.§-!Z§.dispose();
            this.§-!Z§ = null;
         }
         if(this.§9!T§)
         {
            this.§9!T§.clear();
            this.§9!T§ = null;
         }
         if(this.§-G§)
         {
            this.§-G§.dispose();
            this.§-G§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§-!V§ = 0;
         this.§"i§ = 0;
         this.mReadyToRun = false;
         this.§9f§ = false;
         this.§,y§ = §&<§.§,@§;
         if(this.§%7§)
         {
            (this.§%7§ as §@9§).§=! §.x = 0;
            (this.§%7§ as §@9§).§=! §.y = 0;
         }
         if(this.§8!f§)
         {
            this.§8!f§.visible = false;
         }
         this.§5!A§ = null;
         this.§09§ = null;
         if(this.§]L§)
         {
            this.§]L§.removeEventListener(Event.COMPLETE,this.§6"§);
            this.§]L§.removeEventListener(Event.CANCEL,this.§@J§);
         }
         if(this.§9>§)
         {
            this.§9>§.removeEventListener(Event.COMPLETE,this.§`!a§);
            this.§9>§.removeEventListener(Event.CANCEL,this.§]! §);
         }
         this.§switch§();
         if(§?]§.§`!H§)
         {
            §?]§.§`!H§.color = 0;
         }
         if(this.§2Y§)
         {
            this.§2Y§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §&!2§() : String
      {
         if(this.§09§)
         {
            return this.§09§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§?]§.§-?§())
         {
            return 0;
         }
         if(this.§5!A§ && this.§5!A§.§4w§)
         {
            return this.§01§(param1,param2,param3);
         }
         return this.§<!%§(param1,true,param2,param3);
      }
      
      protected function §<!%§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§<>§)
         {
            param1 *= 0.2;
            if(§?]§.§+!9§)
            {
               §?]§.§+!9§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§"i§ += param1;
         if(param3)
         {
            this.§-!V§ += param1;
            _loc5_ = this.mLevelEngine.§5!D§(this.§-!V§);
            this.§-!Z§.update(param1,param4);
            this.§-!V§ = _loc5_;
         }
         else
         {
            this.§<'§.§1!W§(param1);
            this.§-!V§ = 0;
         }
         if(param2)
         {
            this.§99§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §01§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §8U§.§#7§ * 1000;
         if(this.§5!A§)
         {
            param1 *= this.§5!A§.speed;
            _loc5_ = this.§"i§ + param1;
            while(this.§"i§ + _loc4_ < _loc5_)
            {
               if(this.§"i§ + _loc4_ > this.§>§)
               {
                  this.§5!A§.step(this);
                  this.§>§ += _loc4_;
               }
               this.§<!%§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§>§ + _loc4_)
            {
               this.§5!A§.step(this);
               this.§>§ += _loc4_;
            }
            if(this.§"i§ < _loc5_)
            {
               this.§<!%§(_loc5_ - this.§"i§,true,param2,param3);
            }
            return param1;
         }
         return this.§<!%§(_loc4_,true,param2,param3);
      }
      
      private function §99§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§1"§.update(param1);
         this.§<'§.§1!S§(param1,param2);
         this.§^!?§();
         if(this.§,y§ < §&<§.§,@§)
         {
            this.§,y§ += param1;
            _loc3_ = §&<§.§,@§ / 2;
            _loc4_ = (-Math.abs(this.§,y§ - _loc3_) + _loc3_) * (§&<§.§&x§ / _loc3_);
            if(this.§8!f§)
            {
               this.§8!f§.alpha = _loc4_;
            }
         }
         else if(this.§8!f§)
         {
            this.§8!f§.visible = false;
         }
         if(this.§+P§)
         {
            if(!this.§+P§.§@M§(this.§9!T§,param1))
            {
               this.§1g§();
            }
         }
         this.§9!T§.§7A§(param1);
         this.mLevelEngine.§,E§();
         this.§-G§.update(param1);
      }
      
      public function §'!B§(param1:Number) : void
      {
         this.objects.§1!W§(param1 * 1000);
         this.objects.§[!U§(param1 * 1000);
         this.§@-§();
      }
      
      public function §^!?§() : void
      {
         var _loc1_:§>C§ = null;
         if(this.§"i§ > this.§+!;§ + 1000 / 30)
         {
            if(this.§>Y§ != null)
            {
               for each(_loc1_ in this.§>Y§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§+!;§ = this.§"i§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§>C§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§<'§.isPigsAlive(true))
            {
               _loc2_ = this.§<'§.§^z§(true);
               if(_loc2_)
               {
                  _loc2_.§[m§.mTryToScream = §"!%§.§"!=§;
                  this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§<'§.§<!a§());
               }
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§<'§.isPigsAlive(true))
            {
               _loc2_ = this.§<'§.§^z§(true);
               if(_loc2_)
               {
                  _loc2_.§[m§.mTryToBlink = §"!%§.§6!N§;
                  this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§<'§.§<!a§());
               }
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §-q§.§5t§;
         }
         §8j§.addScore(param1,param2);
         this.§2Y§.addScore(param1);
         if(param3 && param1 > 0 && !this.§%!9§)
         {
            this.§81§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §81§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §-q§.§>!E§;
         }
         this.§-G§.addParticle(§-q§.§4!b§,§0i§.§0V§,§-q§.§!T§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §!! §(param1:§>C§) : void
      {
         if(this.§>Y§ == null)
         {
            this.§>Y§ = new Array();
         }
         this.§>Y§.push(param1);
      }
      
      public function §'!"§() : void
      {
         this.§-!Z§.§'!"§();
         this.§<'§.§2S§();
         this.§%!9§ = true;
      }
      
      public function §+!4§(param1:§>C§) : void
      {
         this.§-G§.§+m§(§0i§.§1O§);
         if(this.§>Y§.indexOf(param1) >= 0)
         {
            this.§>Y§.splice(this.§>Y§.indexOf(param1),1);
         }
         if(this.§>Y§.length == 0)
         {
            this.§>Y§ = null;
         }
      }
      
      public function §7!a§(param1:§91§, param2:Number, param3:Number) : void
      {
         this.§[!X§ = this.§<'§.§&H§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§@!U§.§88§) : Number(§@!U§.BIRD_LAUNCH_FORCE);
         if(param1.§7!E§ > 1)
         {
            this.§[!X§.§+f§(param1.§7!E§);
            this.§[!X§.§[m§.§^-§();
         }
         if(param1.§#!@§ != 0)
         {
            _loc4_ = param1.§#!@§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§[!X§.§%!O§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§^$§(§#!B§.§>y§);
         if(this.§09§)
         {
            this.§09§.§7!a§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§9f§ = true;
      }
      
      private function §@-§() : void
      {
         if(!this.§9f§)
         {
            return;
         }
         this.§9f§ = false;
         if(this.activeObject is §2!J§ && !(this.activeObject as §2!J§).§?!>§)
         {
            if(this.activeObject.activateSpecialPower(this.§@2§))
            {
               this.§61§ = true;
            }
         }
         else
         {
            this.§<'§.§^!H§();
         }
         if(this.§09§)
         {
            this.§09§.§'!7§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §+!f§() : void
      {
         this.§<'§.§+!f§();
      }
      
      public function §6!=§() : void
      {
         this.§<'§.§!w§();
      }
      
      public function §^q§() : §8!P§
      {
         var _loc1_:§8!P§ = new §8!P§();
         _loc1_.§'c§ = this.§6!S§.§'c§;
         _loc1_.§7!C§ = this.§6!S§.§7!C§;
         this.§9!T§.§<!]§(_loc1_);
         this.§<'§.§<6§(_loc1_);
         this.§-!Z§.§9!L§(_loc1_);
         _loc1_.theme = this.§1"§.§2T§();
         return _loc1_;
      }
      
      public function §,!D§() : int
      {
         return this.§6!S§.§7!C§;
      }
      
      public function §8;§() : int
      {
         return this.§6!S§.§'c§;
      }
      
      public function §-!4§(param1:int) : void
      {
         this.§6!S§.§7!C§ = param1;
      }
      
      public function §9!N§(param1:int) : void
      {
         this.§6!S§.§'c§ = param1;
      }
      
      public function §2#§(param1:Number, param2:Number) : void
      {
         if(this.§##§)
         {
            this.§##§.§'-§(param1,param2);
         }
         if(this.§9!T§)
         {
            this.§9!T§.§7A§(0);
         }
      }
      
      public function get §84§() : §8!P§
      {
         return this.§6!S§;
      }
      
      public function get §@2§() : §7!!§
      {
         return this.§<'§;
      }
      
      protected function get §0!2§() : §?]§
      {
         return this.§'!2§;
      }
      
      public function get §;<§() : int
      {
         return §1_§;
      }
   }
}
