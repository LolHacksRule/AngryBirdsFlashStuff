package §+!%§
{
   import § `§.§3F§;
   import §"!E§.§#g§;
   import §"!E§.§9!E§;
   import §&I§.§3! §;
   import §'8§.§>;§;
   import §->§.DisplayObject;
   import §->§.Sprite;
   import §-l§.§?'§;
   import §0[§.§!!"§;
   import §24§.§6! §;
   import §2x§.§'!@§;
   import §<!@§.§!P§;
   import §<!@§.§+!-§;
   import §<!@§.§-G§;
   import §<!@§.§@T§;
   import §<2§.§6"§;
   import §<[§.§6q§;
   import §<[§.§;+§;
   import §<[§.§<!9§;
   import §<[§.§>!4§;
   import §>0§.§%G§;
   import §>0§.§+!1§;
   import §[!$§.§"!%§;
   import §[!$§.§;"§;
   import §[!$§.§`d§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import §finally§.§>!$§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §while§.§03§;
   
   public class §'!"§
   {
      
      private static const §]!B§:int = 20;
      
      public static const §5a§:Number = §?'§.§?t§;
      
      public static const § !0§:Number = §?'§.§,!,§;
      
      public static const §%!8§:Number = 1 / 20;
      
      public static const §&t§:Number = §?'§.§,!,§ * §%!8§;
      
      public static const §'#§:Number = §5a§ * §%!8§;
      
      public static const §5!F§:§03§ = new §03§(13 - 3);
      
      protected static var §@o§:String = §+!-§.§2!D§;
       
      
      protected var §%!G§:§6q§;
      
      private var §?2§:§>!4§;
      
      private var §8!8§:Array = null;
      
      protected var §,G§:§6! §;
      
      public var §&5§:§%E§;
      
      protected var §-!H§:§'p§;
      
      protected var §,i§:§3F§;
      
      protected var §0>§:§-C§;
      
      protected var §@f§:§#g§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §%Q§:Boolean = false;
      
      protected var §@X§:Boolean = false;
      
      protected var §>!B§:Boolean = false;
      
      public var §=W§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §&m§:Number;
      
      public var §65§:Number;
      
      private var §6!B§:Number;
      
      public var §-a§:§-G§;
      
      public var §7!H§:Boolean = false;
      
      private var §9=§:§[!<§;
      
      private var §]!>§:Sprite;
      
      protected var §0!-§:§+!-§;
      
      protected var §9p§:§>;§ = null;
      
      private var §7<§:EventDispatcher;
      
      private var §;!4§:Array;
      
      private var §4d§:Array;
      
      private var §?_§:§3! §;
      
      private var §"H§:§!!"§;
      
      protected var §7K§:§"!%§;
      
      protected var §,l§:§`d§;
      
      private var §-%§:§;"§;
      
      private var §9f§:§;"§;
      
      private var §@=§:§;"§;
      
      private var §5R§:Stage;
      
      private var §]!F§:§]D§;
      
      protected var §9! §:§6"§;
      
      protected var §>1§:§6"§;
      
      protected var §5;§:Number = 0.0;
      
      protected var §[3§:String;
      
      private var §0f§:Boolean;
      
      protected var §<p§:Boolean;
      
      protected var §',§:uint = 1.417339207E9;
      
      public var §<]§:Boolean;
      
      public function §'!"§(param1:Stage)
      {
         this.§4d§ = [];
         super();
         this.§7<§ = new EventDispatcher();
         this.§-a§ = new §-G§();
         this.§5R§ = param1;
         this.§7K§ = §"!%§.§^7§;
         this.§,l§ = this.initAnimationManager(this.§7K§);
         this.§-%§ = this.initThemeGraphicsManager();
         this.§9f§ = this.§=!4§();
         this.§@=§ = this.§+m§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§?_§ = new §3! §(§[!<§,param1,new Rectangle(0,0,§?'§.§?t§,§?'§.§,!,§),_loc2_);
         §?'§.§0_§.addEventListener(Event.ENTER_FRAME,this.§?_§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§<N§,false,0,true);
         this.§?_§.§-!'§ = false;
         this.§?_§.enableErrorChecking = false;
         this.§?_§.§3!8§ = 2;
         this.§?_§.§&!@§();
      }
      
      public static function §9!'§(param1:§>!4§, param2:§>!4§) : Number
      {
         var _loc3_:Number = param1.§9x§ - param2.§9x§;
         var _loc4_:Number = param1.§!x§ - param2.§!x§;
         return §,!&§(_loc3_,_loc4_);
      }
      
      public static function §,!&§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§]!>§ && this.§6!8§)
         {
            this.§]!>§ = this.§9=§.§#!4§;
         }
         return this.§]!>§;
      }
      
      public function get §6!8§() : Sprite
      {
         if(!this.§9=§)
         {
            this.§9=§ = this.§?_§.§'w§ as §[!<§;
            this.§9=§.§'!D§ = false;
         }
         return this.§9=§;
      }
      
      private function get §'!+§() : DisplayObject
      {
         if(this.§6!8§)
         {
            return (this.§6!8§ as §[!<§).§'!+§;
         }
         return null;
      }
      
      public function get §@!5§() : §`d§
      {
         return this.§,l§;
      }
      
      public function get textureManager() : §"!%§
      {
         return this.§7K§;
      }
      
      public function get camera() : §3F§
      {
         return this.§,i§;
      }
      
      public function get objects() : §6q§
      {
         return this.§%!G§;
      }
      
      public function get particles() : §#g§
      {
         return this.§@f§;
      }
      
      public function get background() : §6! §
      {
         return this.§,G§;
      }
      
      public function get slingshot() : §-C§
      {
         return this.§0>§;
      }
      
      public function get activeObject() : §>!4§
      {
         return this.§?2§;
      }
      
      public function get §6s§() : §'p§
      {
         return this.§-!H§;
      }
      
      public function get stage() : Stage
      {
         return this.§5R§;
      }
      
      public function get §"F§() : §;"§
      {
         return this.§@=§;
      }
      
      protected function get §!!3§() : §;"§
      {
         return this.§-%§;
      }
      
      public function set activeObject(param1:§>!4§) : void
      {
         this.§?2§ = param1;
      }
      
      public function set §">§(param1:Boolean) : void
      {
         this.§<p§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§"H§)
         {
            this.§"H§.dispose();
         }
         if(this.§7K§)
         {
            this.§7K§.dispose();
         }
         if(this.§-%§ && this.§-%§.textureManager)
         {
            this.§-%§.textureManager.dispose();
         }
         if(this.§@=§ && this.§@=§.textureManager)
         {
            this.§@=§.textureManager.dispose();
         }
         if(this.§?_§)
         {
            this.§?_§.dispose();
         }
      }
      
      protected function initThemeGraphicsManager() : §;"§
      {
         return null;
      }
      
      protected function §=!4§() : §;"§
      {
         return null;
      }
      
      protected function §+m§() : §;"§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§"!%§) : §`d§
      {
         return new §`d§(param1);
      }
      
      public function §`!?§(param1:Boolean) : void
      {
         if(§3! §.§"n§)
         {
            if(param1)
            {
               §3! §.§"n§.start();
            }
            else
            {
               §3! §.§"n§.stop();
               §3! §.§"n§.color = 0;
            }
         }
      }
      
      public function §>G§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §]`§(param1:§>;§) : void
      {
         if(this.§9p§ != null)
         {
            this.§9p§.removeEventListeners();
         }
         this.§9p§ = param1;
         if(this.mReadyToRun)
         {
            this.§9p§.addEventListeners();
         }
      }
      
      public function §3!%§() : §6"§
      {
         return this.§9! §;
      }
      
      public function §#!?§(param1:§!!"§, param2:Array, param3:Function) : void
      {
         this.§"H§ = param1;
         var _loc4_:int = this.§"H§.§&!B§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§7K§.§04§(this.§"H§.§+f§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§7<§.addEventListener(Event.INIT,param3);
            this.§4d§.push(param3);
         }
         if(this.§<! §(param2))
         {
            this.§71§();
         }
      }
      
      private function §<! §(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§7K§.§1N§())
         {
            _loc2_ = this.§7K§.§'o§ / 1000;
            _loc3_ = this.§7K§.§2L§ / 1000;
            §'!@§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§;!4§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§,l§.initializeAnimations(param1);
      }
      
      private function §<N§(param1:Event) : void
      {
         this.§7K§.§,!E§();
         if(this.§!!3§ && this.§!!3§.textureManager)
         {
            this.§!!3§.textureManager.§,!E§();
         }
         if(this.§"F§ && this.§"F§.textureManager)
         {
            this.§"F§.textureManager.§,!E§();
         }
         if(this.§;!4§)
         {
            this.§<! §(this.§;!4§);
            this.§;!4§ = null;
            this.§71§();
         }
         if(this.§9p§ != null && this.mReadyToRun)
         {
            this.§9p§.addEventListeners();
         }
         if(this.§-%§)
         {
            this.§-%§.§1N§();
         }
         if(this.§@=§)
         {
            if(this.§@=§.textureManager)
            {
               this.§@=§.textureManager.§,!E§();
               this.§@=§.§1N§();
            }
         }
      }
      
      private function §71§() : void
      {
         this.§7<§.dispatchEvent(new Event(Event.INIT));
         this.§@$§();
      }
      
      private function §@$§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§4d§)
         {
            this.§7<§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§4d§ = [];
      }
      
      public function init(param1:§+!-§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§-!H§ = new §'p§(this,param1);
         this.§,i§ = this.initLevelCamera(param1);
         this.§&m§ = 0;
         this.§65§ = 0;
         this.§6!B§ = 0;
         this.§0f§ = false;
         this.mReadyToRun = false;
         this.§%Q§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §@o§ = param1.theme;
         this.§0!-§ = param1;
         this.§@X§ = this.§8!&§(param1.theme);
         this.§>!B§ = this.§^B§(param1.theme);
         if(this.§@X§ && this.§>!B§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§74§(param1.theme);
         }
         this.§<a§();
         §>3§.init();
      }
      
      protected function §<a§() : void
      {
         this.§9! § = new §6"§(§!P§.§4R§);
      }
      
      protected function §8!&§(param1:String) : Boolean
      {
         if(this.§-%§)
         {
            return false;
         }
         return true;
      }
      
      protected function §^B§(param1:String) : Boolean
      {
         var _loc2_:§%G§ = null;
         if(this.§9f§)
         {
            _loc2_ = §+!1§.§ "§(param1);
            if(_loc2_)
            {
               if(_loc2_.§0!H§ && !this.§9f§.§8G§(_loc2_.§0!H§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §74§(param1:String) : void
      {
         var _loc2_:§%G§ = null;
         if(this.§-%§ && !this.§8!&§(param1))
         {
            this.§-%§.removeEventListener(Event.COMPLETE,this.§ !C§);
            this.§-%§.removeEventListener(Event.CANCEL,this.§2>§);
            this.§-%§.addEventListener(Event.COMPLETE,this.§ !C§);
            this.§-%§.addEventListener(Event.CANCEL,this.§2>§);
            this.§-%§.§[!!§(param1);
         }
         if(this.§9f§ && !this.§^B§(param1))
         {
            this.§9f§.removeEventListener(Event.COMPLETE,this.§;!+§);
            this.§9f§.removeEventListener(Event.CANCEL,this.§"v§);
            this.§9f§.addEventListener(Event.COMPLETE,this.§;!+§);
            this.§9f§.addEventListener(Event.CANCEL,this.§"v§);
            _loc2_ = §+!1§.§ "§(param1);
            if(_loc2_)
            {
               this.§9f§.§[!!§(_loc2_.§0!H§);
            }
         }
      }
      
      private function § !C§(param1:Event) : void
      {
         this.§-%§.removeEventListener(Event.COMPLETE,this.§ !C§);
         this.§-%§.removeEventListener(Event.CANCEL,this.§2>§);
         this.§@X§ = true;
         if(this.§@X§ && this.§>!B§)
         {
            this.initialize(this.§0!-§);
         }
      }
      
      private function §2>§(param1:Event) : void
      {
         this.§-%§.removeEventListener(Event.COMPLETE,this.§ !C§);
         this.§-%§.removeEventListener(Event.CANCEL,this.§2>§);
         this.§%Q§ = true;
      }
      
      private function §;!+§(param1:Event) : void
      {
         this.§-%§.removeEventListener(Event.COMPLETE,this.§;!+§);
         this.§-%§.removeEventListener(Event.CANCEL,this.§"v§);
         this.§>!B§ = true;
         if(this.§@X§ && this.§>!B§)
         {
            this.initialize(this.§0!-§);
         }
      }
      
      private function §"v§(param1:Event) : void
      {
         this.§-%§.removeEventListener(Event.COMPLETE,this.§;!+§);
         this.§-%§.removeEventListener(Event.CANCEL,this.§"v§);
         this.§>!B§ = true;
         if(this.§@X§ && this.§>!B§)
         {
            this.initialize(this.§0!-§);
         }
      }
      
      public function get backgroundTextureManager() : §"!%§
      {
         return this.§7K§;
      }
      
      protected function initialize(param1:§+!-§) : void
      {
         this.§<p§ = false;
         this.§<]§ = false;
         if(§3! §.§`S§)
         {
            §3! §.§`S§.speed = 1;
         }
         this.§&5§ = new §%E§(this);
         this.§,G§ = this.initLevelBackground(param1.theme,this.§-!H§.§'>§ / §%!8§,this.backgroundTextureManager,this.§,i§.§4Y§());
         this.§,G§.§]!!§(§?'§.§]P§());
         this.§%!G§ = this.initLevelObjectManager(param1);
         this.§0>§ = this.initLevelSlingshot(param1);
         this.§@f§ = this.§35§(this.§,l§,this.§7K§);
         this.§,i§.init();
         this.§`!§();
         this.§#2§();
         this.mReadyToRun = true;
         if(this.§9p§)
         {
            this.§9p§.addEventListeners();
         }
      }
      
      protected function §#2§() : void
      {
         if(this.§[3§)
         {
            this.§>1§ = §6"§.initialize(this.§[3§);
            this.§>1§.speed = 1;
            this.§>1§.play();
            this.§5;§ = -1000;
            this.§[3§ = null;
         }
      }
      
      public function §-n§(param1:String) : void
      {
         this.§[3§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§>1§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§>1§)
         {
            if(param1)
            {
               this.§>1§.speed = Math.min(this.§>1§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§>1§.speed = Math.max(this.§>1§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§>1§)
         {
            this.§>1§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§+!-§) : §6q§
      {
         return new §6q§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§+!-§) : §3F§
      {
         return new §3F§(this,param1);
      }
      
      protected function initLevelBackground(param1:String, param2:Number, param3:§"!%§, param4:Number) : §6! §
      {
         return new §6! §(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§+!-§) : §-C§
      {
         return new §-C§(this,param1,new Sprite());
      }
      
      protected function §35§(param1:§`d§, param2:§"!%§) : §#g§
      {
         return new §#g§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§+!-§ = new §+!-§();
         _loc3_.§?K§ = -12;
         var _loc4_:§@T§;
         (_loc4_ = new §@T§()).left = 0;
         _loc4_.top = -§3F§.§]@§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + §3F§.§]@§;
         _loc4_.right = _loc4_.left + §3F§.§6d§;
         _loc4_.y = -13.929;
         _loc4_.x = §3F§.§6d§;
         _loc4_.id = §3F§.§-k§;
         _loc3_.§7$§(_loc4_);
         var _loc5_:§@T§;
         (_loc5_ = new §@T§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §3F§.§6d§;
         _loc5_.bottom = _loc5_.top + §3F§.§]@§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §3F§.§6d§ / 2;
         _loc5_.id = §3F§.§]z§;
         _loc3_.§7$§(_loc5_);
         if(param2)
         {
            this.§'4§(_loc3_);
         }
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§@o§ != null)
         {
            _loc3_.theme = §@o§;
         }
         this.init(_loc3_);
      }
      
      protected function §2f§() : Number
      {
         this.§',§ ^= this.§',§ << 21;
         this.§',§ ^= this.§',§ >>> 35;
         this.§',§ ^= this.§',§ << 4;
         return this.§',§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §'4§(param1:§+!-§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§>!$§ = null;
         this.§',§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§2f§() * 5;
               (_loc5_ = new §>!$§()).x = 30 + _loc3_ * 10 + this.§2f§() * 9;
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
                  _loc5_.angle = 45 - this.§2f§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§2f§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§2f§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §1G§() : void
      {
      }
      
      public function §`!§() : void
      {
         if(§6! §.§?!'§)
         {
            this.§>+§(this.§,G§.§&§,false);
         }
         this.§>+§(this.§@f§.§'1§(§#g§.§-!"§),false);
         this.§>+§(this.§@f§.§'1§(§#g§.§-x§),true);
         this.§>+§(this.§@f§.§'1§(§#g§.§+V§),true);
         this.§>+§(this.§%!G§.§#!#§,true);
         this.§>+§(this.§0>§.sprite,true);
         this.§>+§(this.§@f§.§'1§(§#g§.§%!H§),true);
         this.§>+§(this.§,G§.§;,§,false);
         if(§6! §.§?!'§)
         {
            this.§>+§(this.§,G§.§&!8§,false);
         }
         this.§>+§(this.§@f§.§'1§(§#g§.§;p§),true);
         if(!§%E§.§=L§)
         {
         }
      }
      
      private function §>+§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §?'§.§]!§;
         param2 /= §?'§.§]!§;
         _loc3_.x = (param1 / §3F§.§'f§ + this.§,i§.§3A§ - §3F§.§[E§ / §3F§.§'f§) * §%!8§;
         _loc3_.y = (param2 / §3F§.§'f§ + this.§,i§.§&X§ - §3F§.§`F§ / §3F§.§'f§) * §%!8§;
         return _loc3_;
      }
      
      public function §4C§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §%!8§ + §3F§.§[E§ / §3F§.§'f§ - this.§,i§.§3A§) * §3F§.§'f§;
         _loc3_.y = (param2 / §%!8§ + §3F§.§`F§ / §3F§.§'f§ - this.§,i§.§&X§) * §3F§.§'f§;
         var _loc4_:Number = Math.max(§?'§.§]!§,§?'§.§&!0§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §4!E§(param1:String, param2:Number, param3:Number) : void
      {
         this.§%!G§.addObject(param1,param2,param3);
      }
      
      public function §7!5§() : void
      {
         if(this.§'!+§)
         {
            this.§'!+§.visible = true;
            this.§'!+§.alpha = 0;
         }
         this.§=W§ = 0;
      }
      
      public function §"!G§() : void
      {
         this.§]!F§ = new §]D§(§use§.§<k§,§use§.§]G§);
      }
      
      public function §2B§() : void
      {
         this.§]!F§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§,G§)
         {
            this.§,G§.dispose();
            this.§,G§ = null;
         }
         if(this.§%!G§)
         {
            this.§%!G§.dispose();
            this.§%!G§ = null;
            this.§?2§ = null;
         }
         if(this.§&5§)
         {
            if(!this.§&5§.§,!C§)
            {
            }
            this.§&5§.clear();
            this.§&5§ = null;
         }
         if(this.§-!H§)
         {
            this.§-!H§.clear();
            this.§-!H§ = null;
         }
         if(this.§0>§)
         {
            this.§0>§.dispose();
            this.§0>§ = null;
         }
         if(this.§,i§)
         {
            this.§,i§.clear();
            this.§,i§ = null;
         }
         if(this.§@f§)
         {
            this.§@f§.dispose();
            this.§@f§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§&m§ = 0;
         this.§65§ = 0;
         this.mReadyToRun = false;
         this.§0f§ = false;
         this.§=W§ = §use§.§!T§;
         if(this.§6!8§)
         {
            (this.§6!8§ as §[!<§).§0C§.x = 0;
            (this.§6!8§ as §[!<§).§0C§.y = 0;
         }
         if(this.§'!+§)
         {
            this.§'!+§.visible = false;
         }
         this.§>1§ = null;
         this.§9! § = null;
         if(this.§-%§)
         {
            this.§-%§.removeEventListener(Event.COMPLETE,this.§ !C§);
            this.§-%§.removeEventListener(Event.CANCEL,this.§2>§);
         }
         if(this.§9f§)
         {
            this.§9f§.removeEventListener(Event.COMPLETE,this.§;!+§);
            this.§9f§.removeEventListener(Event.CANCEL,this.§"v§);
         }
         this.§@$§();
         if(§3! §.§"n§)
         {
            §3! §.§"n§.color = 0;
         }
         if(this.§9p§)
         {
            this.§9p§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §`?§() : String
      {
         if(this.§9! §)
         {
            return this.§9! §.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§3! §.§=!&§())
         {
            return 0;
         }
         if(this.§>1§ && this.§>1§.§4I§)
         {
            return this.§>8§(param1,param2,param3);
         }
         return this.§5e§(param1,true,param2,param3);
      }
      
      protected function §5e§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§<p§)
         {
            param1 *= 0.2;
            if(§3! §.§`S§)
            {
               §3! §.§`S§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§65§ += param1;
         if(param3)
         {
            this.§&m§ += param1;
            _loc5_ = this.§&5§.§4B§(this.§&m§);
            this.§0>§.update(param1,param4);
            this.§&m§ = _loc5_;
         }
         else
         {
            this.§%!G§.§&Q§(param1);
            this.§&m§ = 0;
         }
         if(param2)
         {
            this.§&a§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §>8§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §%E§.§&!H§ * 1000;
         if(this.§>1§)
         {
            param1 *= this.§>1§.speed;
            _loc5_ = this.§65§ + param1;
            while(this.§65§ + _loc4_ < _loc5_)
            {
               if(this.§65§ + _loc4_ > this.§5;§)
               {
                  this.§>1§.step(this);
                  this.§5;§ += _loc4_;
               }
               this.§5e§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§5;§ + _loc4_)
            {
               this.§>1§.step(this);
               this.§5;§ += _loc4_;
            }
            if(this.§65§ < _loc5_)
            {
               this.§5e§(_loc5_ - this.§65§,true,param2,param3);
            }
            return param1;
         }
         return this.§5e§(_loc4_,true,param2,param3);
      }
      
      private function §&a§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§,G§.update(param1);
         this.§%!G§.§;H§(param1,param2);
         this.§ Q§();
         if(this.§=W§ < §use§.§!T§)
         {
            this.§=W§ += param1;
            _loc3_ = §use§.§!T§ / 2;
            _loc4_ = (-Math.abs(this.§=W§ - _loc3_) + _loc3_) * (§use§.§9C§ / _loc3_);
            if(this.§'!+§)
            {
               this.§'!+§.alpha = _loc4_;
            }
         }
         else if(this.§'!+§)
         {
            this.§'!+§.visible = false;
         }
         if(this.§]!F§)
         {
            if(!this.§]!F§.§>!G§(this.§,i§,param1))
            {
               this.§2B§();
            }
         }
         this.§,i§.§6J§(param1);
         this.§&5§.§;!9§();
         this.§@f§.update(param1);
      }
      
      public function §&l§(param1:Number) : void
      {
         this.objects.§&Q§(param1 * 1000);
         this.objects.§`4§(param1 * 1000);
         this.§&!G§();
      }
      
      public function § Q§() : void
      {
         var _loc1_:§>!4§ = null;
         if(this.§65§ > this.§6!B§ + 1000 / 30)
         {
            if(this.§8!8§ != null)
            {
               for each(_loc1_ in this.§8!8§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§6!B§ = this.§65§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§>!4§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§%!G§.isPigsAlive(true))
            {
               _loc2_ = this.§%!G§.§>R§(true);
               _loc2_.§2!0§.mTryToScream = §;+§.§@2§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§%!G§.§+s§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§%!G§.isPigsAlive(true))
            {
               _loc2_ = this.§%!G§.§>R§(true);
               _loc2_.§2!0§.mTryToBlink = §;+§.§`!6§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§%!G§.§+s§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §9!E§.§]k§;
         }
         §>3§.addScore(param1,param2);
         this.§9p§.addScore(param1);
         if(param3 && param1 > 0 && !this.§<]§)
         {
            this.§ set§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function § set§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §9!E§.§6!E§;
         }
         this.§@f§.§#!&§(§9!E§.§%;§,§#g§.§;p§,§9!E§.§=n§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §64§(param1:§>!4§) : void
      {
         if(this.§8!8§ == null)
         {
            this.§8!8§ = new Array();
         }
         this.§8!8§.push(param1);
      }
      
      public function §7!$§() : void
      {
         this.§0>§.§7!$§();
         this.§%!G§.§70§();
         this.§<]§ = true;
      }
      
      public function §-!=§(param1:§>!4§) : void
      {
         this.§@f§.§"!+§(§#g§.§-!"§);
         if(this.§8!8§.indexOf(param1) >= 0)
         {
            this.§8!8§.splice(this.§8!8§.indexOf(param1),1);
         }
         if(this.§8!8§.length == 0)
         {
            this.§8!8§ = null;
         }
      }
      
      public function §`U§(param1:§4;§, param2:Number, param3:Number) : void
      {
         this.§?2§ = this.§%!G§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§-C§.§ C§) : Number(§-C§.§>c§);
         if(param1.§=V§ > 1)
         {
            this.§?2§.§^1§(param1.§=V§);
            this.§?2§.§2!0§.§?a§();
         }
         if(param1.§[!E§ != 0)
         {
            _loc4_ = param1.§[!E§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§?2§.§>>§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§!!$§(§3F§.§8`§);
         if(this.§9! §)
         {
            this.§9! §.§`U§(this.§&5§.§83§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§0f§ = true;
      }
      
      private function §&!G§() : void
      {
         if(!this.§0f§)
         {
            return;
         }
         this.§0f§ = false;
         if(this.activeObject is §<!9§ && !(this.activeObject as §<!9§).§6X§)
         {
            if(this.activeObject.activateSpecialPower(this.each))
            {
               this.§7!H§ = true;
            }
         }
         else
         {
            this.§%!G§.§[!D§();
         }
         if(this.§9! §)
         {
            this.§9! §.§!F§(this.§&5§.§83§);
         }
      }
      
      public function §'!§() : void
      {
         this.§%!G§.§'!§();
      }
      
      public function §&^§() : void
      {
         this.§%!G§.§=^§();
      }
      
      public function §21§() : §+!-§
      {
         var _loc1_:§+!-§ = new §+!-§();
         _loc1_.§2!E§ = this.§0!-§.§2!E§;
         _loc1_.§6,§ = this.§0!-§.§6,§;
         this.§,i§.§'E§(_loc1_);
         this.§%!G§.§5!G§(_loc1_);
         this.§0>§.§=x§(_loc1_);
         _loc1_.theme = this.§,G§.§,0§();
         return _loc1_;
      }
      
      public function § R§() : int
      {
         return this.§0!-§.§6,§;
      }
      
      public function §=!?§() : int
      {
         return this.§0!-§.§2!E§;
      }
      
      public function §@H§(param1:int) : void
      {
         this.§0!-§.§6,§ = param1;
      }
      
      public function §7i§(param1:int) : void
      {
         this.§0!-§.§2!E§ = param1;
      }
      
      public function §;N§(param1:Number, param2:Number) : void
      {
         if(this.§9=§)
         {
            this.§9=§.§<@§(param1,param2);
         }
         if(this.§,i§)
         {
            this.§,i§.§6J§(0);
         }
      }
      
      public function get §&!=§() : §+!-§
      {
         return this.§0!-§;
      }
      
      public function get each() : §6q§
      {
         return this.§%!G§;
      }
      
      protected function get starling() : §3! §
      {
         return this.§?_§;
      }
      
      public function get §+N§() : int
      {
         return §]!B§;
      }
   }
}
