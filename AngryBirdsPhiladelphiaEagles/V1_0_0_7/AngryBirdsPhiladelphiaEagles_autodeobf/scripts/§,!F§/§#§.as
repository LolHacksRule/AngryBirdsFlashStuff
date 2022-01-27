package §,!F§
{
   import §!6§.§3!5§;
   import §"^§.§9=§;
   import §%y§.§^!D§;
   import §+=§.§3!,§;
   import §+f§.§2!C§;
   import §+f§.§4!8§;
   import §+f§.§@d§;
   import §3!%§.§#!K§;
   import §3!%§.§-k§;
   import §3!%§.§3P§;
   import §3!%§.§^m§;
   import §4!6§.§use§;
   import §4G§.DisplayObject;
   import §4G§.Sprite;
   import §5!'§.§9P§;
   import §8x§.§ %§;
   import §8x§.§5^§;
   import §8x§.§8C§;
   import §8x§.§>A§;
   import §='§.§7A§;
   import §>w§.;
   import §[!1§.§ J§;
   import §[!1§.§,!'§;
   import §[!A§.§+!!§;
   import §[X§.§7a§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import get.§ v§;
   import get.§1!"§;
   
   public class §#§
   {
      
      private static const §&h§:int = 20;
      
      public static const §'!#§:Number = §9=§.§^&§;
      
      public static const §&!J§:Number = §9=§.§"#§;
      
      public static const §67§:Number = 1 / 20;
      
      public static const §4x§:Number = §9=§.§"#§ * §67§;
      
      public static const §=#§:Number = §'!#§ * §67§;
      
      public static const §'0§:§use§ = new §use§(13 - 3);
      
      public static var §4V§:Number = 1;
      
      protected static var §8B§:String = §#!K§.§6D§;
       
      
      protected var §4C§:§>A§;
      
      private var §?h§:§8C§;
      
      private var §^?§:Array = null;
      
      protected var §,%§:§7A§;
      
      public var §9!4§:§1?§;
      
      protected var §],§:§`"§;
      
      protected var §1C§:§+!!§;
      
      protected var §&X§:§,!7§;
      
      protected var §'K§:§,!'§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §?b§:Boolean = false;
      
      protected var §,!M§:Boolean = false;
      
      protected var §5K§:Boolean = false;
      
      public var §4!G§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §7"§:Number;
      
      public var §&8§:Number;
      
      private var §3;§:Number;
      
      public var § V§:§^m§;
      
      public var §0!%§:Boolean = false;
      
      private var §<7§:§'!!§;
      
      private var §^'§:Sprite;
      
      protected var §0]§:§#!K§;
      
      protected var §81§:§3!,§ = null;
      
      private var §?!@§:EventDispatcher;
      
      private var §[!9§:Array;
      
      private var §#E§:Array;
      
      protected var §>b§:§#0§;
      
      private var § ;§:§9P§;
      
      protected var §;?§:§4!8§;
      
      protected var §,!J§:§@d§;
      
      private var §<A§:§2!C§;
      
      private var §8!7§:§2!C§;
      
      private var §&!5§:§2!C§;
      
      private var §`v§:Stage;
      
      private var §?j§:§>!1§;
      
      protected var §5S§:§7a§;
      
      protected var §4,§:§7a§;
      
      protected var §-!B§:Number = 0.0;
      
      protected var §2&§:String;
      
      private var §^R§:Boolean;
      
      protected var § !4§:Boolean;
      
      protected var §<!A§:uint = 1.417339207E9;
      
      public var §7!5§:Boolean;
      
      public function §#§(param1:Stage)
      {
         this.§#E§ = [];
         super();
         this.§?!@§ = new EventDispatcher();
         this.§ V§ = new §^m§();
         this.§`v§ = param1;
         this.§;?§ = §4!8§.§ set§;
         this.§,!J§ = this.initAnimationManager(this.§;?§);
         this.§<A§ = this.initThemeGraphicsManager();
         this.§8!7§ = this.§]J§();
         this.§&!5§ = this.§5!M§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§>b§ = new §#0§(§'!!§,param1,new Rectangle(0,0,§9=§.§^&§,§9=§.§"#§),_loc2_);
         §9=§.§'S§.addEventListener(Event.ENTER_FRAME,this.§>b§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§[?§,false,0,true);
         this.§>b§.§2`§ = false;
         this.§>b§.enableErrorChecking = false;
         this.§>b§.§ S§ = 2;
         this.§>b§.§'2§();
      }
      
      public static function §29§(param1:§8C§, param2:§8C§) : Number
      {
         var _loc3_:Number = param1.§[_§ - param2.§[_§;
         var _loc4_:Number = param1.§3=§ - param2.§3=§;
         return §?q§(_loc3_,_loc4_);
      }
      
      public static function §?q§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§^'§ && this.§#7§)
         {
            this.§^'§ = this.§<7§.§%i§;
         }
         return this.§^'§;
      }
      
      public function get §#7§() : Sprite
      {
         if(!this.§<7§)
         {
            this.§<7§ = this.§>b§.§0!"§ as §'!!§;
            this.§<7§.§]1§ = false;
         }
         return this.§<7§;
      }
      
      private function get §?f§() : DisplayObject
      {
         if(this.§#7§)
         {
            return (this.§#7§ as §'!!§).§?f§;
         }
         return null;
      }
      
      public function get §94§() : §@d§
      {
         return this.§,!J§;
      }
      
      public function get textureManager() : §4!8§
      {
         return this.§;?§;
      }
      
      public function get camera() : §+!!§
      {
         return this.§1C§;
      }
      
      public function get objects() : §>A§
      {
         return this.§4C§;
      }
      
      public function get particles() : §,!'§
      {
         return this.§'K§;
      }
      
      public function get background() : §7A§
      {
         return this.§,%§;
      }
      
      public function get slingshot() : §,!7§
      {
         return this.§&X§;
      }
      
      public function get activeObject() : §8C§
      {
         return this.§?h§;
      }
      
      public function get §6!2§() : §`"§
      {
         return this.§],§;
      }
      
      public function get stage() : Stage
      {
         return this.§`v§;
      }
      
      public function get §38§() : §2!C§
      {
         return this.§&!5§;
      }
      
      protected function get §,!O§() : §2!C§
      {
         return this.§<A§;
      }
      
      public function set activeObject(param1:§8C§) : void
      {
         this.§?h§ = param1;
      }
      
      public function set slowMotion(param1:Boolean) : void
      {
         this.§ !4§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§ ;§)
         {
            this.§ ;§.dispose();
         }
         if(this.§;?§)
         {
            this.§;?§.dispose();
         }
         if(this.§<A§ && this.§<A§.textureManager)
         {
            this.§<A§.textureManager.dispose();
         }
         if(this.§&!5§ && this.§&!5§.textureManager)
         {
            this.§&!5§.textureManager.dispose();
         }
         if(this.§>b§)
         {
            this.§>b§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §2!C§
      {
         return null;
      }
      
      protected function §]J§() : §2!C§
      {
         return null;
      }
      
      protected function §5!M§() : §2!C§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§4!8§) : §@d§
      {
         return new §@d§(param1);
      }
      
      public function §2k§(param1:Boolean) : void
      {
         if(§#0§.§#4§)
         {
            if(param1)
            {
               §#0§.§#4§.start();
            }
            else
            {
               §#0§.§#4§.stop();
               §#0§.§#4§.color = 0;
            }
         }
      }
      
      public function §]! §(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §2R§(param1:§3!,§) : void
      {
         if(this.§81§ != null)
         {
            this.§81§.removeEventListeners();
         }
         this.§81§ = param1;
         if(this.mReadyToRun)
         {
            this.§81§.addEventListeners();
         }
      }
      
      public function § 6§() : §7a§
      {
         return this.§5S§;
      }
      
      public function §`W§(param1:§9P§, param2:Array, param3:Function) : void
      {
         this.§ ;§ = param1;
         var _loc4_:int = this.§ ;§.§23§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§;?§.§?w§(this.§ ;§.§>0§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§?!@§.addEventListener(Event.INIT,param3);
            this.§#E§.push(param3);
         }
         if(this.§0t§(param2))
         {
            this.§&!L§();
         }
      }
      
      private function §0t§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§;?§.§]M§())
         {
            _loc2_ = this.§;?§.§'! § / 1000;
            _loc3_ = this.§;?§.§9c§ / 1000;
            §3!5§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§[!9§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§,!J§.initializeAnimations(param1);
      }
      
      private function §[?§(param1:Event) : void
      {
         this.§;?§.§[+§();
         if(this.§,!O§ && this.§,!O§.textureManager)
         {
            this.§,!O§.textureManager.§[+§();
         }
         if(this.§38§ && this.§38§.textureManager)
         {
            this.§38§.textureManager.§[+§();
         }
         if(this.§[!9§)
         {
            this.§0t§(this.§[!9§);
            this.§[!9§ = null;
            this.§&!L§();
         }
         if(this.§81§ != null && this.mReadyToRun)
         {
            this.§81§.addEventListeners();
         }
         if(this.§<A§)
         {
            this.§<A§.§]M§();
         }
         if(this.§&!5§)
         {
            if(this.§&!5§.textureManager)
            {
               this.§&!5§.textureManager.§[+§();
               this.§&!5§.§]M§();
            }
         }
      }
      
      private function §&!L§() : void
      {
         this.§?!@§.dispatchEvent(new Event(Event.INIT));
         this.§ >§();
      }
      
      private function § >§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§#E§)
         {
            this.§?!@§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§#E§ = [];
      }
      
      public function init(param1:§#!K§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§],§ = new §`"§(this,param1);
         this.§1C§ = this.initLevelCamera(param1);
         this.§7"§ = 0;
         this.§&8§ = 0;
         this.§3;§ = 0;
         this.§^R§ = false;
         this.mReadyToRun = false;
         this.§?b§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §8B§ = param1.theme;
         this.§0]§ = param1;
         this.§,!M§ = this.§var§(param1.theme);
         this.§5K§ = this.§0!$§(param1.theme);
         if(this.§,!M§ && this.§5K§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§2u§(param1.theme);
         }
         this.§#M§();
         §7!I§.init();
      }
      
      protected function §#M§() : void
      {
         this.§5S§ = new §7a§(§-k§.§%D§);
      }
      
      protected function §var§(param1:String) : Boolean
      {
         if(this.§<A§)
         {
            return false;
         }
         return true;
      }
      
      protected function §0!$§(param1:String) : Boolean
      {
         var _loc2_:§1!"§ = null;
         if(this.§8!7§)
         {
            _loc2_ = § v§.§"!4§(param1);
            if(_loc2_)
            {
               if(_loc2_.§&!?§ && !this.§8!7§.§2!%§(_loc2_.§&!?§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §2u§(param1:String) : void
      {
         var _loc2_:§1!"§ = null;
         if(this.§<A§ && !this.§var§(param1))
         {
            this.§<A§.removeEventListener(Event.COMPLETE,this.§`n§);
            this.§<A§.removeEventListener(Event.CANCEL,this.§?]§);
            this.§<A§.addEventListener(Event.COMPLETE,this.§`n§);
            this.§<A§.addEventListener(Event.CANCEL,this.§?]§);
            this.§<A§.§6e§(param1);
         }
         if(this.§8!7§ && !this.§0!$§(param1))
         {
            this.§8!7§.removeEventListener(Event.COMPLETE,this.§&G§);
            this.§8!7§.removeEventListener(Event.CANCEL,this.§8s§);
            this.§8!7§.addEventListener(Event.COMPLETE,this.§&G§);
            this.§8!7§.addEventListener(Event.CANCEL,this.§8s§);
            _loc2_ = § v§.§"!4§(param1);
            if(_loc2_)
            {
               this.§8!7§.§6e§(_loc2_.§&!?§);
            }
         }
      }
      
      private function §`n§(param1:Event) : void
      {
         this.§<A§.removeEventListener(Event.COMPLETE,this.§`n§);
         this.§<A§.removeEventListener(Event.CANCEL,this.§?]§);
         this.§,!M§ = true;
         if(this.§,!M§ && this.§5K§)
         {
            this.initialize(this.§0]§);
         }
      }
      
      private function §?]§(param1:Event) : void
      {
         this.§<A§.removeEventListener(Event.COMPLETE,this.§`n§);
         this.§<A§.removeEventListener(Event.CANCEL,this.§?]§);
         this.§?b§ = true;
      }
      
      private function §&G§(param1:Event) : void
      {
         this.§<A§.removeEventListener(Event.COMPLETE,this.§&G§);
         this.§<A§.removeEventListener(Event.CANCEL,this.§8s§);
         this.§5K§ = true;
         if(this.§,!M§ && this.§5K§)
         {
            this.initialize(this.§0]§);
         }
      }
      
      private function §8s§(param1:Event) : void
      {
         this.§<A§.removeEventListener(Event.COMPLETE,this.§&G§);
         this.§<A§.removeEventListener(Event.CANCEL,this.§8s§);
         this.§5K§ = true;
         if(this.§,!M§ && this.§5K§)
         {
            this.initialize(this.§0]§);
         }
      }
      
      public function get backgroundTextureManager() : §4!8§
      {
         return this.§;?§;
      }
      
      protected function initialize(param1:§#!K§) : void
      {
         this.§ !4§ = false;
         this.§7!5§ = false;
         if(§#0§.§]!=§)
         {
            §#0§.§]!=§.speed = 1;
         }
         this.§9!4§ = new §1?§(this);
         this.§,%§ = this.initLevelBackground(param1.theme,this.§],§.§-u§ / §67§,this.backgroundTextureManager,this.§1C§.§8!K§());
         this.§,%§.§=h§(§9=§.§?W§());
         this.§4C§ = this.initLevelObjectManager(param1);
         this.§&X§ = this.initLevelSlingshot(param1);
         this.§'K§ = this.initParticleManager(this.§,!J§,this.§;?§);
         this.§1C§.init();
         this.§]z§();
         this.§;8§();
         this.mReadyToRun = true;
         if(this.§81§)
         {
            this.§81§.addEventListeners();
         }
      }
      
      protected function §;8§() : void
      {
         if(this.§2&§)
         {
            this.§4,§ = §7a§.initialize(this.§2&§);
            this.§4,§.speed = 1;
            this.§4,§.play();
            this.§-!B§ = -1000;
            this.§2&§ = null;
         }
      }
      
      public function §1!1§(param1:String) : void
      {
         this.§2&§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§4,§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§4,§)
         {
            if(param1)
            {
               this.§4,§.speed = Math.min(this.§4,§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§4,§.speed = Math.max(this.§4,§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§4,§)
         {
            this.§4,§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§#!K§) : §>A§
      {
         return new §>A§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§#!K§) : §+!!§
      {
         return new §+!!§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§4!8§, param4:Number) : §7A§
      {
         return new §7A§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§#!K§) : §,!7§
      {
         return new §,!7§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§@d§, param2:§4!8§) : §,!'§
      {
         return new §,!'§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§#!K§ = this.§0!#§();
         var _loc4_:§3P§;
         (_loc4_ = new §3P§()).left = 0;
         _loc4_.top = -§+!!§.§>"§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §+!!§.§>"§;
         _loc4_.right = _loc4_.left + §+!!§.§;!K§;
         _loc4_.y = -13.929;
         _loc4_.x = §+!!§.§;!K§;
         _loc4_.id = §+!!§.§;!#§;
         _loc3_.§8c§(_loc4_);
         var _loc5_:§3P§;
         (_loc5_ = new §3P§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §+!!§.§;!K§;
         _loc5_.bottom = _loc5_.top + §+!!§.§>"§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §+!!§.§;!K§ / 2;
         _loc5_.id = §+!!§.§[y§;
         _loc3_.§8c§(_loc5_);
         this.§>!0§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§8B§ != null)
         {
            _loc3_.theme = §8B§;
         }
         this.init(_loc3_);
      }
      
      protected function §>!0§(param1:§#!K§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§3q§(param1);
         }
      }
      
      protected function §0!#§() : §#!K§
      {
         var _loc1_:§#!K§ = new §#!K§();
         _loc1_.§&s§ = -12;
         return new §#!K§();
      }
      
      protected function §?!H§() : Number
      {
         this.§<!A§ ^= this.§<!A§ << 21;
         this.§<!A§ ^= this.§<!A§ >>> 35;
         this.§<!A§ ^= this.§<!A§ << 4;
         return this.§<!A§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §3q§(param1:§#!K§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§^!D§ = null;
         this.§<!A§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§?!H§() * 5;
               (_loc5_ = new §^!D§()).x = 30 + _loc3_ * 10 + this.§?!H§() * 9;
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
                  _loc5_.angle = 45 - this.§?!H§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§?!H§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§?!H§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §4H§() : void
      {
      }
      
      public function §]z§() : void
      {
         if(§7A§.§@Y§)
         {
            this.§%G§(this.§,%§.§2D§,false);
         }
         this.§%G§(this.§'K§.§ g§(§,!'§.§6!"§),false);
         this.§%G§(this.§'K§.§ g§(§,!'§.§!!-§),true);
         this.§%G§(this.§'K§.§ g§(§,!'§.§<V§),true);
         this.§%G§(this.§4C§.§@M§,true);
         this.§%G§(this.§&X§.sprite,true);
         this.§%G§(this.§'K§.§ g§(§,!'§.§=8§),true);
         this.§%G§(this.§,%§.§`K§,false);
         if(§7A§.§@Y§)
         {
            this.§%G§(this.§,%§.§%?§,false);
         }
         this.§%G§(this.§'K§.§ g§(§,!'§.§?Y§),true);
      }
      
      private function §%G§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §9=§.§'j§;
         param2 /= §9=§.§'j§;
         _loc3_.x = (param1 / §+!!§.levelScale + this.§1C§.§`!!§ - §+!!§.§!2§ / §+!!§.levelScale) * §67§;
         _loc3_.y = (param2 / §+!!§.levelScale + this.§1C§.§8h§ - §+!!§.§3!K§ / §+!!§.levelScale) * §67§;
         return _loc3_;
      }
      
      public function box2DToScreen(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §67§ + §+!!§.§!2§ / §+!!§.levelScale - this.§1C§.§`!!§) * §+!!§.levelScale;
         _loc3_.y = (param2 / §67§ + §+!!§.§3!K§ / §+!!§.levelScale - this.§1C§.§8h§) * §+!!§.levelScale;
         var _loc4_:Number = Math.max(§9=§.§'j§,§9=§.§-m§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §2c§(param1:String, param2:Number, param3:Number) : void
      {
         this.§4C§.addObject(param1,param2,param3);
      }
      
      public function §&W§() : void
      {
         if(this.§?f§)
         {
            this.§?f§.visible = true;
            this.§?f§.alpha = 0;
         }
         this.§4!G§ = 0;
      }
      
      public function §+<§() : void
      {
         this.§?j§ = new §>!1§(Tuner.§[!K§,Tuner.§&!C§);
      }
      
      public function §9!&§() : void
      {
         this.§?j§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§,%§)
         {
            this.§,%§.dispose();
            this.§,%§ = null;
         }
         if(this.§4C§)
         {
            this.§4C§.dispose();
            this.§4C§ = null;
            this.§?h§ = null;
         }
         if(this.§9!4§)
         {
            if(!this.§9!4§.§2=§)
            {
            }
            this.§9!4§.clear();
            this.§9!4§ = null;
         }
         if(this.§],§)
         {
            this.§],§.clear();
            this.§],§ = null;
         }
         if(this.§&X§)
         {
            this.§&X§.dispose();
            this.§&X§ = null;
         }
         if(this.§1C§)
         {
            this.§1C§.clear();
            this.§1C§ = null;
         }
         if(this.§'K§)
         {
            this.§'K§.dispose();
            this.§'K§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§7"§ = 0;
         this.§&8§ = 0;
         this.mReadyToRun = false;
         this.§^R§ = false;
         this.§4!G§ = Tuner.§7=§;
         if(this.§#7§)
         {
            (this.§#7§ as §'!!§).§4<§.x = 0;
            (this.§#7§ as §'!!§).§4<§.y = 0;
         }
         if(this.§?f§)
         {
            this.§?f§.visible = false;
         }
         this.§4,§ = null;
         this.§5S§ = null;
         if(this.§<A§)
         {
            this.§<A§.removeEventListener(Event.COMPLETE,this.§`n§);
            this.§<A§.removeEventListener(Event.CANCEL,this.§?]§);
         }
         if(this.§8!7§)
         {
            this.§8!7§.removeEventListener(Event.COMPLETE,this.§&G§);
            this.§8!7§.removeEventListener(Event.CANCEL,this.§8s§);
         }
         this.§ >§();
         if(§#0§.§#4§)
         {
            §#0§.§#4§.color = 0;
         }
         if(this.§81§)
         {
            this.§81§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §;!9§() : String
      {
         if(this.§5S§)
         {
            return this.§5S§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§#0§.§!!B§())
         {
            return 0;
         }
         if(this.§4,§ && this.§4,§.§#!"§)
         {
            return this.§7!G§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§ !4§)
         {
            param1 *= 0.2;
            if(§#0§.§]!=§)
            {
               §#0§.§]!=§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§&8§ += param1;
         if(param3)
         {
            this.§7"§ += param1;
            _loc5_ = this.§9!4§.§;!J§(this.§7"§);
            this.§&X§.update(param1,param4);
            this.§7"§ = _loc5_;
         }
         else
         {
            this.§4C§.§]Q§(param1);
            this.§7"§ = 0;
         }
         if(param2)
         {
            this.§9!"§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §7!G§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §1?§.§5"§ * 1000;
         if(this.§4,§)
         {
            param1 *= this.§4,§.speed;
            _loc5_ = this.§&8§ + param1;
            while(this.§&8§ + _loc4_ < _loc5_)
            {
               if(this.§&8§ + _loc4_ > this.§-!B§)
               {
                  this.§4,§.step(this);
                  this.§-!B§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§-!B§ + _loc4_)
            {
               this.§4,§.step(this);
               this.§-!B§ += _loc4_;
            }
            if(this.§&8§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§&8§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §9!"§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§,%§.update(param1);
         this.§4C§.§,q§(param1,param2);
         this.§0'§();
         if(this.§4!G§ < Tuner.§7=§)
         {
            this.§4!G§ += param1;
            _loc3_ = Tuner.§7=§ / 2;
            _loc4_ = (-Math.abs(this.§4!G§ - _loc3_) + _loc3_) * (Tuner.§1v§ / _loc3_);
            if(this.§?f§)
            {
               this.§?f§.alpha = _loc4_;
            }
         }
         else if(this.§?f§)
         {
            this.§?f§.visible = false;
         }
         if(this.§?j§)
         {
            if(!this.§?j§.§2;§(this.§1C§,param1))
            {
               this.§9!&§();
            }
         }
         this.§1C§.§7q§(param1);
         this.§9!4§.§52§();
         this.§'K§.update(param1);
      }
      
      public function §0L§(param1:Number) : void
      {
         this.objects.§]Q§(param1 * 1000);
         this.objects.updateLevelObjectsComplete(param1 * 1000);
         this.§"d§();
      }
      
      public function §0'§() : void
      {
         var _loc1_:§8C§ = null;
         if(this.§&8§ > this.§3;§ + 1000 / 30)
         {
            if(this.§^?§ != null)
            {
               for each(_loc1_ in this.§^?§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§3;§ = this.§&8§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§8C§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§4C§.isPigsAlive(true))
            {
               _loc2_ = this.§4C§.§8!N§(true);
               _loc2_.§5!O§.mTryToScream = §5^§.§'v§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§4C§.§?!,§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§4C§.isPigsAlive(true))
            {
               _loc2_ = this.§4C§.§8!N§(true);
               _loc2_.§5!O§.mTryToBlink = §5^§.§3H§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§4C§.§?!,§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = § J§.§ @§;
         }
         §7!I§.addScore(param1,param2);
         this.§81§.addScore(param1);
         if(param3 && param1 > 0 && !this.§7!5§)
         {
            this.§?[§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §?[§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = § J§.§%!?§;
         }
         this.§'K§.addParticle(§ J§.§9n§,§,!'§.§?Y§,§ J§.§@y§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §`T§(param1:§8C§) : void
      {
         if(this.§^?§ == null)
         {
            this.§^?§ = new Array();
         }
         this.§^?§.push(param1);
      }
      
      public function §0!9§() : void
      {
         this.§&X§.§0!9§();
         this.§4C§.mightyEagleUsed();
         this.§7!5§ = true;
      }
      
      public function §@z§(param1:§8C§) : void
      {
         this.§'K§.§2g§(§,!'§.§6!"§);
         if(this.§^?§.indexOf(param1) >= 0)
         {
            this.§^?§.splice(this.§^?§.indexOf(param1),1);
         }
         if(this.§^?§.length == 0)
         {
            this.§^?§ = null;
         }
      }
      
      public function shootBird(param1:§]!6§, param2:Number, param3:Number) : void
      {
         this.§?h§ = this.§4C§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§,!7§.§ !!§) : Number(§,!7§.§"$§);
         if(param1.§?_§ > 1)
         {
            this.§?h§.§=!L§(param1.§?_§);
            this.§?h§.§5!O§.§ !"§();
         }
         if(param1.§+!>§ != 0)
         {
            _loc4_ = param1.§+!>§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§?h§.§,e§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§3!>§(§+!!§.§ !8§);
         if(this.§5S§)
         {
            this.§5S§.shootBird(this.§9!4§.§>W§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§^R§ = true;
      }
      
      private function §"d§() : void
      {
         if(!this.§^R§)
         {
            return;
         }
         this.§^R§ = false;
         if(this.activeObject is § %§ && !(this.activeObject as § %§).§%!3§)
         {
            if(this.activeObject.activateSpecialPower(this.§+_§))
            {
               this.§0!%§ = true;
            }
         }
         else
         {
            this.§4C§.§=l§();
         }
         if(this.§5S§)
         {
            this.§5S§.§1E§(this.§9!4§.§>W§);
         }
      }
      
      public function §[1§() : void
      {
         this.§4C§.§[1§();
      }
      
      public function §4!1§() : void
      {
         this.§4C§.§#!#§();
      }
      
      public function §?!O§() : §#!K§
      {
         var _loc1_:§#!K§ = new §#!K§();
         _loc1_.§+!<§ = this.§0]§.§+!<§;
         _loc1_.§]!H§ = this.§0]§.§]!H§;
         this.§1C§.§<`§(_loc1_);
         this.§4C§.§<!-§(_loc1_);
         this.§&X§.§ f§(_loc1_);
         _loc1_.theme = this.§,%§.§=X§();
         return _loc1_;
      }
      
      public function §-!F§() : int
      {
         return this.§0]§.§]!H§;
      }
      
      public function §16§() : int
      {
         return this.§0]§.§+!<§;
      }
      
      public function §%s§(param1:int) : void
      {
         this.§0]§.§]!H§ = param1;
      }
      
      public function §;!%§(param1:int) : void
      {
         this.§0]§.§+!<§ = param1;
      }
      
      public function §]!0§(param1:Number, param2:Number) : void
      {
         if(this.§<7§)
         {
            this.§<7§.§]7§(param1,param2);
         }
         if(this.§1C§)
         {
            this.§1C§.§7q§(0);
         }
      }
      
      public function get §&]§() : §#!K§
      {
         return this.§0]§;
      }
      
      public function get §+_§() : §>A§
      {
         return this.§4C§;
      }
      
      protected function get starling() : §#0§
      {
         return this.§>b§;
      }
      
      public function get damageParticleLimit() : int
      {
         return §&h§;
      }
   }
}
