package §2!G§
{
   import § !b§.§'!%§;
   import §!w§.§1"§;
   import §!w§.§1c§;
   import §#B§.§ ! §;
   import §#B§.§ ]§;
   import §#B§.§!!_§;
   import §#B§.§-!I§;
   import §'!^§.§4!2§;
   import §+!Y§.§&]§;
   import §+N§.;
   import §+N§.§,A§;
   import §+N§.§``§;
   import §-V§.§&!^§;
   import §-V§.§]s§;
   import §3U§.§ !M§;
   import §3U§.§2!%§;
   import §3U§.§2!]§;
   import §3U§.§7H§;
   import §9W§.§%m§;
   import §9]§.§9J§;
   import §;A§.§7!K§;
   import §;h§.b2Vec2;
   import §<!!§.§-"§;
   import §<!$§.DisplayObject;
   import §<!$§.Sprite;
   import §@!C§.§#C§;
   import §[U§.§!!U§;
   import §^!&§.§,!S§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2!V§
   {
      
      private static const §9!1§:int = 20;
      
      public static const §-!>§:Number = §7!K§.§'[§;
      
      public static const §+5§:Number = §7!K§.§+!U§;
      
      public static const §-!3§:Number = 1 / 20;
      
      public static const §extends§:Number = §7!K§.§+!U§ * §-!3§;
      
      public static const §9h§:Number = §-!>§ * §-!3§;
      
      public static const §5R§:§4!2§ = new §4!2§(13 - 3);
      
      protected static var §50§:String = § !M§.§9&§;
       
      
      protected var §5!J§:§ ! §;
      
      private var §7F§:§ ]§;
      
      private var §9D§:Array = null;
      
      protected var §%!#§:§%m§;
      
      public var mLevelEngine:§ e§;
      
      protected var §8q§:§1E§;
      
      protected var § K§:§#C§;
      
      protected var §'r§:§ U§;
      
      protected var §;f§:§]s§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §8D§:Boolean = false;
      
      protected var §%r§:Boolean = false;
      
      protected var §,l§:Boolean = false;
      
      public var §=!A§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §-!0§:Number;
      
      public var §#!2§:Number;
      
      private var §1!1§:Number;
      
      public var §?4§:§7H§;
      
      public var §1!#§:Boolean = false;
      
      private var §`v§:§[!-§;
      
      private var §&w§:Sprite;
      
      protected var §`b§:§ !M§;
      
      protected var §;F§:§,!S§ = null;
      
      private var §;C§:EventDispatcher;
      
      private var §;!C§:Array;
      
      private var §?!§:Array;
      
      protected var §<!P§:§9J§;
      
      private var §'!U§:§!!U§;
      
      protected var §!v§:§``§;
      
      protected var §8U§:§,A§;
      
      private var §>"§:§#4§;
      
      private var §2!"§:§#4§;
      
      private var §6&§:§#4§;
      
      private var §[V§:Stage;
      
      private var §7]§:§"!%§;
      
      protected var §7!V§:§&]§;
      
      protected var §1_§:§&]§;
      
      protected var §9!=§:Number = 0.0;
      
      protected var §6!0§:String;
      
      private var §'a§:Boolean;
      
      protected var §#0§:Boolean;
      
      protected var §!+§:uint = 1.417339207E9;
      
      public var §#n§:Boolean;
      
      public function §2!V§(param1:Stage)
      {
         this.§?!§ = [];
         super();
         this.§;C§ = new EventDispatcher();
         this.§?4§ = new §7H§();
         this.§[V§ = param1;
         this.§!v§ = §``§.§0%§;
         this.§8U§ = this.initAnimationManager(this.§!v§);
         this.§>"§ = this.initThemeGraphicsManager();
         this.§2!"§ = this.§#!T§();
         this.§6&§ = this.§`l§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§<!P§ = new §9J§(§[!-§,param1,new Rectangle(0,0,§7!K§.§'[§,§7!K§.§+!U§),_loc2_);
         §7!K§.§7!I§.addEventListener(Event.ENTER_FRAME,this.§<!P§.§6!2§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§!G§,false,0,true);
         this.§<!P§.simulateMultitouch = false;
         this.§<!P§.enableErrorChecking = false;
         this.§<!P§.§"?§ = 2;
         this.§<!P§.§?`§();
      }
      
      public static function §>!@§(param1:§ ]§, param2:§ ]§) : Number
      {
         var _loc3_:Number = param1.§>!,§ - param2.§>!,§;
         var _loc4_:Number = param1.§3!$§ - param2.§3!$§;
         return §3!S§(_loc3_,_loc4_);
      }
      
      public static function §3!S§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§&w§ && this.§>F§)
         {
            this.§&w§ = this.§`v§.§&z§;
         }
         return this.§&w§;
      }
      
      public function get §>F§() : Sprite
      {
         if(!this.§`v§)
         {
            this.§`v§ = this.§<!P§.§!E§ as §[!-§;
            this.§`v§.§2!-§ = false;
         }
         return this.§`v§;
      }
      
      private function get §[!^§() : DisplayObject
      {
         if(this.§>F§)
         {
            return (this.§>F§ as §[!-§).§[!^§;
         }
         return null;
      }
      
      public function get §%S§() : §,A§
      {
         return this.§8U§;
      }
      
      public function get textureManager() : §``§
      {
         return this.§!v§;
      }
      
      public function get camera() : §#C§
      {
         return this.§ K§;
      }
      
      public function get objects() : § ! §
      {
         return this.§5!J§;
      }
      
      public function get particles() : §]s§
      {
         return this.§;f§;
      }
      
      public function get background() : §%m§
      {
         return this.§%!#§;
      }
      
      public function get slingshot() : § U§
      {
         return this.§'r§;
      }
      
      public function get activeObject() : § ]§
      {
         return this.§7F§;
      }
      
      public function get §0D§() : §1E§
      {
         return this.§8q§;
      }
      
      public function get stage() : Stage
      {
         return this.§[V§;
      }
      
      public function get §'+§() : §#4§
      {
         return this.§6&§;
      }
      
      protected function get §76§() : §#4§
      {
         return this.§>"§;
      }
      
      public function set activeObject(param1:§ ]§) : void
      {
         this.§7F§ = param1;
      }
      
      public function set §[L§(param1:Boolean) : void
      {
         this.§#0§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§'!U§)
         {
            this.§'!U§.dispose();
         }
         if(this.§!v§)
         {
            this.§!v§.dispose();
         }
         if(this.§>"§ && this.§>"§.textureManager)
         {
            this.§>"§.textureManager.dispose();
         }
         if(this.§6&§ && this.§6&§.textureManager)
         {
            this.§6&§.textureManager.dispose();
         }
         if(this.§<!P§)
         {
            this.§<!P§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §#4§
      {
         return null;
      }
      
      protected function §#!T§() : §#4§
      {
         return null;
      }
      
      protected function §`l§() : §#4§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§``§) : §,A§
      {
         return new §,A§(param1);
      }
      
      public function § i§(param1:Boolean) : void
      {
         if(§9J§.§?X§)
         {
            if(param1)
            {
               §9J§.§?X§.start();
            }
            else
            {
               §9J§.§?X§.stop();
               §9J§.§?X§.color = 0;
            }
         }
      }
      
      public function §6z§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §,'§(param1:§,!S§) : void
      {
         if(this.§;F§ != null)
         {
            this.§;F§.removeEventListeners();
         }
         this.§;F§ = param1;
         if(this.mReadyToRun)
         {
            this.§;F§.addEventListeners();
         }
      }
      
      public function §=!E§() : §&]§
      {
         return this.§7!V§;
      }
      
      public function §1!O§(param1:§!!U§, param2:Array, param3:Function) : void
      {
         this.§'!U§ = param1;
         var _loc4_:int = this.§'!U§.§0!Q§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§!v§.§]!a§(this.§'!U§.§#!]§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§;C§.addEventListener(Event.INIT,param3);
            this.§?!§.push(param3);
         }
         if(this.§=k§(param2))
         {
            this.§]!!§();
         }
      }
      
      private function §=k§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§!v§.§-!?§())
         {
            _loc2_ = this.§!v§.§2_§ / 1000;
            _loc3_ = this.§!v§.§`U§ / 1000;
            §-"§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§;!C§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§8U§.initializeAnimations(param1);
      }
      
      private function §!G§(param1:Event) : void
      {
         this.§!v§.§;8§();
         if(this.§76§ && this.§76§.textureManager)
         {
            this.§76§.textureManager.§;8§();
         }
         if(this.§'+§ && this.§'+§.textureManager)
         {
            this.§'+§.textureManager.§;8§();
         }
         if(this.§;!C§)
         {
            this.§=k§(this.§;!C§);
            this.§;!C§ = null;
            this.§]!!§();
         }
         if(this.§;F§ != null && this.mReadyToRun)
         {
            this.§;F§.addEventListeners();
         }
         if(this.§>"§)
         {
            this.§>"§.§-!?§();
         }
         if(this.§6&§)
         {
            if(this.§6&§.textureManager)
            {
               this.§6&§.textureManager.§;8§();
               this.§6&§.§-!?§();
            }
         }
      }
      
      private function §]!!§() : void
      {
         this.§;C§.dispatchEvent(new Event(Event.INIT));
         this.§2u§();
      }
      
      private function §2u§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§?!§)
         {
            this.§;C§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§?!§ = [];
      }
      
      public function init(param1:§ !M§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§8q§ = new §1E§(this,param1);
         this.§ K§ = this.§=5§(param1);
         this.§-!0§ = 0;
         this.§#!2§ = 0;
         this.§1!1§ = 0;
         this.§'a§ = false;
         this.mReadyToRun = false;
         this.§8D§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §50§ = param1.theme;
         this.§`b§ = param1;
         this.§%r§ = this.§52§(param1.theme);
         this.§,l§ = this.§]!_§(param1.theme);
         if(this.§%r§ && this.§,l§)
         {
            this.§@#§(param1);
         }
         else
         {
            this.§^l§(param1.theme);
         }
         this.§9;§();
         §%!&§.init();
      }
      
      protected function §9;§() : void
      {
         this.§7!V§ = new §&]§(§2!%§.§<G§);
      }
      
      protected function §52§(param1:String) : Boolean
      {
         if(this.§>"§)
         {
            return false;
         }
         return true;
      }
      
      protected function §]!_§(param1:String) : Boolean
      {
         var _loc2_:§1"§ = null;
         if(this.§2!"§)
         {
            _loc2_ = §1c§.§0E§(param1);
            if(_loc2_)
            {
               if(_loc2_.§4[§ && !this.§2!"§.§2Q§(_loc2_.§4[§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §^l§(param1:String) : void
      {
         var _loc2_:§1"§ = null;
         if(this.§>"§ && !this.§52§(param1))
         {
            this.§>"§.removeEventListener(Event.COMPLETE,this.§;4§);
            this.§>"§.removeEventListener(Event.CANCEL,this.§5Z§);
            this.§>"§.addEventListener(Event.COMPLETE,this.§;4§);
            this.§>"§.addEventListener(Event.CANCEL,this.§5Z§);
            this.§>"§.§<§(param1);
         }
         if(this.§2!"§ && !this.§]!_§(param1))
         {
            this.§2!"§.removeEventListener(Event.COMPLETE,this.§3!@§);
            this.§2!"§.removeEventListener(Event.CANCEL,this.§2!a§);
            this.§2!"§.addEventListener(Event.COMPLETE,this.§3!@§);
            this.§2!"§.addEventListener(Event.CANCEL,this.§2!a§);
            _loc2_ = §1c§.§0E§(param1);
            if(_loc2_)
            {
               this.§2!"§.§<§(_loc2_.§4[§);
            }
         }
      }
      
      private function §;4§(param1:Event) : void
      {
         this.§>"§.removeEventListener(Event.COMPLETE,this.§;4§);
         this.§>"§.removeEventListener(Event.CANCEL,this.§5Z§);
         this.§%r§ = true;
         if(this.§%r§ && this.§,l§)
         {
            this.§@#§(this.§`b§);
         }
      }
      
      private function §5Z§(param1:Event) : void
      {
         this.§>"§.removeEventListener(Event.COMPLETE,this.§;4§);
         this.§>"§.removeEventListener(Event.CANCEL,this.§5Z§);
         this.§8D§ = true;
      }
      
      private function §3!@§(param1:Event) : void
      {
         this.§>"§.removeEventListener(Event.COMPLETE,this.§3!@§);
         this.§>"§.removeEventListener(Event.CANCEL,this.§2!a§);
         this.§,l§ = true;
         if(this.§%r§ && this.§,l§)
         {
            this.§@#§(this.§`b§);
         }
      }
      
      private function §2!a§(param1:Event) : void
      {
         this.§>"§.removeEventListener(Event.COMPLETE,this.§3!@§);
         this.§>"§.removeEventListener(Event.CANCEL,this.§2!a§);
         this.§,l§ = true;
         if(this.§%r§ && this.§,l§)
         {
            this.§@#§(this.§`b§);
         }
      }
      
      public function get backgroundTextureManager() : §``§
      {
         return this.§!v§;
      }
      
      protected function §@#§(param1:§ !M§) : void
      {
         this.§#0§ = false;
         this.§#n§ = false;
         if(§9J§.§!L§)
         {
            §9J§.§!L§.speed = 1;
         }
         this.mLevelEngine = new § e§(this);
         this.§%!#§ = this.§6!A§(param1.theme,this.§8q§.§6![§ / §-!3§,this.backgroundTextureManager,this.§ K§.§>!F§());
         this.§%!#§.§!!`§(§7!K§.§8j§());
         this.§5!J§ = this.initLevelObjectManager(param1);
         this.§'r§ = this.§,d§(param1);
         this.§;f§ = this.initParticleManager(this.§8U§,this.§!v§);
         this.§ K§.init();
         this.§73§();
         this.§"%§();
         this.mReadyToRun = true;
         if(this.§;F§)
         {
            this.§;F§.addEventListeners();
         }
      }
      
      protected function §"%§() : void
      {
         if(this.§6!0§)
         {
            this.§1_§ = §&]§.§@#§(this.§6!0§);
            this.§1_§.speed = 1;
            this.§1_§.play();
            this.§9!=§ = -1000;
            this.§6!0§ = null;
         }
      }
      
      public function §8?§(param1:String) : void
      {
         this.§6!0§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§1_§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§1_§)
         {
            if(param1)
            {
               this.§1_§.speed = Math.min(this.§1_§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§1_§.speed = Math.max(this.§1_§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§1_§)
         {
            this.§1_§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§ !M§) : § ! §
      {
         return new § ! §(this,param1,new Sprite());
      }
      
      protected function §=5§(param1:§ !M§) : §#C§
      {
         return new §#C§(this,param1);
      }
      
      protected function §6!A§(param1:String, param2:Number, param3:§``§, param4:Number) : §%m§
      {
         return new §%m§(param1,param2,param3,param4);
      }
      
      protected function §,d§(param1:§ !M§) : § U§
      {
         return new § U§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§,A§, param2:§``§) : §]s§
      {
         return new §]s§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§ !M§ = this.§@]§();
         var _loc4_:§2!]§;
         (_loc4_ = new §2!]§()).left = 0;
         _loc4_.top = -§#C§.§"!Y§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §#C§.§"!Y§;
         _loc4_.right = _loc4_.left + §#C§.§&!?§;
         _loc4_.y = -13.929;
         _loc4_.x = §#C§.§&!?§;
         _loc4_.id = §#C§.§@!$§;
         _loc3_.§,J§(_loc4_);
         var _loc5_:§2!]§;
         (_loc5_ = new §2!]§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §#C§.§&!?§;
         _loc5_.bottom = _loc5_.top + §#C§.§"!Y§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §#C§.§&!?§ / 2;
         _loc5_.id = §#C§.§4!^§;
         _loc3_.§,J§(_loc5_);
         this.postProcessEmptyEnvironment(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§50§ != null)
         {
            _loc3_.theme = §50§;
         }
         this.init(_loc3_);
      }
      
      protected function postProcessEmptyEnvironment(param1:§ !M§, param2:Boolean) : void
      {
         if(param2)
         {
            this.addFallingBirds(param1);
         }
      }
      
      protected function §@]§() : § !M§
      {
         var _loc1_:§ !M§ = new § !M§();
         _loc1_.§9!S§ = -12;
         return new § !M§();
      }
      
      protected function §`q§() : Number
      {
         this.§!+§ ^= this.§!+§ << 21;
         this.§!+§ ^= this.§!+§ >>> 35;
         this.§!+§ ^= this.§!+§ << 4;
         return this.§!+§ * (1 / uint.MAX_VALUE);
      }
      
      protected function addFallingBirds(param1:§ !M§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§'!%§ = null;
         this.§!+§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§`q§() * 5;
               (_loc5_ = new §'!%§()).x = 30 + _loc3_ * 10 + this.§`q§() * 9;
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
                  _loc5_.angle = 45 - this.§`q§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§`q§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§`q§() * 360;
               }
               param1.§5!$§(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §?H§() : void
      {
      }
      
      public function §73§() : void
      {
         if(§%m§.§[w§)
         {
            this.§`H§(this.§%!#§.§>D§,false);
         }
         this.§`H§(this.§;f§.§1!+§(§]s§.§-!-§),false);
         this.§`H§(this.§;f§.§1!+§(§]s§.§'!Z§),true);
         this.§`H§(this.§;f§.§1!+§(§]s§.§'-§),true);
         this.§`H§(this.§5!J§.§'n§,true);
         this.§`H§(this.§'r§.sprite,true);
         this.§`H§(this.§;f§.§1!+§(§]s§.§0!E§),true);
         this.§`H§(this.§%!#§.§;! §,false);
         if(§%m§.§[w§)
         {
            this.§`H§(this.§%!#§.§5T§,false);
         }
         this.§`H§(this.§;f§.§1!+§(§]s§.§'!a§),true);
         if(!§ e§.§;P§)
         {
         }
      }
      
      private function §`H§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §7!K§.§=x§;
         param2 /= §7!K§.§=x§;
         _loc3_.x = (param1 / §#C§.§#`§ + this.§ K§.§8%§ - §#C§.§[x§ / §#C§.§#`§) * §-!3§;
         _loc3_.y = (param2 / §#C§.§#`§ + this.§ K§.§`!'§ - §#C§.§^,§ / §#C§.§#`§) * §-!3§;
         return _loc3_;
      }
      
      public function §9!4§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §-!3§ + §#C§.§[x§ / §#C§.§#`§ - this.§ K§.§8%§) * §#C§.§#`§;
         _loc3_.y = (param2 / §-!3§ + §#C§.§^,§ / §#C§.§#`§ - this.§ K§.§`!'§) * §#C§.§#`§;
         var _loc4_:Number = Math.max(§7!K§.§=x§,§7!K§.§7Y§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §,D§(param1:String, param2:Number, param3:Number) : void
      {
         this.§5!J§.§5!$§(param1,param2,param3);
      }
      
      public function §;!_§() : void
      {
         if(this.§[!^§)
         {
            this.§[!^§.visible = true;
            this.§[!^§.alpha = 0;
         }
         this.§=!A§ = 0;
      }
      
      public function §`V§() : void
      {
         this.§7]§ = new §"!%§(§+>§.§]!"§,§+>§.§1,§);
      }
      
      public function §6!c§() : void
      {
         this.§7]§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§%!#§)
         {
            this.§%!#§.dispose();
            this.§%!#§ = null;
         }
         if(this.§5!J§)
         {
            this.§5!J§.dispose();
            this.§5!J§ = null;
            this.§7F§ = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§4k§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§8q§)
         {
            this.§8q§.clear();
            this.§8q§ = null;
         }
         if(this.§'r§)
         {
            this.§'r§.dispose();
            this.§'r§ = null;
         }
         if(this.§ K§)
         {
            this.§ K§.clear();
            this.§ K§ = null;
         }
         if(this.§;f§)
         {
            this.§;f§.dispose();
            this.§;f§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§-!0§ = 0;
         this.§#!2§ = 0;
         this.mReadyToRun = false;
         this.§'a§ = false;
         this.§=!A§ = §+>§.§"!8§;
         if(this.§>F§)
         {
            (this.§>F§ as §[!-§).§99§.x = 0;
            (this.§>F§ as §[!-§).§99§.y = 0;
         }
         if(this.§[!^§)
         {
            this.§[!^§.visible = false;
         }
         this.§1_§ = null;
         this.§7!V§ = null;
         if(this.§>"§)
         {
            this.§>"§.removeEventListener(Event.COMPLETE,this.§;4§);
            this.§>"§.removeEventListener(Event.CANCEL,this.§5Z§);
         }
         if(this.§2!"§)
         {
            this.§2!"§.removeEventListener(Event.COMPLETE,this.§3!@§);
            this.§2!"§.removeEventListener(Event.CANCEL,this.§2!a§);
         }
         this.§2u§();
         if(§9J§.§?X§)
         {
            §9J§.§?X§.color = 0;
         }
         if(this.§;F§)
         {
            this.§;F§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §#!R§() : String
      {
         if(this.§7!V§)
         {
            return this.§7!V§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§9J§.§[!7§())
         {
            return 0;
         }
         if(this.§1_§ && this.§1_§.§7!U§)
         {
            return this.§7R§(param1,param2,param3);
         }
         return this.§6,§(param1,true,param2,param3);
      }
      
      protected function §6,§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§#0§)
         {
            param1 *= 0.2;
            if(§9J§.§!L§)
            {
               §9J§.§!L§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§#!2§ += param1;
         if(param3)
         {
            this.§-!0§ += param1;
            _loc5_ = this.mLevelEngine.§#-§(this.§-!0§);
            this.§'r§.update(param1,param4);
            this.§-!0§ = _loc5_;
         }
         else
         {
            this.§5!J§.§+x§(param1);
            this.§-!0§ = 0;
         }
         if(param2)
         {
            this.§'!G§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §7R§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = § e§.§^!3§ * 1000;
         if(this.§1_§)
         {
            param1 *= this.§1_§.speed;
            _loc5_ = this.§#!2§ + param1;
            while(this.§#!2§ + _loc4_ < _loc5_)
            {
               if(this.§#!2§ + _loc4_ > this.§9!=§)
               {
                  this.§1_§.step(this);
                  this.§9!=§ += _loc4_;
               }
               this.§6,§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§9!=§ + _loc4_)
            {
               this.§1_§.step(this);
               this.§9!=§ += _loc4_;
            }
            if(this.§#!2§ < _loc5_)
            {
               this.§6,§(_loc5_ - this.§#!2§,true,param2,param3);
            }
            return param1;
         }
         return this.§6,§(_loc4_,true,param2,param3);
      }
      
      private function §'!G§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§%!#§.update(param1);
         this.§5!J§.§]!;§(param1,param2);
         this.§<!5§();
         if(this.§=!A§ < §+>§.§"!8§)
         {
            this.§=!A§ += param1;
            _loc3_ = §+>§.§"!8§ / 2;
            _loc4_ = (-Math.abs(this.§=!A§ - _loc3_) + _loc3_) * (§+>§.§&!6§ / _loc3_);
            if(this.§[!^§)
            {
               this.§[!^§.alpha = _loc4_;
            }
         }
         else if(this.§[!^§)
         {
            this.§[!^§.visible = false;
         }
         if(this.§7]§)
         {
            if(!this.§7]§.§]M§(this.§ K§,param1))
            {
               this.§6!c§();
            }
         }
         this.§ K§.§7!S§(param1);
         this.mLevelEngine.§,Y§();
         this.§;f§.update(param1);
      }
      
      public function §2!8§(param1:Number) : void
      {
         this.objects.§+x§(param1 * 1000);
         this.objects.§>!"§(param1 * 1000);
         this.§<y§();
      }
      
      public function §<!5§() : void
      {
         var _loc1_:§ ]§ = null;
         if(this.§#!2§ > this.§1!1§ + 1000 / 30)
         {
            if(this.§9D§ != null)
            {
               for each(_loc1_ in this.§9D§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§1!1§ = this.§#!2§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§ ]§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§5!J§.isPigsAlive(true))
            {
               _loc2_ = this.§5!J§.§@+§(true);
               _loc2_.§#8§.mTryToScream = §-!I§.§49§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§5!J§.§9![§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§5!J§.isPigsAlive(true))
            {
               _loc2_ = this.§5!J§.§@+§(true);
               _loc2_.§#8§.mTryToBlink = §-!I§.§;!A§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§5!J§.§9![§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §&!^§.§5#§;
         }
         §%!&§.addScore(param1,param2);
         this.§;F§.addScore(param1);
         if(param3 && param1 > 0 && !this.§#n§)
         {
            this.§#6§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §#6§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §&!^§.§[r§;
         }
         this.§;f§.§;!V§(§&!^§.§9!+§,§]s§.§'!a§,§&!^§.§&!,§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §1!§(param1:§ ]§) : void
      {
         if(this.§9D§ == null)
         {
            this.§9D§ = new Array();
         }
         this.§9D§.push(param1);
      }
      
      public function §3!R§() : void
      {
         this.§'r§.§3!R§();
         this.§5!J§.§>_§();
         this.§#n§ = true;
      }
      
      public function §7D§(param1:§ ]§) : void
      {
         this.§;f§.§!,§(§]s§.§-!-§);
         if(this.§9D§.indexOf(param1) >= 0)
         {
            this.§9D§.splice(this.§9D§.indexOf(param1),1);
         }
         if(this.§9D§.length == 0)
         {
            this.§9D§ = null;
         }
      }
      
      public function §9s§(param1:§,!8§, param2:Number, param3:Number) : void
      {
         this.§7F§ = this.§5!J§.§5!$§(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§ U§.§8e§) : Number(§ U§.§9!"§);
         if(param1.§0!b§ > 1)
         {
            this.§7F§.§2!4§(param1.§0!b§);
            this.§7F§.§#8§.§0H§();
         }
         if(param1.§;![§ != 0)
         {
            _loc4_ = param1.§;![§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§7F§.§'!-§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§;!3§(§#C§.§4W§);
         if(this.§7!V§)
         {
            this.§7!V§.§9s§(this.mLevelEngine.§+!c§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§'a§ = true;
      }
      
      private function §<y§() : void
      {
         if(!this.§'a§)
         {
            return;
         }
         this.§'a§ = false;
         if(this.activeObject is §!!_§ && !(this.activeObject as §!!_§).§;M§)
         {
            if(this.activeObject.activateSpecialPower(this.§6Q§))
            {
               this.§1!#§ = true;
            }
         }
         else
         {
            this.§5!J§.§"c§();
         }
         if(this.§7!V§)
         {
            this.§7!V§.§5!1§(this.mLevelEngine.§+!c§);
         }
      }
      
      public function §<q§() : void
      {
         this.§5!J§.§<q§();
      }
      
      public function §6!+§() : void
      {
         this.§5!J§.§6!I§();
      }
      
      public function §#!B§() : § !M§
      {
         var _loc1_:§ !M§ = new § !M§();
         _loc1_.§[p§ = this.§`b§.§[p§;
         _loc1_.§>!+§ = this.§`b§.§>!+§;
         this.§ K§.§;#§(_loc1_);
         this.§5!J§.§&!Z§(_loc1_);
         this.§'r§.§[6§(_loc1_);
         _loc1_.theme = this.§%!#§.§8!c§();
         return _loc1_;
      }
      
      public function §^k§() : int
      {
         return this.§`b§.§>!+§;
      }
      
      public function §&3§() : int
      {
         return this.§`b§.§[p§;
      }
      
      public function §3?§(param1:int) : void
      {
         this.§`b§.§>!+§ = param1;
      }
      
      public function §#![§(param1:int) : void
      {
         this.§`b§.§[p§ = param1;
      }
      
      public function §-,§(param1:Number, param2:Number) : void
      {
         if(this.§`v§)
         {
            this.§`v§.§`!P§(param1,param2);
         }
         if(this.§ K§)
         {
            this.§ K§.§7!S§(0);
         }
      }
      
      public function get §@L§() : § !M§
      {
         return this.§`b§;
      }
      
      public function get §6Q§() : § ! §
      {
         return this.§5!J§;
      }
      
      protected function get §^3§() : §9J§
      {
         return this.§<!P§;
      }
      
      public function get §]F§() : int
      {
         return §9!1§;
      }
   }
}
