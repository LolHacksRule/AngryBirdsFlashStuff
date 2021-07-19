package §<!<§
{
   import § !r§.§`![§;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §-!0§.§!!s§;
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §-!0§.§[!M§;
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §1=§.§-d§;
   import §5#§.§5k§;
   import §7U§.§?!R§;
   import §8!Q§.§2!7§;
   import §;!R§.§6!G§;
   import §<!B§.b2Vec2;
   import §=U§.§&!U§;
   import §=U§.§-b§;
   import §=U§.§3p§;
   import §>!'§.§'!Y§;
   import §>!'§.§6!N§;
   import §>!'§.§7!U§;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import §@_§.§[!k§;
   import §]Z§.§,d§;
   import §]Z§.§7!n§;
   import §`a§.§ !U§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7E§
   {
      
      private static const §<@§:int = 20;
      
      public static const §#!U§:Number = §'!V§.§&d§;
      
      public static const §5H§:Number = §'!V§.§6k§;
      
      public static const §8!'§:Number = 1 / 20;
      
      public static const §^0§:Number = §'!V§.§6k§ * §8!'§;
      
      public static const §7!O§:Number = §#!U§ * §8!'§;
      
      public static const §5X§:§2!7§ = new §2!7§(13 - 3);
      
      protected static var §[!p§:String = §2! §.§4!l§;
       
      
      protected var §"m§:§'!Y§;
      
      private var §[[§:§<!3§;
      
      private var §?2§:Array = null;
      
      protected var §>e§:§-d§;
      
      public var §[!U§:§!F§;
      
      protected var §;!&§:§8!t§;
      
      protected var §7!6§:§ !U§;
      
      protected var §90§:§;§;
      
      protected var §^!c§:§<!r§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §<!q§:Boolean = false;
      
      protected var §<!0§:Boolean = false;
      
      protected var § f§:Boolean = false;
      
      public var §`!T§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §9f§:Number;
      
      public var §1z§:Number;
      
      private var §8v§:Number;
      
      public var §+!'§:§[!M§;
      
      public var §7s§:Boolean = false;
      
      private var §?1§:§@`§;
      
      private var §2!Z§:Sprite;
      
      protected var §4!o§:§2! §;
      
      protected var §[!S§:§5k§ = null;
      
      private var §?9§:EventDispatcher;
      
      private var §7!N§:Array;
      
      private var §@![§:Array;
      
      private var §>-§:§7j§;
      
      private var §#!o§:§?!R§;
      
      protected var §>!S§:§3p§;
      
      protected var §[!B§:§&!U§;
      
      private var §5E§:§-b§;
      
      private var §,_§:§-b§;
      
      private var §"X§:§-b§;
      
      private var §"$§:Stage;
      
      private var §]!o§:§-!q§;
      
      protected var §^B§:§6!G§;
      
      protected var §`M§:§6!G§;
      
      protected var §6!2§:Number = 0.0;
      
      protected var §`!_§:String;
      
      private var §9`§:Boolean;
      
      protected var §3!<§:Boolean;
      
      protected var §6Y§:uint = 1.417339207E9;
      
      public var §7!F§:Boolean;
      
      public function §7E§(param1:Stage)
      {
         this.§@![§ = [];
         super();
         this.§?9§ = new EventDispatcher();
         this.§+!'§ = new §[!M§();
         this.§"$§ = param1;
         this.§>!S§ = §3p§.§`!t§;
         this.§[!B§ = this.initAnimationManager(this.§>!S§);
         this.§5E§ = this.initThemeGraphicsManager();
         this.§,_§ = this.§[!2§();
         this.§"X§ = this.§"!B§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§>-§ = new §7j§(§@`§,param1,new Rectangle(0,0,§'!V§.§&d§,§'!V§.§6k§),_loc2_);
         §'!V§.§6!O§.addEventListener(Event.ENTER_FRAME,this.§>-§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§=!S§,false,0,true);
         this.§>-§.§^8§ = false;
         this.§>-§.enableErrorChecking = false;
         this.§>-§.§9!C§ = 2;
         this.§>-§.§@!M§();
      }
      
      public static function §!h§(param1:§<!3§, param2:§<!3§) : Number
      {
         var _loc3_:Number = param1.§1!M§ - param2.§1!M§;
         var _loc4_:Number = param1.§7"§ - param2.§7"§;
         return §%!J§(_loc3_,_loc4_);
      }
      
      public static function §%!J§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§2!Z§ && this.§&]§)
         {
            this.§2!Z§ = this.§?1§.§'v§;
         }
         return this.§2!Z§;
      }
      
      public function get §&]§() : Sprite
      {
         if(!this.§?1§)
         {
            this.§?1§ = this.§>-§.§@3§ as §@`§;
            this.§?1§.§[,§ = false;
         }
         return this.§?1§;
      }
      
      private function get §,w§() : DisplayObject
      {
         if(this.§&]§)
         {
            return (this.§&]§ as §@`§).§,w§;
         }
         return null;
      }
      
      public function get §@!o§() : §&!U§
      {
         return this.§[!B§;
      }
      
      public function get textureManager() : §3p§
      {
         return this.§>!S§;
      }
      
      public function get camera() : § !U§
      {
         return this.§7!6§;
      }
      
      public function get objects() : §'!Y§
      {
         return this.§"m§;
      }
      
      public function get particles() : §<!r§
      {
         return this.§^!c§;
      }
      
      public function get background() : §-d§
      {
         return this.§>e§;
      }
      
      public function get slingshot() : §;§
      {
         return this.§90§;
      }
      
      public function get activeObject() : §<!3§
      {
         return this.§[[§;
      }
      
      public function get borders() : §8!t§
      {
         return this.§;!&§;
      }
      
      public function get stage() : Stage
      {
         return this.§"$§;
      }
      
      public function get §?!r§() : §-b§
      {
         return this.§"X§;
      }
      
      protected function get §%^§() : §-b§
      {
         return this.§5E§;
      }
      
      public function set activeObject(param1:§<!3§) : void
      {
         this.§[[§ = param1;
      }
      
      public function set §0!#§(param1:Boolean) : void
      {
         this.§3!<§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§#!o§)
         {
            this.§#!o§.dispose();
         }
         if(this.§>!S§)
         {
            this.§>!S§.dispose();
         }
         if(this.§5E§ && this.§5E§.textureManager)
         {
            this.§5E§.textureManager.dispose();
         }
         if(this.§"X§ && this.§"X§.textureManager)
         {
            this.§"X§.textureManager.dispose();
         }
         if(this.§>-§)
         {
            this.§>-§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §-b§
      {
         return null;
      }
      
      protected function §[!2§() : §-b§
      {
         return null;
      }
      
      protected function §"!B§() : §-b§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§3p§) : §&!U§
      {
         return new §&!U§(param1);
      }
      
      public function §-I§(param1:Boolean) : void
      {
         if(§7j§.§else§)
         {
            if(param1)
            {
               §7j§.§else§.start();
            }
            else
            {
               §7j§.§else§.stop();
               §7j§.§else§.color = 0;
            }
         }
      }
      
      public function §?m§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §>_§(param1:§5k§) : void
      {
         if(this.§[!S§ != null)
         {
            this.§[!S§.removeEventListeners();
         }
         this.§[!S§ = param1;
         if(this.mReadyToRun)
         {
            this.§[!S§.addEventListeners();
         }
      }
      
      public function §5!!§() : §6!G§
      {
         return this.§^B§;
      }
      
      public function § D§(param1:§?!R§, param2:Array, param3:Function) : void
      {
         this.§#!o§ = param1;
         var _loc4_:int = this.§#!o§.§0!@§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§>!S§.§+t§(this.§#!o§.§0g§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§?9§.addEventListener(Event.INIT,param3);
            this.§@![§.push(param3);
         }
         if(this.§!!g§(param2))
         {
            this.§'L§();
         }
      }
      
      private function §!!g§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§>!S§.§[!>§())
         {
            _loc2_ = this.§>!S§.§-O§ / 1000;
            _loc3_ = this.§>!S§.§]!g§ / 1000;
            §`![§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§7!N§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§[!B§.initializeAnimations(param1);
      }
      
      private function §=!S§(param1:Event) : void
      {
         this.§>!S§.§&k§();
         if(this.§%^§ && this.§%^§.textureManager)
         {
            this.§%^§.textureManager.§&k§();
         }
         if(this.§?!r§ && this.§?!r§.textureManager)
         {
            this.§?!r§.textureManager.§&k§();
         }
         if(this.§7!N§)
         {
            this.§!!g§(this.§7!N§);
            this.§7!N§ = null;
            this.§'L§();
         }
         if(this.§[!S§ != null && this.mReadyToRun)
         {
            this.§[!S§.addEventListeners();
         }
         if(this.§5E§)
         {
            this.§5E§.§[!>§();
         }
         if(this.§"X§)
         {
            if(this.§"X§.textureManager)
            {
               this.§"X§.textureManager.§&k§();
               this.§"X§.§[!>§();
            }
         }
      }
      
      private function §'L§() : void
      {
         this.§?9§.dispatchEvent(new Event(Event.INIT));
         this.§>s§();
      }
      
      private function §>s§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§@![§)
         {
            this.§?9§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§@![§ = [];
      }
      
      public function init(param1:§2! §) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§;!&§ = new §8!t§(this,param1);
         this.§7!6§ = this.initLevelCamera(param1);
         this.§9f§ = 0;
         this.§1z§ = 0;
         this.§8v§ = 0;
         this.§9`§ = false;
         this.mReadyToRun = false;
         this.§<!q§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §[!p§ = param1.theme;
         this.§4!o§ = param1;
         this.§<!0§ = this.§91§(param1.theme);
         this.§ f§ = this.§;6§(param1.theme);
         if(this.§<!0§ && this.§ f§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§[!v§(param1.theme);
         }
         this.§9E§();
         § !p§.init();
      }
      
      protected function §9E§() : void
      {
         this.§^B§ = new §6!G§(§1^§.§ ]§);
      }
      
      protected function §91§(param1:String) : Boolean
      {
         if(this.§5E§)
         {
            return false;
         }
         return true;
      }
      
      protected function §;6§(param1:String) : Boolean
      {
         var _loc2_:§,d§ = null;
         if(this.§,_§)
         {
            _loc2_ = §7!n§.§&!c§(param1);
            if(_loc2_)
            {
               if(_loc2_.§,'§ && !this.§,_§.§<!s§(_loc2_.§,'§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §[!v§(param1:String) : void
      {
         var _loc2_:§,d§ = null;
         if(this.§5E§ && !this.§91§(param1))
         {
            this.§5E§.removeEventListener(Event.COMPLETE,this.§51§);
            this.§5E§.removeEventListener(Event.CANCEL,this.§9I§);
            this.§5E§.addEventListener(Event.COMPLETE,this.§51§);
            this.§5E§.addEventListener(Event.CANCEL,this.§9I§);
            this.§5E§.§95§(param1);
         }
         if(this.§,_§ && !this.§;6§(param1))
         {
            this.§,_§.removeEventListener(Event.COMPLETE,this.§>;§);
            this.§,_§.removeEventListener(Event.CANCEL,this.§^G§);
            this.§,_§.addEventListener(Event.COMPLETE,this.§>;§);
            this.§,_§.addEventListener(Event.CANCEL,this.§^G§);
            _loc2_ = §7!n§.§&!c§(param1);
            if(_loc2_)
            {
               this.§,_§.§95§(_loc2_.§,'§);
            }
         }
      }
      
      private function §51§(param1:Event) : void
      {
         this.§5E§.removeEventListener(Event.COMPLETE,this.§51§);
         this.§5E§.removeEventListener(Event.CANCEL,this.§9I§);
         this.§<!0§ = true;
         if(this.§<!0§ && this.§ f§)
         {
            this.initialize(this.§4!o§);
         }
      }
      
      private function §9I§(param1:Event) : void
      {
         this.§5E§.removeEventListener(Event.COMPLETE,this.§51§);
         this.§5E§.removeEventListener(Event.CANCEL,this.§9I§);
         this.§<!q§ = true;
      }
      
      private function §>;§(param1:Event) : void
      {
         this.§5E§.removeEventListener(Event.COMPLETE,this.§>;§);
         this.§5E§.removeEventListener(Event.CANCEL,this.§^G§);
         this.§ f§ = true;
         if(this.§<!0§ && this.§ f§)
         {
            this.initialize(this.§4!o§);
         }
      }
      
      private function §^G§(param1:Event) : void
      {
         this.§5E§.removeEventListener(Event.COMPLETE,this.§>;§);
         this.§5E§.removeEventListener(Event.CANCEL,this.§^G§);
         this.§ f§ = true;
         if(this.§<!0§ && this.§ f§)
         {
            this.initialize(this.§4!o§);
         }
      }
      
      public function get backgroundTextureManager() : §3p§
      {
         return this.§>!S§;
      }
      
      protected function initialize(param1:§2! §) : void
      {
         this.§3!<§ = false;
         this.§7!F§ = false;
         if(§7j§.§&t§)
         {
            §7j§.§&t§.speed = 1;
         }
         this.§[!U§ = new §!F§(this);
         this.§>e§ = this.initLevelBackground(param1.theme,this.§;!&§.mBorderGround_B2 / §8!'§,this.backgroundTextureManager,this.§7!6§.§@&§());
         this.§>e§.§6!Y§(§'!V§.§'V§());
         this.§"m§ = this.initLevelObjectManager(param1);
         this.§90§ = this.initLevelSlingshot(param1);
         this.§^!c§ = this.§?d§(this.§[!B§,this.§>!S§);
         this.§7!6§.init();
         this.§!+§();
         this.§0M§();
         this.mReadyToRun = true;
         if(this.§[!S§)
         {
            this.§[!S§.addEventListeners();
         }
      }
      
      protected function §0M§() : void
      {
         if(this.§`!_§)
         {
            this.§`M§ = §6!G§.initialize(this.§`!_§);
            this.§`M§.speed = 1;
            this.§`M§.play();
            this.§6!2§ = -1000;
            this.§`!_§ = null;
         }
      }
      
      public function §8V§(param1:String) : void
      {
         this.§`!_§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§`M§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§`M§)
         {
            if(param1)
            {
               this.§`M§.speed = Math.min(this.§`M§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§`M§.speed = Math.max(this.§`M§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§`M§)
         {
            this.§`M§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§2! §) : §'!Y§
      {
         return new §'!Y§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§2! §) : § !U§
      {
         return new § !U§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§3p§, param4:Number) : §-d§
      {
         return new §-d§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§2! §) : §;§
      {
         return new §;§(this,param1,new Sprite());
      }
      
      protected function §?d§(param1:§&!U§, param2:§3p§) : §<!r§
      {
         return new §<!r§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§2! § = new §2! §();
         _loc3_.§]!l§ = -12;
         var _loc4_:§!!s§;
         (_loc4_ = new §!!s§()).left = 0;
         _loc4_.top = -§ !U§.SCREEN_HEIGHT_B2 / 10 * 8;
         _loc4_.bottom = _loc4_.top + § !U§.SCREEN_HEIGHT_B2;
         _loc4_.right = _loc4_.left + § !U§.SCREEN_WIDTH_B2;
         _loc4_.y = -13.929;
         _loc4_.x = § !U§.SCREEN_WIDTH_B2;
         _loc4_.id = § !U§.CAMERA_ID_SLINGSHOT;
         _loc3_.§,!j§(_loc4_);
         var _loc5_:§!!s§;
         (_loc5_ = new §!!s§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + § !U§.SCREEN_WIDTH_B2;
         _loc5_.bottom = _loc5_.top + § !U§.SCREEN_HEIGHT_B2;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + § !U§.SCREEN_WIDTH_B2 / 2;
         _loc5_.id = § !U§.CAMERA_ID_CASTLE;
         _loc3_.§,!j§(_loc5_);
         if(param2)
         {
            this.§&C§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§[!p§ != null)
         {
            _loc3_.theme = §[!p§;
         }
         this.init(_loc3_);
      }
      
      protected function §2!S§() : Number
      {
         this.§6Y§ ^= this.§6Y§ << 21;
         this.§6Y§ ^= this.§6Y§ >>> 35;
         this.§6Y§ ^= this.§6Y§ << 4;
         return this.§6Y§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §&C§(param1:§2! §) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§[!k§ = null;
         this.§6Y§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§2!S§() * 5;
               (_loc5_ = new §[!k§()).x = 30 + _loc3_ * 10 + this.§2!S§() * 9;
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
                  _loc5_.angle = 45 - this.§2!S§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§2!S§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§2!S§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §&!X§() : void
      {
      }
      
      public function §!+§() : void
      {
         if(§-d§.§%k§)
         {
            this.§,`§(this.§>e§.§?[§,false);
         }
         this.§,`§(this.§^!c§.§-!f§(§<!r§.§;!M§),false);
         this.§,`§(this.§^!c§.§-!f§(§<!r§.§<[§),true);
         this.§,`§(this.§^!c§.§-!f§(§<!r§.§@!N§),true);
         this.§,`§(this.§"m§.§[Z§,true);
         this.§,`§(this.§90§.sprite,true);
         this.§,`§(this.§^!c§.§-!f§(§<!r§.§1N§),true);
         this.§,`§(this.§>e§.§@!-§,false);
         if(§-d§.§%k§)
         {
            this.§,`§(this.§>e§.§4`§,false);
         }
         this.§,`§(this.§^!c§.§-!f§(§<!r§.§]a§),true);
         if(!§!F§.§#!m§)
         {
         }
      }
      
      private function §,`§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §'!V§.§9r§;
         param2 /= §'!V§.§9r§;
         _loc3_.x = (param1 / § !U§.§#!-§ + this.§7!6§.§-!=§ - § !U§.§@B§ / § !U§.§#!-§) * §8!'§;
         _loc3_.y = (param2 / § !U§.§#!-§ + this.§7!6§.§-!j§ - § !U§.§'G§ / § !U§.§#!-§) * §8!'§;
         return _loc3_;
      }
      
      public function box2DToScreen(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §8!'§ + § !U§.§@B§ / § !U§.§#!-§ - this.§7!6§.§-!=§) * § !U§.§#!-§;
         _loc3_.y = (param2 / §8!'§ + § !U§.§'G§ / § !U§.§#!-§ - this.§7!6§.§-!j§) * § !U§.§#!-§;
         var _loc4_:Number = Math.max(§'!V§.§9r§,§'!V§.§'A§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §%!2§(param1:String, param2:Number, param3:Number) : void
      {
         this.§"m§.addObject(param1,param2,param3);
      }
      
      public function §6g§() : void
      {
         if(this.§,w§)
         {
            this.§,w§.visible = true;
            this.§,w§.alpha = 0;
         }
         this.§`!T§ = 0;
      }
      
      public function §!S§() : void
      {
         this.§]!o§ = new §-!q§(§;J§.§=t§,§;J§.§?z§);
      }
      
      public function §!f§() : void
      {
         this.§]!o§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§>e§)
         {
            this.§>e§.dispose();
            this.§>e§ = null;
         }
         if(this.§"m§)
         {
            this.§"m§.dispose();
            this.§"m§ = null;
            this.§[[§ = null;
         }
         if(this.§[!U§)
         {
            if(!this.§[!U§.§2o§)
            {
            }
            this.§[!U§.clear();
            this.§[!U§ = null;
         }
         if(this.§;!&§)
         {
            this.§;!&§.clear();
            this.§;!&§ = null;
         }
         if(this.§90§)
         {
            this.§90§.dispose();
            this.§90§ = null;
         }
         if(this.§7!6§)
         {
            this.§7!6§.clear();
            this.§7!6§ = null;
         }
         if(this.§^!c§)
         {
            this.§^!c§.dispose();
            this.§^!c§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§9f§ = 0;
         this.§1z§ = 0;
         this.mReadyToRun = false;
         this.§9`§ = false;
         this.§`!T§ = §;J§.§#!n§;
         if(this.§&]§)
         {
            (this.§&]§ as §@`§).§3Z§.x = 0;
            (this.§&]§ as §@`§).§3Z§.y = 0;
         }
         if(this.§,w§)
         {
            this.§,w§.visible = false;
         }
         this.§`M§ = null;
         this.§^B§ = null;
         if(this.§5E§)
         {
            this.§5E§.removeEventListener(Event.COMPLETE,this.§51§);
            this.§5E§.removeEventListener(Event.CANCEL,this.§9I§);
         }
         if(this.§,_§)
         {
            this.§,_§.removeEventListener(Event.COMPLETE,this.§>;§);
            this.§,_§.removeEventListener(Event.CANCEL,this.§^G§);
         }
         this.§>s§();
         if(§7j§.§else§)
         {
            §7j§.§else§.color = 0;
         }
         if(this.§[!S§)
         {
            this.§[!S§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §8!§() : String
      {
         if(this.§^B§)
         {
            return this.§^B§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§7j§.§!m§())
         {
            return 0;
         }
         if(this.§`M§ && this.§`M§.§6e§)
         {
            return this.§ !6§(param1,param2,param3);
         }
         return this.§"!w§(param1,true,param2,param3);
      }
      
      protected function §"!w§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§3!<§)
         {
            param1 *= 0.2;
            if(§7j§.§&t§)
            {
               §7j§.§&t§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§1z§ += param1;
         if(param3)
         {
            this.§9f§ += param1;
            _loc5_ = this.§[!U§.§'!'§(this.§9f§);
            this.§90§.update(param1,param4);
            this.§9f§ = _loc5_;
         }
         else
         {
            this.§"m§.§8I§(param1);
            this.§9f§ = 0;
         }
         if(param2)
         {
            this.§6!f§(param1,_loc5_);
         }
         return param1;
      }
      
      private function § !6§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §!F§.§4!c§ * 1000;
         if(this.§`M§)
         {
            param1 *= this.§`M§.speed;
            _loc5_ = this.§1z§ + param1;
            while(this.§1z§ + _loc4_ < _loc5_)
            {
               if(this.§1z§ + _loc4_ > this.§6!2§)
               {
                  this.§`M§.step(this);
                  this.§6!2§ += _loc4_;
               }
               this.§"!w§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§6!2§ + _loc4_)
            {
               this.§`M§.step(this);
               this.§6!2§ += _loc4_;
            }
            if(this.§1z§ < _loc5_)
            {
               this.§"!w§(_loc5_ - this.§1z§,true,param2,param3);
            }
            return param1;
         }
         return this.§"!w§(_loc4_,true,param2,param3);
      }
      
      private function §6!f§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§>e§.update(param1);
         this.§"m§.§[!o§(param1,param2);
         this.§?!&§();
         if(this.§`!T§ < §;J§.§#!n§)
         {
            this.§`!T§ += param1;
            _loc3_ = §;J§.§#!n§ / 2;
            _loc4_ = (-Math.abs(this.§`!T§ - _loc3_) + _loc3_) * (§;J§.§7!s§ / _loc3_);
            if(this.§,w§)
            {
               this.§,w§.alpha = _loc4_;
            }
         }
         else if(this.§,w§)
         {
            this.§,w§.visible = false;
         }
         if(this.§]!o§)
         {
            if(!this.§]!o§.§77§(this.§7!6§,param1))
            {
               this.§!f§();
            }
         }
         this.§7!6§.updateCamera(param1);
         this.§[!U§.§3v§();
         this.§^!c§.update(param1);
      }
      
      public function §&! §(param1:Number) : void
      {
         this.objects.§8I§(param1 * 1000);
         this.objects.§5<§(param1 * 1000);
         this.§9O§();
      }
      
      public function §?!&§() : void
      {
         var _loc1_:§<!3§ = null;
         if(this.§1z§ > this.§8v§ + 1000 / 30)
         {
            if(this.§?2§ != null)
            {
               for each(_loc1_ in this.§?2§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§8v§ = this.§1z§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§<!3§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§"m§.isPigsAlive(true))
            {
               _loc2_ = this.§"m§.§'2§(true);
               _loc2_.§0!E§.mTryToScream = §6!N§.§0+§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§"m§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§"m§.isPigsAlive(true))
            {
               _loc2_ = this.§"m§.§'2§(true);
               _loc2_.§0!E§.mTryToBlink = §6!N§.§>!7§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§"m§.getPigCount());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §!r§.§4Z§;
         }
         § !p§.addScore(param1,param2);
         this.§[!S§.addScore(param1);
         if(param3 && param1 > 0 && !this.§7!F§)
         {
            this.§15§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §15§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §!r§.§%! §;
         }
         this.§^!c§.§1&§(§!r§.§<s§,§<!r§.§]a§,§!r§.§#!,§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §=,§(param1:§<!3§) : void
      {
         if(this.§?2§ == null)
         {
            this.§?2§ = new Array();
         }
         this.§?2§.push(param1);
      }
      
      public function §+!9§() : void
      {
         this.§90§.§+!9§();
         this.§"m§.§#!Y§();
         this.§7!F§ = true;
      }
      
      public function §,!H§(param1:§<!3§) : void
      {
         this.§^!c§.§3!G§(§<!r§.§;!M§);
         if(this.§?2§.indexOf(param1) >= 0)
         {
            this.§?2§.splice(this.§?2§.indexOf(param1),1);
         }
         if(this.§?2§.length == 0)
         {
            this.§?2§ = null;
         }
      }
      
      public function §3!i§(param1:§]K§, param2:Number, param3:Number) : void
      {
         this.§[[§ = this.§"m§.addObject(param1.name,param1.mX,param1.mY,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§;§.§ !3§) : Number(§;§.§5B§);
         if(param1.§]f§ > 1)
         {
            this.§[[§.§^!E§(param1.§]f§);
            this.§[[§.§0!E§.§,y§();
         }
         if(param1.§2!@§ != 0)
         {
            _loc4_ = param1.§2!@§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§[[§.§`w§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§'!6§(§ !U§.§?!d§);
         if(this.§^B§)
         {
            this.§^B§.§3!i§(this.§[!U§.§`V§,param1.mX,param1.mY,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§9`§ = true;
      }
      
      private function §9O§() : void
      {
         if(!this.§9`§)
         {
            return;
         }
         this.§9`§ = false;
         if(this.activeObject is §7!U§ && !(this.activeObject as §7!U§).§6!i§)
         {
            if(this.activeObject.activateSpecialPower(this.levelObjects))
            {
               this.§7s§ = true;
            }
         }
         else
         {
            this.§"m§.§,4§();
         }
         if(this.§^B§)
         {
            this.§^B§.§=!`§(this.§[!U§.§`V§);
         }
      }
      
      public function §=B§() : void
      {
         this.§"m§.§=B§();
      }
      
      public function §6T§() : void
      {
         this.§"m§.§6!E§();
      }
      
      public function getCurrentLevelData() : §2! §
      {
         var _loc1_:§2! § = new §2! §();
         _loc1_.§9>§ = this.§4!o§.§9>§;
         _loc1_.§6!H§ = this.§4!o§.§6!H§;
         this.§7!6§.writeCameraInformation(_loc1_);
         this.§"m§.§9!-§(_loc1_);
         this.§90§.§8x§(_loc1_);
         _loc1_.theme = this.§>e§.§%N§();
         return _loc1_;
      }
      
      public function § h§() : int
      {
         return this.§4!o§.§6!H§;
      }
      
      public function §#u§() : int
      {
         return this.§4!o§.§9>§;
      }
      
      public function §%J§(param1:int) : void
      {
         this.§4!o§.§6!H§ = param1;
      }
      
      public function §^!5§(param1:int) : void
      {
         this.§4!o§.§9>§ = param1;
      }
      
      public function §,!Y§(param1:Number, param2:Number) : void
      {
         if(this.§?1§)
         {
            this.§?1§.§4!g§(param1,param2);
         }
         if(this.§7!6§)
         {
            this.§7!6§.updateCamera(0);
         }
      }
      
      public function get §0=§() : §2! §
      {
         return this.§4!o§;
      }
      
      public function get levelObjects() : §'!Y§
      {
         return this.§"m§;
      }
      
      protected function get starling() : §7j§
      {
         return this.§>-§;
      }
      
      public function get §9R§() : int
      {
         return §<@§;
      }
   }
}
