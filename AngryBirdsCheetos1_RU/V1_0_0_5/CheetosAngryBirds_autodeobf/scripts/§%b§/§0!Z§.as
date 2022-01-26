package §%b§
{
   import §!%§.§1m§;
   import §!4§.§=!Z§;
   import §"C§.§'!+§;
   import §"C§.§7s§;
   import §"C§.§?w§;
   import §"C§.§]y§;
   import §'d§.§3>§;
   import §+,§.b2Vec2;
   import §0C§.§"!T§;
   import §0C§.§+!Y§;
   import §0C§.§;!Q§;
   import §0C§.§<c§;
   import §98§.§;m§;
   import §98§.§=!F§;
   import §<[§.§+A§;
   import §>!]§.§3Y§;
   import §>V§.§8O§;
   import §@!§.§0f§;
   import §@!§.§;"§;
   import §@!§.§?! §;
   import §@I§.§"N§;
   import §[!Q§.§ true§;
   import §[2§.§"S§;
   import §]!J§.§[Z§;
   import §]!J§.§`!^§;
   import §]_§.§!F§;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import §null §.DisplayObject;
   import §null §.Sprite;
   
   public class §0!Z§
   {
      
      private static const §=n§:int = 20;
      
      public static const §9M§:Number = §3>§.§'R§;
      
      public static const §7^§:Number = §3>§.§'Z§;
      
      public static const §+n§:Number = 1 / 20;
      
      public static const §;!6§:Number = §3>§.§'Z§ * §+n§;
      
      public static const §0,§:Number = §9M§ * §+n§;
      
      public static const §76§:§1m§ = new §1m§(13 - 3);
      
      protected static var § !4§:String = §;!Q§.§+S§;
       
      
      protected var §@Y§:§7s§;
      
      private var §]! §:§?w§;
      
      private var § b§:Array = null;
      
      protected var §"6§:§+A§;
      
      public var mLevelEngine:§-o§;
      
      protected var §<p§:§,_§;
      
      protected var §%!3§:§ true§;
      
      protected var §,!#§:§=!!§;
      
      protected var §,9§:§;m§;
      
      public var mReadyToRun:Boolean = false;
      
      public var § X§:Boolean = false;
      
      protected var §6-§:Boolean = false;
      
      protected var §;1§:Boolean = false;
      
      public var §`!D§:Number = 1500;
      
      private var mPigsAnimationTimer1:Number;
      
      private var mPigsAnimationTimer2:Number;
      
      public var §`F§:Number;
      
      public var §%!@§:Number;
      
      private var §0!!§:Number;
      
      public var §=!=§:§<c§;
      
      public var §'!Z§:Boolean = false;
      
      private var §else §:§6_§;
      
      private var §^!+§:Sprite;
      
      protected var §&[§:§;!Q§;
      
      protected var § !D§:§3Y§ = null;
      
      private var §>0§:EventDispatcher;
      
      private var §?!K§:Array;
      
      private var §'t§:Array;
      
      protected var §>F§:§!F§;
      
      private var §^E§:§8O§;
      
      protected var §`r§:§?! §;
      
      protected var §finally§:§;"§;
      
      private var §;!G§:§0f§;
      
      private var §!!=§:§0f§;
      
      private var §"0§:§0f§;
      
      private var §%V§:Stage;
      
      private var §%!>§:§=a§;
      
      protected var §7!%§:§"S§;
      
      protected var §5f§:§"S§;
      
      protected var §4!Q§:Number = 0.0;
      
      protected var §#!3§:String;
      
      private var §#x§:Boolean;
      
      protected var §^=§:Boolean;
      
      protected var §'r§:uint = 1.417339207E9;
      
      public var §44§:Boolean;
      
      public function §0!Z§(param1:Stage)
      {
         this.§'t§ = [];
         super();
         this.§>0§ = new EventDispatcher();
         this.§=!=§ = new §<c§();
         this.§%V§ = param1;
         this.§`r§ = §?! §.§,§;
         this.§finally§ = this.initAnimationManager(this.§`r§);
         this.§;!G§ = this.§-!0§();
         this.§!!=§ = this.§1`§();
         this.§"0§ = this.§<6§();
         var _loc2_:Stage3D = param1.stage3Ds[0];
         this.§>F§ = new §!F§(§6_§,param1,new Rectangle(0,0,§3>§.§'R§,§3>§.§'Z§),_loc2_);
         §3>§.§9!L§.addEventListener(Event.ENTER_FRAME,this.§>F§.§!!^§);
         _loc2_.addEventListener(Event.CONTEXT3D_CREATE,this.§?6§,false,0,true);
         this.§>F§.§0;§ = false;
         this.§>F§.enableErrorChecking = false;
         this.§>F§.§;§ = 2;
         this.§>F§.§1!8§();
      }
      
      public static function §0o§(param1:§?w§, param2:§?w§) : Number
      {
         var _loc3_:Number = param1.§"!Z§ - param2.§"!Z§;
         var _loc4_:Number = param1.§]!=§ - param2.§]!=§;
         return §3!U§(_loc3_,_loc4_);
      }
      
      public static function §3!U§(param1:Number, param2:Number) : Number
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public function get sprite() : Sprite
      {
         if(!this.§^!+§ && this.§'D§)
         {
            this.§^!+§ = this.§else §.§<g§;
         }
         return this.§^!+§;
      }
      
      public function get §'D§() : Sprite
      {
         if(!this.§else §)
         {
            this.§else § = this.§>F§.§?,§ as §6_§;
            this.§else §.§[;§ = false;
         }
         return this.§else §;
      }
      
      private function get §5!C§() : DisplayObject
      {
         if(this.§'D§)
         {
            return (this.§'D§ as §6_§).§5!C§;
         }
         return null;
      }
      
      public function get §%!P§() : §;"§
      {
         return this.§finally§;
      }
      
      public function get §>A§() : §?! §
      {
         return this.§`r§;
      }
      
      public function get camera() : § true§
      {
         return this.§%!3§;
      }
      
      public function get objects() : §7s§
      {
         return this.§@Y§;
      }
      
      public function get particles() : §;m§
      {
         return this.§,9§;
      }
      
      public function get background() : §+A§
      {
         return this.§"6§;
      }
      
      public function get slingshot() : §=!!§
      {
         return this.§,!#§;
      }
      
      public function get activeObject() : §?w§
      {
         return this.§]! §;
      }
      
      public function get §break§() : §,_§
      {
         return this.§<p§;
      }
      
      public function get stage() : Stage
      {
         return this.§%V§;
      }
      
      public function get §!!§() : §0f§
      {
         return this.§"0§;
      }
      
      protected function get §'!2§() : §0f§
      {
         return this.§;!G§;
      }
      
      public function set activeObject(param1:§?w§) : void
      {
         this.§]! § = param1;
      }
      
      public function set §+=§(param1:Boolean) : void
      {
         this.§^=§ = param1;
      }
      
      public function clear() : void
      {
         if(this.§^E§)
         {
            this.§^E§.dispose();
         }
         if(this.§`r§)
         {
            this.§`r§.dispose();
         }
         if(this.§;!G§ && this.§;!G§.§>A§)
         {
            this.§;!G§.§>A§.dispose();
         }
         if(this.§"0§ && this.§"0§.§>A§)
         {
            this.§"0§.§>A§.dispose();
         }
         if(this.§>F§)
         {
            this.§>F§.dispose();
         }
      }
      
      protected function §-!0§() : §0f§
      {
         return null;
      }
      
      protected function §1`§() : §0f§
      {
         return null;
      }
      
      protected function §<6§() : §0f§
      {
         return null;
      }
      
      protected function initAnimationManager(param1:§?! §) : §;"§
      {
         return new §;"§(param1);
      }
      
      public function §8M§(param1:Boolean) : void
      {
         if(§!F§.§[M§)
         {
            if(param1)
            {
               §!F§.§[M§.start();
            }
            else
            {
               §!F§.§[M§.stop();
               §!F§.§[M§.color = 0;
            }
         }
      }
      
      public function §&f§(param1:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.visible = param1;
         }
      }
      
      public function § !G§(param1:§3Y§) : void
      {
         if(this.§ !D§ != null)
         {
            this.§ !D§.removeEventListeners();
         }
         this.§ !D§ = param1;
         if(this.mReadyToRun)
         {
            this.§ !D§.addEventListeners();
         }
      }
      
      public function §#!H§() : §"S§
      {
         return this.§7!%§;
      }
      
      public function §,4§(param1:§8O§, param2:Array, param3:Function) : void
      {
         this.§^E§ = param1;
         var _loc4_:int = this.§^E§.§9!M§;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            this.§`r§.§4T§(this.§^E§.§##§(_loc5_));
            _loc5_++;
         }
         if(param3 != null)
         {
            this.§>0§.addEventListener(Event.INIT,param3);
            this.§'t§.push(param3);
         }
         if(this.§1n§(param2))
         {
            this.§`![§();
         }
      }
      
      private function §1n§(param1:Array) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.§`r§.§8X§())
         {
            _loc2_ = this.§`r§.§ g§ / 1000;
            _loc3_ = this.§`r§.§<1§ / 1000;
            §=!Z§.log("\n\nMain texture manager memory usage:\n   textures " + _loc2_ + " kilobytes\n   bitmaps " + _loc3_ + " kilobytes\n\n");
            this.initializeAnimations(param1);
            return true;
         }
         this.§?!K§ = param1.concat();
         return false;
      }
      
      private function initializeAnimations(param1:Array) : void
      {
         this.§finally§.initializeAnimations(param1);
      }
      
      private function §?6§(param1:Event) : void
      {
         this.§`r§.§59§();
         if(this.§'!2§ && this.§'!2§.§>A§)
         {
            this.§'!2§.§>A§.§59§();
         }
         if(this.§!!§ && this.§!!§.§>A§)
         {
            this.§!!§.§>A§.§59§();
         }
         if(this.§?!K§)
         {
            this.§1n§(this.§?!K§);
            this.§?!K§ = null;
            this.§`![§();
         }
         if(this.§ !D§ != null && this.mReadyToRun)
         {
            this.§ !D§.addEventListeners();
         }
         if(this.§;!G§)
         {
            this.§;!G§.§8X§();
         }
         if(this.§"0§)
         {
            if(this.§"0§.§>A§)
            {
               this.§"0§.§>A§.§59§();
               this.§"0§.§8X§();
            }
         }
      }
      
      private function §`![§() : void
      {
         this.§>0§.dispatchEvent(new Event(Event.INIT));
         this.§<i§();
      }
      
      private function §<i§() : void
      {
         var _loc1_:Function = null;
         for each(_loc1_ in this.§'t§)
         {
            this.§>0§.removeEventListener(Event.INIT,_loc1_);
         }
         this.§'t§ = [];
      }
      
      public function init(param1:§;!Q§) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         this.§<p§ = new §,_§(this,param1);
         this.§%!3§ = this.§#!>§(param1);
         this.§`F§ = 0;
         this.§%!@§ = 0;
         this.§0!!§ = 0;
         this.§#x§ = false;
         this.mReadyToRun = false;
         this.§ X§ = false;
         this.mPigsAnimationTimer1 = 2000;
         this.mPigsAnimationTimer2 = 1000;
         § !4§ = param1.theme;
         this.§&[§ = param1;
         this.§6-§ = this.§!I§(param1.theme);
         this.§;1§ = this.§7t§(param1.theme);
         if(this.§6-§ && this.§;1§)
         {
            this.§]!^§(param1);
         }
         else
         {
            this.§`!1§(param1.theme);
         }
         this.initReplay();
         §?0§.init();
      }
      
      protected function initReplay() : void
      {
         this.§7!%§ = new §"S§(§"!T§.§-Q§);
      }
      
      protected function §!I§(param1:String) : Boolean
      {
         if(this.§;!G§)
         {
            return false;
         }
         return true;
      }
      
      protected function §7t§(param1:String) : Boolean
      {
         var _loc2_:§[Z§ = null;
         if(this.§!!=§)
         {
            _loc2_ = §`!^§.§ !?§(param1);
            if(_loc2_)
            {
               if(_loc2_.§6!M§ && !this.§!!=§.§'!J§(_loc2_.§6!M§))
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      protected function §`!1§(param1:String) : void
      {
         var _loc2_:§[Z§ = null;
         if(this.§;!G§ && !this.§!I§(param1))
         {
            this.§;!G§.removeEventListener(Event.COMPLETE,this.§%!,§);
            this.§;!G§.removeEventListener(Event.CANCEL,this.§>!7§);
            this.§;!G§.addEventListener(Event.COMPLETE,this.§%!,§);
            this.§;!G§.addEventListener(Event.CANCEL,this.§>!7§);
            this.§;!G§.§?!Q§(param1);
         }
         if(this.§!!=§ && !this.§7t§(param1))
         {
            this.§!!=§.removeEventListener(Event.COMPLETE,this.§@c§);
            this.§!!=§.removeEventListener(Event.CANCEL,this.§4S§);
            this.§!!=§.addEventListener(Event.COMPLETE,this.§@c§);
            this.§!!=§.addEventListener(Event.CANCEL,this.§4S§);
            _loc2_ = §`!^§.§ !?§(param1);
            if(_loc2_)
            {
               this.§!!=§.§?!Q§(_loc2_.§6!M§);
            }
         }
      }
      
      private function §%!,§(param1:Event) : void
      {
         this.§;!G§.removeEventListener(Event.COMPLETE,this.§%!,§);
         this.§;!G§.removeEventListener(Event.CANCEL,this.§>!7§);
         this.§6-§ = true;
         if(this.§6-§ && this.§;1§)
         {
            this.§]!^§(this.§&[§);
         }
      }
      
      private function §>!7§(param1:Event) : void
      {
         this.§;!G§.removeEventListener(Event.COMPLETE,this.§%!,§);
         this.§;!G§.removeEventListener(Event.CANCEL,this.§>!7§);
         this.§ X§ = true;
      }
      
      private function §@c§(param1:Event) : void
      {
         this.§;!G§.removeEventListener(Event.COMPLETE,this.§@c§);
         this.§;!G§.removeEventListener(Event.CANCEL,this.§4S§);
         this.§;1§ = true;
         if(this.§6-§ && this.§;1§)
         {
            this.§]!^§(this.§&[§);
         }
      }
      
      private function §4S§(param1:Event) : void
      {
         this.§;!G§.removeEventListener(Event.COMPLETE,this.§@c§);
         this.§;!G§.removeEventListener(Event.CANCEL,this.§4S§);
         this.§;1§ = true;
         if(this.§6-§ && this.§;1§)
         {
            this.§]!^§(this.§&[§);
         }
      }
      
      public function get §@5§() : §?! §
      {
         return this.§`r§;
      }
      
      protected function §]!^§(param1:§;!Q§) : void
      {
         this.§^=§ = false;
         this.§44§ = false;
         if(§!F§.§5!H§)
         {
            §!F§.§5!H§.speed = 1;
         }
         this.mLevelEngine = new §-o§(this);
         this.§"6§ = this.§1!#§(param1.theme,this.§<p§.§!!%§ / §+n§,this.§@5§,this.§%!3§.§0s§());
         this.§"6§.§2!_§(§3>§.§?!G§());
         this.§@Y§ = this.initLevelObjectManager(param1);
         this.§,!#§ = this.initLevelSlingshot(param1);
         this.§,9§ = this.§+!A§(this.§finally§,this.§`r§);
         this.§%!3§.init();
         this.§>r§();
         this.loadPreviousReplayData();
         this.mReadyToRun = true;
         if(this.§ !D§)
         {
            this.§ !D§.addEventListeners();
         }
      }
      
      protected function loadPreviousReplayData() : void
      {
         if(this.§#!3§)
         {
            this.§5f§ = §"S§.§]!^§(this.§#!3§);
            this.§5f§.speed = 1;
            this.§5f§.play();
            this.§4!Q§ = -1000;
            this.§#!3§ = null;
         }
      }
      
      public function §3j§(param1:String) : void
      {
         this.§#!3§ = param1;
      }
      
      public function isPlayingReplay() : Boolean
      {
         return this.§5f§ != null;
      }
      
      public function changeReplaySpeed(param1:Boolean) : void
      {
         if(this.§5f§)
         {
            if(param1)
            {
               this.§5f§.speed = Math.min(this.§5f§.speed * 1.25,Math.pow(1.25,2));
            }
            else
            {
               this.§5f§.speed = Math.max(this.§5f§.speed / 1.25,Math.pow(1 / 1.25,10));
            }
         }
      }
      
      public function resetReplaySpeed() : void
      {
         if(this.§5f§)
         {
            this.§5f§.speed = 1;
         }
      }
      
      protected function initLevelObjectManager(param1:§;!Q§) : §7s§
      {
         return new §7s§(this,param1,new Sprite());
      }
      
      protected function §#!>§(param1:§;!Q§) : § true§
      {
         return new § true§(this,param1);
      }
      
      protected function §1!#§(param1:String, param2:Number, param3:§?! §, param4:Number) : §+A§
      {
         return new §+A§(param1,param2,param3,param4);
      }
      
      protected function initLevelSlingshot(param1:§;!Q§) : §=!!§
      {
         return new §=!!§(this,param1,new Sprite());
      }
      
      protected function §+!A§(param1:§;"§, param2:§?! §) : §;m§
      {
         return new §;m§(param1,param2);
      }
      
      public function initEmptyEnvironment(param1:String = null, param2:Boolean = false) : void
      {
         if(this.mReadyToRun)
         {
            this.clearLevel();
         }
         var _loc3_:§;!Q§ = this.§!!M§();
         var _loc4_:§+!Y§;
         (_loc4_ = new §+!Y§()).left = 0;
         _loc4_.top = -§ true§.§3q§ / 10 * 8;
         _loc4_.bottom = _loc4_.top + § true§.§3q§;
         _loc4_.right = _loc4_.left + § true§.§=!"§;
         _loc4_.y = -13.929;
         _loc4_.x = § true§.§=!"§;
         _loc4_.id = § true§.§;!7§;
         _loc3_.§!k§(_loc4_);
         var _loc5_:§+!Y§;
         (_loc5_ = new §+!Y§()).top = _loc4_.top;
         _loc5_.bottom = _loc4_.bottom;
         _loc5_.left = 150;
         _loc5_.right = _loc5_.left + § true§.§=!"§;
         _loc5_.bottom = _loc5_.top + § true§.§3q§;
         _loc5_.y = _loc4_.y;
         _loc5_.x = _loc5_.left + § true§.§=!"§ / 2;
         _loc5_.id = § true§.§"3§;
         _loc3_.§!k§(_loc5_);
         this.§&E§(_loc3_,param2);
         if(param1 != null)
         {
            _loc3_.theme = param1;
         }
         else if(§ !4§ != null)
         {
            _loc3_.theme = § !4§;
         }
         this.init(_loc3_);
      }
      
      protected function §&E§(param1:§;!Q§, param2:Boolean) : void
      {
         if(param2)
         {
            this.§"!X§(param1);
         }
      }
      
      protected function §!!M§() : §;!Q§
      {
         var _loc1_:§;!Q§ = new §;!Q§();
         _loc1_.§1!6§ = -12;
         return new §;!Q§();
      }
      
      protected function §3!3§() : Number
      {
         this.§'r§ ^= this.§'r§ << 21;
         this.§'r§ ^= this.§'r§ >>> 35;
         this.§'r§ ^= this.§'r§ << 4;
         return this.§'r§ * (1 / uint.MAX_VALUE);
      }
      
      protected function §"!X§(param1:§;!Q§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§"N§ = null;
         this.§'r§ = 0.33 * uint.MAX_VALUE;
         var _loc2_:int = 0;
         while(_loc2_ < 10)
         {
            _loc3_ = 0;
            while(_loc3_ < 5)
            {
               _loc4_ = this.§3!3§() * 5;
               (_loc5_ = new §"N§()).x = 30 + _loc3_ * 10 + this.§3!3§() * 9;
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
                  _loc5_.angle = 45 - this.§3!3§() * 90;
               }
               else
               {
                  _loc5_.y = -100 + _loc2_ * 6 - this.§3!3§() * 3 - _loc3_ * 8;
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
                  _loc5_.angle = this.§3!3§() * 360;
               }
               param1.addObject(_loc5_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      private function §<A§() : void
      {
      }
      
      public function §>r§() : void
      {
         if(§+A§.§%!A§)
         {
            this.§3!>§(this.§"6§.§#B§,false);
         }
         this.§3!>§(this.§,9§.§`!9§(§;m§.§&d§),false);
         this.§3!>§(this.§,9§.§`!9§(§;m§.§!!`§),true);
         this.§3!>§(this.§,9§.§`!9§(§;m§.§'g§),true);
         this.§3!>§(this.§@Y§.§use §,true);
         this.§3!>§(this.§,!#§.sprite,true);
         this.§3!>§(this.§,9§.§`!9§(§;m§.§?=§),true);
         this.§3!>§(this.§"6§.§<!D§,false);
         if(§+A§.§%!A§)
         {
            this.§3!>§(this.§"6§.§&!G§,false);
         }
         this.§3!>§(this.§,9§.§`!9§(§;m§.final),true);
      }
      
      private function §3!>§(param1:Sprite, param2:Boolean) : void
      {
         if(this.sprite)
         {
            this.sprite.addChild(param1);
         }
      }
      
      public function screenToBox2D(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         param1 /= §3>§.§5F§;
         param2 /= §3>§.§5F§;
         _loc3_.x = (param1 / § true§.§4Z§ + this.§%!3§.§^!,§ - § true§.§5!$§ / § true§.§4Z§) * §+n§;
         _loc3_.y = (param2 / § true§.§4Z§ + this.§%!3§.§"!N§ - § true§.§&9§ / § true§.§4Z§) * §+n§;
         return _loc3_;
      }
      
      public function §5!§(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = new Point();
         _loc3_.x = (param1 / §+n§ + § true§.§5!$§ / § true§.§4Z§ - this.§%!3§.§^!,§) * § true§.§4Z§;
         _loc3_.y = (param2 / §+n§ + § true§.§&9§ / § true§.§4Z§ - this.§%!3§.§"!N§) * § true§.§4Z§;
         var _loc4_:Number = Math.max(§3>§.§5F§,§3>§.§&e§);
         _loc3_.x *= _loc4_;
         _loc3_.y *= _loc4_;
         return _loc3_;
      }
      
      public function §>J§(param1:String, param2:Number, param3:Number) : void
      {
         this.§@Y§.addObject(param1,param2,param3);
      }
      
      public function §>-§() : void
      {
         if(this.§5!C§)
         {
            this.§5!C§.visible = true;
            this.§5!C§.alpha = 0;
         }
         this.§`!D§ = 0;
      }
      
      public function §>P§() : void
      {
         this.§%!>§ = new §=a§(§][§.§8,§,§][§.§84§);
      }
      
      public function §=O§() : void
      {
         this.§%!>§ = null;
      }
      
      public function clearLevel() : void
      {
         if(this.§"6§)
         {
            this.§"6§.dispose();
            this.§"6§ = null;
         }
         if(this.§@Y§)
         {
            this.§@Y§.dispose();
            this.§@Y§ = null;
            this.§]! § = null;
         }
         if(this.mLevelEngine)
         {
            if(!this.mLevelEngine.§%W§)
            {
            }
            this.mLevelEngine.clear();
            this.mLevelEngine = null;
         }
         if(this.§<p§)
         {
            this.§<p§.clear();
            this.§<p§ = null;
         }
         if(this.§,!#§)
         {
            this.§,!#§.dispose();
            this.§,!#§ = null;
         }
         if(this.§%!3§)
         {
            this.§%!3§.clear();
            this.§%!3§ = null;
         }
         if(this.§,9§)
         {
            this.§,9§.dispose();
            this.§,9§ = null;
         }
         if(this.sprite)
         {
            while(this.sprite.numChildren > 0)
            {
               this.sprite.removeChildAt(0,true);
            }
         }
         this.§`F§ = 0;
         this.§%!@§ = 0;
         this.mReadyToRun = false;
         this.§#x§ = false;
         this.§`!D§ = §][§.§%r§;
         if(this.§'D§)
         {
            (this.§'D§ as §6_§).§4d§.x = 0;
            (this.§'D§ as §6_§).§4d§.y = 0;
         }
         if(this.§5!C§)
         {
            this.§5!C§.visible = false;
         }
         this.§5f§ = null;
         this.§7!%§ = null;
         if(this.§;!G§)
         {
            this.§;!G§.removeEventListener(Event.COMPLETE,this.§%!,§);
            this.§;!G§.removeEventListener(Event.CANCEL,this.§>!7§);
         }
         if(this.§!!=§)
         {
            this.§!!=§.removeEventListener(Event.COMPLETE,this.§@c§);
            this.§!!=§.removeEventListener(Event.CANCEL,this.§4S§);
         }
         this.§<i§();
         if(§!F§.§[M§)
         {
            §!F§.§[M§.color = 0;
         }
         if(this.§ !D§)
         {
            this.§ !D§.removeEventListeners();
         }
         this.mReadyToRun = false;
      }
      
      public function gameOver() : void
      {
      }
      
      public function §-!6§() : String
      {
         if(this.§7!%§)
         {
            return this.§7!%§.toString();
         }
         return null;
      }
      
      public function update(param1:Number, param2:Boolean = true, param3:Boolean = true) : Number
      {
         if(!this.mReadyToRun || !§!F§.§]!C§())
         {
            return 0;
         }
         if(this.§5f§ && this.§5f§.§6!3§)
         {
            return this.§%!V§(param1,param2,param3);
         }
         return this.§7! §(param1,true,param2,param3);
      }
      
      protected function §7! §(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean) : Number
      {
         if(this.§^=§)
         {
            param1 *= 0.2;
            if(§!F§.§5!H§)
            {
               §!F§.§5!H§.speed = 0.2;
            }
         }
         var _loc5_:Number = 0;
         this.§%!@§ += param1;
         if(param3)
         {
            this.§`F§ += param1;
            _loc5_ = this.mLevelEngine.§#n§(this.§`F§);
            this.§,!#§.update(param1,param4);
            this.§`F§ = _loc5_;
         }
         else
         {
            this.§@Y§.§^n§(param1);
            this.§`F§ = 0;
         }
         if(param2)
         {
            this.§^^§(param1,_loc5_);
         }
         return param1;
      }
      
      private function §%!V§(param1:Number, param2:Boolean, param3:Boolean) : Number
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = §-o§.§-!?§ * 1000;
         if(this.§5f§)
         {
            param1 *= this.§5f§.speed;
            _loc5_ = this.§%!@§ + param1;
            while(this.§%!@§ + _loc4_ < _loc5_)
            {
               if(this.§%!@§ + _loc4_ > this.§4!Q§)
               {
                  this.§5f§.step(this);
                  this.§4!Q§ += _loc4_;
               }
               this.§7! §(_loc4_,false,param2,param3);
            }
            if(_loc5_ > this.§4!Q§ + _loc4_)
            {
               this.§5f§.step(this);
               this.§4!Q§ += _loc4_;
            }
            if(this.§%!@§ < _loc5_)
            {
               this.§7! §(_loc5_ - this.§%!@§,true,param2,param3);
            }
            return param1;
         }
         return this.§7! §(_loc4_,true,param2,param3);
      }
      
      private function §^^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.§"6§.update(param1);
         this.§@Y§.§%!K§(param1,param2);
         this.§#u§();
         if(this.§`!D§ < §][§.§%r§)
         {
            this.§`!D§ += param1;
            _loc3_ = §][§.§%r§ / 2;
            _loc4_ = (-Math.abs(this.§`!D§ - _loc3_) + _loc3_) * (§][§.§!![§ / _loc3_);
            if(this.§5!C§)
            {
               this.§5!C§.alpha = _loc4_;
            }
         }
         else if(this.§5!C§)
         {
            this.§5!C§.visible = false;
         }
         if(this.§%!>§)
         {
            if(!this.§%!>§.§ &§(this.§%!3§,param1))
            {
               this.§=O§();
            }
         }
         this.§%!3§.§<!F§(param1);
         this.mLevelEngine.§1T§();
         this.§,9§.update(param1);
      }
      
      public function §'!`§(param1:Number) : void
      {
         this.objects.§^n§(param1 * 1000);
         this.objects.§8!,§(param1 * 1000);
         this.§10§();
      }
      
      public function §#u§() : void
      {
         var _loc1_:§?w§ = null;
         if(this.§%!@§ > this.§0!!§ + 1000 / 30)
         {
            if(this.§ b§ != null)
            {
               for each(_loc1_ in this.§ b§)
               {
                  _loc1_.addTrail();
               }
            }
            this.§0!!§ = this.§%!@§;
         }
      }
      
      public function updatePigAnimations(param1:Number) : void
      {
         var _loc2_:§?w§ = null;
         this.mPigsAnimationTimer1 -= param1;
         if(this.mPigsAnimationTimer1 <= 0)
         {
            if(this.§@Y§.isPigsAlive(true))
            {
               _loc2_ = this.§@Y§.§+m§(true);
               _loc2_.§9X§.mTryToScream = §]y§.§"d§;
               this.mPigsAnimationTimer1 = 500 + Math.random() * 1000 + 4000 / (3 + this.§@Y§.§^4§());
            }
         }
         this.mPigsAnimationTimer2 -= param1;
         if(this.mPigsAnimationTimer2 <= 0)
         {
            if(this.§@Y§.isPigsAlive(true))
            {
               _loc2_ = this.§@Y§.§+m§(true);
               _loc2_.§9X§.mTryToBlink = §]y§.§7!@§;
               this.mPigsAnimationTimer2 = 250 + Math.random() * 500 + 2000 / (3 + this.§@Y§.§^4§());
            }
         }
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean = false, param4:Number = 0, param5:Number = 0, param6:int = -9999) : void
      {
         if(param6 == -9999)
         {
            param6 = §=!F§.§@s§;
         }
         §?0§.addScore(param1,param2);
         this.§ !D§.addScore(param1);
         if(param3 && param1 > 0 && !this.§44§)
         {
            this.§3[§(param1.toString(),param4,param5,800,param6,0,0);
         }
      }
      
      public function §3[§(param1:String, param2:Number = 0, param3:Number = 0, param4:Number = 1000, param5:int = -9999, param6:Number = 0, param7:Number = -3) : void
      {
         if(param5 == -9999)
         {
            param5 = §=!F§.§[U§;
         }
         this.§,9§.addParticle(§=!F§.§;! §,§;m§.final,§=!F§.§&!=§,param2,param3,param4,param1,param5,param6,param7);
      }
      
      public function §&L§(param1:§?w§) : void
      {
         if(this.§ b§ == null)
         {
            this.§ b§ = new Array();
         }
         this.§ b§.push(param1);
      }
      
      public function §9!-§() : void
      {
         this.§,!#§.§9!-§();
         this.§@Y§.§`7§();
         this.§44§ = true;
      }
      
      public function §;P§(param1:§?w§) : void
      {
         this.§,9§.§33§(§;m§.§&d§);
         if(this.§ b§.indexOf(param1) >= 0)
         {
            this.§ b§.splice(this.§ b§.indexOf(param1),1);
         }
         if(this.§ b§.length == 0)
         {
            this.§ b§ = null;
         }
      }
      
      public function §9!U§(param1:§&b§, param2:Number, param3:Number) : void
      {
         this.§]! § = this.§@Y§.addObject(param1.name,param1.x,param1.y,0,true,false,true,param1.scale);
         var _loc4_:Number = param1.name.toUpperCase() == "BIRD_GREEN" ? Number(§=!!§.§9;§) : Number(§=!!§.§3l§);
         if(param1.§1A§ > 1)
         {
            this.§]! §.§]!X§(param1.§1A§);
            this.§]! §.§9X§.§`&§();
         }
         if(param1.§-&§ != 0)
         {
            _loc4_ = param1.§-&§;
         }
         var _loc5_:Number = -_loc4_ * param2 * Math.cos(param3 / (180 / Math.PI));
         var _loc6_:Number = _loc4_ * param2 * Math.sin(param3 / (180 / Math.PI));
         this.§]! §.§ I§(new b2Vec2(_loc5_,_loc6_),false,true);
         this.camera.§!1§(§ true§.§ !B§);
         if(this.§7!%§)
         {
            this.§7!%§.§9!U§(this.mLevelEngine.currentStep,param1.x,param1.y,param2,param3);
         }
      }
      
      public function activatePowerup() : void
      {
         this.§#x§ = true;
      }
      
      private function §10§() : void
      {
         if(!this.§#x§)
         {
            return;
         }
         this.§#x§ = false;
         if(this.activeObject is §'!+§ && !(this.activeObject as §'!+§).§[p§)
         {
            if(this.activeObject.activateSpecialPower(this.§&5§))
            {
               this.§'!Z§ = true;
            }
         }
         else
         {
            this.§@Y§.§4!=§();
         }
         if(this.§7!%§)
         {
            this.§7!%§.§1E§(this.mLevelEngine.currentStep);
         }
      }
      
      public function §<B§() : void
      {
         this.§@Y§.§<B§();
      }
      
      public function §1>§() : void
      {
         this.§@Y§.§%$§();
      }
      
      public function §`!,§() : §;!Q§
      {
         var _loc1_:§;!Q§ = new §;!Q§();
         _loc1_.§ do§ = this.§&[§.§ do§;
         _loc1_.§;T§ = this.§&[§.§;T§;
         this.§%!3§.§4F§(_loc1_);
         this.§@Y§.§-!S§(_loc1_);
         this.§,!#§.§`!7§(_loc1_);
         _loc1_.theme = this.§"6§.§;w§();
         return _loc1_;
      }
      
      public function §@6§() : int
      {
         return this.§&[§.§;T§;
      }
      
      public function §<;§() : int
      {
         return this.§&[§.§ do§;
      }
      
      public function §]c§(param1:int) : void
      {
         this.§&[§.§;T§ = param1;
      }
      
      public function §+y§(param1:int) : void
      {
         this.§&[§.§ do§ = param1;
      }
      
      public function §'!F§(param1:Number, param2:Number) : void
      {
         if(this.§else §)
         {
            this.§else §.§-!3§(param1,param2);
         }
         if(this.§%!3§)
         {
            this.§%!3§.§<!F§(0);
         }
      }
      
      public function get §3!Y§() : §;!Q§
      {
         return this.§&[§;
      }
      
      public function get §&5§() : §7s§
      {
         return this.§@Y§;
      }
      
      protected function get §?!S§() : §!F§
      {
         return this.§>F§;
      }
      
      public function get §+K§() : int
      {
         return §=n§;
      }
   }
}
