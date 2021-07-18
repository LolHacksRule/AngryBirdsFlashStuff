package §5!V§
{
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §"v§.§3!w§;
   import §"v§.§4^§;
   import §"v§.§9"§;
   import §"v§.§^H§;
   import §%c§.§=!X§;
   import §&"5§.§1!A§;
   import §&"5§.§3s§;
   import §&"5§.§7!P§;
   import §'@§.§^J§;
   import §+!o§.§<Y§;
   import §+!o§.§>G§;
   import §+!o§.§?"-§;
   import §+!o§.§]"5§;
   import §,I§.§7!K§;
   import §2!]§.§+!V§;
   import §2"=§.b2Vec2;
   import §3"5§.§5!q§;
   import §6p§.§?%§;
   import §9=§.§0!5§;
   import §9=§.§=!k§;
   import §;'§.§return§;
   import §=!#§.§`"=§;
   import §=!M§.§9!P§;
   import §>!E§.§>"!§;
   import §default§.DisplayObject;
   import §default§.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!w§
   {
      
      private static const §!!j§:int = 20;
      
      public static const §[!c§:Number = §=!X§.§^!N§;
      
      public static const §]!U§:Number = §=!X§.§5!P§;
      
      public static const §4!-§:Number = 1 / 20;
      
      public static const §+b§:Number = §=!X§.§5!P§ * §4!-§;
      
      public static const §'"§:Number = §[!c§ * §4!-§;
      
      public static const §!!l§:§^J§ = new §^J§(13 - 3);
      
      public static var §`"5§:Number = 1;
      
      protected static var §`!_§:String = §9"§.§4!§;
       
      
      protected var §&!^§:§?"-§;
      
      private var §?!j§:§]"5§;
      
      private var §1F§:Array = null;
      
      protected var §+!S§:§+!V§;
      
      public var §[g§:§4!#§;
      
      protected var §43§:§?!b§;
      
      protected var § Y§:§`"=§;
      
      protected var §&!3§:§[!6§;
      
      protected var §""4§:§-5§;
      
      public var mReadyToRun:Boolean = false;
      
      public var §9"=§:Boolean = false;
      
      protected var §["§:Boolean = false;
      
      protected var §#!4§:Boolean = false;
      
      public var §&Q§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §;!N§:Number;
      
      public var §," §:Number;
      
      private var §5N§:Number;
      
      public var §"!B§:§^H§;
      
      public var §3"9§:Boolean = false;
      
      private var §?!f§:§^!c§;
      
      private var §`!5§:Sprite;
      
      protected var §"!J§:§9"§;
      
      protected var §4"9§:§return§ = null;
      
      private var §?!w§:EventDispatcher;
      
      private var §-!1§:Array;
      
      private var §""#§:Array;
      
      protected var §2g§:§?%§;
      
      private var §#E§:§7!K§;
      
      protected var §2"!§:§7!P§;
      
      protected var §7!a§:§1!A§;
      
      private var §8G§:§3s§;
      
      private var §]!p§:§3s§;
      
      private var §,E§:§3s§;
      
      private var § "3§:Stage;
      
      private var §%!K§:§#k§;
      
      protected var §,"1§:§>"!§;
      
      protected var §8+§:§>"!§;
      
      protected var §0!?§:Number = 0.0;
      
      protected var §]" §:String;
      
      private var §+F§:Boolean;
      
      protected var §-!P§:Boolean;
      
      protected var §'g§:uint = 1.417339207E9;
      
      public var §>"+§:Boolean;
      
      public function §!w§(param1:Stage)
      {
         this.§""#§ = [];
         super();
         this.§?!w§ = new EventDispatcher();
         this.§"!B§ = new §^H§();
         this.§ "3§ = param1;
         this.§2"!§ = §7!P§.§2=§;
         this.§7!a§ = this.initAnimationManager(this.§2"!§);
         this.§8G§ = this.§;n§();
         this.§]!p§ = this.§'",§();
         this.§,E§ = this.§^w§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§2g§ = new §?%§(§^!c§,param1,new Rectangle(0,0,§=!X§.§^!N§,§=!X§.§5!P§),_loc2_);
         §=!X§.§9'§.addEventListener(Event.ENTER_FRAME,this.§2g§.onEnterFrame);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§6h§,false,0,true);
         this.§2g§.§6"§ = false;
         this.§2g§.enableErrorChecking = false;
         this.§2g§.§0P§ = 2;
         this.§2g§.§"!t§();
      }
      
      public static function §@H§(param1:§]"5§, param2:§]"5§) : Number
      {
         var _loc3_:Number = param1.§?k§ - param2.§?k§;
         var _loc4_:Number = param1.§2!V§ - param2.§2!V§;
         return §6_§(_loc3_,_loc4_);
      }
      
      public static function §6_§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§`!5§ && this.§+!=§)
         {
            this.§`!5§ = this.§?!f§.§&e§;
         }
         return this.§`!5§;
      }
      
      public function get §+!=§() : Sprite
      {
         if(!this.§?!f§)
         {
            this.§?!f§ = this.§2g§.§,x§ as §^!c§;
            this.§?!f§.§#!1§ = false;
         }
         return this.§?!f§;
      }
      
      private function get §-"3§() : DisplayObject
      {
         if(this.§+!=§)
         {
            return (this.§+!=§ as §^!c§).§-"3§;
         }
         return null;
      }
      
      public function get §<"%§() : §1!A§
      {
         return this.§7!a§;
      }
      
      public function get §7!J§() : §7!P§
      {
         return this.§2"!§;
      }
      
      public function get camera() : §`"=§
      {
         return this.§ Y§;
      }
      
      public function get objects() : §?"-§
      {
         return this.§&!^§;
      }
      
      public function get particles() : §-5§
      {
         return this.§""4§;
      }
      
      public function get background() : §+!V§
      {
         return this.§+!S§;
      }
      
      public function get slingshot() : §[!6§
      {
         return this.§&!3§;
      }
      
      public function get activeObject() : §]"5§
      {
         return this.§?!j§;
      }
      
      public function get borders() : §?!b§
      {
         return this.§43§;
      }
      
      public function get stage() : Stage
      {
         return this.§ "3§;
      }
      
      public function get §;!p§() : §3s§
      {
         return this.§,E§;
      }
      
      protected function get §9r§() : §3s§
      {
         return this.§8G§;
      }
      
      public function set activeObject(param1:§]"5§) : void
      {
         this.§?!j§ = param1;
      }
      
      public function set §6!R§(param1:Boolean) : void
      {
         this.§-!P§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§#E§)
         {
            this.§#E§.dispose();
         }
         if(this.§2"!§)
         {
            this.§2"!§.dispose();
         }
         if(this.§8G§ && this.§8G§.§7!J§)
         {
            this.§8G§.§7!J§.dispose();
         }
         if(this.§,E§ && this.§,E§.§7!J§)
         {
            this.§,E§.§7!J§.dispose();
         }
         if(this.§2g§)
         {
            this.§2g§.dispose();
         }
      }
      
      protected function §;n§() : §3s§
      {
         return null;
      }
      
      protected function §'",§() : §3s§
      {
         return null;
      }
      
      protected function §^w§() : §3s§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§7!P§) : §1!A§
      {
         return new §1!A§(param1);
      }
      
      public function §;p§(param1:Boolean) : void
      {
         if(§?%§.§%b§)
         {
            if(param1)
            {
               §?%§.§%b§.start();
            }
            else
            {
               §?%§.§%b§.stop();
               §?%§.§%b§.color = 0;
            }
         }
      }
      
      public function §'7§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function §5^§() : §return§
      {
         return this.§4"9§;
      }
      
      public function §]T§(param1:§return§) : void
      {
         if(this.§4"9§ != null)
         {
            this.§4"9§.removeEventListeners();
         }
         this.§4"9§ = param1;
         if(this.mReadyToRun)
         {
            this.§4"9§.addEventListeners();
         }
      }
      
      public function §=!n§() : §>"!§
      {
         return this.§,"1§;
      }
      
      public function §2!2§(param1:§7!K§, param2:Array, param3:Function) : void
      {
         this.§#E§ = param1;
         var _loc4_:int = this.§#E§.§9!a§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§2"!§.§@!@§(this.§#E§.§["=§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§?!w§.addEventListener(Event.INIT,param3);
            this.§""#§.push(param3);
         }
         if(this.§]h§(param2))
         {
            this.§?!q§();
         }
      }
      
      private function §]h§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§2"!§.§;"#§())
         {
            _loc2_ = this.§2"!§.§#!%§ / 1000;
            _loc3_ = this.§2"!§.§3!Q§ / 1000;
            §9!P§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.§@D§(param1);
            return true;
         }
         this.§-!1§ = param1.concat();
         return false;
      }
      
      private function §@D§(param1:Array) : void
      {
         this.§7!a§.§@D§(param1);
      }
      
      private function §6h§(param1:Event) : void
      {
         this.§2"!§.§;!2§();
         if(this.§9r§ && this.§9r§.§7!J§)
         {
            this.§9r§.§7!J§.§;!2§();
         }
         if(this.§;!p§ && this.§;!p§.§7!J§)
         {
            this.§;!p§.§7!J§.§;!2§();
         }
         if(this.§-!1§)
         {
            this.§]h§(this.§-!1§);
            this.§-!1§ = null;
            this.§?!q§();
         }
         if(this.§4"9§ != null && this.mReadyToRun)
         {
            this.§4"9§.addEventListeners();
         }
         if(this.§8G§)
         {
            this.§8G§.§;"#§();
         }
         if(this.§,E§)
         {
            if(this.§,E§.§7!J§)
            {
               this.§,E§.§7!J§.§;!2§();
               this.§,E§.§;"#§();
            }
         }
      }
      
      private function §?!q§() : void
      {
         this.§?!w§.dispatchEvent(new Event(Event.INIT));
         this.§=+§();
      }
      
      private function §=+§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§""#§)
         {
            this.§?!w§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§""#§ = [];
      }
      
      public function init(param1:§9"§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§43§ = new §?!b§(this,param1);
         this.§ Y§ = this.initLevelCamera(param1);
         this.§;!N§ = 0;
         this.§," § = 0;
         this.§5N§ = 0;
         this.§+F§ = false;
         this.mReadyToRun = false;
         this.§9"=§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         §`!_§ = param1.theme;
         this.§"!J§ = param1;
         this.§["§ = this.§[T§(param1.theme);
         this.§#!4§ = this.§=!C§(param1.theme);
         if(this.§["§ && this.§#!4§)
         {
            this.initialize(param1);
         }
         else
         {
            this.§@-§(param1.theme);
         }
         this.§+V§();
         §]"%§.init();
      }
      
      protected function §+V§() : void
      {
         this.§,"1§ = new §>"!§(§3!w§.§%n§);
      }
      
      protected function §[T§(param1:String) : Boolean
      {
         if(this.§8G§)
         {
            return false;
         }
         return true;
      }
      
      protected function §=!C§(param1:String) : Boolean
      {
         var _loc2_:§=!k§ = null;
         if(this.§]!p§)
         {
            _loc2_ = §0!5§.§;l§(param1);
            if(_loc2_)
            {
               if(_loc2_.§=5§ && !this.§]!p§.§,!Z§(_loc2_.§=5§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §@-§(param1:String) : void
      {
         var _loc2_:§=!k§ = null;
         if(this.§8G§ && !this.§[T§(param1))
         {
            this.§8G§.removeEventListener(Event.COMPLETE,this.§%!s§);
            this.§8G§.removeEventListener(Event.CANCEL,this.§=!U§);
            this.§8G§.addEventListener(Event.COMPLETE,this.§%!s§);
            this.§8G§.addEventListener(Event.CANCEL,this.§=!U§);
            this.§8G§.§"f§(param1);
         }
         if(this.§]!p§ && !this.§=!C§(param1))
         {
            this.§]!p§.removeEventListener(Event.COMPLETE,this.§7w§);
            this.§]!p§.removeEventListener(Event.CANCEL,this.§`!D§);
            this.§]!p§.addEventListener(Event.COMPLETE,this.§7w§);
            this.§]!p§.addEventListener(Event.CANCEL,this.§`!D§);
            _loc2_ = §0!5§.§;l§(param1);
            if(_loc2_)
            {
               this.§]!p§.§"f§(_loc2_.§=5§);
            }
         }
      }
      
      private function §%!s§(param1:Event) : void
      {
         this.§8G§.removeEventListener(Event.COMPLETE,this.§%!s§);
         this.§8G§.removeEventListener(Event.CANCEL,this.§=!U§);
         this.§["§ = true;
         if(this.§["§ && this.§#!4§)
         {
            this.initialize(this.§"!J§);
         }
      }
      
      private function §=!U§(param1:Event) : void
      {
         this.§8G§.removeEventListener(Event.COMPLETE,this.§%!s§);
         this.§8G§.removeEventListener(Event.CANCEL,this.§=!U§);
         this.§9"=§ = true;
      }
      
      private function §7w§(param1:Event) : void
      {
         this.§8G§.removeEventListener(Event.COMPLETE,this.§7w§);
         this.§8G§.removeEventListener(Event.CANCEL,this.§`!D§);
         this.§#!4§ = true;
         if(this.§["§ && this.§#!4§)
         {
            this.initialize(this.§"!J§);
         }
      }
      
      private function §`!D§(param1:Event) : void
      {
         this.§8G§.removeEventListener(Event.COMPLETE,this.§7w§);
         this.§8G§.removeEventListener(Event.CANCEL,this.§`!D§);
         this.§#!4§ = true;
         if(this.§["§ && this.§#!4§)
         {
            this.initialize(this.§"!J§);
         }
      }
      
      public function get §]@§() : §7!P§
      {
         return this.§2"!§;
      }
      
      protected function initialize(param1:§9"§) : void
      {
         this.§-!P§ = false;
         this.§>"+§ = false;
         if(§?%§.§",§)
         {
            §?%§.§",§.speed = 1;
         }
         this.§[g§ = new §4!#§(this);
         this.§+!S§ = this.§,!-§(param1.theme,this.§43§.mBorderGround_B2 / §4!-§,this.§]@§,this.§ Y§.§[!f§());
         this.§+!S§.§]D§(§=!X§.§5$§());
         this.§&!^§ = this.initLevelObjectManager(param1);
         this.§&!3§ = this.§-!t§(param1);
         this.§""4§ = this.§!!W§(this.§7!a§,this.§2"!§);
         this.§ Y§.init();
         this.§'! §();
         this.§%K§();
         this.mReadyToRun = true;
         if(this.§4"9§)
         {
            this.§4"9§.addEventListeners();
         }
      }
      
      protected function §%K§() : void
      {
         if(this.§]" §)
         {
            this.§8+§ = §>"!§.initialize(this.§]" §);
            this.§8+§.speed = 1;
            this.§8+§.play();
            this.§0!?§ = -1000;
            this.§]" § = null;
         }
      }
      
      public function §^!K§(param1:String) : void
      {
         this.§]" § = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§8+§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§8+§)
         {
            if(param1)
            {
               this.§8+§.speed = Math.min(this.§8+§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§8+§.speed = Math.max(this.§8+§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§8+§)
         {
            this.§8+§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§9"§) : §?"-§
      {
         return new §?"-§(this,param1,new Sprite());
      }
      
      protected function initLevelCamera(param1:§9"§) : §`"=§
      {
         return new §`"=§(this,param1);
      }
      
      protected function §,!-§(param1:String, param2:Number, param3:§7!P§, param4:Number) : §+!V§
      {
         return new §+!V§(param1,param2,param3,param4);
      }
      
      protected function §-!t§(param1:§9"§) : §[!6§
      {
         return new §[!6§(this,param1,new Sprite());
      }
      
      protected function §!!W§(param1:§1!A§, param2:§7!P§) : §-5§
      {
         return new §-5§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§9"§ = this.§+"#§();
         var _loc4_:§4^§;
         (_loc4_ = new §4^§()).left = 0;
         _loc4_.top = -§`"=§.SCREEN_HEIGHT_B2 / 10 * 8;
         _loc4_.bottom = _loc4_.top + §`"=§.SCREEN_HEIGHT_B2;
         _loc4_.right = _loc4_.left + §`"=§.SCREEN_WIDTH_B2;
         _loc4_.y = -13.929;
         _loc4_.x = §`"=§.SCREEN_WIDTH_B2;
         _loc4_.id = §`"=§.CAMERA_ID_SLINGSHOT;
         _loc3_.§="8§(_loc4_);
         var _loc5_:§4^§;
         (_loc5_ = new §4^§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + §`"=§.SCREEN_WIDTH_B2;
         _loc5_.bottom = _loc5_.top + §`"=§.SCREEN_HEIGHT_B2;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + §`"=§.SCREEN_WIDTH_B2 / 2;
         _loc5_.id = §`"=§.CAMERA_ID_CASTLE;
         _loc3_.§="8§(_loc5_);
         this.§!§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§`!_§ != null)
         {
            _loc3_.theme = §`!_§;
         }
         this.init(_loc3_);
      }
      
      protected function §!§(param1:§9"§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§2'§(param1);
         }
      }
      
      protected function §+"#§() : §9"§
      {
         var _loc1_:§9"§ = new §9"§();
         _loc1_.§'!`§ = -12;
         return new §9"§();
      }
      
      protected function §`3§() : Number
      {
         this.§'g§ ^= this.§'g§ << 21;
         this.§'g§ ^= this.§'g§ >>> 35;
         this.§'g§ ^= this.§'g§ << 4;
         return this.§'g§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §2'§(param1:§9"§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§5!q§ = null;
         this.§'g§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§`3§() * 5;
               (_loc5_ = new §5!q§()).x = 30 + _loc3_ * 10 + this.§`3§() * 9;
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
                  _loc5_.angle = 45 - this.§`3§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§`3§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§`3§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §-!M§() : void
      {
      }
      
      public function §'! §() : void
      {
         if(§+!V§.§6`§)
         {
            this.§^";§(this.§+!S§.§&!Z§,false);
         }
         this.§^";§(this.§""4§.§[O§(§-5§.§@T§),false);
         this.§^";§(this.§""4§.§[O§(§-5§.§&b§),true);
         this.§^";§(this.§""4§.§[O§(§-5§.§<!W§),true);
         this.§^";§(this.§&!^§.§9!X§,true);
         this.§^";§(this.§&!3§.sprite,true);
         this.§^";§(this.§""4§.§[O§(§-5§.§5Q§),true);
         this.§^";§(this.§+!S§.§@!%§,false);
         if(§+!V§.§6`§)
         {
            this.§^";§(this.§+!S§.§1V§,false);
         }
         this.§^";§(this.§""4§.§[O§(§-5§.§@S§),true);
      }
      
      private function §^";§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §=!X§.§@"6§;
         param2 /= §=!X§.§@"6§;
         _loc3_.x = (param1 / §`"=§.§;!0§ + this.§ Y§.§74§ - §`"=§.§9!e§ / §`"=§.§;!0§) * §4!-§;
         _loc3_.y = (param2 / §`"=§.§;!0§ + this.§ Y§.§1!o§ - §`"=§.§^Z§ / §`"=§.§;!0§) * §4!-§;
         return _loc3_;
      }
      
      public function §&g§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §4!-§ + §`"=§.§9!e§ / §`"=§.§;!0§ - this.§ Y§.§74§) * §`"=§.§;!0§;
         _loc3_.y = (param2 / §4!-§ + §`"=§.§^Z§ / §`"=§.§;!0§ - this.§ Y§.§1!o§) * §`"=§.§;!0§;
         var _loc4_:Number = Math.max(§=!X§.§@"6§,§=!X§.§ !4§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §8!h§(param1:String, param2:Number, param3:Number) : void
      {
         this.§&!^§.addObject(param1,param2,param3);
      }
      
      public function §==§() : void
      {
         if(this.§-"3§)
         {
            this.§-"3§.visible = true;
            this.§-"3§.alpha = 0;
         }
         this.§&Q§ = 0;
      }
      
      public function §@";§() : void
      {
         this.§%!K§ = new §#k§(§8^§.§!!6§,§8^§.§1A§);
      }
      
      public function §8!y§() : void
      {
         this.§%!K§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§+!S§)
         {
            this.§+!S§.dispose();
            this.§+!S§ = null;
         }
         if(this.§&!^§)
         {
            this.§&!^§.dispose();
            this.§&!^§ = null;
            this.§?!j§ = null;
         }
         if(this.§[g§)
         {
            if(!this.§[g§.§>!F§)
            {
            }
            this.§[g§.clear();
            this.§[g§ = null;
         }
         if(this.§43§)
         {
            this.§43§.clear();
            this.§43§ = null;
         }
         if(this.§&!3§)
         {
            this.§&!3§.dispose();
            this.§&!3§ = null;
         }
         if(this.§ Y§)
         {
            this.§ Y§.clear();
            this.§ Y§ = null;
         }
         if(this.§""4§)
         {
            this.§""4§.dispose();
            this.§""4§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§;!N§ = 0;
         this.§," § = 0;
         this.mReadyToRun = false;
         this.§+F§ = false;
         this.§&Q§ = §8^§.§8!Y§;
         if(this.§+!=§)
         {
            (this.§+!=§ as §^!c§).§8<§.x = 0;
            (this.§+!=§ as §^!c§).§8<§.y = 0;
         }
         if(this.§-"3§)
         {
            this.§-"3§.visible = false;
         }
         this.§8+§ = null;
         this.§,"1§ = null;
         if(this.§8G§)
         {
            this.§8G§.removeEventListener(Event.COMPLETE,this.§%!s§);
            this.§8G§.removeEventListener(Event.CANCEL,this.§=!U§);
         }
         if(this.§]!p§)
         {
            this.§]!p§.removeEventListener(Event.COMPLETE,this.§7w§);
            this.§]!p§.removeEventListener(Event.CANCEL,this.§`!D§);
         }
         this.§=+§();
         if(§?%§.§%b§)
         {
            §?%§.§%b§.color = 0;
         }
         if(this.§4"9§)
         {
            this.§4"9§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §-J§() : String
      {
         if(this.§,"1§)
         {
            return this.§,"1§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§?%§.§]p§())
         {
            return 0;
         }
         if(this.§8+§ && this.§8+§.§if §)
         {
            return this.§+!C§(param1,param2,param3);
         }
         return this.§+#§(param1,true,param2,param3);
      }
      
      protected function §+#§(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§-!P§)
         {
            param1 *= 0.2;
            if(§?%§.§",§)
            {
               §?%§.§",§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§," § += param1;
         if(param3)
         {
            this.§;!N§ += param1;
            _loc5_ = this.§[g§.§true §(this.§;!N§);
            this.§&!3§.update(param1,param4);
            this.§;!N§ = _loc5_;
         }
         else
         {
            this.§&!^§.§5J§(param1);
            this.§;!N§ = 0;
         }
         if(param2)
         {
            this.§+J§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §+!C§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §4!#§.§#!-§ * 1000;
         if(this.§8+§)
         {
            param1 *= this.§8+§.speed;
            _loc5_ = this.§," § + param1;
            while(this.§," § + _loc4_ < _loc5_)
            {
               if(this.§," § + _loc4_ > this.§0!?§)
               {
                  this.§8+§.step(this);
                  this.§0!?§ += _loc4_;
               }
               this.§+#§(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§0!?§ + _loc4_)
            {
               this.§8+§.step(this);
               this.§0!?§ += _loc4_;
            }
            if(this.§," § < _loc5_)
            {
               this.§+#§(_loc5_ - this.§," §,true,param2,param3);
            }
            return param1;
         }
         return this.§+#§(_loc4_,true,param2,param3);
      }
      
      private function §+J§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§+!S§.update(param1);
         this.§&!^§.§?!%§(param1,param2);
         this.§while§();
         if(this.§&Q§ < §8^§.§8!Y§)
         {
            this.§&Q§ += param1;
            _loc3_ = §8^§.§8!Y§ / 2;
            _loc4_ = (-Math.abs(this.§&Q§ - _loc3_) + _loc3_) * (§8^§.§1!U§ / _loc3_);
            if(this.§-"3§)
            {
               this.§-"3§.alpha = _loc4_;
            }
         }
         else if(this.§-"3§)
         {
            this.§-"3§.visible = false;
         }
         if(this.§%!K§)
         {
            if(!this.§%!K§.§=#§(this.§ Y§,param1))
            {
               this.§8!y§();
            }
         }
         this.§ Y§.updateCamera(param1);
         this.§[g§.§#"5§();
         this.§""4§.update(param1);
      }
      
      public function §?">§(param1:Number) : void
      {
         this.objects.§5J§(param1 * 1000);
         this.objects.§,1§(param1 * 1000);
         this.§7"?§();
      }
      
      public function §while§() : void
      {
         var _loc1_:§]"5§ = null;
         if(this.§," § > this.§5N§ + 1000 / 30)
         {
            if(this.§1F§ != null)
            {
               for each(_loc1_ in this.§1F§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§5N§ = this.§," §;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§]"5§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§&!^§.isPigsAlive(true))
            {
               _loc2_ = this.§&!^§.§2!e§(true);
               _loc2_.§[!g§.mTryToScream = §<Y§.§^!7§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§&!^§.getPigCount());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§&!^§.isPigsAlive(true))
            {
               _loc2_ = this.§&!^§.§2!e§(true);
               _loc2_.§[!g§.mTryToBlink = §<Y§.§?!§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§&!^§.getPigCount());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §&!>§.§-]§;
         }
         §]"%§.addScore(param1,param2);
         this.§4"9§.addScore(param1);
         if(param3 && param1 > 0 && !this.§>"+§)
         {
            this.§ '§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function § '§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §&!>§.§8"+§;
         }
         this.§""4§.§[b§(§&!>§.§^"%§,§-5§.§@S§,§&!>§.§,"+§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §;O§(param1:§]"5§) : void
      {
         if(this.§1F§ == null)
         {
            this.§1F§ = new Array();
         }
         this.§1F§.push(param1);
      }
      
      public function §1!@§() : void
      {
         this.§&!3§.§1!@§();
         this.§&!^§.§?3§();
         this.§>"+§ = true;
      }
      
      public function §5!H§(param1:§]"5§) : void
      {
         this.§""4§.§'!F§(§-5§.§@T§);
         if(this.§1F§.indexOf(param1) >= 0)
         {
            this.§1F§.splice(this.§1F§.indexOf(param1),1);
         }
         if(this.§1F§.length == 0)
         {
            this.§1F§ = null;
         }
      }
      
      public function §3"%§(param1:§>n§, param2:Number, param3:Number) : void
      {
         this.§?!j§ = this.§&!^§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§[!6§.§`!W§) : Number(§[!6§.§]![§);
         if(param1.§<"$§ > 1)
         {
            this.§?!j§.§;!t§(param1.§<"$§);
            this.§?!j§.§[!g§.§!!7§();
         }
         if(param1.§[1§ != 0)
         {
            _loc4_ = param1.§[1§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§?!j§.§ !K§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§<a§(§`"=§.§=%§);
         if(this.§,"1§)
         {
            this.§,"1§.§3"%§(this.§[g§.§?!Z§,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§+F§ = true;
      }
      
      private function §7"?§() : void
      {
         if(!this.§+F§)
         {
            return;
         }
         this.§+F§ = false;
         if(this.activeObject is §>G§ && !(this.activeObject as §>G§).§6S§)
         {
            if(this.activeObject.activateSpecialPower(this.§1!V§))
            {
               this.§3"9§ = true;
            }
         }
         else
         {
            this.§&!^§.§71§();
         }
         if(this.§,"1§)
         {
            this.§,"1§.§7!j§(this.§[g§.§?!Z§);
         }
      }
      
      public function §+j§() : void
      {
         this.§&!^§.§+j§();
      }
      
      public function §3O§() : void
      {
         this.§&!^§.§5!F§();
      }
      
      public function §49§() : §9"§
      {
         var _loc1_:§9"§ = new §9"§();
         _loc1_.mScoreGold = this.§"!J§.mScoreGold;
         _loc1_.mScoreSilver = this.§"!J§.mScoreSilver;
         this.§ Y§.writeCameraInformation(_loc1_);
         this.§&!^§.writeObjectInformation(_loc1_);
         this.§&!3§.writeSlingshotInformation(_loc1_);
         _loc1_.theme = this.§+!S§.getCurrentThemeName();
         return _loc1_;
      }
      
      public function §]#§() : int
      {
         return this.§"!J§.mScoreSilver;
      }
      
      public function §?@§() : int
      {
         return this.§"!J§.mScoreGold;
      }
      
      public function §>f§(param1:int) : void
      {
         this.§"!J§.mScoreSilver = param1;
      }
      
      public function §[!j§(param1:int) : void
      {
         this.§"!J§.mScoreGold = param1;
      }
      
      public function §=V§(param1:Number, param2:Number) : void
      {
         if(this.§?!f§)
         {
            this.§?!f§.§""5§(param1,param2);
         }
         if(this.§ Y§)
         {
            this.§ Y§.updateCamera(0);
         }
      }
      
      public function get §]3§() : §9"§
      {
         return this.§"!J§;
      }
      
      public function get §1!V§() : §?"-§
      {
         return this.§&!^§;
      }
      
      protected function get §#" §() : §?%§
      {
         return this.§2g§;
      }
      
      public function get §#6§() : int
      {
         return §!!j§;
      }
   }
}
