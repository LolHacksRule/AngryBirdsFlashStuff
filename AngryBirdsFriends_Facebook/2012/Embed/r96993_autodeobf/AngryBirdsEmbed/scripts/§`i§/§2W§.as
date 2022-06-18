package §`i§
{
   import § !&§.§#T§;
   import § !'§.§"6§;
   import §#!1§.§+q§;
   import §#!1§.§4!,§;
   import §#!1§.§9!'§;
   import §#!1§.§;^§;
   import §+6§.§4j§;
   import §-!C§.§#!G§;
   import §-!C§.§3!H§;
   import §-!C§.§7!D§;
   import §-!C§.§;]§;
   import §0!D§.§55§;
   import §2$§.§+u§;
   import §3v§.§1a§;
   import §4!'§.§#,§;
   import §6"§.§7%§;
   import §6"§.§8!9§;
   import §6u§.§3W§;
   import §6u§.§;=§;
   import §6u§.§@N§;
   import §8!#§.§<n§;
   import §>%§.§]3§;
   import §>A§.§`!6§;
   import §]!6§.DisplayObject;
   import §]!6§.Sprite;
   import §]"§.§4!F§;
   import §]"§.§=j§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2W§
   {
      
      private static const §&R§:int = 20;
      
      public static const §9^§:Number = §]3§.§1!D§;
      
      public static const §##§:Number = §]3§.§#A§;
      
      public static const §0;§:Number = 1 / 20;
      
      public static const §9O§:Number = §]3§.§#A§ * §0;§;
      
      public static const §4y§:Number = §9^§ * §0;§;
      
      public static const §"!'§:§#,§ = new §#,§(13 - 3);
      
      protected static var §+o§:String = §3!H§.§^!8§;
       
      
      protected var §'4§:§;^§;
      
      private var §<-§:§4!,§;
      
      private var §^&§:Array = null;
      
      protected var §3&§:§+u§;
      
      public var §3X§:§6F§;
      
      protected var § !+§:§33§;
      
      protected var §=!C§:§4j§;
      
      protected var §finally§:§while§;
      
      protected var §^§:§=j§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §1! §:Boolean = false;
      
      protected var § `§:Boolean = false;
      
      protected var §1<§:Boolean = false;
      
      public var §,K§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §&y§:Number;
      
      public var §0^§:Number;
      
      private var §'0§:Number;
      
      public var §"R§:§7!D§;
      
      public var §^$§:Boolean = false;
      
      private var §8^§:§%6§;
      
      private var §6r§:Sprite;
      
      protected var §,!<§:§3!H§;
      
      protected var §1b§:§`!6§ = null;
      
      private var §4]§:EventDispatcher;
      
      private var §#!E§:Array;
      
      private var §4d§:Array;
      
      protected var §5?§:§<n§;
      
      private var §2r§:§"6§;
      
      protected var §[!C§:§3W§;
      
      protected var §-,§:§@N§;
      
      private var §7Y§:§;=§;
      
      private var §9N§:§;=§;
      
      private var §]G§:§;=§;
      
      private var §6Y§:Stage;
      
      private var §1G§:§='§;
      
      protected var §6a§:§#T§;
      
      protected var §+W§:§#T§;
      
      protected var §-2§:Number = 0.0;
      
      protected var §1h§:String;
      
      private var §,;§:Boolean;
      
      protected var §#2§:Boolean;
      
      protected var §]Y§:uint = 1.417339207E9;
      
      public var §9+§:Boolean;
      
      public function §2W§(param1:Stage)
      {
         this.§4d§ = [];
         super();
         this.§4]§ = new EventDispatcher();
         this.§"R§ = new §7!D§();
         this.§6Y§ = param1;
         this.§[!C§ = §3W§.§9r§;
         this.§-,§ = this.initAnimationManager(this.§[!C§);
         this.§7Y§ = this.initThemeGraphicsManager();
         this.§9N§ = this.§%b§();
         this.§]G§ = this.§9!-§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§5?§ = new §<n§(§%6§,param1,new Rectangle(0,0,§]3§.§1!D§,§]3§.§#A§),_loc2_);
         §]3§.§4#§.addEventListener(Event.ENTER_FRAME,this.§5?§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§80§,false,0,true);
         this.§5?§.§"e§ = false;
         this.§5?§.enableErrorChecking = false;
         this.§5?§.§`l§ = 2;
         this.§5?§.§%z§();
      }
      
      public static function §&5§(param1:§4!,§, param2:§4!,§) : Number
      {
         var _loc3_:Number = param1.§!s§ - param2.§!s§;
         var _loc4_:Number = param1.§@!%§ - param2.§@!%§;
         return § %§(_loc3_,_loc4_);
      }
      
      public static function § %§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§6r§ && this.§3O§)
         {
            this.§6r§ = this.§8^§.§@5§;
         }
         return this.§6r§;
      }
      
      public function get §3O§() : Sprite
      {
         if(!this.§8^§)
         {
            this.§8^§ = this.§5?§.§&@§ as §%6§;
            this.§8^§.§]M§ = false;
         }
         return this.§8^§;
      }
      
      private function get §'I§() : DisplayObject
      {
         if(this.§3O§)
         {
            return (this.§3O§ as §%6§).§'I§;
         }
         return null;
      }
      
      public function get §9V§() : §@N§
      {
         return this.§-,§;
      }
      
      public function get textureManager() : §3W§
      {
         return this.§[!C§;
      }
      
      public function get camera() : §4j§
      {
         return this.§=!C§;
      }
      
      public function get objects() : §;^§
      {
         return this.§'4§;
      }
      
      public function get particles() : §=j§
      {
         return this.§^§;
      }
      
      public function get background() : §+u§
      {
         return this.§3&§;
      }
      
      public function get slingshot() : §while§
      {
         return this.§finally§;
      }
      
      public function get activeObject() : §4!,§
      {
         return this.§<-§;
      }
      
      public function get §&x§() : §33§
      {
         return this.§ !+§;
      }
      
      public function get stage() : Stage
      {
         return this.§6Y§;
      }
      
      public function get §]!$§() : §;=§
      {
         return this.§]G§;
      }
      
      protected function get §<k§() : §;=§
      {
         return this.§7Y§;
      }
      
      public function set activeObject(param1:§4!,§) : void
      {
         this.§<-§ = param1;
      }
      
      public function set §#W§(param1:Boolean) : void
      {
         this.§#2§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§2r§)
         {
            this.§2r§.dispose();
         }
         if(this.§[!C§)
         {
            this.§[!C§.dispose();
         }
         if(this.§7Y§ && this.§7Y§.textureManager)
         {
            this.§7Y§.textureManager.dispose();
         }
         if(this.§]G§ && this.§]G§.textureManager)
         {
            this.§]G§.textureManager.dispose();
         }
         if(this.§5?§)
         {
            this.§5?§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §;=§
      {
         return null;
      }
      
      protected function §%b§() : §;=§
      {
         return null;
      }
      
      protected function §9!-§() : §;=§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§3W§) : §@N§
      {
         return new §@N§(param1);
      }
      
      public function §@!A§(param1:Boolean) : void
      {
         if(§<n§.§?@§)
         {
            if(param1)
            {
               §<n§.§?@§.start();
            }
            else
            {
               §<n§.§?@§.stop();
               §<n§.§?@§.color = 0;
            }
         }
      }
      
      public function §9>§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §1_§(param1:§`!6§) : void
      {
         if(this.§1b§ != null)
         {
            this.§1b§.removeEventListeners();
         }
         this.§1b§ = param1;
         if(this.mReadyToRun)
         {
            this.§1b§.addEventListeners();
         }
      }
      
      public function §-!-§() : §#T§
      {
         return this.§6a§;
      }
      
      public function §5!$§(param1:§"6§, param2:Array, param3:Function) : void
      {
         this.§2r§ = param1;
         var _loc4_:int = this.§2r§.§7[§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§[!C§.§<V§(this.§2r§.§5l§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§4]§.addEventListener(Event.INIT,param3);
            this.§4d§.push(param3);
         }
         if(this.§ !0§(param2))
         {
            this.§"!=§();
         }
      }
      
      private function § !0§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§[!C§.§-^§())
         {
            _loc2_ = this.§[!C§.§21§ / 1000;
            _loc3_ = this.§[!C§.§``§ / 1000;
            §1a§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§#!E§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§-,§.initializeAnimations(param1);
      }
      
      private function §80§(param1:Event) : void
      {
         this.§[!C§.§%!A§();
         if(this.§<k§ && this.§<k§.textureManager)
         {
            this.§<k§.textureManager.§%!A§();
         }
         if(this.§]!$§ && this.§]!$§.textureManager)
         {
            this.§]!$§.textureManager.§%!A§();
         }
         if(this.§#!E§)
         {
            this.§ !0§(this.§#!E§);
            this.§#!E§ = null;
            this.§"!=§();
         }
         if(this.§1b§ != null && this.mReadyToRun)
         {
            this.§1b§.addEventListeners();
         }
         if(this.§7Y§)
         {
            this.§7Y§.§-^§();
         }
         if(this.§]G§)
         {
            if(this.§]G§.textureManager)
            {
               this.§]G§.textureManager.§%!A§();
               this.§]G§.§-^§();
            }
         }
      }
      
      private function §"!=§() : void
      {
         this.§4]§.dispatchEvent(new Event(Event.INIT));
         this.§1U§();
      }
      
      private function §1U§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§4d§)
         {
            this.§4]§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§4d§ = [];
      }
      
      public function init(param1:§3!H§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§ !+§ = new §33§(this,param1);
         this.§=!C§ = this.initLevelCamera(param1);
         this.§&y§ = 0;
         this.§0^§ = 0;
         this.§'0§ = 0;
         this.§,;§ = false;
         this.mReadyToRun = false;
         this.§1! § = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §+o§ = param1.theme;
         this.§,!<§ = param1;
         this.§ `§ = this.§[e§(param1.theme);
         this.§1<§ = this.§&`§(param1.theme);
         if(this.§ `§ && this.§1<§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§>!§(param1.theme);
         }
         this.§'g§();
         §;9§.init();
      }
      
      protected function §'g§() : void
      {
         this.§6a§ = new §#T§(§#!G§.§9C§);
      }
      
      protected function §[e§(param1:String) : Boolean
      {
         if(this.§7Y§)
         {
            return false;
         }
         return true;
      }
      
      protected function §&`§(param1:String) : Boolean
      {
         var _loc2_:§7%§ = null;
         if(this.§9N§)
         {
            _loc2_ = §8!9§.§0M§(param1);
            if(_loc2_)
            {
               if(_loc2_.§"!,§ && !this.§9N§.§[d§(_loc2_.§"!,§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §>!§(param1:String) : void
      {
         var _loc2_:§7%§ = null;
         if(this.§7Y§ && !this.§[e§(param1))
         {
            this.§7Y§.removeEventListener(Event.COMPLETE,this.§`x§);
            this.§7Y§.removeEventListener(Event.CANCEL,this.§7e§);
            this.§7Y§.addEventListener(Event.COMPLETE,this.§`x§);
            this.§7Y§.addEventListener(Event.CANCEL,this.§7e§);
            this.§7Y§.§,!3§(param1);
         }
         if(this.§9N§ && !this.§&`§(param1))
         {
            this.§9N§.removeEventListener(Event.COMPLETE,this.§6!B§);
            this.§9N§.removeEventListener(Event.CANCEL,this.§8+§);
            this.§9N§.addEventListener(Event.COMPLETE,this.§6!B§);
            this.§9N§.addEventListener(Event.CANCEL,this.§8+§);
            _loc2_ = §8!9§.§0M§(param1);
            if(_loc2_)
            {
               this.§9N§.§,!3§(_loc2_.§"!,§);
            }
         }
      }
      
      private function §`x§(param1:Event) : void
      {
         this.§7Y§.removeEventListener(Event.COMPLETE,this.§`x§);
         this.§7Y§.removeEventListener(Event.CANCEL,this.§7e§);
         this.§ `§ = true;
         if(this.§ `§ && this.§1<§)
         {
            this.initialize(this.§,!<§);
         }
      }
      
      private function §7e§(param1:Event) : void
      {
         this.§7Y§.removeEventListener(Event.COMPLETE,this.§`x§);
         this.§7Y§.removeEventListener(Event.CANCEL,this.§7e§);
         this.§1! § = true;
      }
      
      private function §6!B§(param1:Event) : void
      {
         this.§7Y§.removeEventListener(Event.COMPLETE,this.§6!B§);
         this.§7Y§.removeEventListener(Event.CANCEL,this.§8+§);
         this.§1<§ = true;
         if(this.§ `§ && this.§1<§)
         {
            this.initialize(this.§,!<§);
         }
      }
      
      private function §8+§(param1:Event) : void
      {
         this.§7Y§.removeEventListener(Event.COMPLETE,this.§6!B§);
         this.§7Y§.removeEventListener(Event.CANCEL,this.§8+§);
         this.§1<§ = true;
         if(this.§ `§ && this.§1<§)
         {
            this.initialize(this.§,!<§);
         }
      }
      
      public function get backgroundTextureManager() : §3W§
      {
         return this.§[!C§;
      }
      
      protected function initialize(param1:§3!H§) : void
      {
         this.§#2§ = false;
         this.§9+§ = false;
         if(§<n§.§6f§)
         {
            §<n§.§6f§.speed = 1;
         }
         this.§3X§ = new §6F§(this);
         this.§3&§ = this.initLevelBackground(param1.theme,this.§ !+§.§2B§ / §0;§,this.backgroundTextureManager,this.§=!C§.§8i§());
         this.§3&§.§@S§(§]3§.§[L§());
         this.§'4§ = this.initLevelObjectManager(param1);
         this.§finally§ = this.initLevelSlingshot(param1);
         this.§^§ = this.§ ! §(this.§-,§,this.§[!C§);
         this.§=!C§.init();
         this.§<h§();
         this.§[<§();
         this.mReadyToRun = true;
         if(this.§1b§)
         {
            this.§1b§.addEventListeners();
         }
      }
      
      protected function §[<§() : void
      {
         if(this.§1h§)
         {
            this.§+W§ = §#T§.initialize(this.§1h§);
            this.§+W§.speed = 1;
            this.§+W§.play();
            this.§-2§ = -1000;
            this.§1h§ = null;
         }
      }
      
      public function §[!0§(param1:String) : void
      {
         this.§1h§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§+W§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§+W§)
         {
            if(param1)
            {
               this.§+W§.speed = Math.min(this.§+W§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§+W§.speed = Math.max(this.§+W§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§+W§)
         {
            this.§+W§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§3!H§) : §;^§
      {
         return new §;^§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§3!H§) : §4j§
      {
         return new §4j§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§3W§, param4:Number) : §+u§
      {
         return new §+u§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§3!H§) : §while§
      {
         return new §while§(this,param1,new Sprite());
      }
      
      protected function § ! §(param1:§@N§, param2:§3W§) : §=j§
      {
         return new §=j§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§3!H§ = this.§;!=§();
         var _loc4_:§;]§;
         (_loc4_ = new §;]§()).left = 0;
         _loc4_.top = -§4j§.§%J§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §4j§.§%J§;
         _loc4_.right = _loc4_.left + §4j§.§!!A§;
         _loc4_.y = -13.929;
         _loc4_.x = §4j§.§!!A§;
         _loc4_.id = §4j§.§6!§;
         _loc3_.§7x§(_loc4_);
         var _loc5_:§;]§;
         (_loc5_ = new §;]§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §4j§.§!!A§;
         _loc5_.bottom = _loc5_.top + §4j§.§%J§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §4j§.§!!A§ / 2;
         _loc5_.id = §4j§.§?!!§;
         _loc3_.§7x§(_loc5_);
         this.§3!8§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§+o§ != null)
         {
            _loc3_.theme = §+o§;
         }
         this.init(_loc3_);
      }
      
      protected function §3!8§(param1:§3!H§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§-G§(param1);
         }
      }
      
      protected function §;!=§() : §3!H§
      {
         var _loc1_:§3!H§ = new §3!H§();
         _loc1_.§=@§ = -12;
         return new §3!H§();
      }
      
      protected function §@!'§() : Number
      {
         this.§]Y§ ^= this.§]Y§ << 21;
         this.§]Y§ ^= this.§]Y§ >>> 35;
         this.§]Y§ ^= this.§]Y§ << 4;
         return this.§]Y§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §-G§(param1:§3!H§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§55§ = null;
         this.§]Y§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§@!'§() * 5;
               (_loc5_ = new §55§()).x = 30 + _loc3_ * 10 + this.§@!'§() * 9;
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
                  _loc5_.angle = 45 - this.§@!'§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§@!'§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§@!'§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §0v§() : void
      {
      }
      
      public function §<h§() : void
      {
         if(§+u§.§#I§)
         {
            this.§[J§(this.§3&§.§>Z§,false);
         }
         this.§[J§(this.§^§.§?6§(§=j§.§[!'§),false);
         this.§[J§(this.§^§.§?6§(§=j§.§]O§),true);
         this.§[J§(this.§^§.§?6§(§=j§.§%!=§),true);
         this.§[J§(this.§'4§.§<A§,true);
         this.§[J§(this.§finally§.sprite,true);
         this.§[J§(this.§^§.§?6§(§=j§.§[m§),true);
         this.§[J§(this.§3&§.§6!+§,false);
         if(§+u§.§#I§)
         {
            this.§[J§(this.§3&§.§'B§,false);
         }
         this.§[J§(this.§^§.§?6§(§=j§.§>!-§),true);
         if(!§6F§.§!"§)
         {
         }
      }
      
      private function §[J§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §]3§.§3=§;
         param2 /= §]3§.§3=§;
         _loc3_.x = (param1 / §4j§.§`@§ + this.§=!C§.§[x§ - §4j§.§#5§ / §4j§.§`@§) * §0;§;
         _loc3_.y = (param2 / §4j§.§`@§ + this.§=!C§.§7!>§ - §4j§.§&w§ / §4j§.§`@§) * §0;§;
         return _loc3_;
      }
      
      public function §8!0§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §0;§ + §4j§.§#5§ / §4j§.§`@§ - this.§=!C§.§[x§) * §4j§.§`@§;
         _loc3_.y = (param2 / §0;§ + §4j§.§&w§ / §4j§.§`@§ - this.§=!C§.§7!>§) * §4j§.§`@§;
         var _loc4_:Number = Math.max(§]3§.§3=§,§]3§.§>F§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §;2§(param1:String, param2:Number, param3:Number) : void
      {
         this.§'4§.addObject(param1,param2,param3);
      }
      
      public function §8c§() : void
      {
         if(this.§'I§)
         {
            this.§'I§.visible = true;
            this.§'I§.alpha = 0;
         }
         this.§,K§ = 0;
      }
      
      public function §-!9§() : void
      {
         this.§1G§ = new §='§(§+3§.§;!4§,§+3§.§"W§);
      }
      
      public function §=!4§() : void
      {
         this.§1G§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§3&§)
         {
            this.§3&§.dispose();
            this.§3&§ = null;
         }
         if(this.§'4§)
         {
            this.§'4§.dispose();
            this.§'4§ = null;
            this.§<-§ = null;
         }
         if(this.§3X§)
         {
            if(!this.§3X§.§"J§)
            {
            }
            this.§3X§.clear();
            this.§3X§ = null;
         }
         if(this.§ !+§)
         {
            this.§ !+§.clear();
            this.§ !+§ = null;
         }
         if(this.§finally§)
         {
            this.§finally§.dispose();
            this.§finally§ = null;
         }
         if(this.§=!C§)
         {
            this.§=!C§.clear();
            this.§=!C§ = null;
         }
         if(this.§^§)
         {
            this.§^§.dispose();
            this.§^§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§&y§ = 0;
         this.§0^§ = 0;
         this.mReadyToRun = false;
         this.§,;§ = false;
         this.§,K§ = §+3§.§1N§;
         if(this.§3O§)
         {
            (this.§3O§ as §%6§).§2w§.x = 0;
            (this.§3O§ as §%6§).§2w§.y = 0;
         }
         if(this.§'I§)
         {
            this.§'I§.visible = false;
         }
         this.§+W§ = null;
         this.§6a§ = null;
         if(this.§7Y§)
         {
            this.§7Y§.removeEventListener(Event.COMPLETE,this.§`x§);
            this.§7Y§.removeEventListener(Event.CANCEL,this.§7e§);
         }
         if(this.§9N§)
         {
            this.§9N§.removeEventListener(Event.COMPLETE,this.§6!B§);
            this.§9N§.removeEventListener(Event.CANCEL,this.§8+§);
         }
         this.§1U§();
         if(§<n§.§?@§)
         {
            §<n§.§?@§.color = 0;
         }
         if(this.§1b§)
         {
            this.§1b§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §'!F§() : String
      {
         if(this.§6a§)
         {
            return this.§6a§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§<n§.§+0§())
         {
            return 0;
         }
         if(this.§+W§ && this.§+W§.§[!F§)
         {
            return this.§5n§(param1,param2,param3);
         }
         return this.§['§(param1,true,param2,param3);
      }
      
      protected function §['§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§#2§)
         {
            param1 *= 0.2;
            if(§<n§.§6f§)
            {
               §<n§.§6f§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§0^§ += param1;
         if(param3)
         {
            this.§&y§ += param1;
            _loc5_ = this.§3X§.§3$§(this.§&y§);
            this.§finally§.update(param1,param4);
            this.§&y§ = _loc5_;
         }
         else
         {
            this.§'4§.§5!;§(param1);
            this.§&y§ = 0;
         }
         if(param2)
         {
            this.§9!H§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §5n§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §6F§.§4e§ * 1000;
         if(this.§+W§)
         {
            param1 *= this.§+W§.speed;
            _loc5_ = this.§0^§ + param1;
            while(this.§0^§ + _loc4_ < _loc5_)
            {
               if(this.§0^§ + _loc4_ > this.§-2§)
               {
                  this.§+W§.step(this);
                  this.§-2§ += _loc4_;
               }
               this.§['§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§-2§ + _loc4_)
            {
               this.§+W§.step(this);
               this.§-2§ += _loc4_;
            }
            if(this.§0^§ < _loc5_)
            {
               this.§['§(_loc5_ - this.§0^§,true,param2,param3);
            }
            return param1;
         }
         return this.§['§(_loc4_,true,param2,param3);
      }
      
      private function §9!H§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§3&§.update(param1);
         this.§'4§.§%!6§(param1,param2);
         this.§ !F§();
         if(this.§,K§ < §+3§.§1N§)
         {
            this.§,K§ += param1;
            _loc3_ = §+3§.§1N§ / 2;
            _loc4_ = (-Math.abs(this.§,K§ - _loc3_) + _loc3_) * (§+3§.§1L§ / _loc3_);
            if(this.§'I§)
            {
               this.§'I§.alpha = _loc4_;
            }
         }
         else if(this.§'I§)
         {
            this.§'I§.visible = false;
         }
         if(this.§1G§)
         {
            if(!this.§1G§.§%T§(this.§=!C§,param1))
            {
               this.§=!4§();
            }
         }
         this.§=!C§.§58§(param1);
         this.§3X§.§;§();
         this.§^§.update(param1);
      }
      
      public function §#f§(param1:Number) : void
      {
         this.objects.§5!;§(param1 * 1000);
         this.objects.§2b§(param1 * 1000);
         this.§&f§();
      }
      
      public function § !F§() : void
      {
         var _loc1_:§4!,§ = null;
         if(this.§0^§ > this.§'0§ + 1000 / 30)
         {
            if(this.§^&§ != null)
            {
               for each(_loc1_ in this.§^&§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§'0§ = this.§0^§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§4!,§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§'4§.isPigsAlive(true))
            {
               _loc2_ = this.§'4§.§1!#§(true);
               _loc2_.§>7§.mTryToScream = §+q§.§+!§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§'4§.§"u§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§'4§.isPigsAlive(true))
            {
               _loc2_ = this.§'4§.§1!#§(true);
               _loc2_.§>7§.mTryToBlink = §+q§.§6!8§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§'4§.§"u§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §4!F§.§?!C§;
         }
         §;9§.addScore(param1,param2);
         this.§1b§.addScore(param1);
         if(param3 && param1 > 0 && !this.§9+§)
         {
            this.§'+§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §'+§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §4!F§.§"j§;
         }
         this.§^§.§#!B§(§4!F§.§4L§,§=j§.§>!-§,§4!F§.§5!"§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §<!"§(param1:§4!,§) : void
      {
         if(this.§^&§ == null)
         {
            this.§^&§ = new Array();
         }
         this.§^&§.push(param1);
      }
      
      public function §"@§() : void
      {
         this.§finally§.§"@§();
         this.§'4§.§`!F§();
         this.§9+§ = true;
      }
      
      public function §3t§(param1:§4!,§) : void
      {
         this.§^§.§8>§(§=j§.§[!'§);
         if(this.§^&§.indexOf(param1) >= 0)
         {
            this.§^&§.splice(this.§^&§.indexOf(param1),1);
         }
         if(this.§^&§.length == 0)
         {
            this.§^&§ = null;
         }
      }
      
      public function §!<§(param1:§6+§, param2:Number, param3:Number) : void
      {
         this.§<-§ = this.§'4§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§while§.§@A§) : Number(§while§.§"5§);
         if(param1.§3#§ > 1)
         {
            this.§<-§.§-!E§(param1.§3#§);
            this.§<-§.§>7§.§8$§();
         }
         if(param1.§&?§ != 0)
         {
            _loc4_ = param1.§&?§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§<-§.§,!D§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§^V§(§4j§.§ use§);
         if(this.§6a§)
         {
            this.§6a§.§!<§(this.§3X§.§9!@§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§,;§ = true;
      }
      
      private function §&f§() : void
      {
         if(!this.§,;§)
         {
            return;
         }
         this.§,;§ = false;
         if(this.activeObject is §9!'§ && !(this.activeObject as §9!'§).§9z§)
         {
            if(this.activeObject.activateSpecialPower(this.§1S§))
            {
               this.§^$§ = true;
            }
         }
         else
         {
            this.§'4§.§-[§();
         }
         if(this.§6a§)
         {
            this.§6a§.§=]§(this.§3X§.§9!@§);
         }
      }
      
      public function §51§() : void
      {
         this.§'4§.§51§();
      }
      
      public function §&'§() : void
      {
         this.§'4§.§#!C§();
      }
      
      public function §8'§() : §3!H§
      {
         var _loc1_:§3!H§ = new §3!H§();
         _loc1_.§"=§ = this.§,!<§.§"=§;
         _loc1_.§,4§ = this.§,!<§.§,4§;
         this.§=!C§.§3R§(_loc1_);
         this.§'4§.§6!!§(_loc1_);
         this.§finally§.§&h§(_loc1_);
         _loc1_.theme = this.§3&§.§`!E§();
         return _loc1_;
      }
      
      public function §1o§() : int
      {
         return this.§,!<§.§,4§;
      }
      
      public function §^U§() : int
      {
         return this.§,!<§.§"=§;
      }
      
      public function §<c§(param1:int) : void
      {
         this.§,!<§.§,4§ = param1;
      }
      
      public function §,b§(param1:int) : void
      {
         this.§,!<§.§"=§ = param1;
      }
      
      public function § +§(param1:Number, param2:Number) : void
      {
         if(this.§8^§)
         {
            this.§8^§.§9g§(param1,param2);
         }
         if(this.§=!C§)
         {
            this.§=!C§.§58§(0);
         }
      }
      
      public function get §-!$§() : §3!H§
      {
         return this.§,!<§;
      }
      
      public function get §1S§() : §;^§
      {
         return this.§'4§;
      }
      
      protected function get starling() : §<n§
      {
         return this.§5?§;
      }
      
      public function get §`A§() : int
      {
         return §&R§;
      }
   }
}
