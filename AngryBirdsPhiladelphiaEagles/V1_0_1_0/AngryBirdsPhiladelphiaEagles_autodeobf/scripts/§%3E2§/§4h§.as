package §>2§
{
   import § !N§.§#!O§;
   import § !N§.§]!P§;
   import § !N§.§`v§;
   import §"!J§.§]!E§;
   import §"I§.§,&§;
   import §#n§.§2m§;
   import §+!0§.§8l§;
   import §,]§.§6u§;
   import §-!5§.§5s§;
   import §3F§.§0@§;
   import §3F§.§0z§;
   import §3F§.§2!3§;
   import §3F§.§=4§;
   import §3H§.DisplayObject;
   import §3H§.Sprite;
   import §5=§.§8G§;
   import §5=§.§;[§;
   import §5=§.§@!§;
   import §5=§.§^n§;
   import §5J§.§>$§;
   import §7E§.§@u§;
   import §7E§.§^A§;
   import §@w§.§2G§;
   import §^I§.§7Z§;
   import §^Q§.§<a§;
   import §`!&§.§<!N§;
   import §`!&§.§]! §;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4h§
   {
      
      private static const §=3§:int = 20;
      
      public static const §^v§:Number = §2G§.§=!M§;
      
      public static const §]y§:Number = §2G§.§"!§;
      
      public static const §-9§:Number = 1 / 20;
      
      public static const §&w§:Number = §2G§.§"!§ * §-9§;
      
      public static const §^!<§:Number = §^v§ * §-9§;
      
      public static const §27§:§,&§ = new §,&§(13 - 3);
      
      public static var §%!!§:Number = 1;
      
      protected static var §5Z§:String = §8G§.§<+§;
       
      
      protected var §2%§:§0z§;
      
      private var §@L§:§2!3§;
      
      private var §9!&§:Array = null;
      
      protected var §!!;§:§2m§;
      
      public var § x§:§!_§;
      
      protected var §if§:§#!&§;
      
      protected var §-$§:§<a§;
      
      protected var §>&§:§+!E§;
      
      protected var §02§:§@u§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §%I§:Boolean = false;
      
      protected var §82§:Boolean = false;
      
      protected var §<6§:Boolean = false;
      
      public var §<y§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §,7§:Number;
      
      public var §`!K§:Number;
      
      private var §'2§:Number;
      
      public var §'<§:§;[§;
      
      public var §5l§:Boolean = false;
      
      private var §8&§:§?,§;
      
      private var § ! §:Sprite;
      
      protected var §-!D§:§8G§;
      
      protected var §`o§:§]!E§ = null;
      
      private var §`x§:EventDispatcher;
      
      private var §+U§:Array;
      
      private var §>,§:Array;
      
      protected var §[`§:§>$§;
      
      private var §2z§:§8l§;
      
      protected var §<!-§:§`v§;
      
      protected var §8s§:§]!P§;
      
      private var §3!P§:§#!O§;
      
      private var §"T§:§#!O§;
      
      private var §;M§:§#!O§;
      
      private var §<!#§:Stage;
      
      private var §'!1§:§59§;
      
      protected var §&!8§:§6u§;
      
      protected var §-!A§:§6u§;
      
      protected var §+H§:Number = 0.0;
      
      protected var §8V§:String;
      
      private var §4!M§:Boolean;
      
      protected var §do§:Boolean;
      
      protected var §2!N§:uint = 1.417339207E9;
      
      public var §4!I§:Boolean;
      
      public function §4h§(param1:Stage)
      {
         this.§>,§ = [];
         super();
         this.§`x§ = new EventDispatcher();
         this.§'<§ = new §;[§();
         this.§<!#§ = param1;
         this.§<!-§ = §`v§.§4J§;
         this.§8s§ = this.initAnimationManager(this.§<!-§);
         this.§3!P§ = this.initThemeGraphicsManager();
         this.§"T§ = this.§7!-§();
         this.§;M§ = this.§6U§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§[`§ = new §>$§(§?,§,param1,new Rectangle(0,0,§2G§.§=!M§,§2G§.§"!§),_loc2_);
         §2G§.§4T§.addEventListener(Event.ENTER_FRAME,this.§[`§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§8x§,false,0,true);
         this.§[`§.§"p§ = false;
         this.§[`§.enableErrorChecking = false;
         this.§[`§.§4a§ = 2;
         this.§[`§.§`;§();
      }
      
      public static function §?d§(param1:§2!3§, param2:§2!3§) : Number
      {
         var _loc3_:Number = param1.§1!A§ - param2.§1!A§;
         var _loc4_:Number = param1.§#2§ - param2.§#2§;
         return §&!C§(_loc3_,_loc4_);
      }
      
      public static function §&!C§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§ ! § && this.§[!H§)
         {
            this.§ ! § = this.§8&§.§1A§;
         }
         return this.§ ! §;
      }
      
      public function get §[!H§() : Sprite
      {
         if(!this.§8&§)
         {
            this.§8&§ = this.§[`§.§9p§ as §?,§;
            this.§8&§.§6c§ = false;
         }
         return this.§8&§;
      }
      
      private function get §95§() : DisplayObject
      {
         if(this.§[!H§)
         {
            return (this.§[!H§ as §?,§).§95§;
         }
         return null;
      }
      
      public function get §4!C§() : §]!P§
      {
         return this.§8s§;
      }
      
      public function get textureManager() : §`v§
      {
         return this.§<!-§;
      }
      
      public function get camera() : §<a§
      {
         return this.§-$§;
      }
      
      public function get objects() : §0z§
      {
         return this.§2%§;
      }
      
      public function get particles() : §@u§
      {
         return this.§02§;
      }
      
      public function get background() : §2m§
      {
         return this.§!!;§;
      }
      
      public function get slingshot() : §+!E§
      {
         return this.§>&§;
      }
      
      public function get activeObject() : §2!3§
      {
         return this.§@L§;
      }
      
      public function get § !9§() : §#!&§
      {
         return this.§if§;
      }
      
      public function get stage() : Stage
      {
         return this.§<!#§;
      }
      
      public function get §=1§() : §#!O§
      {
         return this.§;M§;
      }
      
      protected function get §3!'§() : §#!O§
      {
         return this.§3!P§;
      }
      
      public function set activeObject(param1:§2!3§) : void
      {
         this.§@L§ = param1;
      }
      
      public function set slowMotion(param1:Boolean) : void
      {
         this.§do§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§2z§)
         {
            this.§2z§.dispose();
         }
         if(this.§<!-§)
         {
            this.§<!-§.dispose();
         }
         if(this.§3!P§ && this.§3!P§.textureManager)
         {
            this.§3!P§.textureManager.dispose();
         }
         if(this.§;M§ && this.§;M§.textureManager)
         {
            this.§;M§.textureManager.dispose();
         }
         if(this.§[`§)
         {
            this.§[`§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §#!O§
      {
         return null;
      }
      
      protected function §7!-§() : §#!O§
      {
         return null;
      }
      
      protected function §6U§() : §#!O§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§`v§) : §]!P§
      {
         return new §]!P§(param1);
      }
      
      public function §`!>§(param1:Boolean) : void
      {
         if(§>$§.§-U§)
         {
            if(param1)
            {
               §>$§.§-U§.start();
            }
            else
            {
               §>$§.§-U§.stop();
               §>$§.§-U§.color = 0;
            }
         }
      }
      
      public function §18§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §4!<§(param1:§]!E§) : void
      {
         if(this.§`o§ != null)
         {
            this.§`o§.removeEventListeners();
         }
         this.§`o§ = param1;
         if(this.mReadyToRun)
         {
            this.§`o§.addEventListeners();
         }
      }
      
      public function §^!P§() : §6u§
      {
         return this.§&!8§;
      }
      
      public function § n§(param1:§8l§, param2:Array, param3:Function) : void
      {
         this.§2z§ = param1;
         var _loc4_:int = this.§2z§.§=!,§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§<!-§.§#p§(this.§2z§.§#K§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§`x§.addEventListener(Event.INIT,param3);
            this.§>,§.push(param3);
         }
         if(this.§`1§(param2))
         {
            this.§,3§();
         }
      }
      
      private function §`1§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§<!-§.§=U§())
         {
            _loc2_ = this.§<!-§.§;1§ / 1000;
            _loc3_ = this.§<!-§.§3C§ / 1000;
            §5s§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§+U§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§8s§.initializeAnimations(param1);
      }
      
      private function §8x§(param1:Event) : void
      {
         this.§<!-§.§ !1§();
         if(this.§3!'§ && this.§3!'§.textureManager)
         {
            this.§3!'§.textureManager.§ !1§();
         }
         if(this.§=1§ && this.§=1§.textureManager)
         {
            this.§=1§.textureManager.§ !1§();
         }
         if(this.§+U§)
         {
            this.§`1§(this.§+U§);
            this.§+U§ = null;
            this.§,3§();
         }
         if(this.§`o§ != null && this.mReadyToRun)
         {
            this.§`o§.addEventListeners();
         }
         if(this.§3!P§)
         {
            this.§3!P§.§=U§();
         }
         if(this.§;M§)
         {
            if(this.§;M§.textureManager)
            {
               this.§;M§.textureManager.§ !1§();
               this.§;M§.§=U§();
            }
         }
      }
      
      private function §,3§() : void
      {
         this.§`x§.dispatchEvent(new Event(Event.INIT));
         this.§^D§();
      }
      
      private function §^D§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§>,§)
         {
            this.§`x§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§>,§ = [];
      }
      
      public function init(param1:§8G§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§if§ = new §#!&§(this,param1);
         this.§-$§ = this.initLevelCamera(param1);
         this.§,7§ = 0;
         this.§`!K§ = 0;
         this.§'2§ = 0;
         this.§4!M§ = false;
         this.mReadyToRun = false;
         this.§%I§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §5Z§ = param1.theme;
         this.§-!D§ = param1;
         this.§82§ = this.§ g§(param1.theme);
         this.§<6§ = this.§!@§(param1.theme);
         if(this.§82§ && this.§<6§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§;G§(param1.theme);
         }
         this.§+0§();
         §&L§.init();
      }
      
      protected function §+0§() : void
      {
         this.§&!8§ = new §6u§(§^n§.§-7§);
      }
      
      protected function § g§(param1:String) : Boolean
      {
         if(this.§3!P§)
         {
            return false;
         }
         return true;
      }
      
      protected function §!@§(param1:String) : Boolean
      {
         var _loc2_:§<!N§ = null;
         if(this.§"T§)
         {
            _loc2_ = §]! §.§@D§(param1);
            if(_loc2_)
            {
               if(_loc2_.§'N§ && !this.§"T§.§<n§(_loc2_.§'N§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §;G§(param1:String) : void
      {
         var _loc2_:§<!N§ = null;
         if(this.§3!P§ && !this.§ g§(param1))
         {
            this.§3!P§.removeEventListener(Event.COMPLETE,this.§4b§);
            this.§3!P§.removeEventListener(Event.CANCEL,this.§&#§);
            this.§3!P§.addEventListener(Event.COMPLETE,this.§4b§);
            this.§3!P§.addEventListener(Event.CANCEL,this.§&#§);
            this.§3!P§.§;<§(param1);
         }
         if(this.§"T§ && !this.§!@§(param1))
         {
            this.§"T§.removeEventListener(Event.COMPLETE,this.§;C§);
            this.§"T§.removeEventListener(Event.CANCEL,this.§-V§);
            this.§"T§.addEventListener(Event.COMPLETE,this.§;C§);
            this.§"T§.addEventListener(Event.CANCEL,this.§-V§);
            _loc2_ = §]! §.§@D§(param1);
            if(_loc2_)
            {
               this.§"T§.§;<§(_loc2_.§'N§);
            }
         }
      }
      
      private function §4b§(param1:Event) : void
      {
         this.§3!P§.removeEventListener(Event.COMPLETE,this.§4b§);
         this.§3!P§.removeEventListener(Event.CANCEL,this.§&#§);
         this.§82§ = true;
         if(this.§82§ && this.§<6§)
         {
            this.initialize(this.§-!D§);
         }
      }
      
      private function §&#§(param1:Event) : void
      {
         this.§3!P§.removeEventListener(Event.COMPLETE,this.§4b§);
         this.§3!P§.removeEventListener(Event.CANCEL,this.§&#§);
         this.§%I§ = true;
      }
      
      private function §;C§(param1:Event) : void
      {
         this.§3!P§.removeEventListener(Event.COMPLETE,this.§;C§);
         this.§3!P§.removeEventListener(Event.CANCEL,this.§-V§);
         this.§<6§ = true;
         if(this.§82§ && this.§<6§)
         {
            this.initialize(this.§-!D§);
         }
      }
      
      private function §-V§(param1:Event) : void
      {
         this.§3!P§.removeEventListener(Event.COMPLETE,this.§;C§);
         this.§3!P§.removeEventListener(Event.CANCEL,this.§-V§);
         this.§<6§ = true;
         if(this.§82§ && this.§<6§)
         {
            this.initialize(this.§-!D§);
         }
      }
      
      public function get backgroundTextureManager() : §`v§
      {
         return this.§<!-§;
      }
      
      protected function initialize(param1:§8G§) : void
      {
         this.§do§ = false;
         this.§4!I§ = false;
         if(§>$§.§3D§)
         {
            §>$§.§3D§.speed = 1;
         }
         this.§ x§ = new §!_§(this);
         this.§!!;§ = this.initLevelBackground(param1.theme,this.§if§.§ h§ / §-9§,this.backgroundTextureManager,this.§-$§.§^J§());
         this.§!!;§.§38§(§2G§.§6y§());
         this.§2%§ = this.initLevelObjectManager(param1);
         this.§>&§ = this.initLevelSlingshot(param1);
         this.§02§ = this.initParticleManager(this.§8s§,this.§<!-§);
         this.§-$§.init();
         this.§7J§();
         this.§15§();
         this.mReadyToRun = true;
         if(this.§`o§)
         {
            this.§`o§.addEventListeners();
         }
      }
      
      protected function §15§() : void
      {
         if(this.§8V§)
         {
            this.§-!A§ = §6u§.initialize(this.§8V§);
            this.§-!A§.speed = 1;
            this.§-!A§.play();
            this.§+H§ = -1000;
            this.§8V§ = null;
         }
      }
      
      public function §^C§(param1:String) : void
      {
         this.§8V§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§-!A§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§-!A§)
         {
            if(param1)
            {
               this.§-!A§.speed = Math.min(this.§-!A§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§-!A§.speed = Math.max(this.§-!A§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§-!A§)
         {
            this.§-!A§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§8G§) : §0z§
      {
         return new §0z§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§8G§) : §<a§
      {
         return new §<a§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§`v§, param4:Number) : §2m§
      {
         return new §2m§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§8G§) : §+!E§
      {
         return new §+!E§(this,param1,new Sprite());
      }
      
      protected function initParticleManager(param1:§]!P§, param2:§`v§) : §@u§
      {
         return new §@u§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§8G§ = this.§`!#§();
         var _loc4_:§@!§;
         (_loc4_ = new §@!§()).left = 0;
         _loc4_.top = -§<a§.§%N§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §<a§.§%N§;
         _loc4_.right = _loc4_.left + §<a§.§;!K§;
         _loc4_.y = -13.929;
         _loc4_.x = §<a§.§;!K§;
         _loc4_.id = §<a§.§+B§;
         _loc3_.§#B§(_loc4_);
         var _loc5_:§@!§;
         (_loc5_ = new §@!§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §<a§.§;!K§;
         _loc5_.bottom = _loc5_.top + §<a§.§%N§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §<a§.§;!K§ / 2;
         _loc5_.id = §<a§.§%!+§;
         _loc3_.§#B§(_loc5_);
         this.§7!;§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§5Z§ != null)
         {
            _loc3_.theme = §5Z§;
         }
         this.init(_loc3_);
      }
      
      protected function §7!;§(param1:§8G§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§@F§(param1);
         }
      }
      
      protected function §`!#§() : §8G§
      {
         var _loc1_:§8G§ = new §8G§();
         _loc1_.§9;§ = -12;
         return new §8G§();
      }
      
      protected function §]?§() : Number
      {
         this.§2!N§ ^= this.§2!N§ << 21;
         this.§2!N§ ^= this.§2!N§ >>> 35;
         this.§2!N§ ^= this.§2!N§ << 4;
         return this.§2!N§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §@F§(param1:§8G§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§7Z§ = null;
         this.§2!N§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§]?§() * 5;
               (_loc5_ = new §7Z§()).x = 30 + _loc3_ * 10 + this.§]?§() * 9;
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
                  _loc5_.angle = 45 - this.§]?§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§]?§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§]?§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §>U§() : void
      {
      }
      
      public function §7J§() : void
      {
         if(§2m§.§"R§)
         {
            this.§!B§(this.§!!;§.§7h§,false);
         }
         this.§!B§(this.§02§.§6!=§(§@u§.§ true§),false);
         this.§!B§(this.§02§.§6!=§(§@u§.§+1§),true);
         this.§!B§(this.§02§.§6!=§(§@u§.§`!8§),true);
         this.§!B§(this.§2%§.§6§,true);
         this.§!B§(this.§>&§.sprite,true);
         this.§!B§(this.§02§.§6!=§(§@u§.§&&§),true);
         this.§!B§(this.§!!;§.§#!G§,false);
         if(§2m§.§"R§)
         {
            this.§!B§(this.§!!;§.§[p§,false);
         }
         this.§!B§(this.§02§.§6!=§(§@u§.§-!J§),true);
      }
      
      private function §!B§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §2G§.§8$§;
         param2 /= §2G§.§8$§;
         _loc3_.x = (param1 / §<a§.levelScale + this.§-$§.§8!3§ - §<a§.§-!K§ / §<a§.levelScale) * §-9§;
         _loc3_.y = (param2 / §<a§.levelScale + this.§-$§.§#z§ - §<a§.§8!$§ / §<a§.levelScale) * §-9§;
         return _loc3_;
      }
      
      public function box2DToScreen(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §-9§ + §<a§.§-!K§ / §<a§.levelScale - this.§-$§.§8!3§) * §<a§.levelScale;
         _loc3_.y = (param2 / §-9§ + §<a§.§8!$§ / §<a§.levelScale - this.§-$§.§#z§) * §<a§.levelScale;
         var _loc4_:Number = Math.max(§2G§.§8$§,§2G§.§;!P§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §+§(param1:String, param2:Number, param3:Number) : void
      {
         this.§2%§.addObject(param1,param2,param3);
      }
      
      public function §`@§() : void
      {
         if(this.§95§)
         {
            this.§95§.visible = true;
            this.§95§.alpha = 0;
         }
         this.§<y§ = 0;
      }
      
      public function §>!%§() : void
      {
         this.§'!1§ = new §59§(Tuner.§6C§,Tuner.§6v§);
      }
      
      public function §@a§() : void
      {
         this.§'!1§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§!!;§)
         {
            this.§!!;§.dispose();
            this.§!!;§ = null;
         }
         if(this.§2%§)
         {
            this.§2%§.dispose();
            this.§2%§ = null;
            this.§@L§ = null;
         }
         if(this.§ x§)
         {
            if(!this.§ x§.§",§)
            {
            }
            this.§ x§.clear();
            this.§ x§ = null;
         }
         if(this.§if§)
         {
            this.§if§.clear();
            this.§if§ = null;
         }
         if(this.§>&§)
         {
            this.§>&§.dispose();
            this.§>&§ = null;
         }
         if(this.§-$§)
         {
            this.§-$§.clear();
            this.§-$§ = null;
         }
         if(this.§02§)
         {
            this.§02§.dispose();
            this.§02§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§,7§ = 0;
         this.§`!K§ = 0;
         this.mReadyToRun = false;
         this.§4!M§ = false;
         this.§<y§ = Tuner.§^5§;
         if(this.§[!H§)
         {
            (this.§[!H§ as §?,§).§%!Q§.x = 0;
            (this.§[!H§ as §?,§).§%!Q§.y = 0;
         }
         if(this.§95§)
         {
            this.§95§.visible = false;
         }
         this.§-!A§ = null;
         this.§&!8§ = null;
         if(this.§3!P§)
         {
            this.§3!P§.removeEventListener(Event.COMPLETE,this.§4b§);
            this.§3!P§.removeEventListener(Event.CANCEL,this.§&#§);
         }
         if(this.§"T§)
         {
            this.§"T§.removeEventListener(Event.COMPLETE,this.§;C§);
            this.§"T§.removeEventListener(Event.CANCEL,this.§-V§);
         }
         this.§^D§();
         if(§>$§.§-U§)
         {
            §>$§.§-U§.color = 0;
         }
         if(this.§`o§)
         {
            this.§`o§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §6G§() : String
      {
         if(this.§&!8§)
         {
            return this.§&!8§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§>$§.§[i§())
         {
            return 0;
         }
         if(this.§-!A§ && this.§-!A§.§]!6§)
         {
            return this.§<u§(param1,param2,param3);
         }
         return this.updateWithTime(param1,true,param2,param3);
      }
      
      protected function updateWithTime(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§do§)
         {
            param1 *= 0.2;
            if(§>$§.§3D§)
            {
               §>$§.§3D§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§`!K§ += param1;
         if(param3)
         {
            this.§,7§ += param1;
            _loc5_ = this.§ x§.§?§(this.§,7§);
            this.§>&§.update(param1,param4);
            this.§,7§ = _loc5_;
         }
         else
         {
            this.§2%§.§+!,§(param1);
            this.§,7§ = 0;
         }
         if(param2)
         {
            this.§6[§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §<u§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §!_§.§@!P§ * 1000;
         if(this.§-!A§)
         {
            param1 *= this.§-!A§.speed;
            _loc5_ = this.§`!K§ + param1;
            while(this.§`!K§ + _loc4_ < _loc5_)
            {
               if(this.§`!K§ + _loc4_ > this.§+H§)
               {
                  this.§-!A§.step(this);
                  this.§+H§ += _loc4_;
               }
               this.updateWithTime(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§+H§ + _loc4_)
            {
               this.§-!A§.step(this);
               this.§+H§ += _loc4_;
            }
            if(this.§`!K§ < _loc5_)
            {
               this.updateWithTime(_loc5_ - this.§`!K§,true,param2,param3);
            }
            return param1;
         }
         return this.updateWithTime(_loc4_,true,param2,param3);
      }
      
      private function §6[§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§!!;§.update(param1);
         this.§2%§.§2[§(param1,param2);
         this.§ !"§();
         if(this.§<y§ < Tuner.§^5§)
         {
            this.§<y§ += param1;
            _loc3_ = Tuner.§^5§ / 2;
            _loc4_ = (-Math.abs(this.§<y§ - _loc3_) + _loc3_) * (Tuner.§[0§ / _loc3_);
            if(this.§95§)
            {
               this.§95§.alpha = _loc4_;
            }
         }
         else if(this.§95§)
         {
            this.§95§.visible = false;
         }
         if(this.§'!1§)
         {
            if(!this.§'!1§.§2T§(this.§-$§,param1))
            {
               this.§@a§();
            }
         }
         this.§-$§.§=Z§(param1);
         this.§ x§.§#!Q§();
         this.§02§.update(param1);
      }
      
      public function §!3§(param1:Number) : void
      {
         this.objects.§+!,§(param1 * 1000);
         this.objects.updateLevelObjectsComplete(param1 * 1000);
         this.§]`§();
      }
      
      public function § !"§() : void
      {
         var _loc1_:§2!3§ = null;
         if(this.§`!K§ > this.§'2§ + 1000 / 30)
         {
            if(this.§9!&§ != null)
            {
               for each(_loc1_ in this.§9!&§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§'2§ = this.§`!K§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§2!3§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§2%§.isPigsAlive(true))
            {
               _loc2_ = this.§2%§.§0!7§(true);
               _loc2_.§^! §.mTryToScream = §0@§.§7!N§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§2%§.§#3§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§2%§.isPigsAlive(true))
            {
               _loc2_ = this.§2%§.§0!7§(true);
               _loc2_.§^! §.mTryToBlink = §0@§.§2O§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§2%§.§#3§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §^A§.§'!§;
         }
         §&L§.addScore(param1,param2);
         this.§`o§.addScore(param1);
         if(param3 && param1 > 0 && !this.§4!I§)
         {
            this.§<!J§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §<!J§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §^A§.§-I§;
         }
         this.§02§.addParticle(§^A§.§&S§,§@u§.§-!J§,§^A§.§3!B§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §!x§(param1:§2!3§) : void
      {
         if(this.§9!&§ == null)
         {
            this.§9!&§ = new Array();
         }
         this.§9!&§.push(param1);
      }
      
      public function §5!-§() : void
      {
         this.§>&§.§5!-§();
         this.§2%§.mightyEagleUsed();
         this.§4!I§ = true;
      }
      
      public function §?3§(param1:§2!3§) : void
      {
         this.§02§.§%>§(§@u§.§ true§);
         if(this.§9!&§.indexOf(param1) >= 0)
         {
            this.§9!&§.splice(this.§9!&§.indexOf(param1),1);
         }
         if(this.§9!&§.length == 0)
         {
            this.§9!&§ = null;
         }
      }
      
      public function shootBird(param1:§#!<§, param2:Number, param3:Number) : void
      {
         this.§@L§ = this.§2%§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§+!E§.§5!G§) : Number(§+!E§.§@M§);
         if(param1.§3!7§ > 1)
         {
            this.§@L§.§+!A§(param1.§3!7§);
            this.§@L§.§^! §.§&!1§();
         }
         if(param1.§4!B§ != 0)
         {
            _loc4_ = param1.§4!B§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§@L§.§7L§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§26§(§<a§.§46§);
         if(this.§&!8§)
         {
            this.§&!8§.shootBird(this.§ x§.§7!P§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§4!M§ = true;
      }
      
      private function §]`§() : void
      {
         if(!this.§4!M§)
         {
            return;
         }
         this.§4!M§ = false;
         if(this.activeObject is §=4§ && !(this.activeObject as §=4§).§"i§)
         {
            if(this.activeObject.activateSpecialPower(this.§1B§))
            {
               this.§5l§ = true;
            }
         }
         else
         {
            this.§2%§.§,!I§();
         }
         if(this.§&!8§)
         {
            this.§&!8§.§6!H§(this.§ x§.§7!P§);
         }
      }
      
      public function §^U§() : void
      {
         this.§2%§.§^U§();
      }
      
      public function §[E§() : void
      {
         this.§2%§.§1R§();
      }
      
      public function §-4§() : §8G§
      {
         var _loc1_:§8G§ = new §8G§();
         _loc1_.§"@§ = this.§-!D§.§"@§;
         _loc1_.§-! § = this.§-!D§.§-! §;
         this.§-$§.§]%§(_loc1_);
         this.§2%§.§"%§(_loc1_);
         this.§>&§.§>!;§(_loc1_);
         _loc1_.theme = this.§!!;§.§=r§();
         return _loc1_;
      }
      
      public function §#_§() : int
      {
         return this.§-!D§.§-! §;
      }
      
      public function §"!P§() : int
      {
         return this.§-!D§.§"@§;
      }
      
      public function §+p§(param1:int) : void
      {
         this.§-!D§.§-! § = param1;
      }
      
      public function §7!H§(param1:int) : void
      {
         this.§-!D§.§"@§ = param1;
      }
      
      public function §?b§(param1:Number, param2:Number) : void
      {
         if(this.§8&§)
         {
            this.§8&§.§37§(param1,param2);
         }
         if(this.§-$§)
         {
            this.§-$§.§=Z§(0);
         }
      }
      
      public function get §`!H§() : §8G§
      {
         return this.§-!D§;
      }
      
      public function get §1B§() : §0z§
      {
         return this.§2%§;
      }
      
      protected function get starling() : §>$§
      {
         return this.§[`§;
      }
      
      public function get damageParticleLimit() : int
      {
         return §=3§;
      }
   }
}
